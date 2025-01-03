// projekt powinien prezentować:
// co najmniej 5 ciekawych rekomendacji
// co najmniej 5 ciekawych, złożonych podzapytania ( w tym funkcje agregujące)
// w razie potrzeby zrobić refaktoryzację grafu
// co najmniej 5 ciekawych przykładów użycia algorytmów grafowych

////
// Proste rekomendacje
////

// Zapytanie o osoby pasujące do opisu świadka dotyczącego włosów i wzrostu (Robbery):
MATCH (person:Person)
WHERE person.hairColor = 'red' AND person.height >= 160 AND person.height <= 170
RETURN person.firstName, person.lastName, person.height, person.hairColor
LIMIT 5;

// Zapytanie o osoby powiązane z numerem telefonu wykrytym w pobliżu miejsca przestępstwa (Robbery):
MATCH (person:Person)
WHERE toString(person.phoneNumber) ENDS WITH '951'
RETURN person.firstName, person.lastName, person.phoneNumber, person.hairColor, person.eyeColor
LIMIT 5;

// Zapytanie o osoby pasujące do opisu z monitoringu (Murder):
MATCH (person:Person)
WHERE person.hairColor = 'black' AND person.height >= 155 AND person.height <= 165
RETURN person.firstName, person.lastName, person.height, person.hairColor
LIMIT 5;

// Zapytanie o osoby, których inicjały mogą pasować do "IT" na znalezionej broni(Murder):
MATCH (person:Person)
WHERE substring(person.firstName, 0, 1) + substring(person.lastName, 0, 1) = 'IT'
RETURN person.firstName, person.lastName
LIMIT 5;

// Zapytanie o osoby z kontem bankowym związanym z fałszywymi przelewami (Fraud):
MATCH (person:Person)
WHERE person.hairColor = 'black' AND person.height >= 155 AND person.height <= 165
RETURN person.firstName, person.lastName, person.height, person.hairColor
LIMIT 5;

// Zapytanie o osoby, które mogły pracować w pozycji umożliwiającej dostęp do dokumentów finansowych (Fraud):
MATCH (person:Person)
WHERE person.jobPosition IN ['Accountant', 'Banker', 'Manager']
RETURN person.firstName, person.lastName, person.jobPosition
LIMIT 5;

////
// Złozone zapytania
////

// Potencjalni świadkowie w odległości 2 od miejsca zbrodni - robbery
MATCH (crime:Crime {crimeType: 'Robbery'})-[:COMMITTED_AT]->(location)-[:LOCATED_AT]->(street:Street),
      path = (street)-[:CONNECTED_TO*1..2]->(neighbor:Street)<-[:LIVES_ON]-(person:Person)
RETURN DISTINCT person.firstName, 
                person.lastName, 
                neighbor.name AS potentialWitnessLocation, 
                street.name AS crimeLocation;

//Liczba zbrodni na danej ulicy/lokacji/typ
MATCH (crime:Crime)-[:COMMITTED_AT]->(location)
OPTIONAL MATCH (location)-[:LOCATED_AT]->(street:Street)
OPTIONAL MATCH (crime)-[:COMMITTED_AT]->(institution:Institution)
RETURN 
    COALESCE(street.name, location.name) AS StreetName, 
    COUNT(DISTINCT crime) AS CrimeCount, 
    COLLECT(DISTINCT CASE 
        WHEN institution IS NOT NULL THEN institution.institutionName 
        ELSE location.name 
    END) AS CrimeLocations,
    COLLECT(DISTINCT crime.crimeType) AS CrimeTypes;

//Wypisanie wszystkich dowodów zbrodni, zliczenie ich oraz wypisanie jakie to są typy
MATCH (crime:Crime)-[:COMMITTED_AT]->(location)
OPTIONAL MATCH (evidence:Evidence)-[:EVIDENCE_IN]->(crime)
RETURN 
    crime.crimeType AS CrimeType,
    COUNT(evidence) AS EvidenceCount,
    COLLECT(evidence.type) AS EvidenceTypes
ORDER BY EvidenceCount DESC;

//Ilosc ludzi zyjacych na danych ulicach, jakie są sklepy oraz instytucje
MATCH (s:Street)
OPTIONAL MATCH (i:Institution)-[:LOCATED_AT]->(s)
OPTIONAL MATCH (sh:Shop)-[:LOCATED_AT]->(s)
OPTIONAL MATCH (p:Person)-[:LIVES_ON]->(s)
WITH s, 
     collect(DISTINCT i.institutionName) AS Institutions, 
     collect(DISTINCT sh.name) AS Shops, 
     count(DISTINCT p) AS PeopleLiving
RETURN s.name AS Street, Institutions, Shops, PeopleLiving;

//Ilość osób, która pasuje do przestępstwa włamania z podziałem na wzrost, kolor włosów, oczu oraz końcówke nr telefonu.
MATCH (p:Person)
WITH
    COUNT(CASE WHEN p.height >= 160 AND p.height <= 170 THEN 1 END) AS HeightBetween160And170,
    COUNT(CASE WHEN p.hairColor = 'red' THEN 1 END) AS RedHairColor,
    COUNT(CASE WHEN TOSTRING(p.phoneNumber) ENDS WITH '951' THEN 1 END) AS PhoneNumberEndsWith951,
    COUNT(CASE WHEN p.eyeColor = 'blue' THEN 1 END) AS BlueEyeColor
RETURN 
    HeightBetween160And170 AS `Height Between 160 and 170`, 
    RedHairColor AS `Red Hair Color`, 
    PhoneNumberEndsWith951 AS `Phone Number Ends With 951`,
    BlueEyeColor AS `Blue Eye Color`
    
////
// Algorytmy grafowe
////

// logyrtm betweenness centriality dla ulic

CALL gds.graph.project(
    'streetGraph',  // Name of the graph
    'Street',       // Node label
    {
        CONNECTED_TO: {
            type: 'CONNECTED_TO',
            orientation: 'UNDIRECTED'
        }
    }
)

CALL gds.betweenness.stream('streetGraph') 
YIELD nodeId, score
RETURN gds.util.asNode(nodeId).name AS Street, score
ORDER BY score DESC;

CALL gds.graph.drop('streetGraph')

// Najbliżsi sąsiedzi instytucji (K-Nearest Neighbors) - do poprawki

CALL gds.knn.write({
    nodeProjection: 'Institution',
    relationshipProjection: {
        LOCATED_AT: {
            type: 'LOCATED_AT',
            orientation: 'UNDIRECTED'
        }
    },
    writeRelationshipType: 'SIMILAR',
    writeProperty: 'similarity'
})
YIELD nodesCompared, relationshipsWritten;

// Społeczności wśród ulic (Community Detection):
CALL gds.louvain.stream({
    nodeProjection: 'Street',
    relationshipProjection: {
        CONNECTED_TO: {
            type: 'CONNECTED_TO',
            orientation: 'UNDIRECTED'
        }
    }
})
YIELD nodeId, communityId
RETURN gds.util.asNode(nodeId).name AS Street, communityId
ORDER BY communityId;


// znajduje najkrótszą ścieżkę między zbrodnią a osobami spełniającymi wymagania świadka dla robbery
MATCH (crime:Crime {crimeType: 'Robbery'})-[:COMMITTED_AT]->(start:Street),
      (witness:Person {hairColor: 'blonde', phoneNumber: 123456789})-[:LIVES_ON]->(end:Street)
CALL gds.shortestPath.dijkstra.stream({
    nodeProjection: 'Street',
    relationshipProjection: {
        CONNECTED_TO: {
            type: 'CONNECTED_TO',
            orientation: 'UNDIRECTED'
        }
    },
    startNode: id(start),
    endNode: id(end),
    relationshipWeightProperty: 'distance'
})
YIELD index, sourceNode, targetNode, totalCost, nodeIds, costs
RETURN 
    crime.crimeType AS CrimeType,
    gds.util.asNode(sourceNode).name AS CrimeLocation,
    gds.util.asNode(targetNode).name AS WitnessLocation,
    witness.firstName + " " + witness.lastName AS Witness,
    [nodeId IN nodeIds | gds.util.asNode(nodeId).name] AS Path,
    totalCost AS Distance
ORDER BY Distance ASC;

CREATE (bankOfAmerica:Institution {institutionName: 'Bank of America', type: 'Financial'});
CREATE (citiBank:Institution {institutionName: 'CitiBank', type: 'Financial'});
CREATE (goldmanSachs:Institution {institutionName: 'Goldman Sachs', type: 'Financial'});
CREATE (morganStanley:Institution {institutionName: 'Morgan stanley', type: 'Financial'});

MATCH (bankOfAmerica:Institution {institutionName: 'Bank of America'}), (st:Street {name: 'Cedar Avenue'})
CREATE (bankOfAmerica)-[:LOCATED_AT]->(st);

MATCH (citiBank:Institution {institutionName: 'CitiBank'}), (st:Street {name: 'Cedar Avenue'})
CREATE (citiBank)-[:LOCATED_AT]->(st);

MATCH (goldmanSachs:Institution {institutionName: 'Goldman Sachs'}), (st:Street {name: 'Cedar Avenue'})
CREATE (goldmanSachs)-[:LOCATED_AT]->(st);

MATCH (morganStanley:Institution {institutionName: 'Morgan stanley'}), (st:Street {name: 'Cedar Avenue'})
CREATE (morganStanley)-[:LOCATED_AT]->(st);

CREATE (nypdParklane:Institution {institutionName: 'NYPD Parklane', type: 'Security'});
CREATE (nypdElmstreet:Institution {institutionName: 'NYPD ElmStreet', type: 'Security'});
CREATE (nypdCedaerAvenue:Institution {institutionName: 'NYPD CedaerAvaenue', type: 'Security'});
CREATE (nypdWillowway:Institution {institutionName: 'NYPD WillowWay', type: 'Security'});
CREATE (nypdRiverside:Institution {institutionName: 'NYPD Riverside', type: 'Security'});
CREATE (nypdSunsetPark:Institution {institutionName: 'NYPD Sunset Boulevard', type: 'Security'});

MATCH (nypdElmstreet:Institution {institutionName: 'NYPD ElmStreet'}), (st:Street {name: 'Elm Street'})
CREATE (nypdElmstreet)-[:LOCATED_AT]->(st);

MATCH (nypdCedarAvenue:Institution {institutionName: 'NYPD CedaerAvaenue'}), (st:Street {name: 'Cedar Avenue'})
CREATE (nypdCedarAvenue)-[:LOCATED_AT]->(st);

MATCH (nypdWillowway:Institution {institutionName: 'NYPD WillowWay'}), (st:Street {name: 'Willow Way'})
CREATE (nypdWillowway)-[:LOCATED_AT]->(st);

MATCH (nypdRiverside:Institution {institutionName: 'NYPD Riverside'}), (st:Street {name: 'Riverside Drive'})
CREATE (nypdRiverside)-[:LOCATED_AT]->(st);

MATCH (nypdSunsetPark:Institution {institutionName: 'NYPD Sunset Boulevard'}), (st:Street {name: 'Sunset Boulevard'})
CREATE (nypdSunsetPark)-[:LOCATED_AT]->(st);

CREATE (hospital:Institution {institutionName: 'Hospital Sunset Boulevard', type: 'Health'});

MATCH (hospital:Institution {institutionName: 'Hospital Sunset Boulevard'}), (st:Street {name: 'Sunset Boulevard'})
CREATE (hospital)-[:LOCATED_AT]->(st);

CREATE (grocerymart:Shop {name: 'Grocery Mart', type: 'Food', openingHours: '8 AM - 10 PM'});
CREATE (techWorld:Shop {name: 'Tech World', type: 'Electronics', openingHours: '10 AM - 8 PM'});
CREATE (fashionBoutique:Shop {name: 'Fashion Boutique', type: 'Clothing', openingHours: '10 AM - 9 PM'});
CREATE (bookHaven:Shop {name: 'Book Haven', type: 'Books', openingHours: '9 AM - 9 PM'});

MATCH (s:Shop {name: 'Grocery Mart'}), (st:Street {name: 'Riverside Drive'})
CREATE (s)-[:LOCATED_AT]->(st);

MATCH (s:Shop {name: 'Tech World'}), (st:Street {name: 'Riverside Drive'})
CREATE (s)-[:LOCATED_AT]->(st);

MATCH (s:Shop {name: 'Fashion Boutique'}), (st:Street {name: 'Riverside Drive'})
CREATE (s)-[:LOCATED_AT]->(st);

MATCH (s:Shop {name: 'Book Haven'}), (st:Street {name: 'Riverside Drive'})
CREATE (s)-[:LOCATED_AT]->(st);

MATCH (p:Person {firstName: 'Alice', lastName: 'Smith'}), (s:Shop {name: 'Fashion Boutique'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 3, Visits: 8}]->(s);
MATCH (p:Person {firstName: 'Bob', lastName: 'Johnson'}), (s:Shop {name: 'Fashion Boutique'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 3, Visits: 6}]->(s);
MATCH (p:Person {firstName: 'Charlie', lastName: 'Brown'}), (s:Shop {name: 'Grocery Mart'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 3, Visits: 9}]->(s);
MATCH (p:Person {firstName: 'Diana', lastName: 'Green'}), (s:Shop {name: 'Grocery Mart'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 12, Visits: 10}]->(s);
MATCH (p:Person {firstName: 'Eve', lastName: 'White'}), (s:Shop {name: 'Tech World'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 5, Visits: 9}]->(s);
MATCH (p:Person {firstName: 'Frank', lastName: 'Black'}), (s:Shop {name: 'Tech World'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 1, Visits: 2}]->(s);
MATCH (p:Person {firstName: 'Grace', lastName: 'Harris'}), (s:Shop {name: 'Tech World'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 1, Visits: 5}]->(s);
MATCH (p:Person {firstName: 'Henry', lastName: 'King'}), (s:Shop {name: 'Tech World'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 6, Visits: 1}]->(s);
MATCH (p:Person {firstName: 'Ivy', lastName: 'Scott'}), (s:Shop {name: 'Tech World'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 4, Visits: 2}]->(s);
MATCH (p:Person {firstName: 'Jack', lastName: 'Lee'}), (s:Shop {name: 'Fashion Boutique'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 7, Visits: 7}]->(s);
MATCH (p:Person {firstName: 'Karen', lastName: 'Mitchell'}), (s:Shop {name: 'Tech World'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 1, Visits: 3}]->(s);
MATCH (p:Person {firstName: 'Luke', lastName: 'Walker'}), (s:Shop {name: 'Tech World'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 4, Visits: 6}]->(s);
MATCH (p:Person {firstName: 'Mona', lastName: 'Taylor'}), (s:Shop {name: 'Fashion Boutique'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 6, Visits: 5}]->(s);
MATCH (p:Person {firstName: 'Nathan', lastName: 'Adams'}), (s:Shop {name: 'Book Haven'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 3, Visits: 1}]->(s);
MATCH (p:Person {firstName: 'Olivia', lastName: 'Clark'}), (s:Shop {name: 'Fashion Boutique'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 1, Visits: 1}]->(s);
MATCH (p:Person {firstName: 'Paul', lastName: 'Evans'}), (s:Shop {name: 'Fashion Boutique'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 3, Visits: 8}]->(s);
MATCH (p:Person {firstName: 'Quinn', lastName: 'Baker'}), (s:Shop {name: 'Tech World'})
CREATE (p)-[:VISITED {TypeVisit: 'Just looking around', Purchases: 0, Visits: 5}]->(s);
MATCH (p:Person {firstName: 'Rachel', lastName: 'Phillips'}), (s:Shop {name: 'Grocery Mart'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 12, Visits: 5}]->(s);
MATCH (p:Person {firstName: 'Steve', lastName: 'Morris'}), (s:Shop {name: 'Fashion Boutique'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 4, Visits: 8}]->(s);
MATCH (p:Person {firstName: 'Tina', lastName: 'Campbell'}), (s:Shop {name: 'Fashion Boutique'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 4, Visits: 8}]->(s);
MATCH (p:Person {firstName: 'Uma', lastName: 'Reed'}), (s:Shop {name: 'Tech World'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 12, Visits: 6}]->(s);
MATCH (p:Person {firstName: 'Victor', lastName: 'Bell'}), (s:Shop {name: 'Grocery Mart'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 1, Visits: 6}]->(s);
MATCH (p:Person {firstName: 'Wendy', lastName: 'Turner'}), (s:Shop {name: 'Fashion Boutique'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 3, Visits: 1}]->(s);
MATCH (p:Person {firstName: 'Xander', lastName: 'Morgan'}), (s:Shop {name: 'Fashion Boutique'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 1, Visits: 6}]->(s);
MATCH (p:Person {firstName: 'Yara', lastName: 'Collins'}), (s:Shop {name: 'Book Haven'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 2, Visits: 5}]->(s);
MATCH (p:Person {firstName: 'Zack', lastName: 'Foster'}), (s:Shop {name: 'Fashion Boutique'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 4, Visits: 6}]->(s);
MATCH (p:Person {firstName: 'Amy', lastName: 'Young'}), (s:Shop {name: 'Fashion Boutique'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 3, Visits: 4}]->(s);
MATCH (p:Person {firstName: 'Brian', lastName: 'Dixon'}), (s:Shop {name: 'Grocery Mart'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 1, Visits: 8}]->(s);
MATCH (p:Person {firstName: 'Catherine', lastName: 'Knight'}), (s:Shop {name: 'Fashion Boutique'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 2, Visits: 3}]->(s);
MATCH (p:Person {firstName: 'Daniel', lastName: 'Grant'}), (s:Shop {name: 'Grocery Mart'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 4, Visits: 6}]->(s);
MATCH (p:Person {firstName: 'Ella', lastName: 'Brooks'}), (s:Shop {name: 'Grocery Mart'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 4, Visits: 8}]->(s);
MATCH (p:Person {firstName: 'Finn', lastName: 'Hayes'}), (s:Shop {name: 'Grocery Mart'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 4, Visits: 7}]->(s);
MATCH (p:Person {firstName: 'Georgia', lastName: 'Wright'}), (s:Shop {name: 'Tech World'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 7, Visits: 4}]->(s);
MATCH (p:Person {firstName: 'Hugo', lastName: 'Dawson'}), (s:Shop {name: 'Grocery Mart'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 9, Visits: 3}]->(s);
MATCH (p:Person {firstName: 'Irene', lastName: 'Stone'}), (s:Shop {name: 'Book Haven'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 14, Visits: 2}]->(s);
MATCH (p:Person {firstName: 'Jake', lastName: 'Perry'}), (s:Shop {name: 'Tech World'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 4, Visits: 5}]->(s);
MATCH (p:Person {firstName: 'Kara', lastName: 'Bell'}), (s:Shop {name: 'Fashion Boutique'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 4, Visits: 9}]->(s);
MATCH (p:Person {firstName: 'Liam', lastName: 'Ford'}), (s:Shop {name: 'Tech World'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 2, Visits: 6}]->(s);
MATCH (p:Person {firstName: 'Mia', lastName: 'Parker'}), (s:Shop {name: 'Tech World'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 13, Visits: 1}]->(s);
MATCH (p:Person {firstName: 'Nathan', lastName: 'Miller'}), (s:Shop {name: 'Tech World'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 5, Visits: 1}]->(s);
MATCH (p:Person {firstName: 'Olive', lastName: 'Hunt'}), (s:Shop {name: 'Grocery Mart'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 3, Visits: 4}]->(s);
MATCH (p:Person {firstName: 'Peter', lastName: 'Reynolds'}), (s:Shop {name: 'Grocery Mart'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 14, Visits: 4}]->(s);
MATCH (p:Person {firstName: 'Quincy', lastName: 'Scott'}), (s:Shop {name: 'Fashion Boutique'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 11, Visits: 4}]->(s);
MATCH (p:Person {firstName: 'Rose', lastName: 'Ellis'}), (s:Shop {name: 'Grocery Mart'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 4, Visits: 5}]->(s);
MATCH (p:Person {firstName: 'Samuel', lastName: 'Warren'}), (s:Shop {name: 'Fashion Boutique'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 14, Visits: 3}]->(s);
MATCH (p:Person {firstName: 'Tina', lastName: 'Blake'}), (s:Shop {name: 'Tech World'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 10, Visits: 7}]->(s);
MATCH (p:Person {firstName: 'Umar', lastName: 'Dunn'}), (s:Shop {name: 'Grocery Mart'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 1, Visits: 10}]->(s);
MATCH (p:Person {firstName: 'Vera', lastName: 'Cole'}), (s:Shop {name: 'Tech World'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 1, Visits: 3}]->(s);
MATCH (p:Person {firstName: 'William', lastName: 'Evans'}), (s:Shop {name: 'Tech World'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 1, Visits: 4}]->(s);
MATCH (p:Person {firstName: 'Zara', lastName: 'Lewis'}), (s:Shop {name: 'Grocery Mart'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 4, Visits: 3}]->(s);
MATCH (p:Person {firstName: 'Aaron', lastName: 'Carter'}), (s:Shop {name: 'Tech World'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 11, Visits: 3}]->(s);
MATCH (p:Person {firstName: 'Bella', lastName: 'Hughes'}), (s:Shop {name: 'Grocery Mart'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 6, Visits: 10}]->(s);
MATCH (p:Person {firstName: 'Caleb', lastName: 'Fisher'}), (s:Shop {name: 'Fashion Boutique'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 14, Visits: 7}]->(s);
MATCH (p:Person {firstName: 'Daisy', lastName: 'Anderson'}), (s:Shop {name: 'Fashion Boutique'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 13, Visits: 5}]->(s);
MATCH (p:Person {firstName: 'Ethan', lastName: 'Ross'}), (s:Shop {name: 'Tech World'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 3, Visits: 6}]->(s);
MATCH (p:Person {firstName: 'Fiona', lastName: 'Griffin'}), (s:Shop {name: 'Fashion Boutique'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 8, Visits: 6}]->(s);
MATCH (p:Person {firstName: 'George', lastName: 'Payne'}), (s:Shop {name: 'Grocery Mart'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 1, Visits: 7}]->(s);
MATCH (p:Person {firstName: 'Hannah', lastName: 'Stewart'}), (s:Shop {name: 'Tech World'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 3, Visits: 3}]->(s);
MATCH (p:Person {firstName: 'Isaac', lastName: 'Bennett'}), (s:Shop {name: 'Grocery Mart'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 4, Visits: 7}]->(s);
MATCH (p:Person {firstName: 'Jasmine', lastName: 'Owens'}), (s:Shop {name: 'Tech World'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 8, Visits: 3}]->(s);
MATCH (p:Person {firstName: 'Kyle', lastName: 'Morris'}), (s:Shop {name: 'Grocery Mart'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 10, Visits: 10}]->(s);
MATCH (p:Person {firstName: 'Laura', lastName: 'Mitchell'}), (s:Shop {name: 'Grocery Mart'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 1, Visits: 8}]->(s);
MATCH (p:Person {firstName: 'Martin', lastName: 'Ellis'}), (s:Shop {name: 'Fashion Boutique'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 11, Visits: 2}]->(s);
MATCH (p:Person {firstName: 'Nina', lastName: 'Reed'}), (s:Shop {name: 'Grocery Mart'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 6, Visits: 9}]->(s);
MATCH (p:Person {firstName: 'Oscar', lastName: 'Peterson'}), (s:Shop {name: 'Tech World'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 1, Visits: 7}]->(s);
MATCH (p:Person {firstName: 'Paula', lastName: 'Harris'}), (s:Shop {name: 'Tech World'})
CREATE (p)-[:VISITED {TypeVisit: 'Just looking around', Purchases: 0, Visits: 9}]->(s);
MATCH (p:Person {firstName: 'Ryan', lastName: 'Cole'}), (s:Shop {name: 'Tech World'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 6, Visits: 7}]->(s);
MATCH (p:Person {firstName: 'Sophia', lastName: 'Bryant'}), (s:Shop {name: 'Tech World'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 10, Visits: 3}]->(s);
MATCH (p:Person {firstName: 'Tom', lastName: 'Gray'}), (s:Shop {name: 'Fashion Boutique'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 4, Visits: 3}]->(s);
MATCH (p:Person {firstName: 'Una', lastName: 'Walker'}), (s:Shop {name: 'Fashion Boutique'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 4, Visits: 7}]->(s);
MATCH (p:Person {firstName: 'Victor', lastName: 'Lane'}), (s:Shop {name: 'Grocery Mart'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 5, Visits: 10}]->(s);
MATCH (p:Person {firstName: 'Wanda', lastName: 'Holmes'}), (s:Shop {name: 'Tech World'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 1, Visits: 9}]->(s);
MATCH (p:Person {firstName: 'Xavier', lastName: 'Blake'}), (s:Shop {name: 'Fashion Boutique'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 2, Visits: 2}]->(s);
MATCH (p:Person {firstName: 'Yvonne', lastName: 'Carter'}), (s:Shop {name: 'Fashion Boutique'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 6, Visits: 5}]->(s);
MATCH (p:Person {firstName: 'Zane', lastName: 'Robinson'}), (s:Shop {name: 'Fashion Boutique'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 14, Visits: 2}]->(s);
MATCH (p:Person {firstName: 'Alice', lastName: 'Hunter'}), (s:Shop {name: 'Book Haven'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 2, Visits: 1}]->(s);
MATCH (p:Person {firstName: 'Brian', lastName: 'Wright'}), (s:Shop {name: 'Tech World'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 11, Visits: 8}]->(s);
MATCH (p:Person {firstName: 'Clara', lastName: 'Edwards'}), (s:Shop {name: 'Grocery Mart'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 4, Visits: 4}]->(s);
MATCH (p:Person {firstName: 'Derek', lastName: 'Hill'}), (s:Shop {name: 'Grocery Mart'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 3, Visits: 3}]->(s);
MATCH (p:Person {firstName: 'Eve', lastName: 'Brooks'}), (s:Shop {name: 'Book Haven'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 1, Visits: 1}]->(s);
MATCH (p:Person {firstName: 'Frank', lastName: 'Cooper'}), (s:Shop {name: 'Tech World'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 3, Visits: 5}]->(s);
MATCH (p:Person {firstName: 'Grace', lastName: 'Peterson'}), (s:Shop {name: 'Grocery Mart'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 13, Visits: 1}]->(s);
MATCH (p:Person {firstName: 'Henry', lastName: 'Clark'}), (s:Shop {name: 'Tech World'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 5, Visits: 6}]->(s);
MATCH (p:Person {firstName: 'Isabel', lastName: 'Stevens'}), (s:Shop {name: 'Fashion Boutique'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 11, Visits: 3}]->(s);
MATCH (p:Person {firstName: 'Jack', lastName: 'Turner'}), (s:Shop {name: 'Grocery Mart'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 12, Visits: 7}]->(s);
MATCH (p:Person {firstName: 'Kara', lastName: 'Long'}), (s:Shop {name: 'Book Haven'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 1, Visits: 3}]->(s);
MATCH (p:Person {firstName: 'Liam', lastName: 'Ford'}), (s:Shop {name: 'Grocery Mart'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 14, Visits: 3}]->(s);
MATCH (p:Person {firstName: 'Mila', lastName: 'Jenkins'}), (s:Shop {name: 'Tech World'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 12, Visits: 9}]->(s);
MATCH (p:Person {firstName: 'Noah', lastName: 'Hayes'}), (s:Shop {name: 'Grocery Mart'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 13, Visits: 6}]->(s);
MATCH (p:Person {firstName: 'Olivia', lastName: 'Bell'}), (s:Shop {name: 'Tech World'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 6, Visits: 5}]->(s);
MATCH (p:Person {firstName: 'Peter', lastName: 'Bryant'}), (s:Shop {name: 'Tech World'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 7, Visits: 8}]->(s);
MATCH (p:Person {firstName: 'Quinn', lastName: 'Mason'}), (s:Shop {name: 'Grocery Mart'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 1, Visits: 7}]->(s);
MATCH (p:Person {firstName: 'Ruby', lastName: 'Henderson'}), (s:Shop {name: 'Fashion Boutique'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 4, Visits: 6}]->(s);
MATCH (p:Person {firstName: 'Samuel', lastName: 'Crawford'}), (s:Shop {name: 'Fashion Boutique'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 3, Visits: 8}]->(s);
MATCH (p:Person {firstName: 'Tina', lastName: 'Ellis'}), (s:Shop {name: 'Tech World'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 3, Visits: 2}]->(s);
MATCH (p:Person {firstName: 'Uma', lastName: 'Fisher'}), (s:Shop {name: 'Fashion Boutique'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 5, Visits: 4}]->(s);
MATCH (p:Person {firstName: 'Victor', lastName: 'Griffin'}), (s:Shop {name: 'Tech World'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 8, Visits: 9}]->(s);
MATCH (p:Person {firstName: 'Wendy', lastName: 'Hayes'}), (s:Shop {name: 'Grocery Mart'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 1, Visits: 7}]->(s);
MATCH (p:Person {firstName: 'Xander', lastName: 'Ingram'}), (s:Shop {name: 'Fashion Boutique'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 5, Visits: 10}]->(s);
MATCH (p:Person {firstName: 'Yara', lastName: 'Jordan'}), (s:Shop {name: 'Fashion Boutique'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 2, Visits: 5}]->(s);
MATCH (p:Person {firstName: 'Zach', lastName: 'Kelly'}), (s:Shop {name: 'Tech World'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 13, Visits: 7}]->(s);
MATCH (p:Person {firstName: 'Alice', lastName: 'Lawson'}), (s:Shop {name: 'Fashion Boutique'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 3, Visits: 7}]->(s);
MATCH (p:Person {firstName: 'Brian', lastName: 'Murray'}), (s:Shop {name: 'Tech World'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 6, Visits: 4}]->(s);
MATCH (p:Person {firstName: 'Clara', lastName: 'Newton'}), (s:Shop {name: 'Grocery Mart'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 5, Visits: 9}]->(s);
MATCH (p:Person {firstName: 'David', lastName: 'Owens'}), (s:Shop {name: 'Fashion Boutique'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 2, Visits: 7}]->(s);
MATCH (p:Person {firstName: 'Emma', lastName: 'Parker'}), (s:Shop {name: 'Tech World'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 3, Visits: 5}]->(s);
MATCH (p:Person {firstName: 'Frank', lastName: 'Quinn'}), (s:Shop {name: 'Grocery Mart'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 6, Visits: 5}]->(s);
MATCH (p:Person {firstName: 'Grace', lastName: 'Reed'}), (s:Shop {name: 'Grocery Mart'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 9, Visits: 7}]->(s);
MATCH (p:Person {firstName: 'Henry', lastName: 'Stone'}), (s:Shop {name: 'Book Haven'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 7, Visits: 1}]->(s);
MATCH (p:Person {firstName: 'Ivy', lastName: 'Taylor'}), (s:Shop {name: 'Tech World'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 1, Visits: 5}]->(s);
MATCH (p:Person {firstName: 'Jack', lastName: 'Underwood'}), (s:Shop {name: 'Grocery Mart'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 1, Visits: 5}]->(s);
MATCH (p:Person {firstName: 'Kara', lastName: 'Vance'}), (s:Shop {name: 'Fashion Boutique'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 12, Visits: 9}]->(s);
MATCH (p:Person {firstName: 'Liam', lastName: 'Walsh'}), (s:Shop {name: 'Tech World'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 11, Visits: 10}]->(s);
MATCH (p:Person {firstName: 'Maya', lastName: 'Xavier'}), (s:Shop {name: 'Fashion Boutique'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 4, Visits: 4}]->(s);
MATCH (p:Person {firstName: 'Nathan', lastName: 'York'}), (s:Shop {name: 'Tech World'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 5, Visits: 1}]->(s);
MATCH (p:Person {firstName: 'Olivia', lastName: 'Zimmerman'}), (s:Shop {name: 'Grocery Mart'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 11, Visits: 8}]->(s);
MATCH (p:Person {firstName: 'Paul', lastName: 'Anderson'}), (s:Shop {name: 'Fashion Boutique'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 1, Visits: 9}]->(s);
MATCH (p:Person {firstName: 'Quinn', lastName: 'Benson'}), (s:Shop {name: 'Book Haven'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 8, Visits: 2}]->(s);
MATCH (p:Person {firstName: 'Ruby', lastName: 'Collins'}), (s:Shop {name: 'Grocery Mart'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 2, Visits: 2}]->(s);
MATCH (p:Person {firstName: 'Steve', lastName: 'Davis'}), (s:Shop {name: 'Tech World'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 5, Visits: 5}]->(s);
MATCH (p:Person {firstName: 'Tina', lastName: 'Edwards'}), (s:Shop {name: 'Fashion Boutique'})
CREATE (p)-[:VISITED {TypeVisit: 'Just looking around', Purchases: 0, Visits: 9}]->(s);
MATCH (p:Person {firstName: 'Uma', lastName: 'Foster'}), (s:Shop {name: 'Grocery Mart'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 4, Visits: 7}]->(s);
MATCH (p:Person {firstName: 'Victor', lastName: 'Grant'}), (s:Shop {name: 'Grocery Mart'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 11, Visits: 6}]->(s);
MATCH (p:Person {firstName: 'Wendy', lastName: 'Harris'}), (s:Shop {name: 'Grocery Mart'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 11, Visits: 2}]->(s);
MATCH (p:Person {firstName: 'Xander', lastName: 'Irwin'}), (s:Shop {name: 'Tech World'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 3, Visits: 3}]->(s);
MATCH (p:Person {firstName: 'Yara', lastName: 'Jackson'}), (s:Shop {name: 'Tech World'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 12, Visits: 1}]->(s);
MATCH (p:Person {firstName: 'Zack', lastName: 'Kennedy'}), (s:Shop {name: 'Book Haven'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 10, Visits: 2}]->(s);
MATCH (p:Person {firstName: 'Amy', lastName: 'Lewis'}), (s:Shop {name: 'Grocery Mart'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 2, Visits: 9}]->(s);
MATCH (p:Person {firstName: 'Brian', lastName: 'Mills'}), (s:Shop {name: 'Grocery Mart'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 1, Visits: 6}]->(s);
MATCH (p:Person {firstName: 'Clara', lastName: 'Nelson'}), (s:Shop {name: 'Tech World'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 3, Visits: 8}]->(s);
MATCH (p:Person {firstName: 'David', lastName: 'Owens'}), (s:Shop {name: 'Fashion Boutique'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 1, Visits: 10}]->(s);
MATCH (p:Person {firstName: 'Ella', lastName: 'Parker'}), (s:Shop {name: 'Grocery Mart'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 8, Visits: 9}]->(s);
MATCH (p:Person {firstName: 'Finn', lastName: 'Quinn'}), (s:Shop {name: 'Grocery Mart'})
CREATE (p)-[:VISITED {TypeVisit: 'Just looking around', Purchases: 0, Visits: 6}]->(s);
MATCH (p:Person {firstName: 'Grace', lastName: 'Reynolds'}), (s:Shop {name: 'Grocery Mart'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 10, Visits: 7}]->(s);
MATCH (p:Person {firstName: 'Henry', lastName: 'Simmons'}), (s:Shop {name: 'Grocery Mart'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 10, Visits: 2}]->(s);
MATCH (p:Person {firstName: 'Isla', lastName: 'Taylor'}), (s:Shop {name: 'Fashion Boutique'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 13, Visits: 6}]->(s);
MATCH (p:Person {firstName: 'Jack', lastName: 'Underhill'}), (s:Shop {name: 'Tech World'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 4, Visits: 8}]->(s);
MATCH (p:Person {firstName: 'Kara', lastName: 'Vaughn'}), (s:Shop {name: 'Book Haven'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 12, Visits: 6}]->(s);
MATCH (p:Person {firstName: 'Liam', lastName: 'Wells'}), (s:Shop {name: 'Grocery Mart'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 12, Visits: 8}]->(s);
MATCH (p:Person {firstName: 'Mona', lastName: 'Xanders'}), (s:Shop {name: 'Grocery Mart'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 1, Visits: 7}]->(s);
MATCH (p:Person {firstName: 'Noah', lastName: 'Young'}), (s:Shop {name: 'Grocery Mart'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 3, Visits: 5}]->(s);
MATCH (p:Person {firstName: 'Olivia', lastName: 'Zane'}), (s:Shop {name: 'Tech World'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 4, Visits: 9}]->(s);
MATCH (p:Person {firstName: 'Paul', lastName: 'Adams'}), (s:Shop {name: 'Grocery Mart'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 9, Visits: 10}]->(s);
MATCH (p:Person {firstName: 'Quinn', lastName: 'Baker'}), (s:Shop {name: 'Fashion Boutique'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 7, Visits: 10}]->(s);
MATCH (p:Person {firstName: 'Ruby', lastName: 'Carter'}), (s:Shop {name: 'Fashion Boutique'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 3, Visits: 1}]->(s);
MATCH (p:Person {firstName: 'Steve', lastName: 'Denton'}), (s:Shop {name: 'Fashion Boutique'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 12, Visits: 10}]->(s);
MATCH (p:Person {firstName: 'Tina', lastName: 'Elliot'}), (s:Shop {name: 'Tech World'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 1, Visits: 2}]->(s);
MATCH (p:Person {firstName: 'Uma', lastName: 'Ford'}), (s:Shop {name: 'Tech World'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 3, Visits: 7}]->(s);
MATCH (p:Person {firstName: 'Victor', lastName: 'Green'}), (s:Shop {name: 'Grocery Mart'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 9, Visits: 8}]->(s);
MATCH (p:Person {firstName: 'Wendy', lastName: 'Hale'}), (s:Shop {name: 'Fashion Boutique'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 9, Visits: 2}]->(s);
MATCH (p:Person {firstName: 'Xavier', lastName: 'Irwin'}), (s:Shop {name: 'Fashion Boutique'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 8, Visits: 9}]->(s);
MATCH (p:Person {firstName: 'Yvonne', lastName: 'Jacobs'}), (s:Shop {name: 'Grocery Mart'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 2, Visits: 1}]->(s);
MATCH (p:Person {firstName: 'Zachary', lastName: 'Kane'}), (s:Shop {name: 'Tech World'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 7, Visits: 5}]->(s);
MATCH (p:Person {firstName: 'Abigail', lastName: 'Lewis'}), (s:Shop {name: 'Grocery Mart'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 1, Visits: 5}]->(s);
MATCH (p:Person {firstName: 'Benjamin', lastName: 'Mitchell'}), (s:Shop {name: 'Grocery Mart'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 1, Visits: 2}]->(s);
MATCH (p:Person {firstName: 'Charlotte', lastName: 'Nelson'}), (s:Shop {name: 'Tech World'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 1, Visits: 3}]->(s);
MATCH (p:Person {firstName: 'Daniel', lastName: 'Owens'}), (s:Shop {name: 'Tech World'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 4, Visits: 6}]->(s);
MATCH (p:Person {firstName: 'Eleanor', lastName: 'Parker'}), (s:Shop {name: 'Fashion Boutique'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 3, Visits: 8}]->(s);
MATCH (p:Person {firstName: 'Franklin', lastName: 'Quinn'}), (s:Shop {name: 'Grocery Mart'})
CREATE (p)-[:VISITED {TypeVisit: 'Just looking around', Purchases: 0, Visits: 7}]->(s);
MATCH (p:Person {firstName: 'Georgia', lastName: 'Reynolds'}), (s:Shop {name: 'Grocery Mart'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 2, Visits: 1}]->(s);
MATCH (p:Person {firstName: 'Harry', lastName: 'Simmons'}), (s:Shop {name: 'Fashion Boutique'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 8, Visits: 1}]->(s);
MATCH (p:Person {firstName: 'Isabel', lastName: 'Taylor'}), (s:Shop {name: 'Grocery Mart'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 6, Visits: 9}]->(s);
MATCH (p:Person {firstName: 'Jacob', lastName: 'Underwood'}), (s:Shop {name: 'Grocery Mart'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 1, Visits: 10}]->(s);
MATCH (p:Person {firstName: 'Katherine', lastName: 'Vance'}), (s:Shop {name: 'Fashion Boutique'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 1, Visits: 9}]->(s);
MATCH (p:Person {firstName: 'Logan', lastName: 'Walker'}), (s:Shop {name: 'Fashion Boutique'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 6, Visits: 10}]->(s);
MATCH (p:Person {firstName: 'Mia', lastName: 'Xander'}), (s:Shop {name: 'Tech World'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 9, Visits: 9}]->(s);
MATCH (p:Person {firstName: 'Nathaniel', lastName: 'Young'}), (s:Shop {name: 'Tech World'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 6, Visits: 9}]->(s);
MATCH (p:Person {firstName: 'Olivia', lastName: 'Zimmer'}), (s:Shop {name: 'Tech World'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 1, Visits: 10}]->(s);
MATCH (p:Person {firstName: 'Patrick', lastName: 'Allen'}), (s:Shop {name: 'Fashion Boutique'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 2, Visits: 5}]->(s);
MATCH (p:Person {firstName: 'Quincy', lastName: 'Bates'}), (s:Shop {name: 'Fashion Boutique'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 3, Visits: 3}]->(s);
MATCH (p:Person {firstName: 'Rebecca', lastName: 'Collins'}), (s:Shop {name: 'Grocery Mart'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 13, Visits: 8}]->(s);
MATCH (p:Person {firstName: 'Samuel', lastName: 'Davis'}), (s:Shop {name: 'Grocery Mart'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 6, Visits: 1}]->(s);
MATCH (p:Person {firstName: 'Tina', lastName: 'Evans'}), (s:Shop {name: 'Tech World'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 2, Visits: 9}]->(s);
MATCH (p:Person {firstName: 'Ursula', lastName: 'Fox'}), (s:Shop {name: 'Fashion Boutique'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 12, Visits: 7}]->(s);
MATCH (p:Person {firstName: 'Victor', lastName: 'Green'}), (s:Shop {name: 'Grocery Mart'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 10, Visits: 7}]->(s);
MATCH (p:Person {firstName: 'Wendy', lastName: 'Harris'}), (s:Shop {name: 'Fashion Boutique'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 8, Visits: 1}]->(s);
MATCH (p:Person {firstName: 'Xander', lastName: 'Irwin'}), (s:Shop {name: 'Grocery Mart'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 7, Visits: 9}]->(s);
MATCH (p:Person {firstName: 'Yvonne', lastName: 'Jones'}), (s:Shop {name: 'Tech World'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 4, Visits: 7}]->(s);
MATCH (p:Person {firstName: 'Zachary', lastName: 'Klein'}), (s:Shop {name: 'Book Haven'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 7, Visits: 8}]->(s);
MATCH (p:Person {firstName: 'Ava', lastName: 'Lee'}), (s:Shop {name: 'Tech World'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 2, Visits: 9}]->(s);
MATCH (p:Person {firstName: 'Brian', lastName: 'Miller'}), (s:Shop {name: 'Grocery Mart'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 1, Visits: 6}]->(s);
MATCH (p:Person {firstName: 'Catherine', lastName: 'Nash'}), (s:Shop {name: 'Tech World'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 5, Visits: 2}]->(s);
MATCH (p:Person {firstName: 'David', lastName: 'Owens'}), (s:Shop {name: 'Grocery Mart'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 3, Visits: 4}]->(s);
MATCH (p:Person {firstName: 'Elena', lastName: 'Patterson'}), (s:Shop {name: 'Fashion Boutique'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 12, Visits: 4}]->(s);
MATCH (p:Person {firstName: 'Frank', lastName: 'Quinn'}), (s:Shop {name: 'Grocery Mart'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 4, Visits: 9}]->(s);
MATCH (p:Person {firstName: 'Gina', lastName: 'Roberts'}), (s:Shop {name: 'Tech World'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 10, Visits: 8}]->(s);
MATCH (p:Person {firstName: 'Holly', lastName: 'Smith'}), (s:Shop {name: 'Fashion Boutique'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 7, Visits: 5}]->(s);
MATCH (p:Person {firstName: 'Isaac', lastName: 'Turner'}), (s:Shop {name: 'Grocery Mart'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 3, Visits: 7}]->(s);
MATCH (p:Person {firstName: 'Jack', lastName: 'Williams'}), (s:Shop {name: 'Fashion Boutique'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Rare purchase', Purchases: 3, Visits: 6}]->(s);
MATCH (p:Person {firstName: 'Kathy', lastName: 'Davis'}), (s:Shop {name: 'Tech World'})
CREATE (p)-[:BOUGHT_AT {TypeVisit: 'Frequent purchase', Purchases: 7, Visits: 5}]->(s);
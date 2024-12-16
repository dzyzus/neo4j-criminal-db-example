CREATE (MainStreet:Street {
    name: 'Main Street',
    city: 'New York',
    postalCode: '10001',
    type: 'Residential',
});

CREATE (BroadWayAvenue:Street {
    name: 'Broadway Avenue',
    city: 'New York',
    postalCode: '10002',
    type: 'Commercial',
});

CREATE (OakDrive:Street {
    name: 'Oak Drive',
    city: 'New York',
    postalCode: '10003',
    type: 'Residential',
});

CREATE (PineRoad:Street {
    name: 'Pine Road',
    city: 'New York',
    postalCode: '10004',
    type: 'Industrial',
});

// Znajdź wszystkie ulice typu 'Residental'
MATCH (street:Street)
WHERE street.type = 'Residential'

// Pobierz je
WITH collect(street) AS residentialStreets

// Losowo przypisz osoby do tych ulic
MATCH (person:Person)
WITH person, residentialStreets[toInteger(rand() * 2)] AS randomStreet // losowo jedna z dwóch ulic
CREATE (person)-[:LIVES_ON]->(randomStreet);
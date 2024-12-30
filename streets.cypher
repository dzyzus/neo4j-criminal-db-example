CREATE (ElmStreet:Street {
    name: 'Elm Street',
    city: 'New York',
    postalCode: '10005',
    type: 'Residential'
});

CREATE (ParkLane:Street {
    name: 'Park Lane',
    city: 'New York',
    postalCode: '10006',
    type: 'Commercial'
});

CREATE (CedarAvenue:Street {
    name: 'Cedar Avenue',
    city: 'New York',
    postalCode: '10007',
    type: 'Industrial'
});

CREATE (WillowWay:Street {
    name: 'Willow Way',
    city: 'New York',
    postalCode: '10008',
    type: 'Residential'
});

CREATE (RiverSideDrive:Street {
    name: 'Riverside Drive',
    city: 'New York',
    postalCode: '10009',
    type: 'Commercial'
});

CREATE (SunsetBoulevard:Street {
    name: 'Sunset Boulevard',
    city: 'New York',
    postalCode: '10010',
    type: 'Industrial'
});

MATCH (elm:Street {name: 'Elm Street'}), (park:Street {name: 'Park Lane'})
CREATE (elm)-[:CONNECTED_TO]->(park);

MATCH (park:Street {name: 'Park Lane'}), (cedar:Street {name: 'Cedar Avenue'})
CREATE (park)-[:CONNECTED_TO]->(cedar);

MATCH (cedar:Street {name: 'Cedar Avenue'}), (willow:Street {name: 'Willow Way'})
CREATE (cedar)-[:CONNECTED_TO]->(willow);

MATCH (willow:Street {name: 'Willow Way'}), (river:Street {name: 'Riverside Drive'})
CREATE (willow)-[:CONNECTED_TO]->(river);

MATCH (river:Street {name: 'Riverside Drive'}), (sunset:Street {name: 'Sunset Boulevard'})
CREATE (river)-[:CONNECTED_TO]->(sunset);

MATCH (p:Person {firstName: 'Alice', lastName: 'Smith'}), (s:Street {name: 'RiverSideDrive'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Bob', lastName: 'Johnson'}), (s:Street {name: 'ElmStreet'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Charlie', lastName: 'Brown'}), (s:Street {name: 'RiverSideDrive'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Diana', lastName: 'Green'}), (s:Street {name: 'ElmStreet'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Eve', lastName: 'White'}), (s:Street {name: 'ParkLane'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Frank', lastName: 'Black'}), (s:Street {name: 'RiverSideDrive'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Grace', lastName: 'Harris'}), (s:Street {name: 'ParkLane'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Henry', lastName: 'King'}), (s:Street {name: 'ElmStreet'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Ivy', lastName: 'Scott'}), (s:Street {name: 'CedarAvenue'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Jack', lastName: 'Lee'}), (s:Street {name: 'SunsetBoulevard'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Karen', lastName: 'Mitchell'}), (s:Street {name: 'ElmStreet'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Luke', lastName: 'Walker'}), (s:Street {name: 'WillowWay'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Mona', lastName: 'Taylor'}), (s:Street {name: 'ElmStreet'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Nathan', lastName: 'Adams'}), (s:Street {name: 'RiverSideDrive'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Olivia', lastName: 'Clark'}), (s:Street {name: 'RiverSideDrive'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Paul', lastName: 'Evans'}), (s:Street {name: 'SunsetBoulevard'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Quinn', lastName: 'Baker'}), (s:Street {name: 'ElmStreet'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Rachel', lastName: 'Phillips'}), (s:Street {name: 'ParkLane'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Steve', lastName: 'Morris'}), (s:Street {name: 'SunsetBoulevard'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Tina', lastName: 'Campbell'}), (s:Street {name: 'CedarAvenue'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Uma', lastName: 'Reed'}), (s:Street {name: 'ElmStreet'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Victor', lastName: 'Bell'}), (s:Street {name: 'CedarAvenue'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Wendy', lastName: 'Turner'}), (s:Street {name: 'RiverSideDrive'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Xander', lastName: 'Morgan'}), (s:Street {name: 'WillowWay'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Yara', lastName: 'Collins'}), (s:Street {name: 'SunsetBoulevard'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Zack', lastName: 'Foster'}), (s:Street {name: 'WillowWay'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Amy', lastName: 'Young'}), (s:Street {name: 'ElmStreet'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Brian', lastName: 'Dixon'}), (s:Street {name: 'ParkLane'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Catherine', lastName: 'Knight'}), (s:Street {name: 'RiverSideDrive'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Daniel', lastName: 'Grant'}), (s:Street {name: 'SunsetBoulevard'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Ella', lastName: 'Brooks'}), (s:Street {name: 'RiverSideDrive'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Finn', lastName: 'Hayes'}), (s:Street {name: 'RiverSideDrive'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Georgia', lastName: 'Wright'}), (s:Street {name: 'WillowWay'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Hugo', lastName: 'Dawson'}), (s:Street {name: 'ParkLane'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Irene', lastName: 'Stone'}), (s:Street {name: 'ElmStreet'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Jake', lastName: 'Perry'}), (s:Street {name: 'CedarAvenue'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Kara', lastName: 'Bell'}), (s:Street {name: 'ElmStreet'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Liam', lastName: 'Ford'}), (s:Street {name: 'SunsetBoulevard'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Mia', lastName: 'Parker'}), (s:Street {name: 'SunsetBoulevard'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Nathan', lastName: 'Miller'}), (s:Street {name: 'WillowWay'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Olive', lastName: 'Hunt'}), (s:Street {name: 'RiverSideDrive'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Peter', lastName: 'Reynolds'}), (s:Street {name: 'ElmStreet'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Quincy', lastName: 'Scott'}), (s:Street {name: 'CedarAvenue'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Rose', lastName: 'Ellis'}), (s:Street {name: 'RiverSideDrive'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Samuel', lastName: 'Warren'}), (s:Street {name: 'WillowWay'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Tina', lastName: 'Blake'}), (s:Street {name: 'WillowWay'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Umar', lastName: 'Dunn'}), (s:Street {name: 'RiverSideDrive'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Vera', lastName: 'Cole'}), (s:Street {name: 'ParkLane'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'William', lastName: 'Evans'}), (s:Street {name: 'CedarAvenue'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Zara', lastName: 'Lewis'}), (s:Street {name: 'RiverSideDrive'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Aaron', lastName: 'Carter'}), (s:Street {name: 'RiverSideDrive'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Bella', lastName: 'Hughes'}), (s:Street {name: 'WillowWay'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Caleb', lastName: 'Fisher'}), (s:Street {name: 'ElmStreet'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Daisy', lastName: 'Anderson'}), (s:Street {name: 'RiverSideDrive'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Ethan', lastName: 'Ross'}), (s:Street {name: 'ElmStreet'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Fiona', lastName: 'Griffin'}), (s:Street {name: 'RiverSideDrive'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'George', lastName: 'Payne'}), (s:Street {name: 'SunsetBoulevard'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Hannah', lastName: 'Stewart'}), (s:Street {name: 'ElmStreet'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Isaac', lastName: 'Bennett'}), (s:Street {name: 'WillowWay'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Jasmine', lastName: 'Owens'}), (s:Street {name: 'SunsetBoulevard'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Kyle', lastName: 'Morris'}), (s:Street {name: 'WillowWay'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Laura', lastName: 'Mitchell'}), (s:Street {name: 'ElmStreet'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Martin', lastName: 'Ellis'}), (s:Street {name: 'RiverSideDrive'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Nina', lastName: 'Reed'}), (s:Street {name: 'SunsetBoulevard'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Oscar', lastName: 'Peterson'}), (s:Street {name: 'ParkLane'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Paula', lastName: 'Harris'}), (s:Street {name: 'RiverSideDrive'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Ryan', lastName: 'Cole'}), (s:Street {name: 'ElmStreet'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Sophia', lastName: 'Bryant'}), (s:Street {name: 'WillowWay'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Tom', lastName: 'Gray'}), (s:Street {name: 'ParkLane'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Una', lastName: 'Walker'}), (s:Street {name: 'SunsetBoulevard'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Victor', lastName: 'Lane'}), (s:Street {name: 'ElmStreet'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Wanda', lastName: 'Holmes'}), (s:Street {name: 'WillowWay'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Xavier', lastName: 'Blake'}), (s:Street {name: 'WillowWay'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Yvonne', lastName: 'Carter'}), (s:Street {name: 'WillowWay'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Zane', lastName: 'Robinson'}), (s:Street {name: 'WillowWay'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Alice', lastName: 'Hunter'}), (s:Street {name: 'RiverSideDrive'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Brian', lastName: 'Wright'}), (s:Street {name: 'CedarAvenue'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Clara', lastName: 'Edwards'}), (s:Street {name: 'RiverSideDrive'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Derek', lastName: 'Hill'}), (s:Street {name: 'ElmStreet'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Eve', lastName: 'Brooks'}), (s:Street {name: 'ParkLane'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Frank', lastName: 'Cooper'}), (s:Street {name: 'WillowWay'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Grace', lastName: 'Peterson'}), (s:Street {name: 'CedarAvenue'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Henry', lastName: 'Clark'}), (s:Street {name: 'CedarAvenue'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Isabel', lastName: 'Stevens'}), (s:Street {name: 'ParkLane'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Jack', lastName: 'Turner'}), (s:Street {name: 'ParkLane'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Kara', lastName: 'Long'}), (s:Street {name: 'ParkLane'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Liam', lastName: 'Ford'}), (s:Street {name: 'RiverSideDrive'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Mila', lastName: 'Jenkins'}), (s:Street {name: 'CedarAvenue'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Noah', lastName: 'Hayes'}), (s:Street {name: 'WillowWay'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Olivia', lastName: 'Bell'}), (s:Street {name: 'SunsetBoulevard'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Peter', lastName: 'Bryant'}), (s:Street {name: 'ParkLane'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Quinn', lastName: 'Mason'}), (s:Street {name: 'CedarAvenue'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Ruby', lastName: 'Henderson'}), (s:Street {name: 'RiverSideDrive'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Samuel', lastName: 'Crawford'}), (s:Street {name: 'CedarAvenue'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Tina', lastName: 'Ellis'}), (s:Street {name: 'ParkLane'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Uma', lastName: 'Fisher'}), (s:Street {name: 'RiverSideDrive'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Victor', lastName: 'Griffin'}), (s:Street {name: 'WillowWay'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Wendy', lastName: 'Hayes'}), (s:Street {name: 'SunsetBoulevard'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Xander', lastName: 'Ingram'}), (s:Street {name: 'CedarAvenue'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Yara', lastName: 'Jordan'}), (s:Street {name: 'CedarAvenue'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Zach', lastName: 'Kelly'}), (s:Street {name: 'WillowWay'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Alice', lastName: 'Lawson'}), (s:Street {name: 'CedarAvenue'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Brian', lastName: 'Murray'}), (s:Street {name: 'ParkLane'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Clara', lastName: 'Newton'}), (s:Street {name: 'SunsetBoulevard'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'David', lastName: 'Owens'}), (s:Street {name: 'SunsetBoulevard'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Emma', lastName: 'Parker'}), (s:Street {name: 'WillowWay'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Frank', lastName: 'Quinn'}), (s:Street {name: 'ElmStreet'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Grace', lastName: 'Reed'}), (s:Street {name: 'CedarAvenue'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Henry', lastName: 'Stone'}), (s:Street {name: 'ParkLane'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Ivy', lastName: 'Taylor'}), (s:Street {name: 'SunsetBoulevard'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Jack', lastName: 'Underwood'}), (s:Street {name: 'ParkLane'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Kara', lastName: 'Vance'}), (s:Street {name: 'RiverSideDrive'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Liam', lastName: 'Walsh'}), (s:Street {name: 'ParkLane'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Maya', lastName: 'Xavier'}), (s:Street {name: 'WillowWay'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Nathan', lastName: 'York'}), (s:Street {name: 'WillowWay'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Olivia', lastName: 'Zimmerman'}), (s:Street {name: 'SunsetBoulevard'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Paul', lastName: 'Anderson'}), (s:Street {name: 'CedarAvenue'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Quinn', lastName: 'Benson'}), (s:Street {name: 'SunsetBoulevard'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Ruby', lastName: 'Collins'}), (s:Street {name: 'ElmStreet'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Steve', lastName: 'Davis'}), (s:Street {name: 'ElmStreet'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Tina', lastName: 'Elliot'}), (s:Street {name: 'ElmStreet'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Uma', lastName: 'Ford'}), (s:Street {name: 'ElmStreet'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Victor', lastName: 'Green'}), (s:Street {name: 'ParkLane'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Wendy', lastName: 'Hale'}), (s:Street {name: 'WillowWay'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Xavier', lastName: 'Irwin'}), (s:Street {name: 'WillowWay'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Yara', lastName: 'Jackson'}), (s:Street {name: 'SunsetBoulevard'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Zack', lastName: 'Kennedy'}), (s:Street {name: 'CedarAvenue'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Amy', lastName: 'Lewis'}), (s:Street {name: 'CedarAvenue'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Brian', lastName: 'Mills'}), (s:Street {name: 'SunsetBoulevard'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Clara', lastName: 'Nelson'}), (s:Street {name: 'SunsetBoulevard'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'David', lastName: 'Owens'}), (s:Street {name: 'RiverSideDrive'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Ella', lastName: 'Parker'}), (s:Street {name: 'SunsetBoulevard'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Finn', lastName: 'Quinn'}), (s:Street {name: 'ParkLane'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Grace', lastName: 'Reynolds'}), (s:Street {name: 'ElmStreet'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Henry', lastName: 'Simmons'}), (s:Street {name: 'SunsetBoulevard'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Isla', lastName: 'Taylor'}), (s:Street {name: 'ElmStreet'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Jack', lastName: 'Underhill'}), (s:Street {name: 'ElmStreet'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Kara', lastName: 'Vaughn'}), (s:Street {name: 'ElmStreet'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Liam', lastName: 'Wells'}), (s:Street {name: 'SunsetBoulevard'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Mona', lastName: 'Xanders'}), (s:Street {name: 'WillowWay'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Noah', lastName: 'Young'}), (s:Street {name: 'WillowWay'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Olivia', lastName: 'Zane'}), (s:Street {name: 'CedarAvenue'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Paul', lastName: 'Adams'}), (s:Street {name: 'WillowWay'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Quinn', lastName: 'Baker'}), (s:Street {name: 'CedarAvenue'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Ruby', lastName: 'Carter'}), (s:Street {name: 'WillowWay'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Steve', lastName: 'Denton'}), (s:Street {name: 'ElmStreet'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Tina', lastName: 'Elliot'}), (s:Street {name: 'RiverSideDrive'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Uma', lastName: 'Ford'}), (s:Street {name: 'RiverSideDrive'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Victor', lastName: 'Green'}), (s:Street {name: 'CedarAvenue'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Wendy', lastName: 'Harris'}), (s:Street {name: 'ParkLane'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Xander', lastName: 'Irwin'}), (s:Street {name: 'RiverSideDrive'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Yvonne', lastName: 'Jacobs'}), (s:Street {name: 'ParkLane'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Zachary', lastName: 'Kane'}), (s:Street {name: 'SunsetBoulevard'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Abigail', lastName: 'Lewis'}), (s:Street {name: 'WillowWay'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Benjamin', lastName: 'Mitchell'}), (s:Street {name: 'ParkLane'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Charlotte', lastName: 'Nelson'}), (s:Street {name: 'WillowWay'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Daniel', lastName: 'Owens'}), (s:Street {name: 'SunsetBoulevard'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Eleanor', lastName: 'Parker'}), (s:Street {name: 'CedarAvenue'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Franklin', lastName: 'Quinn'}), (s:Street {name: 'ElmStreet'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Georgia', lastName: 'Reynolds'}), (s:Street {name: 'SunsetBoulevard'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Harry', lastName: 'Simmons'}), (s:Street {name: 'ParkLane'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Isabel', lastName: 'Taylor'}), (s:Street {name: 'CedarAvenue'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Jacob', lastName: 'Underwood'}), (s:Street {name: 'RiverSideDrive'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Katherine', lastName: 'Vance'}), (s:Street {name: 'RiverSideDrive'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Logan', lastName: 'Walker'}), (s:Street {name: 'ElmStreet'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Mia', lastName: 'Xander'}), (s:Street {name: 'WillowWay'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Nathaniel', lastName: 'Young'}), (s:Street {name: 'ElmStreet'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Olivia', lastName: 'Zimmer'}), (s:Street {name: 'RiverSideDrive'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Patrick', lastName: 'Allen'}), (s:Street {name: 'WillowWay'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Quincy', lastName: 'Bates'}), (s:Street {name: 'CedarAvenue'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Rebecca', lastName: 'Collins'}), (s:Street {name: 'CedarAvenue'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Samuel', lastName: 'Davis'}), (s:Street {name: 'ElmStreet'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Tina', lastName: 'Evans'}), (s:Street {name: 'RiverSideDrive'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Ursula', lastName: 'Fox'}), (s:Street {name: 'ParkLane'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Victor', lastName: 'Green'}), (s:Street {name: 'SunsetBoulevard'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Wendy', lastName: 'Harris'}), (s:Street {name: 'CedarAvenue'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Xander', lastName: 'Irwin'}), (s:Street {name: 'ParkLane'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Yvonne', lastName: 'Jones'}), (s:Street {name: 'ElmStreet'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Zachary', lastName: 'Klein'}), (s:Street {name: 'SunsetBoulevard'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Ava', lastName: 'Lee'}), (s:Street {name: 'SunsetBoulevard'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Brian', lastName: 'Miller'}), (s:Street {name: 'ParkLane'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Catherine', lastName: 'Nash'}), (s:Street {name: 'ElmStreet'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'David', lastName: 'Owens'}), (s:Street {name: 'RiverSideDrive'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Elena', lastName: 'Patterson'}), (s:Street {name: 'ParkLane'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Frank', lastName: 'Quinn'}), (s:Street {name: 'CedarAvenue'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Gina', lastName: 'Roberts'}), (s:Street {name: 'CedarAvenue'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Holly', lastName: 'Smith'}), (s:Street {name: 'ElmStreet'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Isaac', lastName: 'Turner'}), (s:Street {name: 'ParkLane'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Jack', lastName: 'Williams'}), (s:Street {name: 'ElmStreet'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Kathy', lastName: 'Davis'}), (s:Street {name: 'RiverSideDrive'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Leo', lastName: 'Johnson'}), (s:Street {name: 'SunsetBoulevard'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Mia', lastName: 'Clark'}), (s:Street {name: 'WillowWay'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Nate', lastName: 'Walker'}), (s:Street {name: 'SunsetBoulevard'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Olivia', lastName: 'Taylor'}), (s:Street {name: 'WillowWay'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Peter', lastName: 'Scott'}), (s:Street {name: 'CedarAvenue'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Quincy', lastName: 'Morris'}), (s:Street {name: 'CedarAvenue'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Rachel', lastName: 'Evans'}), (s:Street {name: 'CedarAvenue'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Samuel', lastName: 'Anderson'}), (s:Street {name: 'ElmStreet'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Tracy', lastName: 'Harris'}), (s:Street {name: 'ElmStreet'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Ursula', lastName: 'Jones'}), (s:Street {name: 'ElmStreet'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Victor', lastName: 'King'}), (s:Street {name: 'SunsetBoulevard'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Wendy', lastName: 'Nelson'}), (s:Street {name: 'RiverSideDrive'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Xander', lastName: 'Parker'}), (s:Street {name: 'WillowWay'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Yvonne', lastName: 'Reid'}), (s:Street {name: 'ParkLane'})
CREATE (p)-[:LIVES_ON]->(s);
MATCH (p:Person {firstName: 'Zachary', lastName: 'Thompson'}), (s:Street {name: 'WillowWay'})
CREATE (p)-[:LIVES_ON]->(s);
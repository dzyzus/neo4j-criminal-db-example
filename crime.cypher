// Tworzenie zbrodni
CREATE (robbery:Crime {crimeType: 'Robbery', date: '2023-05-12', sentence: '5 years'});
CREATE (murder:Crime {crimeType: 'Murder', date: '2024-05-12', sentence: '25 years'});
CREATE (fraud:Crime {crimeType: 'Fraud', date: '2022-11-04', sentence: '3 years'});

MATCH (robbery:Crime {crimeType: 'Robbery'}), (s:Shop {name: 'Grocery Mart'})
CREATE (robbery)-[:COMMITTED_AT]->(s);

MATCH (murder:Crime {crimeType: 'Murder'}), (st:Street {name: 'Park Lane'})
CREATE (murder)-[:COMMITTED_AT]->(st);

MATCH (fraud:Crime {crimeType: 'Fraud'}), (inst:Institution {institutionName: 'Bank of America'})
CREATE (fraud)-[:COMMITTED_AT]->(inst);

// Dowody związane z przestępstwem włamania (Paula Harris)
CREATE (witnessStatementHairColorRobbery:Evidence {
    type: 'Witness Statement',
    description: 'A witness saw a person with red hair near the scene of the robbery at approximately 11:50 PM.',
    timestamp: '2023-05-12 23:50'
});

CREATE (witnessStatementHeightRobbery:Evidence {
    type: 'Witness Statement',
    description: 'A witness reported that the suspect had a height between 160 and 170 cm, consistent with the height of Paula Harris.',
    timestamp: '2023-05-12'
});

CREATE (phoneDataRobbery:Evidence {
    type: 'Phone Data',
    description: 'A phone with the number which ends on ...951 was found to have been frequently used near the crime scene, with activity under the alias "AngryVoice" reported around the time of the robbery.',
    timestamp: '2023-05-12 23:55'
});

CREATE (cctvFootageRobbery:Evidence {
    type: 'CCTV',
    description: 'CCTV footage shows a person with medium-length red hair and blue eyes near the robbery location at 11:55 PM.',
    timestamp: '2023-05-12 23:55'
});

CREATE (witnessStatementLeavingRobbery:Evidence {
    type: 'Witness Statement',
    description: 'A witness reported seeing a person with medium-length red hair leaving the scene of the robbery at around 12:05 AM.',
    timestamp: '2023-05-13 00:05'
});

// Łączenie dowodów z przestępstwem "Robbery"
MATCH (robbery:Crime {crimeType: 'Robbery', date: '2023-05-12'})
MATCH (witnessStatementHairColorRobbery:Evidence {type: 'Witness Statement', timestamp: '2023-05-12 23:50'})
CREATE (witnessStatementHairColorRobbery)-[:EVIDENCE_IN]->(robbery);

MATCH (robbery:Crime {crimeType: 'Robbery', date: '2023-05-12'})
MATCH (witnessStatementHeightRobbery:Evidence {type: 'Witness Statement', timestamp: '2023-05-12'})
CREATE (witnessStatementHeightRobbery)-[:EVIDENCE_IN]->(robbery);

MATCH (robbery:Crime {crimeType: 'Robbery', date: '2023-05-12'})
MATCH (phoneDataRobbery:Evidence {type: 'Phone Data', timestamp: '2023-05-12 23:55'})
CREATE (phoneDataRobbery)-[:EVIDENCE_IN]->(robbery);

MATCH (robbery:Crime {crimeType: 'Robbery', date: '2023-05-12'})
MATCH (cctvFootageRobbery:Evidence {type: 'CCTV', timestamp: '2023-05-12 23:55'})
CREATE (cctvFootageRobbery)-[:EVIDENCE_IN]->(robbery);

MATCH (robbery:Crime {crimeType: 'Robbery', date: '2023-05-12'})
MATCH (witnessStatementLeavingRobbery:Evidence {type: 'Witness Statement', timestamp: '2023-05-13 00:05'})
CREATE (witnessStatementLeavingRobbery)-[:EVIDENCE_IN]->(robbery);

// Dowody związane z przestępstwem morderstwa (Isla Taylor)
CREATE (securityFootage:Evidence {type: 'Security Footage', details: 'Surveillance footage shows black hair woman entering the victim\'s house before the murder. Height: 155-165 cm'});
CREATE (murderWeapon:Evidence {type: 'Murder Weapon', details: 'Murder weapon found in victim possession with engraved IT on blade'});

// Łączenie dowodów z przestępstwem morderstwa
MATCH (murder:Crime {crimeType: 'Murder', date: '2024-05-12'})
MATCH (securityFootage:Evidence {type: 'Security Footage', details: 'Surveillance footage shows black hair woman entering the victim\'s house before the murder. Height: 155-165 cm'})
CREATE (securityFootage)-[:EVIDENCE_IN]->(murder);

MATCH (murder:Crime {crimeType: 'Murder', date: '2024-05-12'})
MATCH (murderWeapon:Evidence {type: 'Murder Weapon', details: 'Murder weapon found in victim possession with engraved IT on blade'})
CREATE (murderWeapon)-[:EVIDENCE_IN]->(murder);

// Dowody związane z przestępstwem defraudacji (Victor Grant)
CREATE (fakeInvoice:Evidence {type: 'Fake Invoice', details: 'Invoice forged with falsified company details'});
CREATE (bankRecord:Evidence {type: 'Bank Record', details: 'Bank statement shows unauthorized transfer linked to Victor Grant'});
CREATE (testimony:Evidence {type: 'Witness Testimony', details: 'Witness reports seeing Victor Grant signing suspicious documents'});
CREATE (emailFraud:Evidence {type: 'Email Record', details: 'Email from Victor Grant discussing fraudulent transactions with another party'});

// Łączenie dowodów z przestępstwem defraudacji
MATCH (fraud:Crime {crimeType: 'Fraud', date: '2022-11-04'})
MATCH (fakeInvoice:Evidence {type: 'Fake Invoice', details: 'Invoice forged with falsified company details'})
CREATE (fakeInvoice)-[:EVIDENCE_IN]->(fraud);

MATCH (fraud:Crime {crimeType: 'Fraud', date: '2022-11-04'})
MATCH (bankRecord:Evidence {type: 'Bank Record', details: 'Bank statement shows unauthorized transfer linked to Victor Grant'})
CREATE (bankRecord)-[:EVIDENCE_IN]->(fraud);

MATCH (fraud:Crime {crimeType: 'Fraud', date: '2022-11-04'})
MATCH (testimony:Evidence {type: 'Witness Testimony', details: 'Witness reports seeing Victor Grant signing suspicious documents'})
CREATE (testimony)-[:EVIDENCE_IN]->(fraud);

MATCH (fraud:Crime {crimeType: 'Fraud', date: '2022-11-04'})
MATCH (emailFraud:Evidence {type: 'Email Record', details: 'Email from Victor Grant discussing fraudulent transactions with another party'})
CREATE (emailFraud)-[:EVIDENCE_IN]->(fraud);
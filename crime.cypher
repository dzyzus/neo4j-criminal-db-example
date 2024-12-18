// Tworzenie zbrodni
CREATE (robbery:Crime {crimeType: 'Robbery', date: '2023-05-12', sentence: '5 years'});
CREATE (murder:Crime {crimeType: 'Murder', date: '2024-05-12', sentence: '25 years'});
CREATE (fraud:Crime {crimeType: 'Fraud', date: '2022-11-04', sentence: '3 years'});

// Łączenie zbrodni z miejscem
CREATE (robbery)-[:COMMITTED_AT {date: '2023-05-12'}]->(grocerymart);

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

// Tworzenie relacji dla znalezionych dowodów z kradzieżą
CREATE (witnessStatementHairColorRobbery)-[:RELATED_TO]->(robbery);
CREATE (witnessStatementHeightRobbery)-[:RELATED_TO]->(robbery);
CREATE (phoneDataRobbery)-[:RELATED_TO]->(robbery);
CREATE (cctvFootageRobbery)-[:RELATED_TO]->(robbery);
CREATE (witnessStatementLeavingRobbery)-[:RELATED_TO]->(robbery);

// Dowody związane z przestępstwem morderstwa (Isla Taylor)
CREATE (securityFootage:Evidence {type: 'Security Footage', details: 'Surveillance footage shows black hair woman entering the victim\'s house before the murder. Height: 155-165 cm'});
CREATE (murderWeapon:Evidence {type: 'Murder Weapon', details: 'Murder weapon found in victim possession with engraved IT on blade'});

// Dowody związane z przestępstwem defraudacji (Victor Grant)
CREATE (fakeInvoice:Evidence {type: 'Fake Invoice', details: 'Invoice forged with falsified company details'});
CREATE (bankRecord:Evidence {type: 'Bank Record', details: 'Bank statement shows unauthorized transfer linked to Victor Grant'});
CREATE (testimony:Evidence {type: 'Witness Testimony', details: 'Witness reports seeing Victor Grant signing suspicious documents'});
CREATE (emailFraud:Evidence {type: 'Email Record', details: 'Email from Victor Grant discussing fraudulent transactions with another party'});


// Tworzenie relacji dla znalezionych dowodów z defraudacją
CREATE (fakeInvoice)-[:RELATED_TO]->(fraud);
CREATE (bankRecord)-[:RELATED_TO]->(fraud);
CREATE (testimony)-[:RELATED_TO]->(fraud);
CREATE (emailFraud)-[:RELATED_TO]->(fraud);

// Tworzenie relacji dla znalezionych dowodów z morderstwem
CREATE (securityFootage)-[:RELATED_TO]->(murder);
CREATE (murderWeapon)-[:RELATED_TO]->(murder);
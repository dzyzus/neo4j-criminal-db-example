// Dowody związane z przestępstwem defraudacji (Victor Grant)
CREATE (fakeInvoice:Evidence {type: 'Fake Invoice', details: 'Invoice forged with falsified company details'})
CREATE (bankRecord:Evidence {type: 'Bank Record', details: 'Bank statement shows unauthorized transfer linked to Victor Grant'})
CREATE (testimony:Evidence {type: 'Witness Testimony', details: 'Witness reports seeing Victor Grant signing suspicious documents'})
CREATE (emailFraud:Evidence {type: 'Email Record', details: 'Email from Victor Grant discussing fraudulent transactions with another party'})

// Dowody związane z przestępstwem włamania (Isla Taylor)
CREATE (witnessStatement:Evidence {type: 'Witness Statement_1', details: 'Witness saw black hair woman wanting to broke window in shop'})
CREATE (witnessStatement2:Evidence {type: 'Witness Statement_2', details: 'Witness saw someone with photograph near the robbed shop'})

// Dowody związane z przestępstwem morderstwa (Isla Taylor)
CREATE (securityFootage:Evidence {type: 'Security Footage', details: 'Surveillance footage shows black hair woman entering the victim\'s house before the murder. Height: 155-165 cm'})
CREATE (murderWeapon:Evidence {type: 'Murder Weapon', details: 'Murder weapon found in victim possession with engraved IT on blade'})

// Tworzenie zbrodni
CREATE (robbery:Crime {crimeType: 'Robbery', date: '2023-05-12', sentence: '5 years'})
CREATE (murder:Crime {crimeType: 'Murder', date: '2024-05-12', sentence: '25 years'})
CREATE (fraud:Crime {crimeType: 'Fraud', date: '2022-11-04', sentence: '3 years'})

// Tworzenie relacji dla znalezionych dowodów z defraudacją
CREATE (fakeInvoice)-[:RELATED_TO]->(fraud)
CREATE (bankRecord)-[:RELATED_TO]->(fraud)
CREATE (testimony)-[:RELATED_TO]->(fraud)
CREATE (emailFraud)-[:RELATED_TO]->(fraud)

// Tworzenie relacji dla znalezionych dowodów z kradzieżą
CREATE (witnessStatement)-[:RELATED_TO]->(robbery)
CREATE (witnessStatement2)-[:RELATED_TO]->(robbery)

// Tworzenie relacji dla znalezionych dowodów z morderstwem
CREATE (securityFootage)-[:RELATED_TO]->(murder)
CREATE (murderWeapon)-[:RELATED_TO]->(murder)
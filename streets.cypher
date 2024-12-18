CREATE (ElmStreet:Street {
    name: 'Elm Street',
    city: 'New York',
    postalCode: '10005',
    type: 'Residential',
});

CREATE (ParkLane:Street {
    name: 'Park Lane',
    city: 'New York',
    postalCode: '10006',
    type: 'Commercial',
});

CREATE (CedarAvenue:Street {
    name: 'Cedar Avenue',
    city: 'New York',
    postalCode: '10007',
    type: 'Industrial',
});

CREATE (WillowWay:Street {
    name: 'Willow Way',
    city: 'New York',
    postalCode: '10008',
    type: 'Residential',
});

CREATE (RiverSideDrive:Street {
    name: 'Riverside Drive',
    city: 'New York',
    postalCode: '10009',
    type: 'Commercial',
});

CREATE (SunsetBoulevard:Street {
    name: 'Sunset Boulevard',
    city: 'New York',
    postalCode: '10010',
    type: 'Industrial',
});

CREATE (AliceSmith)-[:LIVES_ON]->(RiverSideDrive);
CREATE (BobJohnson)-[:LIVES_ON]->(ElmStreet);
CREATE (CharlieBrown)-[:LIVES_ON]->(RiverSideDrive);
CREATE (DianaGreen)-[:LIVES_ON]->(ElmStreet);
CREATE (EveWhite)-[:LIVES_ON]->(ParkLane);
CREATE (FrankBlack)-[:LIVES_ON]->(RiverSideDrive);
CREATE (GraceHarris)-[:LIVES_ON]->(ParkLane);
CREATE (HenryKing)-[:LIVES_ON]->(ElmStreet);
CREATE (IvyScott)-[:LIVES_ON]->(CedarAvenue);
CREATE (JackLee)-[:LIVES_ON]->(SunsetBoulevard);
CREATE (KarenMitchell)-[:LIVES_ON]->(ElmStreet);
CREATE (LukeWalker)-[:LIVES_ON]->(WillowWay);
CREATE (MonaTaylor)-[:LIVES_ON]->(ElmStreet);
CREATE (NathanAdams)-[:LIVES_ON]->(RiverSideDrive);
CREATE (OliviaClark)-[:LIVES_ON]->(RiverSideDrive);
CREATE (PaulEvans)-[:LIVES_ON]->(SunsetBoulevard);
CREATE (QuinnBaker)-[:LIVES_ON]->(ElmStreet);
CREATE (RachelPhillips)-[:LIVES_ON]->(ParkLane);
CREATE (SteveMorris)-[:LIVES_ON]->(SunsetBoulevard);
CREATE (TinaCampbell)-[:LIVES_ON]->(CedarAvenue);
CREATE (UmaReed)-[:LIVES_ON]->(ElmStreet);
CREATE (VictorBell)-[:LIVES_ON]->(CedarAvenue);
CREATE (WendyTurner)-[:LIVES_ON]->(RiverSideDrive);
CREATE (XanderMorgan)-[:LIVES_ON]->(WillowWay);
CREATE (YaraCollins)-[:LIVES_ON]->(SunsetBoulevard);
CREATE (ZackFoster)-[:LIVES_ON]->(WillowWay);
CREATE (AmyYoung)-[:LIVES_ON]->(ElmStreet);
CREATE (BrianDixon)-[:LIVES_ON]->(ParkLane);
CREATE (CatherineKnight)-[:LIVES_ON]->(RiverSideDrive);
CREATE (DanielGrant)-[:LIVES_ON]->(SunsetBoulevard);
CREATE (EllaBrooks)-[:LIVES_ON]->(RiverSideDrive);
CREATE (FinnHayes)-[:LIVES_ON]->(RiverSideDrive);
CREATE (GeorgiaWright)-[:LIVES_ON]->(WillowWay);
CREATE (HugoDawson)-[:LIVES_ON]->(ParkLane);
CREATE (IreneStone)-[:LIVES_ON]->(ElmStreet);
CREATE (JakePerry)-[:LIVES_ON]->(CedarAvenue);
CREATE (KaraBell)-[:LIVES_ON]->(ElmStreet);
CREATE (LiamFord)-[:LIVES_ON]->(SunsetBoulevard);
CREATE (MiaParker)-[:LIVES_ON]->(SunsetBoulevard);
CREATE (NathanMiller)-[:LIVES_ON]->(WillowWay);
CREATE (OliveHunt)-[:LIVES_ON]->(RiverSideDrive);
CREATE (PeterReynolds)-[:LIVES_ON]->(ElmStreet);
CREATE (QuincyScott)-[:LIVES_ON]->(CedarAvenue);
CREATE (RoseEllis)-[:LIVES_ON]->(RiverSideDrive);
CREATE (SamuelWarren)-[:LIVES_ON]->(WillowWay);
CREATE (TinaBlake)-[:LIVES_ON]->(WillowWay);
CREATE (UmarDunn)-[:LIVES_ON]->(RiverSideDrive);
CREATE (VeraCole)-[:LIVES_ON]->(ParkLane);
CREATE (WilliamEvans)-[:LIVES_ON]->(CedarAvenue);
CREATE (ZaraLewis)-[:LIVES_ON]->(RiverSideDrive);
CREATE (AaronCarter)-[:LIVES_ON]->(RiverSideDrive);
CREATE (BellaHughes)-[:LIVES_ON]->(WillowWay);
CREATE (CalebFisher)-[:LIVES_ON]->(ElmStreet);
CREATE (DaisyAnderson)-[:LIVES_ON]->(RiverSideDrive);
CREATE (EthanRoss)-[:LIVES_ON]->(ElmStreet);
CREATE (FionaGriffin)-[:LIVES_ON]->(RiverSideDrive);
CREATE (GeorgePayne)-[:LIVES_ON]->(SunsetBoulevard);
CREATE (HannahStewart)-[:LIVES_ON]->(ElmStreet);
CREATE (IsaacBennett)-[:LIVES_ON]->(WillowWay);
CREATE (JasmineOwens)-[:LIVES_ON]->(SunsetBoulevard);
CREATE (KyleMorris)-[:LIVES_ON]->(WillowWay);
CREATE (LauraMitchell)-[:LIVES_ON]->(ElmStreet);
CREATE (MartinEllis)-[:LIVES_ON]->(RiverSideDrive);
CREATE (NinaReed)-[:LIVES_ON]->(SunsetBoulevard);
CREATE (OscarPeterson)-[:LIVES_ON]->(ParkLane);
CREATE (PaulaHarris)-[:LIVES_ON]->(RiverSideDrive);
CREATE (RyanCole)-[:LIVES_ON]->(ElmStreet);
CREATE (SophiaBryant)-[:LIVES_ON]->(WillowWay);
CREATE (TomGray)-[:LIVES_ON]->(ParkLane);
CREATE (UnaWalker)-[:LIVES_ON]->(SunsetBoulevard);
CREATE (VictorLane)-[:LIVES_ON]->(ElmStreet);
CREATE (WandaHolmes)-[:LIVES_ON]->(WillowWay);
CREATE (XavierBlake)-[:LIVES_ON]->(WillowWay);
CREATE (YvonneCarter)-[:LIVES_ON]->(WillowWay);
CREATE (ZaneRobinson)-[:LIVES_ON]->(WillowWay);
CREATE (AliceHunter)-[:LIVES_ON]->(RiverSideDrive);
CREATE (BrianWright)-[:LIVES_ON]->(CedarAvenue);
CREATE (ClaraEdwards)-[:LIVES_ON]->(RiverSideDrive);
CREATE (DerekHill)-[:LIVES_ON]->(ElmStreet);
CREATE (EveBrooks)-[:LIVES_ON]->(ParkLane);
CREATE (FrankCooper)-[:LIVES_ON]->(WillowWay);
CREATE (GracePeterson)-[:LIVES_ON]->(CedarAvenue);
CREATE (HenryClark)-[:LIVES_ON]->(CedarAvenue);
CREATE (IsabelStevens)-[:LIVES_ON]->(ParkLane);
CREATE (JackTurner)-[:LIVES_ON]->(ParkLane);
CREATE (KaraLong)-[:LIVES_ON]->(ParkLane);
CREATE (LiamFord)-[:LIVES_ON]->(RiverSideDrive);
CREATE (MilaJenkins)-[:LIVES_ON]->(CedarAvenue);
CREATE (NoahHayes)-[:LIVES_ON]->(WillowWay);
CREATE (OliviaBell)-[:LIVES_ON]->(SunsetBoulevard);
CREATE (PeterBryant)-[:LIVES_ON]->(ParkLane);
CREATE (QuinnMason)-[:LIVES_ON]->(CedarAvenue);
CREATE (RubyHenderson)-[:LIVES_ON]->(RiverSideDrive);
CREATE (SamuelCrawford)-[:LIVES_ON]->(CedarAvenue);
CREATE (TinaEllis)-[:LIVES_ON]->(ParkLane);
CREATE (UmaFisher)-[:LIVES_ON]->(RiverSideDrive);
CREATE (VictorGriffin)-[:LIVES_ON]->(WillowWay);
CREATE (WendyHayes)-[:LIVES_ON]->(SunsetBoulevard);
CREATE (XanderIngram)-[:LIVES_ON]->(CedarAvenue);
CREATE (YaraJordan)-[:LIVES_ON]->(CedarAvenue);
CREATE (ZachKelly)-[:LIVES_ON]->(WillowWay);
CREATE (AliceLawson)-[:LIVES_ON]->(CedarAvenue);
CREATE (BrianMurray)-[:LIVES_ON]->(ParkLane);
CREATE (ClaraNewton)-[:LIVES_ON]->(SunsetBoulevard);
CREATE (DavidOwens)-[:LIVES_ON]->(SunsetBoulevard);
CREATE (EmmaParker)-[:LIVES_ON]->(WillowWay);
CREATE (FrankQuinn)-[:LIVES_ON]->(ElmStreet);
CREATE (GraceReed)-[:LIVES_ON]->(CedarAvenue);
CREATE (HenryStone)-[:LIVES_ON]->(ParkLane);
CREATE (IvyTaylor)-[:LIVES_ON]->(SunsetBoulevard);
CREATE (JackUnderwood)-[:LIVES_ON]->(ParkLane);
CREATE (KaraVance)-[:LIVES_ON]->(RiverSideDrive);
CREATE (LiamWalsh)-[:LIVES_ON]->(ParkLane);
CREATE (MayaXavier)-[:LIVES_ON]->(WillowWay);
CREATE (NathanYork)-[:LIVES_ON]->(WillowWay);
CREATE (OliviaZimmerman)-[:LIVES_ON]->(SunsetBoulevard);
CREATE (PaulAnderson)-[:LIVES_ON]->(CedarAvenue);
CREATE (QuinnBenson)-[:LIVES_ON]->(SunsetBoulevard);
CREATE (RubyCollins)-[:LIVES_ON]->(ElmStreet);
CREATE (SteveDavis)-[:LIVES_ON]->(ElmStreet);
CREATE (TinaElliot)-[:LIVES_ON]->(ElmStreet);
CREATE (UmaFord)-[:LIVES_ON]->(ElmStreet);
CREATE (VictorGreen)-[:LIVES_ON]->(ParkLane);
CREATE (WendyHale)-[:LIVES_ON]->(WillowWay);
CREATE (XavierIrwin)-[:LIVES_ON]->(WillowWay);
CREATE (YaraJackson)-[:LIVES_ON]->(SunsetBoulevard);
CREATE (ZackKennedy)-[:LIVES_ON]->(CedarAvenue);
CREATE (AmyLewis)-[:LIVES_ON]->(CedarAvenue);
CREATE (BrianMills)-[:LIVES_ON]->(SunsetBoulevard);
CREATE (ClaraNelson)-[:LIVES_ON]->(SunsetBoulevard);
CREATE (DavidOwens)-[:LIVES_ON]->(RiverSideDrive);
CREATE (EllaParker)-[:LIVES_ON]->(SunsetBoulevard);
CREATE (FinnQuinn)-[:LIVES_ON]->(ParkLane);
CREATE (GraceReynolds)-[:LIVES_ON]->(ElmStreet);
CREATE (HenrySimmons)-[:LIVES_ON]->(SunsetBoulevard);
CREATE (IslaTaylor)-[:LIVES_ON]->(ElmStreet);
CREATE (JackUnderhill)-[:LIVES_ON]->(ElmStreet);
CREATE (KaraVaughn)-[:LIVES_ON]->(ElmStreet);
CREATE (LiamWells)-[:LIVES_ON]->(SunsetBoulevard);
CREATE (MonaXanders)-[:LIVES_ON]->(WillowWay);
CREATE (NoahYoung)-[:LIVES_ON]->(WillowWay);
CREATE (OliviaZane)-[:LIVES_ON]->(CedarAvenue);
CREATE (PaulAdams)-[:LIVES_ON]->(WillowWay);
CREATE (QuinnBaker)-[:LIVES_ON]->(CedarAvenue);
CREATE (RubyCarter)-[:LIVES_ON]->(WillowWay);
CREATE (SteveDenton)-[:LIVES_ON]->(ElmStreet);
CREATE (TinaElliot)-[:LIVES_ON]->(RiverSideDrive);
CREATE (UmaFord)-[:LIVES_ON]->(RiverSideDrive);
CREATE (VictorGreen)-[:LIVES_ON]->(CedarAvenue);
CREATE (WendyHarris)-[:LIVES_ON]->(ParkLane);
CREATE (XanderIrwin)-[:LIVES_ON]->(RiverSideDrive);
CREATE (YvonneJacobs)-[:LIVES_ON]->(ParkLane);
CREATE (ZacharyKane)-[:LIVES_ON]->(SunsetBoulevard);
CREATE (AbigailLewis)-[:LIVES_ON]->(WillowWay);
CREATE (BenjaminMitchell)-[:LIVES_ON]->(ParkLane);
CREATE (CharlotteNelson)-[:LIVES_ON]->(WillowWay);
CREATE (DanielOwens)-[:LIVES_ON]->(SunsetBoulevard);
CREATE (EleanorParker)-[:LIVES_ON]->(CedarAvenue);
CREATE (FranklinQuinn)-[:LIVES_ON]->(ElmStreet);
CREATE (GeorgiaReynolds)-[:LIVES_ON]->(SunsetBoulevard);
CREATE (HarrySimmons)-[:LIVES_ON]->(ParkLane);
CREATE (IsabelTaylor)-[:LIVES_ON]->(CedarAvenue);
CREATE (JacobUnderwood)-[:LIVES_ON]->(RiverSideDrive);
CREATE (KatherineVance)-[:LIVES_ON]->(RiverSideDrive);
CREATE (LoganWalker)-[:LIVES_ON]->(ElmStreet);
CREATE (MiaXander)-[:LIVES_ON]->(WillowWay);
CREATE (NathanielYoung)-[:LIVES_ON]->(ElmStreet);
CREATE (OliviaZimmer)-[:LIVES_ON]->(RiverSideDrive);
CREATE (PatrickAllen)-[:LIVES_ON]->(WillowWay);
CREATE (QuincyBates)-[:LIVES_ON]->(CedarAvenue);
CREATE (RebeccaCollins)-[:LIVES_ON]->(CedarAvenue);
CREATE (SamuelDavis)-[:LIVES_ON]->(ElmStreet);
CREATE (TinaEvans)-[:LIVES_ON]->(RiverSideDrive);
CREATE (UrsulaFox)-[:LIVES_ON]->(ParkLane);
CREATE (VictorGreen)-[:LIVES_ON]->(SunsetBoulevard);
CREATE (WendyHarris)-[:LIVES_ON]->(CedarAvenue);
CREATE (XanderIrwin)-[:LIVES_ON]->(ParkLane);
CREATE (YvonneJones)-[:LIVES_ON]->(ElmStreet);
CREATE (ZacharyKlein)-[:LIVES_ON]->(SunsetBoulevard);
CREATE (AvaLee)-[:LIVES_ON]->(SunsetBoulevard);
CREATE (BrianMiller)-[:LIVES_ON]->(ParkLane);
CREATE (CatherineNash)-[:LIVES_ON]->(ElmStreet);
CREATE (DavidOwens)-[:LIVES_ON]->(RiverSideDrive);
CREATE (ElenaPatterson)-[:LIVES_ON]->(ParkLane);
CREATE (FrankQuinn)-[:LIVES_ON]->(CedarAvenue);
CREATE (GinaRoberts)-[:LIVES_ON]->(CedarAvenue);
CREATE (HollySmith)-[:LIVES_ON]->(ElmStreet);
CREATE (IsaacTurner)-[:LIVES_ON]->(ParkLane);
CREATE (JackWilliams)-[:LIVES_ON]->(ElmStreet);
CREATE (KathyDavis)-[:LIVES_ON]->(RiverSideDrive);
CREATE (LeoJohnson)-[:LIVES_ON]->(SunsetBoulevard);
CREATE (MiaClark)-[:LIVES_ON]->(WillowWay);
CREATE (NateWalker)-[:LIVES_ON]->(SunsetBoulevard);
CREATE (OliviaTaylor)-[:LIVES_ON]->(WillowWay);
CREATE (PeterScott)-[:LIVES_ON]->(CedarAvenue);
CREATE (QuincyMorris)-[:LIVES_ON]->(CedarAvenue);
CREATE (RachelEvans)-[:LIVES_ON]->(CedarAvenue);
CREATE (SamuelAnderson)-[:LIVES_ON]->(ElmStreet);
CREATE (TracyHarris)-[:LIVES_ON]->(ElmStreet);
CREATE (UrsulaJones)-[:LIVES_ON]->(ElmStreet);
CREATE (VictorKing)-[:LIVES_ON]->(SunsetBoulevard);
CREATE (WendyNelson)-[:LIVES_ON]->(RiverSideDrive);
CREATE (XanderParker)-[:LIVES_ON]->(WillowWay);
CREATE (YvonneReid)-[:LIVES_ON]->(ParkLane);
CREATE (ZacharyThompson)-[:LIVES_ON]->(WillowWay);
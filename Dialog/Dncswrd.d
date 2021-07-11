BEGIN Dncswrd


IF ~True()~ THEN BEGIN 0
    SAY ~A dancing sword hovers in front of you. It slowly moves closer...~
        ++ ~Move your hands outward to greet it.~ GOTO 1
        ++ ~Leave it be.~ EXIT
END

IF ~~ THEN BEGIN 1
SAY ~It jumps high into the air then lowers slowly, like a feather into your hands.~ 
    IF ~~ THEN DO ~GiveItemCreate("dncswrd", LastTalkedToBy,0,0,0) DestroySelf()~ EXIT
    IF ~InParty(Player2) CharName("Elric", Player2)~ GOTO 2 
END

IF ~~ THEN BEGIN 2
SAY ~A sense of dread overwhelms you, and a voice calls out... "Elric"
Suddenly a portal appears and out shoots a black sword. It hovers in front of Elric. He smiles, and the black sword floats into his scabbard.~
    IF ~~ THEN DO ~GiveItemCreate("STORMBRG", LastTalkedToBy,0,0,0) CreateVisualEffect("SPPORTAL",[2481.3777]) Wait(2) DestroySelf()~ EXIT
END

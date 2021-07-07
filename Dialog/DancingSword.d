BEGIN DancingSword

IF ~True()~ THEN BEGIN 0
SAY ~A dancing sword hovers in front of you. It slowly moves closer...~
    ++ ~Move your hands outward to greet it.~ GOTO 1
    ++ ~Leave it be.~ EXIT
END

IF ~~ THEN BEGIN 1
SAY ~It jumps high into the air then lowers slowly, like a feather into your hands.~
    IF ~~ THEN DO ~GiveItemCreate("dncswrd.ITM", LastTalkedToBy,0,0,0)~ EXIT
END

club(barcelona).
club(real).
club(atletico).
club(bayern).
club(borussia).
club(leipzig).
club(mancity).
club(liverpool).
club(manunited).
club(juventus).
club(milan).
club(inter).
club(psg).
club(monaco).
club(marseille).

clubcountry(barcelona, spain).
clubcountry(real, spain).
clubcountry(bayern, spain).
clubcountry(borussia, germany).
clubcountry(leipzig, germany).
clubcountry(mancity, england).
clubcountry(liverpool, england).
clubcountry(manunited, england).
clubcountry(juventus, italy).
clubcountry(milan, italy).
clubcountry(inter, italy).
clubcountry(psg, france).
clubcountry(monaco, france).
clubcountry(marseille, france).

clubcoach(barcelona, koeman).
clubcoach(real, zidane).
clubcoach(atletico, simeone).
clubcoach(bayern, flick).
clubcoach(borussia, terzic).
clubcoach(leipzig, nagelsmann).
clubcoach(mancity, guardiola).
clubcoach(liverpool, klopp).
clubcoach(manunited, solskjaer).
clubcoach(juventus, pirlo).
clubcoach(milan, pioli).
clubcoach(inter, konte).
clubcoach(psg, pochettino).
clubcoach(monaco, kovac).

playerclub(messi, barcelona).
playerclub(griezman, barcelona).
playerclub(ramos, real).
playerclub(benzema, real).
playerclub(suarez, atletico).
playerclub(oblak, suarez).
playerclub(lewandowski, bayern).
playerclub(muller, bayern).
playerclub(haaland, borussia).
playerclub(adams, leipzig).
playerclub(foden, mancity).
playerclub(gundogan, mancity).
playerclub(salah, liverpool).
playerclub(mane, liverpool).
playerclub(pogba, manunited).
playerclub(ronaldo, juventus).
playerclub(artur, juventus).
playerclub(ibragimovich, milan).
playerclub(hernandez, milan).
playerclub(lukaku, inter).
playerclub(lautaro, inter).
playerclub(neymar, psg).
playerclub(mbappe, psg).
playerclub(benyeder, monaco).
playerclub(vea, lille).

playerposition(messi, forward).
playerposition(griezman, forward).
playerposition(ramos, defender).
playerposition(benzema, forward).
playerposition(suarez, forward).
playerposition(oblak, goalkeeper).
playerposition(lewandowski, forward).
playerposition(muller, middlefielder).
playerposition(haaland, forward).
playerposition(adams, middlefielder).
playerposition(foden, middlefielder).
playerposition(gundogan, middlefielder).
playerposition(salah, forward).
playerposition(pogba, middlefielder).
playerposition(ronaldo, forward).
playerposition(artur, middlefielder).
playerposition(ibragimovich, forward).
playerposition(hernandez, defender).
playerposition(lukaku, forward).
playerposition(neymar, forward).
playerposition(mbappe, forward).
playerposition(benyeder, middlefielder).
playerposition(vea, forward).

playercountry(messi, argentina).
playercountry(griezman, france).
playercountry(ramos, spain).
playercountry(benzema, france).
playercountry(suarez, uruguay).
playercountry(oblak, slovenia).
playercountry(lewandowski, poland).
playercountry(muller, germany).
playercountry(haaland, england).
playercountry(adams, usa).
playercountry(foden, england).
playercountry(gundogan, germany).
playercountry(salah, egypt).
playercountry(mane, senegal).
playercountry(pogba, france).
playercountry(ronaldo, portugal).
playercountry(artur, brazil).
playercountry(ibragimovich, sweden).
playercountry(hernandez, spain).
playercountry(lukaku, belgium).
playercountry(lautaro, argentina).
playercountry(neymar, brazil).
playercountry(mbappe, france).
playercountry(benyeder, spain).
playercountry(vea, usa).

teammates(X,Y):-playerclub(X,Z),playerclub(Y,Z),not(X=Y).
nationalteammates(X,Y):-playercountry(X,Z),playercountry(Y,Z),not(X=Y).
playercoach(X,Y):-playerclub(X,Z),clubcoach(Z,Y),not(X=Y).
sameleagueclubs(X,Y):-clubcountry(X,Z),clubcountry(Y,Z),not(X=Y).
nativeplayer(X,Y):-playercountry(X,Y),playerclub(X,Z),clubcountry(Z,Y),not(X=Y).
sameposition(X,Y):-playerposition(X,Z),playerposition(Y,Z),not(X=Y).
sameclubsameposition(X,Y):-teammates(X,Y),sameposition(X,Y),not(X=Y).
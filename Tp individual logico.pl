vive(agatha).
vive(charles).
vive(mayordomo).

agathaOdiaA(Alguien):-
    vive(Alguien),
    Alguien \= mayordomo.

odiaA(mayordomo,Alguien):-
    agathaOdiaA(Alguien).
odiaA(agatha,Alguien):-
    agathaOdiaA(Alguien).
odiaA(charles,Alguien):-
    vive(Alguien),
    not(agathaOdiaA(Alguien)).

masRicoQueAgatha(Alguien):-
    not(odiaA(mayordomo,Alguien)),
    vive(Alguien).

matoAAgatha(Alguien):-
    odiaA(Alguien,agatha),
    not(masRicoQueAgatha(Alguien)).
/*1.
 * 
 matoAAgatha(Quien).
 Quien = agatha
 false
	 
 2.
 - odiaA(Alguien,milhouse).
   false
 - odiaA(charles,Quien).
   Quien = mayordomo
 - odiaA(A,agatha).
   A = mayordomo
   A = agatha
   false
 - odiaA(Quien,AQuien).
   AQuien = agatha,
   Quien = mayordomo
   AQuien = charles,
   Quien = mayordomo
   AQuien = Quien, Quien = agatha
   AQuien = charles,
   Quien = agatha
   AQuien = mayordomo,
   Quien = charles
 - odiaA(mayordomo,_).
   true
   true
   false
*/

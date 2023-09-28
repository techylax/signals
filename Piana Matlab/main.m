clear all
[A]=jounynote(1,49);
[B]=jounynote(1,51);
[C]=jounynote(1,40);
[D]=jounynote(1,42);
[E]=jounynote(1,44);
[F]=jounynote(1,45);
[G]=jounynote(1,47);
[Gp]=jounynote(0.5,47);
[Fp]=jounynote(0.5,45);
[Cp]=jounynote(0.5,40);
[Fpp]=jounynote(0.25,45);	
[Dpp]=jounynote(0.25,42);	
[Epp]=jounynote(0.25,44);	

y= [ C C G G A A G F F E E D D	C 	G	G	F	F	E	E	D 	G	G	F	F	E	E  Fp	D	C	C	G	G	A	A	Gp	F	F	E	E	Dpp	Epp	Cp];
soundsc(y,44100);

 
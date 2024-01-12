todolist:=[ ["G2","Ad"], ["F4","Ad"], ["E6","SC"], ["E6","Ad"], ["E7","SC"], ["E7","Ad"], ["E8","Ad"] ]; 

printthefailures:=true; 
//printthefailures:=false;

for x in todolist do
	L,orbs,labels:=Liealgreps(x[1],x[2]); 
	Ad:=AdjointRepresentation(L); 
	E,F,H:=ChevalleyBasis(L);

	if printthefailures then

		x[1],x[2];  
		"------------"; 
		"No h with [h,e]=e for nilpotent orbits e with the following labels:"; 
		labels[checkheetorus(L,Ad,H,orbs)];
		a1,a2:=checkfsl2(L,Ad,orbs);
		if not(#a2 eq 0) then "Error occured for fake sl2 calculation"; end if; 
		"No fake sl2 overalgebra for nilpotent orbits with the following labels:"; 
		labels[a1];
		"No sl2 overalgebra for nilpotent orbits with the following labels:";
		labels[checksl2(L,orbs)];
		"No pgl2 overalgebra for nilpotent orbits with the following labels:";
		labels[checkpgl2(L,Ad,E,H,orbs)];
		"------------";
	else
		x[1],x[2]; 
		"------------"; 
		"h with [h,e]=e for nilpotent orbits e with the following labels:"; 
		a:=checkheetorus(L,Ad,H,orbs);
		labels[ [i : i in [1..#orbs] | not(i in  a) ]]; 
		if not(#a2 eq 0) then "Error occured for fake sl2 calculation"; end if; 
		"No fake sl2 overalgebra for nilpotent orbits with the following labels:"; 
		labels[[i : i in [1..#orbs] | not(i in a1)]];
		"sl2 overalgebra for nilpotent orbits with the following labels:";
		a:=checksl2(L,orbs);
		labels[[i : i in [1..#orbs] | not(i in a)]];
		"pgl2 overalgebra for nilpotent orbits with the following labels:";
		a:=checkpgl2(L,Ad,E,H,orbs);
		labels[[i : i in [1..#orbs] | not(i in a)]];
		"------------";
	end if; 
end for; 


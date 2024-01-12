
//only implemented for characteristic 2 at the moment 

Liealgreps:=function(TYPE, ISO)
	L:=LieAlgebra(TYPE,GF(2):Isogeny:=ISO);
	_,Rv:=RootSystem(L);
	if TYPE eq "G2" then
		orbs:=[Rv[1]+Rv[2], Rv[2]+Rv[5], Rv[1], Rv[2]];
		labels:=[ "G_{2}", "G_{2}(a_{1})", "tilde{A}_{1}","A_{1}"];
	end if; 

	if TYPE eq "F4" then
		orbs:=[Rv[4]+Rv[1]+Rv[3]+Rv[2],
		Rv[1]+Rv[2]+Rv[7]+Rv[6],
		Rv[4]+Rv[7]+Rv[5]+Rv[9],
		Rv[4]+Rv[8]+Rv[9]+Rv[20],
		Rv[4]+Rv[3]+Rv[2],
		Rv[1]+Rv[3]+Rv[2],
		Rv[2]+Rv[5]+Rv[9]+Rv[18],
		Rv[5]+Rv[13]+Rv[18]+Rv[22],
		Rv[2]+Rv[7]+Rv[9],
		Rv[10]+Rv[15]+Rv[16]+Rv[14],
		Rv[4]+Rv[3]+Rv[1],
		Rv[5]+Rv[11]+Rv[16],
		Rv[2]+Rv[3],
		Rv[2]+Rv[4]+Rv[1],
		Rv[3]+Rv[4],
		Rv[13]+Rv[12]+Rv[24],
		Rv[1]+Rv[2],
		Rv[1]+Rv[3],
		Rv[21]+Rv[24],
		Rv[3],
		Rv[1]
		];

		labels:=[ 
		"F_{4}", 
		"F_{4}(a_{1})", 
		"F_{4}(a_{2})", 
		"(C_{3})^{(2)}", 
		"C_{3}", 
		"B_{3}",   
		"F_{4}(a_{3})", 
		"C_{3}(a_{1})^{(2)}", 
		"C_{3}(a_{1})", 
		"(tilde{A}_{2}+A_{1})^{(2)}", 
		"tilde{A}_{2}+A_{1}", 
		"(B_{2})^{(2)}",
		"B_{2}", 
		"A_{2}+tilde{A}_{1}", 
		"tilde{A}_{2}", 
		"(A_{2})^{(2)}", 
		"A_{2}", 
		"A_{1}+tilde{A}_{1}", 
		"(tilde{A}_{1})^{(2)}", 
		"tilde{A}_{1}", 
		"A_{1}" ];
	end if; 

	if TYPE eq "E6" then
		orbs:=[Rv[1]+Rv[3]+Rv[4]+Rv[5]+Rv[6]+Rv[2],
		Rv[1]+Rv[3]+Rv[5]+Rv[8]+Rv[9]+Rv[6],
		Rv[1]+Rv[3]+Rv[4]+Rv[5]+Rv[2],
		Rv[1]+Rv[9]+Rv[8]+Rv[14]+Rv[19]+Rv[11],
		Rv[6]+Rv[5]+Rv[2]+Rv[9]+Rv[8],
		Rv[1]+Rv[3]+Rv[4]+Rv[5]+Rv[6],
		Rv[1]+Rv[3]+Rv[4]+Rv[6]+Rv[2],
		Rv[3]+Rv[4]+Rv[5]+Rv[2],
		Rv[1]+Rv[3]+Rv[4]+Rv[5],
		Rv[3]+Rv[2]+Rv[9]+Rv[10],
		Rv[1]+Rv[3]+Rv[4]+Rv[6],
		Rv[1]+Rv[3]+Rv[5]+Rv[6]+Rv[2],
		Rv[1]+Rv[3]+Rv[4],
		Rv[1]+Rv[3]+Rv[6]+Rv[2],
		Rv[1]+Rv[3]+Rv[5]+Rv[6],
		Rv[1]+Rv[3]+Rv[5],
		Rv[1]+Rv[3],
		Rv[1]+Rv[4]+Rv[6],
		Rv[1]+Rv[4],
		Rv[1]
		];

		labels:=[ "E_{6}", "E_{6}(a_{1})", "D_{5}", "E_{6}(a_{3})", "D_{5}(a_{1})", "A_{5}",   "A_{4}+A_{1}", "D_{4}", "A_{4}", "D_{4}(a_{1})", "A_{3}+A_{1}", 
		  "2A_{2}+A_{1}", "A_{3}", "A_{2}+2A_{1}", "2A_{2}", "A_{2}+A_{1}", "A_{2}", 
		  "3A_{1}", "2A_{1}", "A_{1}" ];
	end if; 

	if TYPE eq "E7" then
		orbs:=
		[ Rv[1]+Rv[2]+Rv[3]+Rv[4]+Rv[5]+Rv[6]+Rv[7], 
		Rv[1]+Rv[3]+Rv[10]+Rv[9]+Rv[5]+Rv[6]+Rv[7],
		Rv[1]+Rv[2]+Rv[3]+Rv[9]+Rv[11]+Rv[12]+Rv[13], 
		Rv[1]+Rv[9]+Rv[10]+Rv[16]+Rv[22]+Rv[12]+Rv[7], 
		Rv[1]+Rv[2]+Rv[3]+Rv[4]+Rv[5]+Rv[6], 
		Rv[1]+Rv[3]+Rv[5]+Rv[9]+Rv[10]+Rv[6], 
		Rv[2]+Rv[3]+Rv[4]+Rv[5]+Rv[6]+Rv[7], 
		Rv[1]+Rv[15]+Rv[17]+Rv[16]+Rv[18]+Rv[24]+Rv[13], 
		Rv[2]+Rv[5]+Rv[6]+Rv[7]+Rv[10]+Rv[9], 
		Rv[1]+Rv[2]+Rv[3]+Rv[4]+Rv[5]+Rv[7], 
		Rv[14]+Rv[17]+Rv[15]+Rv[16]+Rv[12]+Rv[37]+Rv[13], 
		Rv[1]+Rv[3]+Rv[4]+Rv[5]+Rv[6]+Rv[7], 
		Rv[14]+Rv[15]+Rv[27]+Rv[16]+Rv[18]+Rv[19]+Rv[24], 
		Rv[1]+Rv[2]+Rv[3]+Rv[4]+Rv[5], 
		Rv[17]+Rv[9]+Rv[1]+Rv[8]+Rv[6]+Rv[12], 
		Rv[2]+Rv[3]+Rv[10]+Rv[11]+Rv[12]+Rv[13],
		Rv[7]+Rv[1]+Rv[3]+Rv[9]+Rv[11]+Rv[5],
		Rv[1]+Rv[2]+Rv[4]+Rv[5]+Rv[6]+Rv[7],
		Rv[1]+Rv[3]+Rv[4]+Rv[5]+Rv[6], 
		Rv[1]+Rv[2]+Rv[3]+Rv[4]+Rv[6]+Rv[7], 
		Rv[1]+Rv[3]+Rv[9]+Rv[11]+Rv[5],
		Rv[1]+Rv[3]+Rv[4]+Rv[5]+Rv[7], 
		Rv[2]+Rv[3]+Rv[4]+Rv[5]+Rv[7], 
		Rv[2]+Rv[4]+Rv[5]+Rv[6]+Rv[7], 
		Rv[1]+Rv[2]+Rv[3]+Rv[5]+Rv[6]+Rv[7], 
		Rv[1]+Rv[3]+Rv[4]+Rv[5], 
		Rv[7]+Rv[18]+Rv[29]+Rv[17]+Rv[9]+Rv[13], 
		Rv[1]+Rv[3]+Rv[4]+Rv[6]+Rv[7], 
		Rv[3]+Rv[2]+Rv[9]+Rv[11]+Rv[7], 
		Rv[2]+Rv[3]+Rv[4]+Rv[5], 
		Rv[1]+Rv[2]+Rv[4]+Rv[5]+Rv[7], 
		Rv[3]+Rv[2]+Rv[9]+Rv[11], 
		Rv[1]+Rv[3]+Rv[4]+Rv[6], 
		Rv[1]+Rv[2]+Rv[3]+Rv[5]+Rv[6], 
		Rv[2]+Rv[5]+Rv[6]+Rv[7], 
		Rv[1]+Rv[2]+Rv[3]+Rv[5]+Rv[7], 
		Rv[1]+Rv[3]+Rv[6]+Rv[7], 
		Rv[1]+Rv[3]+Rv[4], 
		Rv[1]+Rv[3]+Rv[5]+Rv[7], 
		Rv[1]+Rv[3]+Rv[5], 
		Rv[1]+Rv[2]+Rv[5]+Rv[7],
		Rv[1]+Rv[3], 
		Rv[1]+Rv[4]+Rv[6], 
		Rv[2]+Rv[5]+Rv[7], 
		Rv[1]+Rv[4], 
		Rv[1] ];


		labels:=[ "E_{7}", "E_{7}(a_{1})", "E_{7}(a_{2})", "E_{7}(a_{3})", "E_{6}", 
		  "E_{6}(a_{1})", "D_{6}", "E_{7}(a_{4})", "D_{6}(a_{1})", "D_{5}+A_{1}", 
		  "(A_{6})^{(2)}", "A_{6}", "E_{7}(a_{5})", "D_{5}", "E_{6}(a_{3})", 
		  "D_{6}(a_{2})", "D_{5}(a_{1})+A_{1}", "A_{5}+A_{1}", "(A_{5})'", 
		  "A_{4}+A_{2}", "D_{5}(a_{1})", "A_{4}+A_{1}", "D_{4}+A_{1}", 
		  "(A_{5})''", "A_{3}+A_{2}+A_{1}", "A_{4}", 
		  "(A_{3}+A_{2})^{(2)}", "A_{3}+A_{2}", "D_{4}(a_{1})+A_{1}", "D_{4}", 
		  "A_{3}+2A_{1}", "D_{4}(a_{1})", "(A_{3}+A_{1})'", "2A_{2}+A_{1}", 
		  "(A_{3}+A_{1})''", "A_{2}+3A_{1}", "2A_{2}", "A_{3}", 
		  "A_{2}+2A_{1}", "A_{2}+A_{1}", "4A_{1}", "A_{2}", "(3A_{1})'", 
		  "(3A_{1})''", "2A_{1}", "A_{1}"];
	end if; 

	if TYPE eq "E8" then
		orbs:=[
		Rv[1]+Rv[3]+Rv[4]+Rv[5]+Rv[6]+Rv[7]+Rv[8]+Rv[2],
		Rv[1]+Rv[10]+Rv[11]+Rv[5]+Rv[6]+Rv[7]+Rv[8]+Rv[2],
		Rv[1]+Rv[3]+Rv[10]+Rv[12]+Rv[13]+Rv[14]+Rv[8]+Rv[2],
		Rv[9]+Rv[10]+Rv[11]+Rv[12]+Rv[19]+Rv[13]+Rv[7]+Rv[8],
		Rv[9]+Rv[10]+Rv[11]+Rv[12]+Rv[19]+Rv[13]+Rv[14]+Rv[15],
		Rv[1]+Rv[3]+Rv[4]+Rv[5]+Rv[6]+Rv[7]+Rv[2],
		Rv[9]+Rv[17]+Rv[19]+Rv[18]+Rv[20]+Rv[21]+Rv[7]+Rv[8],
		Rv[9]+Rv[17]+Rv[19]+Rv[18]+Rv[20]+Rv[26]+Rv[14]+Rv[15],
		Rv[1]+Rv[3]+Rv[11]+Rv[10]+Rv[5]+Rv[6]+Rv[7],
		Rv[16]+Rv[17]+Rv[24]+Rv[18]+Rv[20]+Rv[33]+Rv[21]+Rv[8],
		Rv[17]+Rv[20]+Rv[21]+Rv[19]+Rv[18]+Rv[22]+Rv[1]+Rv[54],
		Rv[3]+Rv[4]+Rv[5]+Rv[6]+Rv[7]+Rv[8]+Rv[2],
		Rv[16]+Rv[23]+Rv[24]+Rv[25]+Rv[20]+Rv[38]+Rv[14]+Rv[15],
		Rv[1]+Rv[2]+Rv[3]+Rv[10]+Rv[12]+Rv[13]+Rv[14],
		Rv[1]+Rv[3]+Rv[4]+Rv[5]+Rv[6]+Rv[8]+Rv[2],
		Rv[5]+Rv[12]+Rv[49]+Rv[9]+Rv[26]+Rv[27]+Rv[15]+Rv[8],
		Rv[8]+Rv[7]+Rv[6]+Rv[5]+Rv[10]+Rv[11]+Rv[2],
		Rv[23]+Rv[24]+Rv[25]+Rv[26]+Rv[28]+Rv[27]+Rv[15]+Rv[22],
		Rv[1]+Rv[10]+Rv[11]+Rv[18]+Rv[25]+Rv[13]+Rv[7],
		Rv[1]+Rv[3]+Rv[5]+Rv[10]+Rv[11]+Rv[6]+Rv[8],
		Rv[1]+Rv[3]+Rv[4]+Rv[5]+Rv[6]+Rv[7]+Rv[8],
		Rv[8]+Rv[14]+Rv[13]+Rv[12]+Rv[11]+Rv[3]+Rv[2],
		Rv[1]+Rv[3]+Rv[4]+Rv[5]+Rv[6]+Rv[2],
		Rv[3]+Rv[4]+Rv[5]+Rv[6]+Rv[7]+Rv[2],
		Rv[31]+Rv[35]+Rv[30]+Rv[33]+Rv[34]+Rv[32]+Rv[15]+Rv[22],
		Rv[1]+Rv[3]+Rv[4]+Rv[5]+Rv[7]+Rv[8]+Rv[2],
		Rv[1]+Rv[3]+Rv[5]+Rv[10]+Rv[11]+Rv[6],
		Rv[1]+Rv[17]+Rv[19]+Rv[18]+Rv[20]+Rv[27]+Rv[14],
		Rv[1]+Rv[4]+Rv[5]+Rv[6]+Rv[7]+Rv[8]+Rv[2],
		Rv[7]+Rv[6]+Rv[5]+Rv[10]+Rv[11]+Rv[2],
		Rv[13]+Rv[14]+Rv[16]+Rv[17]+Rv[19]+Rv[18]+Rv[44],
		Rv[1]+Rv[3]+Rv[4]+Rv[5]+Rv[6]+Rv[7],
		Rv[30]+Rv[33]+Rv[40]+Rv[45]+Rv[35]+Rv[53]+Rv[60]+Rv[36],
		Rv[1]+Rv[3]+Rv[4]+Rv[5]+Rv[7]+Rv[2],
		Rv[16]+Rv[17]+Rv[31]+Rv[18]+Rv[20]+Rv[21]+Rv[27],
		Rv[19]+Rv[10]+Rv[1]+Rv[9]+Rv[6]+Rv[13]+Rv[8],
		Rv[14]+Rv[13]+Rv[12]+Rv[11]+Rv[3]+Rv[2],
		Rv[1]+Rv[3]+Rv[12]+Rv[10]+Rv[5]+Rv[7]+Rv[8],
		Rv[1]+Rv[3]+Rv[4]+Rv[5]+Rv[6]+Rv[8],
		Rv[1]+Rv[3]+Rv[4]+Rv[6]+Rv[7]+Rv[8]+Rv[2],
		Rv[1]+Rv[3]+Rv[4]+Rv[5]+Rv[2],
		Rv[19]+Rv[10]+Rv[1]+Rv[9]+Rv[6]+Rv[13],
		Rv[8]+Rv[17]+Rv[4]+Rv[21]+Rv[27]+Rv[18]+Rv[14],
		Rv[3]+Rv[4]+Rv[5]+Rv[7]+Rv[8]+Rv[2],
		Rv[1]+Rv[3]+Rv[5]+Rv[6]+Rv[7]+Rv[8]+Rv[2],
		Rv[1]+Rv[3]+Rv[12]+Rv[10]+Rv[5]+Rv[7],
		Rv[1]+Rv[3]+Rv[4]+Rv[5]+Rv[6],
		Rv[1]+Rv[3]+Rv[5]+Rv[6]+Rv[7]+Rv[8],
		Rv[1]+Rv[5]+Rv[6]+Rv[7]+Rv[8]+Rv[2],
		Rv[1]+Rv[3]+Rv[12]+Rv[10]+Rv[5],
		Rv[1]+Rv[3]+Rv[4]+Rv[6]+Rv[7]+Rv[8],
		Rv[1]+Rv[3]+Rv[4]+Rv[5]+Rv[7],
		Rv[3]+Rv[10]+Rv[12]+Rv[5]+Rv[7]+Rv[8],
		Rv[3]+Rv[4]+Rv[5]+Rv[2]+Rv[7],
		Rv[1]+Rv[3]+Rv[5]+Rv[6]+Rv[7]+Rv[2],
		Rv[1]+Rv[3]+Rv[4]+Rv[5],
		Rv[7]+Rv[20]+Rv[33]+Rv[19]+Rv[10]+Rv[14],
		Rv[1]+Rv[3]+Rv[4]+Rv[6]+Rv[7],
		Rv[3]+Rv[10]+Rv[12]+Rv[5]+Rv[7],
		Rv[1]+Rv[3]+Rv[4]+Rv[6]+Rv[8],
		Rv[1]+Rv[3]+Rv[5]+Rv[6]+Rv[8]+Rv[2],
		Rv[3]+Rv[4]+Rv[5]+Rv[2],
		Rv[3]+Rv[10]+Rv[12]+Rv[5],
		Rv[1]+Rv[3]+Rv[4]+Rv[6],
		Rv[1]+Rv[3]+Rv[5]+Rv[6]+Rv[8],
		Rv[1]+Rv[3]+Rv[5]+Rv[6],
		Rv[1]+Rv[3]+Rv[5]+Rv[7]+Rv[2],
		Rv[1]+Rv[3]+Rv[4],
		Rv[1]+Rv[3]+Rv[5]+Rv[7],
		Rv[1]+Rv[3]+Rv[5],
		Rv[1]+Rv[4]+Rv[6]+Rv[8],
		Rv[1]+Rv[3],
		Rv[1]+Rv[4]+Rv[6],
		Rv[1]+Rv[4],
		Rv[1]
		];

		labels:=[ "E_{8}", "E_{8}(a_{1})", "E_{8}(a_{2})", "E_{8}(a_{3})", "E_{8}(a_{4})", 
		  "E_{7}", "E_{8}(b_{4})", "E_{8}(a_{5})", "E_{7}(a_{1})", "E_{8}(b_{5})", 
		  "(D_{7})^{(2)}", "D_{7}", "E_{8}(a_{6})", "E_{7}(a_{2})", "E_{6}+A_{1}", 
		  "(D_{7}(a_{1}))^{(2)}", "D_{7}(a_{1})", "E_{8}(b_{6})", "E_{7}(a_{3})", 
		  "E_{6}(a_{1})+A_{1}", "A_{7}", "D_{7}(a_{2})", "E_{6}", 
		  "D_{6}", "(D_{5}+A_{2})^{(2)}", "D_{5}+A_{2}", "E_{6}(a_{1})", 
		  "E_{7}(a_{4})", "A_{6}+A_{1}", "D_{6}(a_{1})", "(A_{6})^{(2)}", "A_{6}", 
		  "E_{8}(a_{7})", "D_{5}+A_{1}", "E_{7}(a_{5})", "E_{6}(a_{3})+A_{1}", 
		  "D_{6}(a_{2})", "D_{5}(a_{1})+A_{2}", "A_{5}+A_{1}", "A_{4}+A_{3}", 
		  "D_{5}", "E_{6}(a_{3})", "(D_{4}+A_{2})^{(2)}", "D_{4}+A_{2}", 
		  "A_{4}+A_{2}+A_{1}", "D_{5}(a_{1})+A_{1}", "A_{5}", "A_{4}+A_{2}", 
		  "A_{4}+2A_{1}", "D_{5}(a_{1})", "2A_{3}", "A_{4}+A_{1}", 
		  "D_{4}(a_{1})+A_{2}", "D_{4}+A_{1}", "A_{3}+A_{2}+A_{1}", "A_{4}", 
		  "(A_{3}+A_{2})^{(2)}", "A_{3}+A_{2}", "D_{4}(a_{1})+A_{1}", "A_{3}+2A_{1}", 
		  "2A_{2}+2A_{1}", "D_{4}", "D_{4}(a_{1})", "A_{3}+A_{1}", "2A_{2}+A_{1}", 
		  "2A_{2}", "A_{2}+3A_{1}", "A_{3}", "A_{2}+2A_{1}", "A_{2}+A_{1}", "4A_{1}", 
		  "A_{2}", "3A_{1}", "2A_{1}", "A_{1}"];

	end if; 

	return L,orbs,labels; 
end function;




checkheetorus:=function(L,Ad,H,orbs)
	//It is sufficient to check if e in Im((ad e))
	noh:=[];
	for e in [1..#orbs] do
		if not(orbs[e] in Image(Matrix(Ad(orbs[e])))) then Append(~noh,e); end if; 
	end for; 
	return noh; 
end function; 



checkfsl2:=function(L,Ad,orbs)
	enotinade2:=[];
	obviousffail:=[]; 
	for e in [1..#orbs] do
		Ade:=Matrix(Ad(orbs[e]));
		if not(orbs[e] in Image(Ade^2)) then Append(~enotinade2,e); continue e; end if;
		testf:=Solution(Ade^2,Vector(orbs[e])); 
		testh:=orbs[e]*L!testf; 
		if not(testh*L!testf eq L!testf) then Append(~obviousffail,e); continue e; end if;
	end for; 
	return enotinade2,obviousffail; 
end function; 



checksl2:=function(L,orbs)
	nosl2:=[];
	B:=Basis(L);
	for j in [1..#orbs] do
		e:=orbs[j]; 
		for a in B do 
			f:=a; 
			h:=e*f;  
			if h ne L!0 and h*f eq L!0 and h*e eq L!0 then
				continue j; //we have an sl2
			end if; 
		end for;
		//if we got here we did not find an sl2 yet
		Append(~nosl2,j); 
	end for; 
	return nosl2; 
end function; 


checkpgl2:=function(L,Ad,E,H,orbs)
	hsub:=sub<L|H>;
	nopgl2:=[];
	for j in [1..#orbs] do
		e:=orbs[j]; 
		if not(e in Image(Matrix(Ad(e)))) then Append(~nopgl2,j); continue j; end if; 
		for h in hsub do
			if h*e eq e then 
 				for f in E do
 					if not(f in sub<L|e>) and e*f eq 0 and h*f eq f then
 						continue j; //now we have [h,e] = e, [h,f] = f and [e,f]=0 as required
 					end if;  
 				end for; 
			end if;  
		end for;
		//if the code gets here it has tried all h in \h with [h,e]=e and all e_\alpha without sucess
		Append(~nopgl2,j);  
	end for;
	return nopgl2;  
end function; 








function A = MonteCarlo (x, y, tol)
	A0=0;
	n=length(x);
	%Aflu capetele dreptunghiului in care incadrez curba data
	minimL=min(x);
	maximL=max(x);
	miniml=min(y);
	maximl=max(y);
	
	%Generez primul set de puncte aleatoare in dreptiunghi
	N=512;
	[o, p]=Gen2DPoints(N,minimL,maximL,miniml,maximl);
	%Verific cate puncte se afla in interiorul curbei inchise
	Nint=0;
	for i=1:length(o)
		Nint=Nint+number(x,y,o(i),p(i));
	end
	%Calculez aria curbei inchise
	A=(Nint/N) * (maximl-miniml) * (maximL-minimL);
	%Repet pasii de mai sus pana cand s-a obtinut o arie cat mai
	%apropiata de cea reala
	while abs(A-A0)>tol
		A0=A;
		N=2*N;
		[o p]=Gen2DPoints(N,miniml,maximl,minimL,maximL)
		Nint=0;
		for i=1:length(o)
			Nint=Nint+number(x,y,o(i),p(i));
		end
		A=(Nint/N) * (maximl-miniml) * (maximL-minimL);
	end
endfunction

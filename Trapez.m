function I = Trapez (x, y)
	n=length(x);
	I=0;
	for i=1:n-1
		if (x(i+1)-x(i)!=0)
			I=I+(y(i+1)+y(i))*(x(i+1)-x(i))/2;
		end
	end
	if I<0
		I=-I;
	end
endfunction

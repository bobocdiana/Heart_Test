function Nint =number(x, y, xp, yp)

%Calculez punctele din interiorul poligonului regulat cu ajutorul 
%algoritmului even-odd rule care imi "traseaza" o dreapta paralela cu Ox si verifica numarul de intersectari cu marginile poligonului
%Daca acest numar este par => punctul este in afara
%Daca acest numar este impar =>punctul este inauntru
n=length(x);
j=n-1;
Nint=0;
for i=1:n
    if( y(i)<yp && y(j)>=yp) || (y(j)<yp && y(i)>=yp) 
        if( x(i)+(yp-y(i) ) / ( y(j)-y(i) ) * ( x(j)-x(i) ) < xp)
               Nint= ~Nint;
       end
    end
    j = i;
end

end


function [x y] = gen(N, a, b, c, d)

% Algoritmul prezentat mai jos este metoda Halton, pe care o adpatez pt
% intervale care sa corespunda cu cele din cerinta.

e = 1/2;
f = 1/3;

for i = 1 : N
    j = i;
    w = i;
    resx = 0;
    resy = 0;
    while(j > 0) 
        resx = resx + e*rem(j,2);
        j = floor(j/2);
        e = e/2;
    end
    
    while (w > 0)
        resy = resy + f*rem(w,3);
        w = floor(w/3);
        f = f/3;
    end
    
    e = 1/2;
    f = 1/3;
    x(i) = a + (b-a) * resx;
    y(i) = c + (d-c) * resy;
end


end

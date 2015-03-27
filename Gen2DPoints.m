## Copyright (C) 2014 Diana
## 
## This program is free software; you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 2 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with Octave; see the file COPYING.  If not, see
## <http://www.gnu.org/licenses/>.

## Gen2DPoints

## Author: Diana <diana@diana-SATELLITE>
## Created: 2014-05-23

function [ x y ] = Gen2DPoints (N,a,b,c,d)
	% Aceasta functie genereaza un set de puncte aleatoare si uniform
	% distribuite in domeniul D=[a,b]x[c,d]
	%Am implementat algoritmul lui Halton de generarea a seriei de
	% puncte prin injumatatirea intervalului de cautare a punctelor
	%pe Ox si recursiv a fiecarui interval intermediar obtinut.
	
	x=zeros(N,1);
	y=zeros(N,1);
	h=1/2;
	for k=1:N
		i=k;
		h=1/2;
		result=0;
		while i>0
			result=result+h*rem(i,2);
			i=floor(i/2);
			h=h/2;
		end
		x(k)=a+(b-a)*result;
	end
	
	%Pentru puncctele pe Oy am impartit in intervalul de cautare in 3
	% si recursiv si fiecare interval intermediar obtinut.
	for k=1:N
		i=k;
		h=1/3;
		result=0;
		while i>0
			result=result+h*rem(i,3);
			i=floor(i/3);
			h=h/3;
		end
		y(k)=c+(d-c)*result;
	end
endfunction

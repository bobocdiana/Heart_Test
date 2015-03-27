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
	x0=b-a;
	y0=d-c;
	fx0=1/2;
	fy0=1/3;
	k=1;
	while k<=N
		result=0;
		f=fx0;
		index=1;
		while index>0 && k<=N
			k
			digit=rem(index,2);
			result=result+f*digit;
			x(k)=result
			k=k+1;
			index=(index-digit)/2
			f=f/2
		end
		x0=result;
		fx0=f;
	end
	k=1;
	while k<=N
		result=0;
		f=fy0;
		index=1;
		while  index>0 && k<=N
			k
			digit=rem(index,3);
			result=result+f*digit;
			y(k)=result
			k=k+1;
			index=(index-digit)/3
			f=f/3;
		end
		y0=result;
		fy0=f;
	end
endfunction

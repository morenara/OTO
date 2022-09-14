%% Uniformly spaced points in a circle
%	coded at 2022-09-14
%		by Jungkwuen An (morenara@gmail.com)
%
%	r: radius of circle
%	n: number of circlular lines in area (integer)
%
%	NOTE:
%		there is a bit problem of isotropy
%		since the azimutal density is 5% lower than
%		the radial density of points.
%
function [x,y] = f_polarUniform(r,n)

	dr = r/(n-1);
	x = [0];
	y = [0];

	for i=1:n-1,
		for j=1:6*i,
			tx = dr*i*cos(2*pi/6/i*j);
			ty = dr*i*sin(2*pi/6/i*j);
			x(end+1) = tx;
			y(end+1) = ty;
		end
	end
	
	x = x(:);
	y = y(:);
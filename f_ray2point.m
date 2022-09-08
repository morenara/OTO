%% Shortest distance between a ray and a point
%
%	coded at 2022-08-30
%	last update at 2022-09-07
%   by Jungkwuen An (morenara@gmail.com)
%
% [s, f] = f_ray2point (p, i, d)
%	p; point [x,y,z]
%	i; initial position of ray [x,y,z]
%	d; direction vector of ray [dx,dy,dz]
%
% Returns
%	s; shortest distance between a ray and a point [x,y,z]
%	f; -1 for opposite direction (ray doesn't toward the point)
%
function [s, f] = f_ray2point(p, i, d)

d = d./norm(d);		% normalizing direction vector
l = sum(d.*(p-i));
s = norm(d.*l+i-p);
f = sign(l);

%% Optimization NOTE for MATLAB R2016a
%
%	norm(x) is 2 times faster than sqrt(sum(x.*x))
%	x./norm(x) is faster than x/norm(x)
%	sum(d.*(p-o)) is 10 times faster than dot(d,p-o)
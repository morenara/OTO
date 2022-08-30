%% Shortest distance between a ray and a point
%
%	coded at 2022-08-30
%   by Jungkwuen An (morenara@gmail.com)
%
% [d, f] = f_ray2point (p, o, n)
%	p; point [x,y,z]
%	o; pivot position of line [x,y,z]
%	n; direction vector of line [x,y,z]
%
% Returns
%	d; shortest distance between a ray and a point [x,y,z]
%	f; -1 for opposite direction (ray doesn't toward the point)
%
function [d, f] = f_ray2point(p, o, n)

n = n./norm(n);		% normalizing n
l = sum(n.*(p-o));
d = norm(n.*l+o-p);
f = sign(l);

%% Optimization NOTE for MATLAB R2016a
%
%	norm(x) is 2 times faster than sqrt(sum(x.*x))
%	x./norm(x) is faster than x/norm(x)
%	sum(n.*(p-o)) is 10 times faster than dot(n,p-o)
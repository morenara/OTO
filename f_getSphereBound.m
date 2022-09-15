%% Find the bounding sphere for given points
%	coded at 2022-09-15
%	last upate at 2022-09-15
%		by Jungkwuen An (morenara@gmail.com)
%
%	x,y,z: the list of position for all points
%	p: center position of the bounding sphere, colume vector
%	r: radius of the bounding sphere
%
%	NOTE:
%		It will NOT provide the MINIMUM bounding sphere in most cases.
%		But, it is always guaranteed that the bounding sphere contains all points.
%
function [p,r] = f_getSphereBound(x,y,z)

	n = length(x);
	x = x(:);
	y = y(:);
	z = z(:);
	xyz = [x,y,z];
	
	p = mean(xyz)';
	dp = xyz-ones(n,1)*p';	% position difference from the center
	d = sqrt(sum(dp.^2,2));	% distance from the center to each points
	[~,i] = max(d);
	r = d(i);
	
end

%% Lightsource, Plane light, circular aperture
%	coded at 2022-09-14
%		by Jungkwuen An (morenara@gmail.com)
%
%	c: center position of plane light
%	d: direction vector
%	r: radius of circular plane
%	n: number of rays in a radial segment (integer)
%
function rays = f_lightPlaneCircle(c, d, r, n)

	% trim parameters
	c = c(:);
	d = d(:);
	d = d./norm(d);
	n = round(n);
	
	% create initial positions along z-axis
	[x,y] = f_polarUniform(r,n);
	z = zeros(size(x));
	xyz = [x,y,z];

	% tilting matrix to the direction vector
	% xt, yt, zt are axis vectors for tilted coordiates
	T = eye(3);
	z0 = [0;0;1];
	zt = d;
	xt = cross(zt,z0);
	if norm(xt) > 0,	% unless d is not parallel to z
		xt = xt./norm(xt);
		yt = cross(zt, xt);
		T = [xt,yt,zt];
	else
		if dot(z0,zt) < 0,
			T(end) = -1;
		end
	end
	xyz = xyz*T';	% tilting the initial position
	
	% create rays based on above
	rays = {};
	for i=1:length(x),
		nray = c_Rays();
		nray.init = xyz(i,:)'+c;
		nray.dir = d;
		rays{end+1} = nray;
	end

end
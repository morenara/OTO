%% Ray-tracing calculation
%	coded at 2022-09-15
%	last upate at 2022-09-15
%		by Jungkwuen An (morenara@gmail.com)
%
%	rays: cell array for rays
%
function rays = f_traceRays(rays)

	n = length(rays);
	
	for i=1:n,
		p = rays{i}.init;
		d = rays{i}.dir;
		t = [p,p+d];
	end
	
end
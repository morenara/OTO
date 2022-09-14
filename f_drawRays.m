%% Draw rays
%	coded at 2022-09-14
%		by Jungkwuen An (morenara@gmail.com)
%
%	rays: cell array for rays
%
function f_drawRays(rays)

	n = length(rays);
	figure('name','Rays');
	hold on;
	
	for i=1:n,
		p = rays{i}.init;
		d = rays{i}.dir;
		t = [p,p+d];
		line(t(1,:),t(2,:),t(3,:));
	end
	axis equal;
	xlabel('x');
	ylabel('y');
	zlabel('z');
	
end
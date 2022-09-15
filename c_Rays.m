%% Rays class
%	coded at 2022-09-06
%	last upate at 2022-09-08
%		by Jungkwuen An (morenara@gmail.com)
%
classdef c_Rays
	properties
		% Geometric prop.
		init % initial position
		dir % direction (always normalized)
		term % terminal position
		OPL % optical path length

		% Simulation
		traced % traced or not (true/false)
		gen % generation (0,1,2,3...)
		prev % previous ray index
		next % next ray index
		
		% Optical prop.
		wav % wavelength
		pow % power

		% Graphical prop.
		linecolor
		linestyle
		linewidth
		visible
	end
end

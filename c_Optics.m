%% Optics class
%	coded at 2022-09-15
%	last upate at 2022-09-15
%		by Jungkwuen An (morenara@gmail.com)
%
classdef c_Optics
	properties
		id;			% unique number for identifying
		type1;		% mirror, lens, grating of front surface
		type2;		% mirror, lens, grating of rear surface
		shape;		% circle, rectangle
		
		% geometrical param.
		size;
		radius;
		width;
		height;
		thickness;
		origin;		% global position [x,y,z] of local coordinates
		
		% optical prop.
		material;
		coating1;
		coating2;
		
		% simulation param.
		radiusBound;	% the radius of bounding sphere that contains all volume of this optics
	end
end

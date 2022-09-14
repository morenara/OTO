%% tilt Z axis
%	coded at 2022-09-13
%		by Jungkwuen An (morenara@gmail.com)
%
%	v_in: input vector (x,y,z)
%	v_out: output vector (x,y,z)
%	theta: angle between z and z' (radian)
%	phi: azimutal angle of z' in x-y plane (radian)
%
function v_out = f_tiltZ(v_in, theta, phi)
	v_out = f_rotZ(phi)*f_rotY(theta)*v_in;
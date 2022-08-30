% Vector version of Snell's refraction law
%
%   coded at 2022-08-05
%   by Jungkwuen An (morenara@gmail.com)
%
% i : incident ray
% n : surface normal vector
% np : refractive index of positive side of surface (n-vector is pointing at)
% nn : refractive index of negative side of surface (opposite side of n-vector)
% t : transmitted (refracted) ray
%

function [t] = f_refract (i, n, np, nn)

  i = i/norm(i);      % normalizing incident vector
  n = n/norm(n);      % normalizing surface normal vector
  d = dot(n,i);       % dot product
  s = sign(d);        % sign of d
  m = (nn/np)^s;      % ratio between nn and np
  v = 1-(1-d^2)*m^2;
  if v>=0,
    t = s*n*sqrt(v)+m*(i-d*n);  % calculating refracted ray vector : t
  else
    t = i*0;                    % case of total internal reflection, NO refraction happens
  end


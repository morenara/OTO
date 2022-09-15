%% example code

center = [0,0,0];
direction = [1,1,1];
radius = 10;
npoints = 10;
rays = f_lightPlaneCircle(center,direction,radius,npoints);

f_drawRays(rays);
f_traceRays();

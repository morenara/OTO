%%
maxes = eye(3);
origin = [0,0,0]';

%%
figure(1);
set(gcf,'color',[1,1,1]);
hold on;
xlabel('x');
ylabel('y');
zlabel('z');

h = quiver3(0,0,0, maxes(1,1),maxes(2,1),maxes(3,1));
set(h,'linewidth',2);
set(h,'color',[1,0,0]);

h = quiver3(0,0,0, maxes(1,2),maxes(2,2),maxes(3,2));
set(h,'linewidth',2);
set(h,'color',[0,1,0]);

h = quiver3(0,0,0, maxes(1,3),maxes(2,3),maxes(3,3));
set(h,'linewidth',2);
set(h,'color',[0,0,1]);

axis equal;
grid on;
view(45,45);

%%
maxes = eye(3);
maxes = f_rotX(pi/6)*maxes;
%%
figure(2);
set(gcf,'color',[1,1,1]);
hold on;
xlabel('x');
ylabel('y');
zlabel('z');

h = quiver3(0,0,0, maxes(1,1),maxes(2,1),maxes(3,1));
set(h,'linewidth',2);
set(h,'color',[1,0,0]);

h = quiver3(0,0,0, maxes(1,2),maxes(2,2),maxes(3,2));
set(h,'linewidth',2);
set(h,'color',[0,1,0]);

h = quiver3(0,0,0, maxes(1,3),maxes(2,3),maxes(3,3));
set(h,'linewidth',2);
set(h,'color',[0,0,1]);

axis equal;
grid on;
view(45,45);

%%
maxes = eye(3);
maxes = f_rotY(pi/6)*maxes;
%%
figure(3);
set(gcf,'color',[1,1,1]);
hold on;
xlabel('x');
ylabel('y');
zlabel('z');

h = quiver3(0,0,0, maxes(1,1),maxes(2,1),maxes(3,1));
set(h,'linewidth',2);
set(h,'color',[1,0,0]);

h = quiver3(0,0,0, maxes(1,2),maxes(2,2),maxes(3,2));
set(h,'linewidth',2);
set(h,'color',[0,1,0]);

h = quiver3(0,0,0, maxes(1,3),maxes(2,3),maxes(3,3));
set(h,'linewidth',2);
set(h,'color',[0,0,1]);

axis equal;
grid on;
view(45,45);

%%
maxes = eye(3);
maxes = f_rotZ(pi/6)*maxes;
%%
figure(4);
set(gcf,'color',[1,1,1]);
hold on;
xlabel('x');
ylabel('y');
zlabel('z');

h = quiver3(0,0,0, maxes(1,1),maxes(2,1),maxes(3,1));
set(h,'linewidth',2);
set(h,'color',[1,0,0]);

h = quiver3(0,0,0, maxes(1,2),maxes(2,2),maxes(3,2));
set(h,'linewidth',2);
set(h,'color',[0,1,0]);

h = quiver3(0,0,0, maxes(1,3),maxes(2,3),maxes(3,3));
set(h,'linewidth',2);
set(h,'color',[0,0,1]);

axis equal;
grid on;
view(45,45);


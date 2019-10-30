%% Shot 1: Part 8 & 9 
% (Vy)^2 = (Voy)^2 + 2*a*d
% V = Vo + a*t
% d = Vox*t + 1/2*a*t^2
% Vo = sqrt((Voy)^2 +(Vox)^2)
% Vox = Vo*cos(theta) Initial velocity in x direction
% Voy = Vo*sin(theta) Initial Velocity in y direction

% Initial velocity in y direction
Vy_final = 0;
a = -9.81;
y_distance = %Yfinal - %Yinitial;
Vy_initial = sqrt(Vy_final^2 - 2*a*y_distance);

% Time taken to reach initial velocity
V = 0;
t = (V - Vy_initial)/a;

% Initial velocity in the x direction
x_distance = %Initial X;
a = 0;
Vx_initial = (x_distance - 1/2*a*t^2)/t;

%Initial velocity 
Vo = sqrt(Vy_initial^2 + Vx_initial^2)

% Initial angle
theta = radtodeg(acos(Vx_initial/Vo))



%% Shot 2: Part 8 & 9
% initial velocity in y direction
Vy_final = 0;
a = -9.81;
y_distance = ***** - *****;
Vy_initial = sqrt(Vy_final^2 - 2*a*y_distance);

%time taken to reach initial velocity
V = 0;
t = (V - Vy_initial)/a;

% Initial velocity in the x direction
x_distance = ******;
a = 0;
Vx_initial = (x_distance - 1/2*a*t^2)/t;

% find initial velocity
Vo = sqrt(Vy_initial^2 + Vx_initial^2)

%Initial angle
theta = radtodeg(acos(Vx_initial/Vo))


%% Shot 3: Part 8 & 9 
% initial velocity in the y direction
Vy_final = 0;
a = -9.81;
y_distance = ***** - *****;
Vy_initial = sqrt(Vy_final^2 - 2*a*y_distance);

% time taken to reach initial velocity
V = 0;
t = (V - Vy_initial)/a;

% initial velocity in the x direction
x_distance = ****;
a = 0;
Vx_initial = (x_distance - 1/2*a*t^2)/t;

% initial velocity
Vo = sqrt(Vy_initial^2 + Vx_initial^2)

% initial angle
theta = radtodeg(acos(Vx_initial/Vo))


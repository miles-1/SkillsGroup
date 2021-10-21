%     _       ____                 ___                
%    | |     / / /_  __  __   ____/ (_)________ ______
%    | | /| / / __ \/ / / /  / __  / / ___/ __ `/ ___/
%    | |/ |/ / / / / /_/ /  / /_/ / / /  / /_/ / /__  
%    |__/|__/_/ /_/\__, /   \__,_/_/_/   \__,_/\___/  
%      _________ _/____/   ____ ___  ___  __________  
%     / ___/ __ `/ __ \   / __ `__ \/ _ \/ ___/ ___/  
%    / /__/ /_/ / / / /  / / / / / /  __(__  |__  )   
%    \___/\__,_/_/ /_/  /_/ /_/ /_/\___/____/____/    
%       __  __    _                                   
%      / /_/ /_  (_)___  ____ ______   __  ______     
%     / __/ __ \/ / __ \/ __ `/ ___/  / / / / __ \    
%    / /_/ / / / / / / / /_/ (__  )  / /_/ / /_/ /    
%    \__/_/ /_/_/_/ /_/\__, /____/   \__,_/ .___/     
%                     /____/             /_/          

% Miles Robertson, Math 2250, 2/14/21

%% Intro
% Using the fundamental solution found on page 97 can give a different
% answer than matlab when the point of impact for the delta function occurs
% at the same time that the initial conditions do, like in these examples:

% Example 1
%      y' + 2y = dirac(t-3) with y(3) = 1

% Example 2
%      y'' + 2y' + y = dirac(t) with y(0) = y'(0) = 1

%% Step function
% Accordning to Strang, the heaviside step function is 0 for non-positive t 
% and 1 elsewhere. That means that H(0) = 0 according to Strang (and 
% others). Matlab agrees with this definition, except for at one point:
heaviside(0)

% Matlab makes it 1/2 at 0. The reason for this is actually in part because
% this function can be defined by a sum limit of many functions, all of
% which have the value of 1/2 at 0, but every other value approaches 1 for
% t>0 and 0 for t<0.

% This discrepancy isn't just because of Strang. See here:
% https://en.wikipedia.org/wiki/Heaviside_step_function#Discrete_form

%% Delta function
% In general, the delta function comes from the limit of a normal curve
% (like the one in statistics) as the standard deviation approaches zero.
% Of course, this limit is kinda strange, since it is infinitesimally
% narrow yet has an area of 1. 

% However, this limit of functions works great if you have an integral
% whose bounds are respectively greater than or less than the point of
% impact:
syms t
int(dirac(t), -Inf, Inf)
int(dirac(t), -1, 1)
int(dirac(t), -0.0001, 0.0001)

% As seen here, all of these integrals are equal to 1. 

%% Delta function (cont.)
% Predictably, any integral whose bounds do not include the point of imact
% has a value of zero:
int(dirac(t), -Inf, -1)
int(dirac(t), 1, 20)
int(dirac(t), 100, 200)

%% Delta function (cont., part 2)
% However, what happens when you have one bound that IS the point of impact
% for the delta function?
int(dirac(t), -Inf, 0)
int(dirac(t), 0, 20)
int(dirac(t), 0, 200)

% According to matlab, the integral is 1/2. This makes sense thinking of
% the delta function as a normal curve: half of its area is 1/2.

% If we go with Strang's definition of the Heaviside step function, and
% given that the integral of the delta function is considered to be the
% step function, then we have to make a loosely-justified adjustment to
% this integral: The integral of the delta function from negative infinity 
% (or any negative number) to zero is evaluated to be zero, and it is only 
% by having a strictly positive upper bound that the integral will be
% evaluated at 1.

%% Consequences of discrepancy
% This discrepancy makes no issues at all except for one case: if you have
% initial values at the point of impact from the delta function. Running
% this section will give you a graph of what that looks like.
x1 = -1:0.01:0;
x2 = 0:0.01:1;
y1 = zeros(size(x1));
y2 = exp(-2*x2);
x = [x1 x2];
y = [y1 y2];
plot(x,y)
hold on
axis([-1 1 -0.1 1.1])
plot(0,0.5,"r*")
plot(0,0,'*','color',[0.1 0.8 0.4])
txt1 = 'y(0) according to Matlab \rightarrow';
text(-0.6,0.5,txt1)
txt2 = '\leftarrow y(0) according to Strang';
text(0.05,0.01,txt2)
txt3 = '\downarrow point of impact (t=0)';
text(-0.01,1.03,txt3)
hold off

% This difference means that if you have an initial value RIGHT AT the time
% of impact, matlab will try to level it with the red mark from the graph, 
% whereas Strang would level it with the green point. 

% Of course, depending on the situation, this discrepancy can cause the
% true answer to be greater than or less than the correct answer according
% to Strang.

%% Quick solution
% Given Example 2 in the intro, you can find a correct or near-correct 
% solution by adjusting the equation accordingly (note that the only change 
% is a very small shift to the right in the delta function):
syms y(t)
eqn = diff(y,t,2) + 2*diff(y,t) + y == dirac(t - 0.00001);
cond = [y(0)==0, subs(diff(y,t),t,0)==0];
y(t) = dsolve(eqn, cond);

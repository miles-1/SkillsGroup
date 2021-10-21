% %%%%%%%%% Set stuff up %%%%%%%%% 

% planet x
x_init = [6 9]';
dx_init = [0 -0.001]';
mx = 6900;

% planet y
y_init = [-6 -9]';
dy_init = [0 0]';
my = 420000;

% other things
tlength = 100000; % diffeq soln time length (bigger means longer duration)
scale = 300; % scale of velocity vectors
speed = 5; % speed of animation (bigger means faster)


% %%%%%%%%% Get postitions %%%%%%%%% 
plotPlanets([x_init dx_init y_init dy_init],[mx my tlength],scale,speed)


%% Functions
function [T,D] = getPositions(vecs, cons)
    % vecs := matrix containing info for the planet in this format:
    %    [[x0] [dx0] [y0] [dy0]]
    % cons := vector with relevant constants in this format:
    %    [[mass of x] [mass of y] [time length]]
    syms x1(t) x2(t) dx1(t) dx2(t) y1(t) y2(t) dy1(t) dy2(t)
    
    funcx = formula([x1 x2 dx1 dx2]);
    funcy = formula([y1 y2 dy1 dy2]);
    
    % Unpack
    x_init = vecs(:,1);
    dx_init = vecs(:,2);
    y_init = vecs(:,3);
    dy_init = vecs(:,4);
    
    mx = cons(1);
    my = cons(2);
    tlength = cons(3);
    c = mx*dx_init + my*dy_init;
    d = mx*x_init + my*y_init;
    
    eqnsx = getFormulas([c d],[mx my],[funcx t]);
    eqnsy = getFormulas([c d],[my mx],[funcy t]);
    eqns = [eqnsx eqnsy];
    vars = [funcx funcy];
    init = [x_init' dx_init' y_init' dy_init'];
    
    F = odeFunction(eqns,vars);
    [T, D] = ode45(F,[0 tlength],init);
end

function eqns = getFormulas(vecs, mass, funcs)
    % vecs := matrix containing info for the planet in this format:
    %    [[c] [d]]
    % mass := vector with relevant constants in this format:
    %    [[own mass] [other mass]]
    % funcs := symbolic functions in the format [z1 z2 dz1 dz2 t].
    
    % Set up
    G = 6.67408*10^(-11); % Gravitational constant
    
    % Unpack
    c = vecs(:,1);
    d = vecs(:,2);
    mz = mass(1);
    mw = mass(2);
    
    % fromz is vector between planets
    fromz = formula((mz+mw)*[funcs(1);funcs(2)] - c*funcs(5) - d);
    eqn1 = -G*mw^3/norm(fromz)^3*fromz(1);
    eqn2 = -G*mw^3/norm(fromz)^3*fromz(2);
    eqns = formula([funcs(3:4) eqn1 eqn2]);
end

function plotPlanets(vecs, cons, scale, speed)
    [T,D] = getPositions(vecs,cons);
    Dx = D(:,1:4);
    Dy = D(:,5:8);
    xmin = min([min(Dx(:,1)) min(Dy(:,1))]);
    xmax = max([max(Dx(:,1)) max(Dy(:,1))]);
    ymin = min([min(Dx(:,2)) min(Dy(:,2))]);
    ymax = max([max(Dx(:,2)) max(Dy(:,2))]);
    tlast = T(1);
    
    figure(1)
    hold on
    axis(sizeUp(xmin,xmax,ymin,ymax))
    pathx = plot(1);
    px = plot(Dx(1,1),Dx(1,2),"bo");
    vx = quiver(Dx(1,1),Dx(1,2),scale*Dx(1,3),...
        scale*Dx(1,4),"Color",[0 0 0]);
    pathy = plot(1);
    py = plot(Dy(1,1),Dy(1,2),"ro");
    vy = quiver(Dy(1,1),Dy(1,2),scale*Dy(1,3),...
        scale*Dy(1,4),"Color",[0 0 0]);
    pause(0.5)

    for i = 2:size(D,1)
        if ~any(findobj(allchild(0), 'flat', 'type', 'figure') == 1)
            break
        end
        delete(pathx);
        delete(px);
        delete(vx);
        delete(pathy);
        delete(py);
        delete(vy);

        pathx = plot(Dx(1:i,1),Dx(1:i,2),"b");
        px = plot(Dx(i,1),Dx(i,2),"bo");
        vx = quiver(Dx(i,1),Dx(i,2),scale*Dx(i,3),...
            scale*Dx(i,4),"Color",[0 0 0]);
        pathy = plot(Dy(1:i,1),Dy(1:i,2),"r");
        py = plot(Dy(i,1),Dy(i,2),"ro");
        vy = quiver(Dy(i,1),Dy(i,2),scale*Dy(i,3),...
            scale*Dy(i,4),"Color",[0 0 0]);
        pause((T(i)-tlast)/speed/1000)
        tlast = T(i);
    end
    if any(findobj(allchild(0), 'flat', 'type', 'figure') == 1)
        hold off
    end
end

function sizes = sizeUp(xmin, xmax, ymin, ymax)
    if xmax - xmin > ymax - ymin
        len = (xmax - xmin)/2;
        ymid = sum([ymax ymin])/2;
        ymin = ymid - len;
        ymax = ymid + len;
    elseif xmax - xmin < ymax - ymin
        len = (ymax - ymin)/2;
        xmid = sum([xmax xmin])/2;
        xmin = xmid - len;
        xmax = xmid + len;
    end
    pad = abs(len*0.1);
    sizes = [xmin-pad, xmax+pad, ymin-pad, ymax+pad];
end


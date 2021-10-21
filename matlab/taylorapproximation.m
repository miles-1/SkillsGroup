syms t

y = log(6*t+5);
n = 2;
t0 = 0;
val = 1;

f = subs(y,t,t0);

for i = 1:n
    f = f + (t-t0)^i / prod(1:i) * subs(diff(y,i),t,t0);
end

fplot(y)
hold on
fplot(f)
hold off

double(subs(f,t,val))
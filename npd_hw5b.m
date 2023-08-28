
t = [1:10];
period = 20;

p = @(t) (mod(t, period) < period/2) ;%- (mod(t, period) > period/2);
f = @(t) mod(t, period) - p(t) .* t;

y = f(t);

plot(t, sawtooth(t,.5));

%% test
A = 5;
t = 1: 0.001: 10;
af = pi;

x = A * sawtooth(af*t);
x = A * square(af*t);
x = A * sawtooth(af*t) .^ 2;

x = 5 *exp(0.5 .* (1 - sawtooth(af*t, 0.5) )) ./ exp(1);
plot(t,x)

f = @(t) sin(2*t) + 10*sin(t) + -3*cos(0.5*t) + sawtooth(t);
f = @(t) sawtooth(t) + sin(0.5*t);
t = 0:0.01:40;
y=f(t);
plot(t,y)
findpeaks(y)

[v, p1] = max(y)
[v, p2] = max(y(p1+1:end))

file = [t; y]';
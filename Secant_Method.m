clear all;

f = @(x)(x*x - 4*x - 10);

x(1) = input('Enter lower limit:');
x(2) = input('Enter upper limit:');

for i = 3 : 8
    
    x(i) = x(i - 1) - (f(x(i - 1))) * ((x(i - 1) - x(i - 2)) / (f(x(i - 1)) - f(x(i - 2))));
    
    fprintf('x: '); disp(x(i));
    
end
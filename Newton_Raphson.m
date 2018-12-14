clear all;

f = @(x)(x*x - 3*x + 2);
d = @(x)(2*x - 3);

x(1) = input('Enter initial gusses: ');
ea = input('Enter estimated error: ');

for i = 1 : 100
    
    x(i + 1) = x(i) - ((f(x(i)) / d(x(i))));
    
    es(i) = abs(((x(i + 1) - x(i)) / x(i + 1)) * 100);
    
    fprintf('xi: '); disp(x(i + 1));
    fprintf('es: '); disp(es(i));
    if es(i) < ea
        break
    end
end
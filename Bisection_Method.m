clear all;

f = @(x)(x*x - 4*x - 10);

xl = input('Enter the lower limit: ');
xu = input('Enter the upper limit: ');
es = input('Enter the estimated error: ');

fxl = f(xl);
fxu = f(xu);

if fxl * fxu < 0
    fprintf('Initial guesses are right. \n');
else
    fprintf('Initial guesses are wrong. \n');
end

xr = (xu + xl) / 2;
ea = 10000;

fprintf('xr: '); disp(xr);
fprintf('ea: '); disp(ea);

while ea > es
    
    fxr = f(xr);
    fxl = f(xl);

    if fxl * fxr < 0
        xu = xr;
    else if fxl * fxr > 0
        xl = xr;
    end

    xrprev = xr;
    xr = (xu + xl) / 2;
    
    ea = abs((xrprev - xr) / xr) * 100;
    fprintf('xr: '); disp(xr);
    fprintf('ea: '); disp(ea);
    
end
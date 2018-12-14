clear all;

f = @(x, y)(3*x*x + 1);

x0 = input('Enter the value of x0: ');
xn = input('Enter the value of xn: ');
y0 = input('Enter the value of y0: ');
h = input('Enter the value of h: ');

while xn ~= x0
    
    z = f(x0, y0);
    
    y1 = (y0 + (z * h)) ;
    
    x1 = (x0 + h);
    
    fprintf('x1 value is: '); disp(x1);
    fprintf('y1 value is: '); disp(y1);
    
    x0 = x1;
    y0 = y1;
    
end
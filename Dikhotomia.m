function Dikhotomia
xp=D(-10,10,0.0001);
x=-10:1:10;
y=f(x);
yp=f(xp);
figure(1)
plot(x,y,'g')
plot(x,y,'g',xp,yp,'bo')
function y=f(x)
y=(x+1).^2;
end
function y=D(a,b,eps)
x=[];
i=1;
if (round(abs(b-a)*10000)/10000>eps)
    while(round(abs(b-a)*10000)/10000>eps)
        t=0.5*(a+b-eps);
        z=0.5*(a+b+eps);
        ft=f(t);
        fz=f(z);
        if(ft<=fz)
            b=z;
        else
            a=t;
        x(i)=0.5*(a+b);
        i=i+1;
        end
    end
else
    x(i)=0.5*(a+b);
end
y=x;
end
end
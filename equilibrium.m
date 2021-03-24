k1 = -1.2*10^(-3);
k2 = 2.05;
tau1 = 0.38;
tau2 = 1;
c0 = -3.49;
a = 0.18;
b = -4.7;
c = 32.41;
Ts = 0.01;
d = 1000;
%%
syms x1 x2 u
F1 = -1/tau1*x1+k1/tau1*d;
F2 = (1/tau2-1/tau1)*x1-1/tau2*x2+k2/tau2*u+k1/tau1*d;
y = a*x2^2+b*x2+c;
k=1;
for i=[1000:20:1500,1500*ones(1,15),1500:-20:1000]
    d = i;
F1 = -1/tau1*x1+k1/tau1*d;
F2 = (1/tau2-1/tau1)*x1-1/tau2*x2+k2/tau2*u+k1/tau1*d;
y = a*x2^2+b*x2+c;
A=solve(F1==0,F2==0,y==3.5);

u1 = double(A.u);
u0 = u1(1);
U(k) = u0;
k=k+1;
end
plot(U);
grid on
legend('u0')
xlabel('events')
ylabel('Voltage(v)')
figure;
plot(t,ref,'r--','linewidth',1.5);
hold on
plot(t,Ph,'k','linewidth',1.5);
legend('ref','Ph');
xlabel('events');ylabel('Ph(Mpa)');
grid on;
%%
figure
subplot(311)
plot(t,u,'k','linewidth',1);
ylabel('Voltage(v)');
hold on
legend('u')
grid on;
subplot(312)
plot(t,u_fbk,'k','linewidth',1.5);
ylabel('Voltage(v)');
legend('u_fbk');
hold on
grid on;
subplot(313)
plot(t,u_ffrk,'k','linewidth',1.5);
legend('u_ffrk');
xlabel('events');ylabel('Voltage(v)');
grid on;
%%
figure;
plot(t,rise,'k','linewidth',1.5);
hold on
plot(t,rise_r,'r--','linewidth',1.5);
legend('ref','Rising Duration');
xlabel('events');ylabel('Rising Duration(ms)');
grid on;
%Question 2
%part b

tspan=[0 100];%solution time span
ic=[350; 5; 0];% initial condition
[t,f]= ode45(@batchsolve,tspan,ic);

%plot solutions
figure()
subplot(311)
plot(t,f(:,1));
title ('Temperature')
xlabel('Time(min)')
ylabel('T(K)')

subplot (312)
plot(t,f(:,2));
title('Concentration of A')
xlabel('Time(min)')
ylabel('CA')

subplot(313)
plot(t,f(:,3));
title('Concentration of B')
xlabel('Time(min)')
ylabel('CB')


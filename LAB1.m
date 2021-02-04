%%Lab 1
%%Problem 1
%Part a
A = [1, 2, -4; 2, -2, 1; 1, 0, 5];
b = [-6; 9; 13];
%Part b
c = A(3,2)

%Part c

%  Method 1: M=A\b
%  Method 2: M=inv(A)*b

%part d
disp(inv(A));
M = inv(A)*b;

disp('M_{1,A}:'); disp(M(1))
disp('M_{3,A}:'); disp(M(3))


%Question 2
%part a

tspan=[0 100];%solution time span
ic=[400; 5; 0];% initial condition
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


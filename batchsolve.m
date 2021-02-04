
function dfdt = batchsolve(t,f)

%define depedent variables
T= f(1);
CA= f(2);
CB= f(3);

%define constants
V=160;% unit:L
CA0=5;% unit: mol/L
T0=370;%unit K
FA0=15;%L/min
E=33000;% unit:J/mol
k0=4500;% unit:1/min
dH=-5.7;% unit: kJ/mol
CpA=15;%unit:J/(mol*K)
CpB=15;%unit:J/(mol*K)
UA=7500;%unit:J/(mol*K)
Ta=298;%unit:K
%R=8.206e-5;
R=8.314; %unit: J/(mol*K)


%define ODEs

dfdt1 = (UA*(Ta-T)+FA0*CA0*CpA*(T0-T)-dH*k0*exp(-E/(R*T))*CA*V)/(V*CA*CpA+V*CB*CpB);
dfdt2 = (FA0*(CA0-CA)/V)-(CA*k0*exp(-E/(R*T)));
dfdt3 = (-FA0*CB/V)+(CA*k0*exp(-E/(R*T)));

dfdt = [dfdt1; dfdt2; dfdt3];

end
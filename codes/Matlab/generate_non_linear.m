poly=[1,2,3];
load twotankdata;
Vin=limit_vinp.signals.values;
Vout=limit_voltg.signals.values;
%%
figure(1);
subplot(2,1,1);
plot(Vin);
subplot(2,1,2);
plot(Vout);

%%
load('WienerHammerBenchMark.mat');
figure(1);
subplot(2,1,1);
plot(uBenchMark(5000:10000));
subplot(2,1,2);
plot(yBenchMark(5000:10000));


%% Identify Weiner Hammerstein
z = iddata(Vout,Vin,1, ...
           'Name','Two tank system',...
           'Tstart',0);
mhw1 = nlhw(z,[1 2 3],sigmoidnet,pwlinear);


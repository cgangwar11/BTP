
figure(1);
subplot(2,1,1);
plot(limit_vinp.time(1:10000),limit_vinp.signals.values(1:10000))
subplot(2,1,2);
plot(limit_voltg.time(1:10000),limit_voltg.signals.values(1:10000))




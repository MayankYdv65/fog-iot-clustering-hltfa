function plot_results_compare(D,H,S,L)

t=1:length(D.energy);

figure('Color','w');

subplot(2,2,1)
plot(t,D.energy,'r','LineWidth',2); hold on;
plot(t,H.energy,'b');
plot(t,S.energy,'g');
plot(t,L.energy,'k');
title('Energy'); legend('DEEC','HEED','SEC','HLTFA'); grid on;

subplot(2,2,2)
plot(t,D.PDR,'r','LineWidth',2); hold on;
plot(t,H.PDR,'b');
plot(t,S.PDR,'g');
plot(t,L.PDR,'k');
title('PDR'); grid on;

subplot(2,2,3)
plot(t,D.delay,'r','LineWidth',2); hold on;
plot(t,H.delay,'b');
plot(t,S.delay,'g');
plot(t,L.delay,'k');
title('Delay'); grid on;

subplot(2,2,4)
plot(t,D.throughput,'r','LineWidth',2); hold on;
plot(t,H.throughput,'b');
plot(t,S.throughput,'g');
plot(t,L.throughput,'k');
title('Throughput'); grid on;

end
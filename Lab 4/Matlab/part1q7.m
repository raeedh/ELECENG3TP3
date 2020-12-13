part1q3;

sin1 = 0.4*sin(2*pi*2000*t);
sin2 = 0.2*sin(2*pi*5000*t);
sin3 = 0.2*sin(2*pi*6000*t);

generated_signal = sin1+sin2+sin3;

tiledlayout('flow');
nexttile; plot(msec_per_sec*t(1:numSamples), signal(1:numSamples));
title('Plot of Input Signal'); xlabel('time (ms)'); grid('minor');
nexttile; plot(msec_per_sec*t(1:numSamples), generated_signal(1:numSamples));
title('Generated Signal'); xlabel('time (ms)'); grid('minor');
exportgraphics(gcf, '../Figures/part1q7.png');
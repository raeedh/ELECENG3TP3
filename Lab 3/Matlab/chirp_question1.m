f = 100; % Sinusoid frequency
mu = 2000;
fs = 32000; % Sampling frequency
Ts = 1/fs; % Sampling interval
nplot = 0:Ts:Ts*1999; % Make the time vector for the plot
tfinal = 8; % Play the spurt for 8 seconds
nsound = 0:Ts:tfinal; % Make the time vector for replayed sound spurt

ct = cos(pi*mu*nsound.^2 + 2*pi*f*nsound);

fig = figure('Name', 'Question 1');
plot(nplot, ct(1:length(nplot)));
title('Raeed Hassan');

audiowrite('..\Sound Files\soundfilechirp.wav', ct, fs);
exportgraphics(fig,'..\Figures\chirp_question1.png');
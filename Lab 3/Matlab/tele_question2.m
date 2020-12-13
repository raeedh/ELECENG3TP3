f = [100 200 400 800]; % Sinusoid frequency
fs = 8000; % Sampling frequency
Ts = 1/fs; % Sampling interval
tfinalplot = 10e-3; % Set time duration of plot, i.e., 10 msec.
nplot=0:Ts:tfinalplot; % Make the time vector for the plot
tfinal = 2; % Play the spurt for 2 seconds
nsound=0:Ts:tfinal; % Make the time vector for replayed sound spurt
xnT = zeros(1,4*length(nsound));

fig = figure('Name', 'Question 2');
t = tiledlayout(2,2); % creates 2x2 tiledlayout
title(t, 'Raeed Hassan');

for i = 1:length(f)
    xnT_f = sin(2*pi*f(i)*nsound);
    xnT(1+(i-1)*length(nsound):i*length(nsound)) = xnT_f;
    nexttile; % moves to next tile in tiledlayout
    plot(nplot, xnT_f(1:length(nplot)));
    titlename = f(i) + " Hz"; % title string
    title(titlename); % title for subplot
end

audiowrite('..\Sound Files\soundfile.wav', xnT, fs); % writes to .wav file
exportgraphics(fig,'..\Figures\tele_question2.png'); % exports plots
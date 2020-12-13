question3;

Te = 1000; % delay in msec
Te_sec = Te / 1000;
L_delay = round(Te_sec/T);
alpha = 0.05;

signalplusecho = zeros(L+L_delay,1);
signalplusecho(1:L) = signal;
signalplusecho(L_delay+1:end) = signalplusecho(L_delay+1:end) + signal*alpha;

signalplusecho = signalplusecho/max(abs(signalplusecho));
audiowrite('..\Speech Files\speechwithecho.wav', signalplusecho, Fs);
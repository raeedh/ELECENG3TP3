question3;

Te = 1000; % delay in msec
Te_sec = Te / 1000;
L_delay = round(Te_sec/T);
alpha = 0.05;

IR = zeros(L_delay+1,1);
IR(1) = 1; IR(L_delay+1) = alpha;
signalplusecho_conv = conv(signal,IR);

signalplusecho_conv = signalplusecho_conv/max(abs(signalplusecho_conv));
audiowrite('..\Speech Files\speechwithecho_conv.wav', signalplusecho_conv, Fs);
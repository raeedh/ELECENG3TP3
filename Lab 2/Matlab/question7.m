question3;

Te = 0.2; % delay in msec
Te_sec = Te / 1000;
L_delay = round(Te_sec/T);
alpha = 1;
num_echos = 1000; % number of echos 

IR = zeros(num_echos*L_delay + 1,1);
IR(1) = 1;
for i = 1:num_echos
    IR(i*L_delay + 1) = alpha^i;
end
signalplusreverb = conv(signal,IR);

signalplusreverb = signalplusreverb/max(abs(signalplusreverb));
audiowrite('..\Speech Files\speechwithereverb.wav', signalplusreverb, Fs);
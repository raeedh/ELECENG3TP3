x_a = [1 1 1]; x_b = [2 1]; x_c = [2 1];
v_a = [1 1 1 1]; v_b = [1 1 1 1]; v_c = [0 1 2];

conv_a = conv(x_a,v_a);
conv_b = conv(x_b,v_b);
conv_c = conv(x_c,v_c);

fig = figure('Name','Question 1 Part B');
t = tiledlayout(3,3); title(t,'Raeed Hassan');
nexttile;
stem(0:length(x_a)-1,x_a); title('x[n]');axis([-1 3 -1 2]);
nexttile;
stem(0:length(x_b)-1,x_b); title('x[n]');axis([-1 2 -1 3]);
nexttile;
stem(0:length(x_c)-1,x_c); title('x[n]');axis([-1 2 -1 3]);
nexttile;
stem(0:length(v_a)-1,v_a); title('v[n]');axis([-1 4 -1 2])
nexttile;
stem(0:length(v_b)-1,v_b); title('v[n]');axis([-1 4 -1 2])
nexttile;
stem(0:length(v_c)-1,v_c); title('v[n]');axis([-1 3 -1 3])
nexttile;
stem(0:length(conv_a)-1,conv_a); title('x[n]*v[n]'); axis([-1 6 -1 4]);
nexttile;
stem(0:length(conv_b)-1,conv_b); title('x[n]*v[n]'); axis([-1 5 -1 4]);
nexttile;
stem(0:length(conv_c)-1,conv_c); title('x[n]*v[n]'); axis([-1 4 -1 6]);
exportgraphics(fig,'..\Figures\question1b.png');
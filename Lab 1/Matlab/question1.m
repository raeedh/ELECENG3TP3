n = -10:10;

question1a = unitstep(n) - 2*unitstep(n-1) + unitstep(n-4);
question1b = (n+2).*unitstep(n+2) - 2*unitstep(n) - n.*unitstep(n-4);
question1c = unitimpulse(n+1) - unitimpulse(n) + unitstep(n+1) - unitstep(n-2);
question1d = (exp(0.8*n)).*unitstep(n+1) + unitstep(n);

fig = figure('Name','Question 1');
set(gcf,'WindowState','maximized'); set(0,'defaultAxesFontSize',20);
sgtitle('Raeed Hassan','FontSize',20);
xlim([-10 10]);

subplot(2,2,1)
stem(n,question1a); title('Question 1a'); 
xlabel('n'); ylabel('x[n]'); ylim([-1.5 1.5]);
subplot(2,2,2);
stem(n,question1b); title('Question 1b');
xlabel('n'); ylabel('x[n]'); ylim([-0.5 3.5]);
subplot(2,2,3);
stem(n,question1c); title('Question 1c');
xlabel('n'); ylabel('x[n]'); ylim([-0.5 2.5]);
subplot(2,2,4);
stem(n,question1d); title('Question 1d');
xlabel('n'); ylabel('x[n]');

exportgraphics(fig,'..\Figures\question1.png');
set(0,'defaultAxesFontSize','remove'); % resets defaultAxesFontSize
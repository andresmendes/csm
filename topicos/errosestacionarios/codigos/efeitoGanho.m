close all ; clear ; clc

s = tf('s');

K = [1 2 5 20];

tp = (-1:0.1:0)';
tt = (0:0.05:4)';
t = [tp ; tt];

u1 = zeros(length(tp),1);
u2 = ones(length(tt),1);
u = [u1 ; u2];

xMat = zeros(length(t),length(K));

for i=1:length(K)

	G = K(i)/(s+0.5);

	F = feedback(G,1);

	[xt,tempo] = step(F,tt);

	xMat(length(tp)+1:end,i) = xt;

end

figure
set(gcf,'PaperUnit','centimeters','PaperPosition',[0 0 12 7],'PaperSize',[12 7])
hold on
plot(t,xMat)
plot(t,u,'k')
set(gca,'ylim',[-0.1 1.1],'xtick',[],'ytick',[])

print(gcf,'-dpdf','../ilustracoes/efeitoGanho.pdf')
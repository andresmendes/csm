clear ; close all ; clc

Kg = 1;

wn = 1;

zVet = 1:0.2:2;

s = tf('s');

t = 0:0.01:15;

u1 = zeros(201,1);
u2 = ones(length(t)-201,1);
u = [u1 ; u2];

yMat = zeros(length(u),length(zVet));

for i=1:length(zVet)

	z = zVet(i);

	G = (Kg*wn^2)/(s^2 + 2*wn*z*s + wn^2);

	y = lsim(G,u,t);

	yMat(:,i) = y;

	pole(G)


end
	
figure
set(gcf,'PaperUnit','centimeters','PaperPosition',[0 0 12 7],'PaperSize',[12 7])
hold on
% set(gca,'ylim',[-0.1 1.3],'xtick',[],'ytick',[])
plot(t,yMat)
legend(num2str(zVet(1)),num2str(zVet(2)),num2str(zVet(3)),num2str(zVet(4)))
% print(gcf,'-dpdf','../ilustracoes/saida2ordemCritico.pdf')

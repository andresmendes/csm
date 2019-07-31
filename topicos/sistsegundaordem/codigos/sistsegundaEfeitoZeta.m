%% Sistemas de segunda ordem - Efeito Zeta
%

close all ; clear ; clc

s = tf('s');

zVet = [0.1 0.2 0.4 0.7 1 2];

t = 0:0.1:15;

xMat = zeros(length(t),length(zVet));

for i=1:length(zVet)

	z = zVet(i);

	G = 1/(s^2 + 2*z*s+1);

	[x,tempo] = step(G,t);

	xMat(:,i) = x;

end

figure
set(gcf,'Units','centimeters','Position',[0 0 12 14])
hold on ; grid on ; box on
set(gca,'fontsize',15)
plot(t,xMat,'linewidth',2)
plot([0 12],[1 1],'k')
xlabel('t')
ylabel('y')
legend('\zeta = 0.1','\zeta = 0.2','\zeta = 0.4','\zeta = 0.7','\zeta = 1','\zeta = 2','Location','SouthEast')
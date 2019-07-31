close all ; clear ; clc

tp = -2:0.1:0;
tt = 0:0.1:19;
t = [tp tt];

u11 = zeros(length(tp),1);
u21 = ones(length(tt),1);
u1 = [u11 ; u21];

u12 = zeros(length(tp),1);
u22 = tt';
u2 = [u12 ; u22];

u13 = zeros(length(tp),1);
u23 = 0.5*tt'.^2;
u3 = [u13 ; u23];

figure
set(gcf,'PaperUnit','centimeters','PaperPosition',[0 0 12 7],'PaperSize',[12 7])
hold on
plot(t,u1,'k')
set(gca,'ylim',[-0.1 1.1],'xtick',[],'ytick',[])
print(gcf,'-dpdf','../ilustracoes/sinalTipicoDegrau.pdf')

figure
set(gcf,'PaperUnit','centimeters','PaperPosition',[0 0 12 7],'PaperSize',[12 7])
hold on
plot(t,u2,'k')
set(gca,'ylim',[-2 20],'xtick',[],'ytick',[])
print(gcf,'-dpdf','../ilustracoes/sinalTipicoRampa.pdf')

figure
set(gcf,'PaperUnit','centimeters','PaperPosition',[0 0 12 7],'PaperSize',[12 7])
hold on
plot(t,u3,'k')
set(gca,'ylim',[-20 200],'xtick',[],'ytick',[])
print(gcf,'-dpdf','../ilustracoes/sinalTipicoParabola.pdf')

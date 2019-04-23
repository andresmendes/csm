%% Linearização
% Inspiração
%
%% Definição das curvas não linear e linearizada.
% 

clear ; close all ; clc

% Curva não linear
x = 0:0.1:10;       % Coordenada x
y = x.^2;           % Coordenada y

% Escolha do ponto de interesse
xin = 6;            % x de interesse
yin = xin^2;        % y de interesse

% Curva linearizada
ylin = yin + 2*xin* (x - xin);

%% Gráficos

figure
hold on ; box on ; grid on
set(gca,'fontsize',12)
plot(x,y,'b','linewidth',2)
xlabel('Coordenada x')
ylabel('Coordenada y')
legend('Não linear','Location','NorthWest')

figure
hold on ; box on ; grid on
set(gca,'fontsize',12)
plot(x,y,'b','linewidth',2)
plot(6,6^2,'r+','linewidth',2,'markersize',10)
plot([6 6],[0 36],'k--','linewidth',1.0)
plot([0 6],[36 36],'k--','linewidth',1.0)
dim = [.47 .28 .25 .25];
annotation('ellipse',dim)
xlabel('Coordenada x')
ylabel('Coordenada y')
legend('Não linear','Ponto de interesse','Location','NorthWest')

figure
hold on ; box on ; grid on
set(gca,'fontsize',12)
plot(x,y,'b','linewidth',2)
plot(x(35:end-10),ylin(35:end-10),'r','linewidth',2)
plot(6,6^2,'r+','linewidth',2,'markersize',10)
plot([6 6],[0 36],'k--','linewidth',1.0)
plot([0 6],[36 36],'k--','linewidth',1.0)
dim = [.47 .28 .25 .25];
annotation('ellipse',dim)
xlabel('Coordenada x')
ylabel('Coordenada y')
legend('Não linear','Linearizado','Ponto de interesse','Location','NorthWest')

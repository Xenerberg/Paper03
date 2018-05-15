close all;
figure;
hold off;
plot(ly_e.Time,(ly_e.Data)/max(ly_e.Data));hold all;
plot(ly_delta_x.Time,(ly_delta_x.Data)/max(ly_delta_x.Data),'LineWidth',2);
plot(ly_ex.Time,(ly_ex.Data)/max(ly_ex.Data));
plot(ly_vartheta.Time,(ly_vartheta.Data)/max(ly_vartheta.Data));

legend('W1','W2','W3','W4');
ylim([0,1]);
xlim([0.1,20]);
grid on;
ylabel('Ui');
xlabel('time');

load('./Paper03/err_obs.mat');
%load('./Paper03/err_PBVS.mat');
figure1 = figure;
axes1 = axes('Parent',figure1,'YGrid','on','YMinorTick','on','YScale','log');
box(axes1,'on');
hold(axes1,'on');

ylim(axes1,[5.83751328e-05 5.80755048970362]);%grid on;
semilogy(ly_error.Time,(ly_error.Data));hold all;
load('./Paper03/err_no_obs.mat');

semilogy(ly_error.Time,(ly_error.Data));hold all;
set(gca,'yscale','log')
load('./Paper03/err_noPBVS.mat');
semilogy(ly_error.Time,(ly_error.Data));hold all;
set(gca,'YGrid','on')
legend('VT','noVT','noPBVS');
xlabel('t(sec)');
ylabel('logxxxx')



% Create axes
%% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes1,[0.151751962779885 49.924578365804]);
%% Uncomment the following line to preserve the Y-limits of the axes



% Create ylabel
ylabel('logxxxx','FontSize',11);

% Create xlabel
xlabel('t(sec)','FontSize',11);

% Create semilogy
semilogy(X1,Y1,'DisplayName','observer');

% Create semilogy
semilogy(X2,Y2,'DisplayName','noObserver');

% Create legend
legend1 = legend(axes1,'show');
set(legend1,'Orientation','horizontal','FontSize',9);


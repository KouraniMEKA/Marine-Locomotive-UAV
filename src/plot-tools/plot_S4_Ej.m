
x0=12.8; 
y0=0.8; %position of the lower left side of the figure
figure('Units','inches',...
'Position',[x0 y0 width height],...
'PaperPositionMode','auto');


% -------------------------------Sub 2.1---Velocity------------------------

ax11 = subplot(5,2,1);
% pos = [sp_x0_c1 0.4 sp_w sp_h];
% ax01 = subplot('Position',pos);

hold on

%plot(time0(1:samp_red:end),V_l2_PID(1:samp_red:end),'b','LineWidth',0.8)
plot(time0(1:samp_red:end),V_l2_SVC(1:samp_red:end),'r','LineWidth',0.8)
plot(time0(1:samp_red:end),V_bar_l2_SVC(1:samp_red:end),'k--','LineWidth',0.8)

%plot(time0(1:samp_red:end),5*active_l2_SVC(1:samp_red:end),'b','LineWidth',0.8)


% xlabel('Time (s)')
ylabel('$V$ (m/s)','Interpreter','latex')
%xlabel({'Time (s)';...
%    ['(b) case 2: current and waves.']})%...
    %'                                                               ']})
axis([0 t1-t0 -5 5.8])

set(gca,...
'Units','normalized',...
'YTick',-5:2.5:5,...
'XTick',0:Dticks_time:ticks_time_end,... 
'FontUnits','points',...
'FontWeight','normal',...
'FontSize',8,...
'FontName','Times')
xticklabels('')


% lgd=legend('$x$','$x_{des}$','$e_x$');
% set(lgd,'FontUnits','points',...
% 'interpreter','latex',...
% 'FontSize',7,...
% 'FontName','Times',...
% 'Location','East')

box on
grid on
set(gca,'gridlinestyle','-')

% -----------------------------------------------------------------------

% --------------------z_b-----------------------
% 
ax1 = subplot(5,2,2);

hold on
plot(time0(1:samp_red:end),X_b_l2_SVC(1:samp_red:end)-10,'r','LineWidth',0.8)
plot(time0(1:samp_red:end),zeta_w_l2_SVC(1:samp_red:end)-10,'k--','LineWidth',0.8)
%plot(time0(1:samp_red:end),X_b_l2_PID(1:samp_red:end)-10,'b','LineWidth',0.8)
%plot(time0(1:samp_red:end),zeta_w_l2_PID(1:samp_red:end)-10,'k:','LineWidth',0.8)

ylabel('$z$ (m)','Interpreter','latex')
%xlabel('Time (s)')
%xlabel({'Time (s)';...
%    ['(c)']})

axis([0 t1-t0 -2.5 2.5])

set(gca,...
'Units','normalized',...
'YTick',-3:1:3,...
'XTick',0:Dticks_time:ticks_time_end,...
'FontUnits','points',...
'FontWeight','normal',...
'FontSize',8,...
'FontName','Times')
xticklabels('')

box on
grid on
set(gca,'gridlinestyle','-')

% ------------------------------------------------


% -------------------------------Sub 2.1---- r ----------------------------

ax13 = subplot(5,2,3);
% pos = [sp_x0_c1 0.29 sp_w sp_h];
% ax13 = subplot('Position',pos);

hold on

%plot(time0(1:samp_red:end),r_l2_PID(1:samp_red:end),'b','LineWidth',0.8)
plot(time0(1:samp_red:end),r_l2_SVC(1:samp_red:end),'r','LineWidth',0.8)
plot(time0(1:samp_red:end),r_bar_l2_SVC(1:samp_red:end),'k--','LineWidth',0.8)

%plot(time0(1:samp_red:end),5*coupled_est_l2_SVC(1:samp_red:end),'b','LineWidth',0.8)

% xlabel('Time (s)')
ylabel('$r$ (m)','Interpreter','latex')
%xlabel({'Time (s)';...
%    ['(d) case 2: current and waves.']})%...
    %'                                                               ']})
axis([0 t1-t0 10 22])

set(gca,...
'Units','normalized',...
'YTick',0:5:25,...
'XTick',0:Dticks_time:ticks_time_end,... 
'FontUnits','points',...
'FontWeight','normal',...
'FontSize',8,...
'FontName','Times')
xticklabels('')


% lgd=legend('$x$','$x_{des}$','$e_x$');
% set(lgd,'FontUnits','points',...
% 'interpreter','latex',...
% 'FontSize',7,...
% 'FontName','Times',...
% 'Location','East')

box on
grid on
set(gca,'gridlinestyle','-')

% ----------------------------------- ------------------------------------
% ----------------------------z_u    --------------------------------------
% ----------------------------------------------------------

ax15 = subplot(5,2,5);
% pos = [sp_x0_c1 0.18 sp_w sp_h];
% ax01 = subplot('Position',pos);
hold on
% plot([1,70],[5 5],'--k','LineWidth',0.8)
%plot(time0(1:samp_red:end),z_u_l2_PID(1:samp_red:end),'b','LineWidth',0.8)
plot(time0(1:samp_red:end),z_u_l2_SVC(1:samp_red:end),'r','LineWidth',0.8)
plot(time0(1:samp_red:end),z_u_bar_l2_SVC(1:samp_red:end),'-.k','LineWidth',0.8)
%plot(time0(1:samp_red:end),z_u_bar_l2_PID(1:samp_red:end),':k','LineWidth',0.8)


ylabel('$z_{\mathrm{u}}$ (m)','Interpreter','latex')
%xlabel('Time (s)')
%xlabel({'Time (s)';...
%    ['(f) case 2: current and waves.']})

axis([0 t1-t0 5 20])

set(gca,...
'Units','normalized',...
'YTick',0:5:25,...
'XTick',0:Dticks_time:ticks_time_end,... 
'FontUnits','points',...
'FontWeight','normal',...
'FontSize',8,...
'FontName','Times')
xticklabels('')

% lgd=legend('ref','PID','PC');
% set(lgd,'FontUnits','points',...
% 'interpreter','latex',...
% 'FontSize',7,...
% 'FontName','Times',...
% 'Location','SouthEast')

box on
grid on
set(gca,'gridlinestyle','-')

% #########################################################################
% -----------------------------Sub 2.1---------------------------------------

ax14 = subplot(5,2,4);

hold on
%plot(time0(1:samp_red:end),alpha_l2_PID(1:samp_red:end),'b','LineWidth',0.8)
plot(time0(1:samp_red:end),alpha_l2_SVC(1:samp_red:end),'r','LineWidth',0.8)
plot(time0(1:samp_red:end),alpha_bar_l2_SVC(1:samp_red:end),'k--','LineWidth',0.8)
%ss_l2 = plot(time0(1:samp_red:end),90*switch_side_l2_SVC(1:samp_red:end),'k','LineWidth',0.8);

ylabel('\alpha (\circ)')
%xlabel({'Time (s)';...
%    ['(b) case 2: current and waves.']})%...
axis([0 t1-t0 25 160])

set(gca,...
'Units','normalized',...
'YTick',0:45:180,...
'XTick',0:Dticks_time:ticks_time_end,... 
'FontUnits','points',...
'FontWeight','normal',...
'FontSize',8,...
'FontName','Times')
xticklabels('')

% lgd=legend('desired','actual');
% set(lgd,'FontUnits','points',...
% 'interpreter','latex',...
% 'FontSize',7,...
% 'FontName','Times',...
% 'Location','SouthEast')

box on
grid on
set(gca,'gridlinestyle','-')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% -----------------------------Sub 2.2---------------------------------------


ax16 = subplot(5,2,6);

hold on
%plot(time0(1:samp_red:end),theta_u_l2_PID(1:samp_red:end),'b','LineWidth',0.8)
plot(time0(1:samp_red:end),theta_u_l2_SVC(1:samp_red:end),'r','LineWidth',0.8)
plot(time0(1:samp_red:end),theta_u_c_l2_SVC(1:samp_red:end),'k--','LineWidth',0.8)

ylabel('\theta_{u} (\circ)')
%xlabel({'Time (s)';...
%    ['(d) case 2: current and waves.']})%,...
    %'                                    ']})

axis([0 t1-t0 -50 50])

set(gca,...
'Units','normalized',...
'YTick',-40:40:80,...
'XTick',0:Dticks_time:ticks_time_end,... 
'FontUnits','points',...
'FontWeight','normal',...
'FontSize',8,...
'FontName','Times')
xticklabels('')

% lgd=legend('desired','actual');
% set(lgd,'FontUnits','points',...
% 'interpreter','latex',...
% 'FontSize',7,...
% 'FontName','Times',...
% 'Location','SouthEast')

box on
grid on
set(gca,'gridlinestyle','-')


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% -----------------------------Sub 1.2---------------------------------------

ax17 = subplot(5,2,7);

hold on
%plot(time0(1:samp_red:end),T_l2_PID(1:samp_red:end),'b','LineWidth',0.8)
plot(time0(1:samp_red:end),T_l2_SVC(1:samp_red:end),'r','LineWidth',0.8)
plot(time0(1:samp_red:end),T_bar_l2_SVC(1:samp_red:end),'k--','LineWidth',0.8)

ylabel('$T$ (N)','Interpreter','latex')
%xlabel({'Time (s)';...
%    ['(b) case 2: current and waves.']})%...
axis([0 t1-t0 -5 170])

set(gca,...
'Units','normalized',...
'YTick',0:50:200,...
'XTick',0:Dticks_time:ticks_time_end,... 
'FontUnits','points',...
'FontWeight','normal',...
'FontSize',8,...
'FontName','Times')
xticklabels('')

% lgd=legend('PC estimated mean','PID','PC');
% set(lgd,'FontUnits','points',...
% 'interpreter','latex',...
% 'FontSize',7,...
% 'FontName','Times',...
% 'Location','Best')


box on
grid on
set(gca,'gridlinestyle','-')

% ----------------------------- -----------------------------
% -------------------------------Sub 2.2-------------------------------------

ax18 = subplot(5,2,8);
hold on

%plot(time0(1:samp_red:end),Vol_im_l2_PID(1:samp_red:end)/V_b,'b','LineWidth',0.8)
plot(time0(1:samp_red:end),Vol_im_l2_SVC(1:samp_red:end)/V_b,'r','LineWidth',0.8)
% plot(time0(1:samp_red:end),Vol_im_bar_l2_SVC(1:samp_red:end)/V_b,'--k','LineWidth',0.8)

ylabel('$V_{\mathrm{im}}/V_{\mathrm{b}}$','Interpreter','latex')
%xlabel({'Time (s)';...
%    ['(d) case 2: current and waves.']})%...
    %'                                    ']})

axis([0 t1-t0 0.0 0.65])

set(gca,...
'Units','normalized',...
'YTick',0:0.25:1,...
'XTick',0:Dticks_time:ticks_time_end,... 
'FontUnits','points',...
'FontWeight','normal',...
'FontSize',8,...
'FontName','Times')
xticklabels('')

% lgd=legend('$x$','$x_{des}$','$e_x$');
% set(lgd,'FontUnits','points',...
% 'interpreter','latex',...
% 'FontSize',7,...
% 'FontName','Times',...
% 'Location','East')

box on
grid on
set(gca,'gridlinestyle','-')

%      -----------------------------
% #########################################################################
% -------------------------------Sub 2.1-------------------------------------

ax19 = subplot(5,2,9);

hold on
%plot(time0(1:samp_red:end),u_1_l2_PID(1:samp_red:end),'b','LineWidth',0.8)
plot(time0(1:samp_red:end),u_1_l2_SVC(1:samp_red:end),'r','LineWidth',0.8)

ylabel('u_{1c} (N)')
xlabel({'Time (s)';...
    ['                                                       ',...
    '(b) S4: medium sized multirotor with cable length of 20 m.']})
axis([0 t1-t0 0 500])

set(gca,...
'Units','normalized',...
'YTick',0:200:600,...
'XTick',0:Dticks_time:ticks_time_end,... 
'FontUnits','points',...
'FontWeight','normal',...
'FontSize',8,...
'FontName','Times')


box on
grid on
set(gca,'gridlinestyle','-')



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% -----------------------------Sub 2.2---------------------------------------
ax10 = subplot(5,2,10);
box on
grid on
set(gca,'gridlinestyle','-')

hold on
%plot(time0(1:samp_red:end),u_2_l2_PID(1:samp_red:end),'b','LineWidth',0.8)
plot(time0(1:samp_red:end),u_2_l2_SVC(1:samp_red:end),'r','LineWidth',0.8)

ylabel('u_{2c} (N.m)')
xlabel('Time (s)')

axis([0 t1-t0 -50 50])
   % ['(a) case 1: wave-free.']})%,...
    %'                                       ']})

set(gca,...
'Units','normalized',...
'YTick',-30:30:30,...
'XTick',0:Dticks_time:ticks_time_end,... 
'FontUnits','points',...
'FontWeight','normal',...
'FontSize',8,...
'FontName','Times')

% lgd=legend('$x$','$x_{des}$','$e_x$');
% set(lgd,'FontUnits','points',...
% 'interpreter','latex',...
% 'FontSize',7,...
% 'FontName','Times',...
% 'Location','East')

box on
grid on
set(gca,'gridlinestyle','-')

%      -----------------------------

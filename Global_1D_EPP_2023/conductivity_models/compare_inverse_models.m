clc,clear,close all

% Compare our results with other results
SwarmSatMag_2years_data = load('inverse_model_2years.txt');
Nm = size(SwarmSatMag_2years_data,1);
SwarmSatMag_2years = zeros(2*Nm-1,2);
SwarmSatMag_2years(1:2:end,1) = SwarmSatMag_2years_data(1:Nm,1);
SwarmSatMag_2years(2:2:end,1) = SwarmSatMag_2years_data(2:Nm,1);
SwarmSatMag_2years(1:2:end,2) = SwarmSatMag_2years_data(1:Nm,2);
SwarmSatMag_2years(2:2:end,2) = SwarmSatMag_2years_data(1:Nm-1,2);
SwarmSatMag_2years = [SwarmSatMag_2years;[2890 SwarmSatMag_2years(end,2)]];

SwarmSatMag_5years_data = load('inverse_model_5years.txt');
Nm = size(SwarmSatMag_5years_data,1);
SwarmSatMag_5years = zeros(2*Nm-1,2);
SwarmSatMag_5years(1:2:end,1) = SwarmSatMag_5years_data(1:Nm,1);
SwarmSatMag_5years(2:2:end,1) = SwarmSatMag_5years_data(2:Nm,1);
SwarmSatMag_5years(1:2:end,2) = SwarmSatMag_5years_data(1:Nm,2);
SwarmSatMag_5years(2:2:end,2) = SwarmSatMag_5years_data(1:Nm-1,2);
SwarmSatMag_5years = [SwarmSatMag_5years;[2890 SwarmSatMag_5years(end,2)]];

SwarmSatMag_8years_data = load('inverse_model_8years.txt');
Nm = size(SwarmSatMag_8years_data,1);
SwarmSatMag_8years = zeros(2*Nm-1,2);
SwarmSatMag_8years(1:2:end,1) = SwarmSatMag_8years_data(1:Nm,1);
SwarmSatMag_8years(2:2:end,1) = SwarmSatMag_8years_data(2:Nm,1);
SwarmSatMag_8years(1:2:end,2) = SwarmSatMag_8years_data(1:Nm,2);
SwarmSatMag_8years(2:2:end,2) = SwarmSatMag_8years_data(1:Nm-1,2);
SwarmSatMag_8years = [SwarmSatMag_8years;[2890 SwarmSatMag_8years(end,2)]];

SwarmSatMag_8years_3jumps_data = load('inverse_model_8years_jump.txt');
Nm = size(SwarmSatMag_8years_3jumps_data,1);
SwarmSatMag_8years_3jumps = zeros(2*Nm-1,2);
SwarmSatMag_8years_3jumps(1:2:end,1) = SwarmSatMag_8years_3jumps_data(1:Nm,1);
SwarmSatMag_8years_3jumps(2:2:end,1) = SwarmSatMag_8years_3jumps_data(2:Nm,1);
SwarmSatMag_8years_3jumps(1:2:end,2) = SwarmSatMag_8years_3jumps_data(1:Nm,2);
SwarmSatMag_8years_3jumps(2:2:end,2) = SwarmSatMag_8years_3jumps_data(1:Nm-1,2);
SwarmSatMag_8years_3jumps = [SwarmSatMag_8years_3jumps;[2890 SwarmSatMag_8years_3jumps(end,2)]];


fig = figure('Position',[200 200 550 450]);
semilogx(SwarmSatMag_2years(:,2),SwarmSatMag_2years(:,1),'k-','LineWidth',2)
hold on
semilogx(SwarmSatMag_5years(:,2),SwarmSatMag_5years(:,1),'r-','LineWidth',2)
hold on
semilogx(SwarmSatMag_8years(:,2),SwarmSatMag_8years(:,1),'b-','LineWidth',2)
hold on
semilogx(SwarmSatMag_8years_3jumps(:,2),SwarmSatMag_8years_3jumps(:,1),'b-.','LineWidth',2)
set(gca,'YDir','reverse')
xlim([1e-4 1e2])
% ylim([0 1000])
xlabel('Conductivity (S/m)')
ylabel('Depth (km)')
h = legend('This study (2 years, smooth)',...
    'This study (5 years, smooth)','This study (8 years, smooth)','This study (8 years, jump)');
set(h, 'Box','off','location','SouthWest')
set(gca, 'FontSize', 12, 'LineWidth', 1.0);

set(fig,'Units','Inches');
pos = get(fig,'Position');
set(fig,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
print(fig,'-dpdf','-r600','compare_inverse_models.pdf')
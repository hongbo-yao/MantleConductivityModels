clc,clear,close all

% data
SwarmSatMag_2years_data = load('SwarmSatMag_2years_inverse_model.txt');
Nm = size(SwarmSatMag_2years_data,1);
SwarmSatMag_2years = zeros(2*Nm-1,2);
SwarmSatMag_2years(1:2:end,1) = SwarmSatMag_2years_data(1:Nm,1);
SwarmSatMag_2years(2:2:end,1) = SwarmSatMag_2years_data(2:Nm,1);
SwarmSatMag_2years(1:2:end,2) = SwarmSatMag_2years_data(1:Nm,2);
SwarmSatMag_2years(2:2:end,2) = SwarmSatMag_2years_data(1:Nm-1,2);

SwarmSatMag_5years_data = load('SwarmSatMag_5years_inverse_model.txt');
Nm = size(SwarmSatMag_5years_data,1);
SwarmSatMag_5years = zeros(2*Nm-1,2);
SwarmSatMag_5years(1:2:end,1) = SwarmSatMag_5years_data(1:Nm,1);
SwarmSatMag_5years(2:2:end,1) = SwarmSatMag_5years_data(2:Nm,1);
SwarmSatMag_5years(1:2:end,2) = SwarmSatMag_5years_data(1:Nm,2);
SwarmSatMag_5years(2:2:end,2) = SwarmSatMag_5years_data(1:Nm-1,2);

SwarmSatMag_8years_data = load('SwarmSatMag_8years_inverse_model.txt');
Nm = size(SwarmSatMag_8years_data,1);
SwarmSatMag_8years = zeros(2*Nm-1,2);
SwarmSatMag_8years(1:2:end,1) = SwarmSatMag_8years_data(1:Nm,1);
SwarmSatMag_8years(2:2:end,1) = SwarmSatMag_8years_data(2:Nm,1);
SwarmSatMag_8years(1:2:end,2) = SwarmSatMag_8years_data(1:Nm,2);
SwarmSatMag_8years(2:2:end,2) = SwarmSatMag_8years_data(1:Nm-1,2);

SwarmSatMag_8years_3jumps_data = load('SwarmSatMag_8years_3jumps_inverse_model.txt');
Nm = size(SwarmSatMag_8years_3jumps_data,1);
SwarmSatMag_8years_3jumps = zeros(2*Nm-1,2);
SwarmSatMag_8years_3jumps(1:2:end,1) = SwarmSatMag_8years_3jumps_data(1:Nm,1);
SwarmSatMag_8years_3jumps(2:2:end,1) = SwarmSatMag_8years_3jumps_data(2:Nm,1);
SwarmSatMag_8years_3jumps(1:2:end,2) = SwarmSatMag_8years_3jumps_data(1:Nm,2);
SwarmSatMag_8years_3jumps(2:2:end,2) = SwarmSatMag_8years_3jumps_data(1:Nm-1,2);

% plot
fig = figure;
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
    'This study (5 years, smooth)','This study (8 years, smooth)','This study (8 years, three-jumps)');
set(h, 'Box','off','location','SouthWest')
set(gca, 'FontSize', 12, 'LineWidth', 1.0);

% save figure
print(fig,'-dpng','-r600','SwarmSatMag_compare_inverse_modes.png')

%% =================== Force-Position Plots ===================

%ydah_monomer_paba 
hpnn_tauro = importdata('ydah_monomer_paba_results.dat');
time_hpnn_tauro = hpnn_tauro(:,1);
position_hpnn_tauro = hpnn_tauro(:,2);
force_hpnn_tauro = hpnn_tauro(:,3);

plot(position_paba(1:45500)+5.87,force_paba(1:45500),'b')
hold on;xlim([-5.7508 36.2278]);
plot(position_sulf(1:40700)+4.8,force_sulf(1:40700),'r')
nicefig;
legend('YdaH + PABA','YdaH + sulfamethazine');
ylabel('Force (pN)','fontsize',42);xlabel('Channel Position (�)','fontsize',42);
set(gca,'fontsize',42,'linewidth',3);
set(gcf, 'Position', [0, 0, 1056, 816]);
set(gcf,'Units', 'pixels');
set(gca,'TickDir', 'out');

%ydah_monomer_paba 
ydah_paba = importdata('ydah_monomer_paba_results.dat');
time_paba = ydah_paba(:,1);
position_paba = ydah_paba(:,2);
force_paba = ydah_paba(:,3);

plot(position_paba(1:45500)+5.87,force_paba(1:45500),'b')
hold on;xlim([-5.7508 36.2278]);
plot(position_sulf(1:40700)+4.8,force_sulf(1:40700),'r')
nicefig;
legend('YdaH + PABA','YdaH + sulfamethazine');
ylabel('Force (pN)','fontsize',42);xlabel('Channel Position (�)','fontsize',42);
set(gca,'fontsize',42,'linewidth',3);
set(gcf, 'Position', [0, 0, 1056, 816]);
set(gcf,'Units', 'pixels');
set(gca,'TickDir', 'out');



%ydah_monomer_paba
ydah_paba = importdata('ydah_monomer_paba_results.dat');
time_paba = ydah_paba(:,1);
position_paba = ydah_paba(:,2);
force_paba = ydah_paba(:,3);

plot(position_paba(1:45500)+5.87,force_paba(1:45500),'b')
hold on;xlim([-5.7508 36.2278]);
plot(position_sulf(1:40700)+4.8,force_sulf(1:40700),'r')
nicefig;
legend('YdaH + PABA','YdaH + sulfamethazine');
ylabel('Force (pN)','fontsize',42);xlabel('Channel Position (�)','fontsize',42);
set(gca,'fontsize',42,'linewidth',3);
set(gcf, 'Position', [0, 0, 1056, 816]);
set(gcf,'Units', 'pixels');
set(gca,'TickDir', 'out');




ydah_sulf = importdata('ydah_dimer_sulf_results.dat');
time_sulf = ydah_sulf(:,1);
position_sulf = ydah_sulf(:,2);
force_sulf = ydah_sulf(:,3);

%ydah_monomer_paba for 
ydah_paba = importdata('ydah_monomer_paba_results.dat');
time_paba = ydah_paba(:,1);
position_paba = ydah_paba(:,2);
force_paba = ydah_paba(:,3);

plot(position_paba(1:45500)+5.87,force_paba(1:45500),'b')
hold on;xlim([-5.7508 36.2278]);
plot(position_sulf(1:40700)+4.8,force_sulf(1:40700),'r')
nicefig;
legend('YdaH + PABA','YdaH + sulfamethazine');
ylabel('Force (pN)','fontsize',42);xlabel('Channel Position (�)','fontsize',42);
set(gca,'fontsize',42,'linewidth',3);
set(gcf, 'Position', [0, 0, 1056, 816]);
set(gcf,'Units', 'pixels');
set(gca,'TickDir', 'out');
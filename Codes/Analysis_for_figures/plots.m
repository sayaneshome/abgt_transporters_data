%%============================ RMSF Plots ===================
% YdaH_monomer_paba
rmsf_paba = dlmread('rmsfCA_aligned.txt');
% YdaH_dimer_sulf
rmsf_sulffull = dlmread('rmsfCA_aligned.txt');
rmsf_sulf = rmsf_sulffull(mD.chainID=='A');
mD = readPDB('YdaH_dimer_sulfamethazine_CA.pdb',1);
resnum = mD.resSeq(mD.chainID == 'A');

plot(resnum,rmsf_paba,'b');
hold on;xlim([1 492]);%ylim([-100 170]);
plot(resnum,rmsf_sulf,'r');
nicefig;
ylabel('RMSF (Å)','fontsize',42);xlabel('Residue No.','fontsize',42);
set(gca,'fontsize',42,'linewidth',3);
set(gcf, 'Position', [0, 0, 1056, 816]);
set(gcf,'Units', 'pixels');
set(gca,'TickDir', 'out');
hold on;
secStr = [21:42 63:79 83:99 101:112 115:131 135:151 155:168 178:194 204:228 250:272 290:314 320:334 336:354 356:371 375:392 396:414 418:432 441:452 458:486];
ySecStr = repmat(3.75,1,size(secStr,2))
%% =================== Force-Position Plots ===================
%ydah_dimer_sulf for plot(x,z)->(1:40700) 
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
ylabel('Force (pN)','fontsize',42);xlabel('Channel Position (Å)','fontsize',42);
set(gca,'fontsize',42,'linewidth',3);
set(gcf, 'Position', [0, 0, 1056, 816]);
set(gcf,'Units', 'pixels');
set(gca,'TickDir', 'out');
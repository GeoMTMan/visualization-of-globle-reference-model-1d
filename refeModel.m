%%
% 作者：李泯
% 日期：2019/3/25
% 主要内容：对全球参考模型进行简单可视化
%%
%导入数据
load model.mat;
%%
%PREM
figure();
%density vp vs
subplot(1,3,1);
plot(prem(:,2),prem(:,1));
title('density in PREM');
xlabel('density/(g/cm^3)');
ylabel('depth/km');
set(gca,'YDir','reverse');
axes('Position',[0.18,0.62,0.28,0.25]);
subplot(1,3,2);
plot(prem(:,3),prem(:,1));
title('vp in PREM');
xlabel('km/s');
ylabel('depth/km');
set(gca,'YDir','reverse');
subplot(1,3,3);
plot(prem(:,4),prem(:,1))
title('vs in PREM');
xlabel('km/s');
ylabel('depth/km');
set(gca,'YDir','reverse');

%%
%IASP91
figure();
%vp vs
subplot(1,3,1);
plot(IASP(:,2),IASP(:,1));
title('vp in IASP91');
xlabel('km/s');
ylabel('depth/km');
set(gca,'YDir','reverse');
subplot(1,3,2);
plot(IASP(:,3),IASP(:,1))
title('vs in IASP91');
xlabel('km/s');
ylabel('depth/km');
set(gca,'YDir','reverse');

%%
%AK135
figure();
%density vp vs
subplot(1,3,1);
plot(ak135(:,2),ak135(:,1));
title('density in AK135');
xlabel('density/(g/cm^3)');
ylabel('depth/km');
set(gca,'YDir','reverse');
subplot(1,3,2);
plot(ak135(:,3),ak135(:,1));
title('vp in AK135');
xlabel('km/s');
ylabel('depth/km');
set(gca,'YDir','reverse');
subplot(1,3,3);
plot(ak135(:,4),ak135(:,1))
title('vs in AK135');
xlabel('km/s');
ylabel('depth/km');
set(gca,'YDir','reverse');

%%
%compare
figure();
%density
subplot(1,3,1);
plot(prem(:,2),prem(:,1),'--r');
hold on;
plot(ak135(:,2),ak135(:,1));
title('Density Comparison');
xlabel('density/(g/cm^3)');
ylabel('depth/km');
set(gca,'YDir','reverse');
legend('PREM','AK135');
legend('Location','southwest');
%vp
subplot(1,3,2);
plot(prem(:,3),prem(:,1),'--r');
hold on;
plot(IASP(:,2),IASP(:,1),'-.k');
hold on;
plot(ak135(:,3),ak135(:,1));
title('Vp Comparison');
xlabel('km/s');
ylabel('depth/km');
set(gca,'YDir','reverse');
legend('PREM','IASP91','AK135');
legend('Location','southwest');
%vs
subplot(1,3,3);
plot(prem(:,4),prem(:,1),'--r');
hold on;
plot(IASP(:,3),IASP(:,1),'-.k');
hold on;
plot(ak135(:,4),ak135(:,1));
title('Vs Comparison');
xlabel('km/s');
ylabel('depth/km');
set(gca,'YDir','reverse');
legend('PREM','IASP91','AK135');
legend('Location','southwest');


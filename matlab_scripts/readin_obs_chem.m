clear all
clc
cd('C:\Users\AdminH\Desktop\emission_zhiyong\met')

% obs_data=xlsread('2010��������վ������.xlsx','Sheet1','C4370:F4865');
obs_data=xlsread('2010��������վ������.xlsx','Sheet1','C2:F497');
% obs_data ˵����
% 2010��10�� ������16վ�� ��������(�վ�ֵ)	��������(�վ�ֵ)	�����������(�վ�ֵ)	����(���Сʱֵ)
[x,y]=size(obs_data);
days=31;
temp=x/days;
obs_data_1=[];
obs_data_2=[];
obs_data_3=[];
obs_data_4=[];
obs_data_5=[];
obs_data_6=[];
obs_data_7=[];
obs_data_8=[];
obs_data_9=[];
obs_data_10=[];
obs_data_11=[];
obs_data_12=[];
obs_data_13=[];
obs_data_14=[];
obs_data_15=[];
obs_data_16=[];
for i =1:temp:x
    obs_temp_1=obs_data(i,:);
    obs_data_1=[obs_data_1;obs_temp_1];
    % ´����԰
    obs_temp_2=obs_data(i+1,:);
    obs_data_2=[obs_data_2;obs_temp_2];
    % ��ɳ����ɳվ
    obs_temp_3=obs_data(i+2,:);
    obs_data_3=[obs_data_3;obs_temp_3];
    % ���
    obs_temp_4=obs_data(i+3,:);
    obs_data_4=[obs_data_4;obs_temp_4];
    % ��԰
    obs_temp_5=obs_data(i+4,:);
    obs_data_5=[obs_data_5;obs_temp_5];
    % �Ƽ�
    obs_temp_6=obs_data(i+5,:);
    obs_data_6=[obs_data_6;obs_temp_6];
    % ��۾�
    obs_temp_7=obs_data(i+6,:);
    obs_data_7=[obs_data_7;obs_temp_7];
    % �ݾ���
    obs_temp_8=obs_data(i+7,:);
    obs_data_8=[obs_data_8;obs_temp_8];
    % ����
    obs_temp_9=obs_data(i+8,:);
    obs_data_9=[obs_data_9;obs_temp_9];
    % ������վ
    obs_temp_10=obs_data(i+9,:);
    obs_data_10=[obs_data_10;obs_temp_10];
    % ����
    obs_temp_11=obs_data(i+10,:);
    obs_data_11=[obs_data_11;obs_temp_11];
    % �����
    obs_temp_12=obs_data(i+11,:);
    obs_data_12=[obs_data_12;obs_temp_12];
    % ����Сѧ
    obs_temp_13=obs_data(i+12,:);
    obs_data_13=[obs_data_13;obs_temp_13];
    % ������վ
    obs_temp_14=obs_data(i+13,:);
    obs_data_14=[obs_data_14;obs_temp_14];
    % ����
    obs_temp_15=obs_data(i+14,:);
    obs_data_15=[obs_data_15;obs_temp_15];
    % ���T
    obs_temp_16=obs_data(i+15,:);
    obs_data_16=[obs_data_16;obs_temp_16];
    % �|ӿ
end
obs_sitedata=cat(3,obs_data_1,obs_data_2,obs_data_3,obs_data_4,obs_data_5,obs_data_6,obs_data_7,obs_data_8,obs_data_9,obs_data_10,obs_data_11,obs_data_12,obs_data_13,obs_data_14,obs_data_15,obs_data_16);
% ´����԰
% ��ɳ����ɳվ
% ���
% ��԰
% �Ƽ�
% ��۾�
% �ݾ���
% ����
% ������վ
% ����
% �����
% ����Сѧ
% ������վ
% ����
% ���T
% �|ӿ

%��������(�վ�ֵ)	��������(�վ�ֵ)	�����������(�վ�ֵ)	����(���Сʱֵ)
obs_no2 =squeeze(obs_sitedata(:,1,:));
obs_so2 =squeeze(obs_sitedata(:,2,:));
obs_pm10=squeeze(obs_sitedata(:,3,:));
obs_o3  =squeeze(obs_sitedata(:,4,:));
save ('obs_sitedata201001.mat','obs_no2','obs_so2','obs_pm10','obs_o3')
clear obs_temp_* obs_dat* temp x y days i obs_sitedata

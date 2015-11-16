clear
clc

% ��ȡ�ļ�

emisfile='C:\Users\ChangMing\Desktop\emission_zhiyong\N_dep_modeling\emis\meic\3km\2010\MEIC_3km_2010_10_agriculture.txt';

cityfile='C:\Users\ChangMing\Desktop\emission_zhiyong\N_dep_modeling\emis\GZregionPoint.txt';

[lon, lat, SO2, NOx, CO, NH3, ACET, ALK1, ALK2, ALK3, ALK4, ALK5, ARO1, ARO2, BACL, BALD, CCHO, CH4, CRES, ETHE, GLY,...
    HCHO, IPRD, ISOP, MACR, MEK, MEOH, MGLY, MVK, NROG, NVOL, OLE1, OLE2, PHEN, PRD2, RCHO, TERP, BC, OC, OPM2_5,...
    PMcoarse, PM10more]=textread(emisfile,'%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f','headerlines',2);

emis_data=[SO2 NOx CO NH3 ACET ALK1 ALK2 ALK3 ALK4 ALK5 ARO1 ARO2 BACL BALD CCHO CH4 CRES ETHE GLY HCHO IPRD ISOP MACR MEK MEOH MGLY MVK NROG NVOL OLE1 OLE2 PHEN PRD2 RCHO TERP BC OC OPM2_5 PMcoarse PM10more];

clear SO2 NOx CO NH3 ACET ALK1 ALK2 ALK3 ALK4 ALK5 ARO1 ARO2 BACL BALD CCHO CH4 CRES ETHE GLY HCHO IPRD ISOP MACR MEK MEOH MGLY MVK NROG NVOL OLE1 OLE2 PHEN PRD2 RCHO TERP BC OC OPM2_5 PMcoarse PM10more

% ��ȡ��γ������

lat_emission=lat;
lon_emission=lon;

[lat_city,lon_city]=textread(cityfile,'%f%f','headerlines',1);

% ɸѡ����city��Χ�ڵ���������Ϊ1��������Ϊ0

in=inpolygon(lon_emission,lat_emission,lon_city,lat_city);

% ȷ����emisfile����ȡ��λ��

[X,Y]=size(emis_data);

emisoff(X,1)=0;
for i=1:X
        emisoff(i,1)=in(i,1);
end

% ȷ������Դ���༰���İٷֱ�

reduce_factor=0.8;

data=[emis_data(2,:) emis_data(4,:)];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 

data(emisoff==1)=data(emisoff==1)*reduce_factor;



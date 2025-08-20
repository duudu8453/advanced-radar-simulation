clc;
clear ;
close all;

Pt      =10*log10(480);        % ���书��
Gr      =34;                  % ��������30dB
Gt      =25.6;                  % ��������30dB

Sigma   =10*log10(0.01);          %%%Ŀ�귴�����RCS
SNR     =12.8;                  %%%�����

Mtd     =10*log10(192);       %%%MTD�ۻ�����

pluse_wd=10*log10(20e-6);     %%%%����

C       =3e8;               %%%%����
                  
F0      =10e9;             %%%Ƶ��

lamda_m = (C/F0)^2;

lamda   =20*log10(C/F0);      %%%%%����

BW      =10*log10(40);        %%%%%����



K       =10*log10(1.38e-23); %%%������������

T       =10*log10(290);      %%%�����¶�ϵ��

Fn      =4;                %%%TR����ϵ��

Loss    =8.24;             %%%%ϵͳ����ʧ

ZF      =10*log10((4*pi)^3); %%%%%%%����

AA=Pt+Gr+Gt+Sigma+Mtd +pluse_wd+lamda;

BB=K+T+Loss+Fn +SNR+ZF;

Rn=AA-BB;

Rdb=10^(Rn/10);
Rdb_db = 10*log10(Rdb);
R=Rdb^(1/4);                %%%%%%%%%5�״�̽�����










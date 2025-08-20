clc;
clear ;
close all;

Pt      =10*log10(480);        % 发射功率
Gr      =34;                  % 接收增益30dB
Gt      =25.6;                  % 发射增益30dB

Sigma   =10*log10(0.01);          %%%目标反射面积RCS
SNR     =12.8;                  %%%信噪比

Mtd     =10*log10(192);       %%%MTD累积次数

pluse_wd=10*log10(20e-6);     %%%%脉宽

C       =3e8;               %%%%光速
                  
F0      =10e9;             %%%频率

lamda_m = (C/F0)^2;

lamda   =20*log10(C/F0);      %%%%%波长

BW      =10*log10(40);        %%%%%带宽



K       =10*log10(1.38e-23); %%%玻尔兹曼常数

T       =10*log10(290);      %%%噪声温度系数

Fn      =4;                %%%TR噪声系数

Loss    =8.24;             %%%%系统总损失

ZF      =10*log10((4*pi)^3); %%%%%%%常数

AA=Pt+Gr+Gt+Sigma+Mtd +pluse_wd+lamda;

BB=K+T+Loss+Fn +SNR+ZF;

Rn=AA-BB;

Rdb=10^(Rn/10);
Rdb_db = 10*log10(Rdb);
R=Rdb^(1/4);                %%%%%%%%%5雷达探测距离










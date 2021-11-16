model russian

constant Chemsep_Database.Npentane comp1;
constant Chemsep_Database.Nhexane comp2;
constant Chemsep_Database.Isopentane comp3;
constant Chemsep_Database.TwoTwodimethylbutane comp4;
constant Chemsep_Database.TwoThreedimethylbutane comp5;
constant Chemsep_Database.Twomethylpentane comp6;
constant Chemsep_Database.Threemethylpentane comp7;
constant Chemsep_Database.Cyclopentane comp8;
constant Chemsep_Database.Methylcyclopentane comp9;
constant Chemsep_Database.Cyclohexane comp10;
constant Chemsep_Database.Benzene comp11;
constant Chemsep_Database.Hydrogen comp12;
constant Chemsep_Database.Nbutane comp13;
constant Chemsep_Database.Isobutane comp14;
constant Chemsep_Database.Methane comp15;
constant Chemsep_Database.Ethane comp16;
constant Chemsep_Database.Propane comp17;
constant Chemsep_Database.General_Properties comp[17] = {comp1, comp2, comp3, comp4, comp5, comp6, comp7, comp8, comp9, comp10, comp11, comp12, comp13, comp14, comp15, comp16, comp17};

constant Real

MW_i[17](each unit="kg/kmol")={72.125,86.117,72.125,86.117,86.117,86.117,86.117,70.135,84.162,84.162,78.112,2,58.123,58.123,58.123,30,44},

Hf[17](each unit = "kJ/kmol")={-173000,-198700,-153649.33,-213000,-207000,-204300,-202000,-105900,-137700,-157000,48700,0,-146000,-153000,-74520,-83820,-104780},

A_j[54](each unit="kmol/kgcat.hr")={3.13671E+16,4.7476E+16,222061907.2,273195829.6,6.86237E+18,1.93408E+19,8.84044E+16,8.84044E+16,1.64617E+12,4.63953E+13,655351.1494,53268941.3,2.73196E+11,3.77115E+12,25496118293.0,2.54961E+11,14337.52095,48581.85187,1.68451E+31,5.70787E+23,1.64617E+27,5.70787E+25,8326.722002,3601.422433,42313024110.0,38589936.63,8.44256E+13,1521718136.0,5.39926E+15,1.12807E+11,4.70256E+14,72834009.19,1.7074E+12,7453053.12,5.78541E+21,5.27636E+11,3.82238E+13,2.41176E+12,2.25079E+11,1.12807E+26,1.10239E+31,1.29519E+11,1.48708E+11,47025586048.0,5.27636E+25,5.27636E+13,5.27636E+25,6.34358E+27,3.32916E+31,219955.1913,592017.0528,187212.2301,5.03888E+28,5.15625E+20},

A_j1[54] = A_j/0.46,
E_j[54](each unit ="kJ/mol")={148.93,154.28,143.17,151.41,150.98,155.92,152.96,149.95,127.28,139.07,64.5,77.06,146.14,160.28,98.28,105.4,3.51,4.79,180.2,400.43,187.05,300.79,51.08,341.89,129.75,88.64,135.45,129.29,154.54,98.63,150.29,102.35,168.13,90.7,177.32,222.9,59.8,54.08,330.28,329.06,284.97,166.32,165.82,112.05,265,264,263.5,265,295.62,295,295.19,294,294.22,278.81},

R(quantity="Real gas constant",unit="J/(mol.K)")=8.314,

in_mol_frac[17]={0.03215306,0.018372229,0.014040804,0.001609363,0.007345705,0.032490004,0.021734363,0.002836969,0.001875008,6.52177E-05,0.000860795,0.839108062,0.000495784,0.001133221,0.0121113,0.010245855,0.003524092},

in_wt_frac[17] = {0.169,0.1153,0.0738,0.0101,0.0461,0.2039,0.1364,0.0145,0.0115,0.0004,0.0049,0.1223,0.0021,0.0048,0.0513,0.0224,0.0113},

flow_rate_wt(unit="kg/hr") = 86740.15,

T0 = 298,

flow_rate_wt_i[17](each unit="kg/hr") = flow_rate_wt*in_wt_frac,

flow_rate_mol_i[17](each unit="kmol/hr") = flow_rate_wt_i./MW_i;

//T= 450;

constant Integer r1[54]= {1,3,2,6,2,7,6,7,6,4,6,5,7,4,7,5,4,5,11,10,11,9,10,9,2,10,6,9,7,9,4,9,5,9,8,1,13,14,1,1,3,2,2,2,6,6,6,6,7,7,7,4,4,5},

r2[54]={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,12,0,12,0,0,0,0,12,0,12,0,12,0,12,0,12,12,0,0,0,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12},

p1[54]={3,1,6,2,7,2,7,6,4,6,5,6,4,7,5,7,5,4,10,11,9,11,9,10,10,2,9,6,9,7,9,4,9,5,1,8,14,13,17,13,14,17,1,13,14,3,1,17,3,13,1,3,14,3},

p2[54]={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,12,0,12,0,0,12,0,12,0,12,0,12,0,12,0,0,12,0,0,16,15,15,17,15,16,16,15,15,17,15,16,15,15,16,15};


Real f_i[17](each unit="kmol/hr"),F(unit="kmol/hr"),K_j[54](each unit="kmol/(kgcat.hr)"),Cp_i[17](each unit= "kJ/(kmol.K)"),r_j[54](each unit="kmol/(kgcat.hr)"),y_i[17],x_i[17],T(quantity = "Temperature",unit="K"),Cp0[17],Q_j[17](each unit="kJ/kmol"),Cp_T1[17],Cp_T2[17];//,H0[17];//,,Cp_i_T0[17],H[17](each unit="kJ/kmol"),,,del_Hf0[54];

initial equation

  f_i[1:17]= flow_rate_mol_i;
 
  T= 420;
  
  F = sum(flow_rate_mol_i);
  
equation
  y_i = f_i/F;
  
  x_i = (y_i.*MW_i)/sum(y_i.*MW_i);
  //Cp_i=A + B*T + C*T^2 + D*(T^(-2));
  Cp_i[1:11] = Functions.VapCpId(comp[1:11].VapCp,T);
  Cp_i[12] = Functions.VapCpId(comp[12].VapCp,T);
  Cp_i[13:14] = Functions.VapCpId(comp[13:14].VapCp,T);
  Cp_i[15:17] = Functions.VapCpId(comp[15:17].VapCp,T);
  
  K_j = F*A_j1.*exp(-E_j*1000/(R*(T)));
   
for i in 1:54 loop

  if r2[i]==0 then
   r_j[i] = K_j[i]*f_i[r1[i]]/F;
  else
   r_j[i] = K_j[i]*f_i[r1[i]]*f_i[12]/F^2;
  end if;
    
 end for;
 
  Cp0[1:11] = Functions.VapCpId(comp[1:11].VapCp,T0);
  Cp0[12] = Functions.VapCpId(comp[12].VapCp, T0);
  Cp0[13:14] = Functions.VapCpId(comp[13:14].VapCp,T0);
  Cp0[15:17] = Functions.VapCpId(comp[15:17].VapCp, T0);
  
  Cp_T1[1:11] = Functions.VapCpId(comp[1:11].VapCp,(T-T0)/3);
  Cp_T1[12] = Functions.VapCpId(comp[12].VapCp,(T-T0)/3);
  Cp_T1[13:14] = Functions.VapCpId(comp[13:14].VapCp,(T-T0)/3);
  Cp_T1[15:17] = Functions.VapCpId(comp[15:17].VapCp,(T-T0)/3);
  
  Cp_T2[1:11] = Functions.VapCpId(comp[1:11].VapCp,(T-T0)/6);
  Cp_T2[12] = Functions.VapCpId(comp[12].VapCp,(T-T0)/6);
  Cp_T2[13:14] = Functions.VapCpId(comp[13:14].VapCp,(T-T0)/6);
  Cp_T2[15:17] = Functions.VapCpId(comp[15:17].VapCp,(T-T0)/6);
  
 
  Q_j = Hf + 0.5*(T-T0)*(Cp_i+Cp0+2*(Cp_T1+Cp_T2));
  
  der(f_i[1])=-(r_j[1]+r_j[36]+r_j[39]+r_j[40]+r_j[2]+r_j[35])+r_j[43]+r_j[51]+r_j[47]  ;
  
  der(f_i[2])=-(r_j[3]+r_j[5]+r_j[25]+sum(r_j[42:44]))+r_j[4]+r_j[6]+r_j[26];
  
  der(f_i[3])=-(r_j[2]+r_j[41])+r_j[1]+r_j[46]+r_j[49]+r_j[52]+r_j[54];
  
  der(f_i[4])=-(r_j[10]+r_j[14]+r_j[17]+r_j[31]+r_j[52]+r_j[53])+r_j[9]+r_j[13]+r_j[18]+r_j[32];
  
  der(f_i[5])=-(r_j[12]+r_j[16]+r_j[18]+r_j[33]+r_j[54])+r_j[11]+r_j[15]+r_j[17]+r_j[34];
  
  der(f_i[6])=-(r_j[4]+r_j[7]+r_j[9]+r_j[11]+r_j[27]+sum(r_j[45:48]))+r_j[3]+r_j[8]+r_j[10]+r_j[12]+r_j[28];
  
  der(f_i[7])=-(r_j[6]+r_j[8]+r_j[13]+r_j[15]+r_j[29]+sum(r_j[49:51]))+r_j[5]+r_j[7]+r_j[14]+r_j[16]+r_j[30];
  
  der(f_i[8])=-(r_j[35])+r_j[36];
  
  der(f_i[9])=-(r_j[22]+r_j[24]+r_j[28]+r_j[30]+r_j[32]+r_j[34])+r_j[21]+r_j[23]+r_j[27]+r_j[39]+r_j[31]+r_j[33];
  
  der(f_i[10])=-(r_j[20]+r_j[26]+r_j[23])+r_j[19]+r_j[24]+r_j[25];
  
  der(f_i[11])=-(r_j[19]+r_j[21])+r_j[20]+r_j[22];
  
  der(f_i[12])=-(r_j[21]+r_j[19]+r_j[26]+r_j[28]+r_j[30]+r_j[32]+r_j[34]+r_j[35]+sum(r_j[39:54]))+r_j[20]+r_j[22]+r_j[25]+r_j[27]+r_j[29]+r_j[31]+r_j[33]+r_j[36];
  
  der(f_i[13])=-r_j[37]+r_j[38];
  
  der(f_i[14])=-r_j[38]+r_j[41]+r_j[37];

  der(f_i[15])=r_j[54]+r_j[52]+r_j[51]+r_j[49]+r_j[47]+r_j[46]+r_j[43]+r_j[40]+r_j[41];
  
  der(f_i[16])=r_j[39]+r_j[44]+r_j[45]+r_j[50]+r_j[53];
  
  der(f_i[17])=r_j[42]+r_j[48];
  
  der(T) = sum(der(f_i).*(-Q_j))/sum(f_i.*Cp_i);
  
  der(F) = sum(der(f_i));

end russian;

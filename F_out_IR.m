clear all;
digits(50);
alpha_1=0.4;      alpha_2=0.6;
beta_1=0.3;       beta_2=0.7;
P_B_log=5;               P_B=10^(P_B_log/10);
eta=0.1;              
lambda=0.5;           
epsilon=eta*lambda*P_B/((1-lambda)/2);
omega_SN_log=10;            omega_SN=10^(omega_SN_log/10);        
omega_BS_log=10;             omega_BS=10^(omega_BS_log/10);

N_0=1;
R_N=1;
gamma_N=2^R_N-1;
x=-20:2:30;          L=length(x);
simulation=100;
pr_F=zeros(1,L);
pr_F_simulation=zeros(1,L);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%theory%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
kk=1;
for i=x
    gamma_snr=10^(i/10);
    N_0=1/gamma_snr;
    deltal3=min(gamma_F/(alpha_2-gamma_F*alpha_1),gamma_F);
    deltal2=max(gamma_D/(beta_2-gamma_D*beta_1),gamma_F/beta_1);
    

   P_F_out_IR= ;%enter an expression for P_F_out_IR
           
      

     
          pr_F_IR(1,kk)=P_F_out_IR;
    kk=kk+1
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%simulation%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
kk=1;
for i=x
    gamma_snr=10^(i/10);
    N_0=1/gamma_snr;
    
    outage_number=0;
    for j=1:simulation
        
        omega_SN_simunlation=exprnd(omega_SN,1,1);
        omega_BS_simunlation=exprnd(omega_BS,1,1);       
        omega_SR_simunlation=exprnd(omega_SR,1,1);      
        omega_BR_simunlation=exprnd(omega_BR,1,1);       
        omega_RF_simunlation=exprnd(omega_RF,1,1);        
        omega_SF_simunlation=exprnd(omega_SF,1,1); 
        omega_RD_simunlation=exprnd(omega_RD,1,1); 
        
        gamma_SN_F= ; %enter an expression for gamma_SN_F
        gamma_SR_F= ; %enter an expression for gamma_SR_F
        gamma_SF_F= ; %enter an expression for gamma_SF_F
        gamma_SN_N= ; %enter an expression for gamma_SN_N 
        gamma_RF_F= ; %enter an expression for gamma_RF_F 
        gamma_RF_D= ; %enter an expression for gamma_RF_D 
      
 
        if ((gamma_SF_F<gamma_F)&&(gamma_SR_F>gamma_F)&&(gamma_RF_D<gamma_D))||((gamma_SF_F<gamma_F)&&(gamma_SR_F>gamma_F)&&(gamma_RF_D>gamma_D)&&(gamma_RF_F<gamma_F))||((gamma_SF_F<gamma_F)&&(gamma_SR_F<gamma_F)&&(gamma_SF_OMA_F<gamma_F));
            outage_number=outage_number+1;
       
           
 end
    
end;
pr_D_simulation(1,kk)=outage_number/simulation;
    kk=kk+1;
end

semilogy(x,pr_F_IR(1,:),'k-');
hold on;
semilogy(x,pr_F_simulation(1,:),'ko');
        
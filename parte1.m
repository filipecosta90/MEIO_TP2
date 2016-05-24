%%                    Universidade do Minho
%%                  Deparmanto de Inform??tica
%%
%% Autores: Filipe Marques, Filipe Oliveira, Lu??s Mendes
%% Email:   a57812@alunos.uminho.pt, a57816@alunos.uminho.pt,
%%          a57754@alunos.uminho.pt
%%
%% Criado:  Maio 2016


b = 100;
i = 0.25;
C1 = i * b;
C2 = b;
C3 = 2.75;

x = [ 0 1 2 3 4 5 ];
r = mean(x);
sigma_r = (5 - 0) / sqrt(12);
l = 3;
sigma_l = 0;

sigma_ddlt = sqrt(l * (sigma_r ^2) + (r^2) * (sigma_l^2));


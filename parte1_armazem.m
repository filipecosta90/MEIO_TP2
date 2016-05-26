%%                    Universidade do Minho
%%                  Deparmanto de Informatica
%%
%% Autores: Filipe Marques, Filipe Oliveira, Luis Mendes
%% Email:   a57812@alunos.uminho.pt, a57816@alunos.uminho.pt,
%%          a57754@alunos.uminho.pt
%%
%% Criado:  Maio 2016

b = 70;
i = 0.21;
C1 = i * b;
C2 = b;
C3 = 200;

x = [ 0 1 2 3 4 5 ];
r = ( 0 + 15 )/ 2;

X = [0 : 15 ];
N = [ 1 3 6 10 15 21 25 27 27 25 21 15 10 6 3 1 ];
total_N = sum(N);
pX = N./total_N;

variancia = sum ( ((X - r).^2) ./ (15) );
sigma_r = sqrt(variancia);

l = 12;
sigma_l = 0;


media_ddlt = r * l;
sigma_ddlt = sqrt(l * (sigma_r ^2) + (r^2) * (sigma_l^2));

%% primeira itera??o
E_DDLT_maior_S_1 = 0;
q1 = sqrt(( 2 * 365 * r *(C2 * E_DDLT_maior_S_1 + C3))/(C1));
P_DDLT_maior_S1 = (C1*q1)/(C2*r*365);

%% pela tabela do 1? integegral z = 2.65
Z = 2.87;
N = 100 * Z / 3;
segundo_integral_1 = 0.000036;
E_DDLT_maior_S_2 = sigma_ddlt * segundo_integral_1; 

%% segunda itera??o
q2 = sqrt(( 2 * 365 * r *(C2 * E_DDLT_maior_S_2 + C3))/(C1));
P_DDLT_maior_S2 = (C1*q2)/(C1*q2*C2*r);
%% pela tabela do 1? integegral z = 2.65
Z = 2.87;
N = 100 * Z / 3;
segundo_integral_2 = 0.000036;
E_DDLT_maior_S_3 = sigma_ddlt * segundo_integral_2;

%%%%%
q_asterisco = round(q2);

%% nivel de encomenda
S = round(media_ddlt + Z * sigma_ddlt);

%% stock de seguran?a
SS = round(Z * sigma_ddlt);
SS_inteiro = round(SS);

frequencia_encomenda = r / q_asterisco; %% encomendas / dia 
numero_encomendas = 1 / frequencia_encomenda;

custo_posse = 365 * C1 * (q_asterisco / 2 + S - (S - SS));
custo_quebra =  365 * C2 * (r/q_asterisco) *  E_DDLT_maior_S_3; 
custo_encomenda =  365 * C3 * r/q_asterisco; 
custo_total = custo_posse + custo_quebra + custo_encomenda;

lucro_estimado = q_asterisco * numero_encomendas * preco_venda - custo_total_jogo

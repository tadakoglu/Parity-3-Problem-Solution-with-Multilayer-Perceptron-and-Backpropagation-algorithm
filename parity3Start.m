%TAYFUN ADAKO�LU
%11253001
%PARITY 3 PROBLEMLEM� BACKPROPAGATION VE MULTILAYER PERCEPTRON ILE COZUMU ODEV 5
%Detayl� anlat�m�m i�in bu projedeki mlp.m dosyas�n� okuyunuz. 
%Sayg�lar�mla

%E�ER YAPAY S�N�R A�I YAKINSAMIYOR �SE TEKRAR �ALI�TIRINIZ
%FARKLI BA�LANGI� PARAMETRE DE�ERLER� ATANACAKTIR ANCAK BU ��LEME �HT�YA� DUYULMA OLASILI�I D���KT�R
%M�N�MUM N�RON SAYILARINI SE�MEYE �ALI�TIM.
%A� BA�LANGI� NOKTALARININ �O�UNDA(RASGELE DENENM��) �ALI�MAKTADIR TEST ED�LM��TR.
%ANCAK BAZEN 3. YEN�DEN BA�LATMADA YAKINSAYAB�LMEKTED�R. KES�N A�IRLIK
%DE�ERLER� BU ��LEMLER� G�STERMEK ���N ATANMAMI�TIR...

% PARITY 3 PROBLEM� 2 KATMNANLI VE  3(G�R��)-3-1 �EKL�NDE TOPLAM 4 N�RONLU OR(2. katman) VE AND TRANSFER FONKS�YONU ��EREN
% PERCEPTRON �LE DE ��Z�LEB�L�R.

clear; close all;
h = [25,10]; % gizli katmanlardaki n�ron say�lar�. 1. katmanda 1 adettir; 2. katmandaki n�ron say�s� virg�l �ekilip  ifade edilebilir


%%xor i�in (x,t) e�itim seti. test i�in kullan�lm��t�r �dev ile alakas�z.
% X = [0 0 1 1;0 1 0 1];
% T = [0 1 1 0];  

% PARITY 3 problemi i�in (x,t) e�itim k�mesi
X=transpose([-1 -1 -1;-1 -1 1;-1 1 -1;-1 1 1 ;1 -1 -1;1 -1 1;1 1 -1;1 1 1]); % TRANSPOSE ALARAK KOLAYLIK YARATTIK.	
T=[-1 1 1 -1 1 -1 -1 1];

%PARITY 4 problemi i�in (x,t) e�itim k�mesi, 
%L�TFEN DENEMEK ���N YORUMLARI(%) KALDIRINIZ
% 
 

[model,mse] = mlp(X,T,h);
plot(mse);
disp(['T = [' num2str(T) ']']);
Y = mlpPred(model,X);
disp(['Y = [' num2str(Y) ']']);
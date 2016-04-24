%% udregning af Lowpass filter til sensor for Rolling Road
% Moment transducer
ADC_fs=48000;
ADC_N=12;
fc=444/60; % RPM/60 = 1/s 444rpm=40

[R, C, fc_real, M]=ADC_lowpassFilter(ADC_fs, ADC_N, fc, [100*10^-12, 500*10^-9], 100*10^3, 66)

% V_motor og A_motor

ADC_fs=52500;
ADC_N=12;


% da vi regner med at bruge PWM til at styre motoren er vi kun interreseret
% i midle v�rdien derfor vil vi gerne have at PWM signalet kun skal
% forstyre med 0.1% dette klares med at d�mpe 60dB p� den frekvens PWM
% signalet k�re p�. dette kan klares ved at ligge et normalt Lavpas filter
% 3 dekader f�r, dog er dette ikke s�rlig praktisk. G�r udfra at PWM
% signalet er p� 2000Hz som minimum, og vi bruger et andet 2 ordens lavpass
% filter ved 20Hz.

fc=20;

[R, C, fc_real, M]=ADC_lowpassFilter(ADC_fs, ADC_N, fc, [100*10^-12, 500*10^-9], 100*10^3)



s=tf('s');

T=tf((5)/((s*3.5*10^-6)+5))

figure
bode(T)

%% Belastnings kreds

ADC_fs=65000;
ADC_N=12;
fc=5; % RPM/60 = 1/s 444rpm=40

[R, C, fc_real, M]=ADC_lowpassFilter(ADC_fs, ADC_N, fc, [100*10^-12, 500*10^-9], 100*10^3)



%% Udregning af st�j udfra m�linger.
% load det data der skal analyseres
clear
clc
close all
filename = 'St�j m�linger RR\Volt_m�ling\Copy_2016411122377.csv';

V_signal_PP=2.5;
V_stoej_max=0.1;

SNR_min=10*log(V_signal_PP/V_stoej_max)

ADC_fs=20000;
ADC_N=10;
ADC_SNR=6.02*ADC_N + 1.76
fc=444/60; % RPM/60 = 1/s 444rpm=40




s=tf('s');
T=tf(2*pi*fc/(s+2*pi*fc))

%%


[second,Volt] = importfile(filename);



% ik' �ndre i noget efter her!




figure
plot(second-second(1), Volt)
grid on

% hurtig analyse af signalet.
V_signal_rms=V_signal_PP/sqrt(2)
V_avg=mean(Volt)
V_ACrms=std(Volt)
V_rms=rms(Volt)
V_var=var(Volt)
V_pp=max(Volt)-min(Volt)
Ts_data=second(2)-second(1);
SNR_dB_foer=10*log10(V_signal_rms/V_ACrms)
Volt_stoej=Volt-V_avg;

% FFT analyse af kun st�j ingen DC .*hamming(length(Volt_stoej))  20*log10
X_data=fft(Volt_stoej,1000000);
figure
semilogx([0:round(length(X_data)/2)-1]*(((Ts_data)^-1)/length(X_data)),20*log10(abs(X_data(1:end/2))))
grid on
% FFT A=2*M/N /max(abs(X_data(1:end/2)))

[b,a]=butter(3,0.1, 'LOW');
a=0.1
b=[-a];
a=[-1,1-a];


x_filter=filter(b,a,Volt_stoej);

plot(x_filter)

std(x_filter)
var(x_filter)
10*log10(V_signal_rms/rms(x_filter))





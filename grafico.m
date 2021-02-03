clear all;
close all;

file = load("output30.txt");

n = file(:, 1);
time = file(:, 10);
lookahead = file(:, 9);
% 
% figure(1)
% plot(n, time);
% title 'Tempos de Execução'
% xlabel 'Número de Simbolos'
% ylabel 'Tempo (s)'


figure(2)
plot(n, lookahead, "-*");
title 'Lookahead '
xlabel 'Número de Simbolos'
ylabel 'Lookahead max'

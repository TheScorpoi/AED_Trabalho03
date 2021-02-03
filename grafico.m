clear all;
close all;

file = load("output100.txt");

n = file(:, 1);

time = file(:, 10);

lookaheadMAX = file(:, 9);
lookaheadMIN = file(:, 6);
lookaheadAVG = file(:, 7);

callsSymbolMAX = file(:, 5);
callsSymbolMIN = file(:, 2);
callsSymbolAVG = file(:, 3);


figure(1)
plot(n, time);
title 'Tempos de Execução'
xlabel 'Número de Simbolos'
ylabel 'Tempo (s)'


figure(2)
plot(n, lookaheadMAX, "o");
hold on;
plot(n, lookaheadMIN, "v");
plot(n, lookaheadAVG, "*");
hold off;
title 'Lookahead '
xlabel 'Número de Simbolos'
ylabel 'Lookahead max'
legend ("Lookahead Máximo","Lookahead Mínimo","Lookahead Média");

figure(3)
plot(n, callsSymbolMAX, "or");
hold on;
plot(n, callsSymbolMIN, "*b");
plot(n, callsSymbolAVG, "vg");
title 'Número de Chamadas por Símbolo'
xlabel 'Número de Símbolos'
ylabel 'Número de Chamadas'
legend ("Número Máximo de Chamadas","Número Mínimo de Chamadas","Média do Número de Chamadas");


figure(4)
stem3(n, time, lookaheadMAX, "or");
title 'Tempos de execução vs Lookaheads'
xlabel 'Número de Símbolos'
ylabel 'Tempo (s)'
xlabel 'Lookahead'











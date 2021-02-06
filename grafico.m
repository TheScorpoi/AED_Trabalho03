clear all;
close all;

file = load("output.txt");

n = file(:, 1);

time = file(:, 10);

lookaheadMAX = file(:, 9);
lookaheadMIN = file(:, 6);
lookaheadAVG = file(:, 7);

callsSymbolMAX = file(:, 5);
callsSymbolMIN = file(:, 2);
callsSymbolAVG = file(:, 3);

figure(1)
x = (1:length(n))';
Rtime = fitlm(x, time);
pptime = polyfit(x, time, 1);
plot(x, polyval(pptime, x), '-k', "lineWidth", 2);
hold on;
plot(n, time);
hold off;
title 'Tempos de Execução com regressão linear'
xlabel 'Número de Símbolos'
ylabel 'Tempo (s)'
legend ('R² = 0.994')

figure(2)
plot(n, lookaheadMAX, "o");
hold on;
plot(n, lookaheadMIN, "v");
plot(n, lookaheadAVG, "*");
hold off;
title 'Lookahead '
xlabel 'NÃºmero de Simbolos'
ylabel 'Lookahead max'
legend ("Lookahead MÃ¡ximo","Lookahead MÃ­nimo","Lookahead MÃ©dia");

figure(3)
plot(n, callsSymbolMAX, "or");
hold on;
plot(n, callsSymbolMIN, "*b");
plot(n, callsSymbolAVG, "vg");
title 'NÃºmero de Chamadas por SÃ­mbolo'
xlabel 'NÃºmero de SÃ­mbolos'
ylabel 'NÃºmero de Chamadas'
legend ("NÃºmero MÃ¡ximo de Chamadas","NÃºmero MÃ­nimo de Chamadas","MÃ©dia do NÃºmero de Chamadas");

figure(4)
stem3(n, time, lookaheadMAX, "or");
title 'Tempos de execuÃ§Ã£o vs Lookaheads'
xlabel 'NÃºmero de SÃ­mbolos'
ylabel 'Tempo (s)'
zlabel 'Lookahead'
















function HeartModel(path)

str = '/*.dat';

auxPath = strcat(path, str);
input = dir(auxPath);
tol = 0.1;

n = length(input);

trapezArea = zeros(n);
montecarloArea = zeros(n);

for i = 1:n
    input(i).name = strcat(path,'/',input(i).name);
    S = load(input(i).name);
    x = suport(1:length(S),1)';
    y = suport(1:length(S),2)';
    trapezArea(i) = Trapez(x,y);
    montecarloArea(i) = MonteCarlo(x,y,tol);
end

trapezVol = sum(trapezArea);
montecarloVol = sum(montecarloArea);

fprintf('%.3f ',trapezArea(1:n));
fprintf('\n');
fprintf('%.3f ', montecarloArea(1:n));
fprintf('\n');
fprintf('%.3f %.3f', trapezVol(1), montecarloVol(1));
fprintf('\n');

end

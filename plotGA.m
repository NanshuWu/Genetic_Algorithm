function plotGA(generation_size)
global avgFitPerGen;
x = 1:1:generation_size;
y = avgFitPerGen;
plot(x,y,'.')
end
function [z1] = RunNeuralNet_LQR(InputValue,w1, b1)

%% Forward Propogation
z1 = w1*(InputValue)+b1;
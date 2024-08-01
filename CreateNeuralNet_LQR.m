function [w1, b1] = CreateNeuralNet_LQR(InputData, OutputData,TrainingIters)

% Initialize w1, b1
w1 = rand() - 0.5;
b1 = rand() - 0.5;

for i=1:TrainingIters
for k = 1:length(InputData)
%% 1. Forward Propogation
z1 = w1*(InputData(k)) + b1;

%% 2. Backward Propogation
dC_dw1 = 2*(z1-OutputData(k))*InputData(k);
dC_db1 = 2*(z1-OutputData(k));

%% 3. Update Weights and Biases
alpha = 0.01; % learning rate

w1 = w1 - alpha*dC_dw1;
b1 = b1 - alpha*dC_db1;

end
end

% Copy: Alt+W. Paste: Ctrl+Y
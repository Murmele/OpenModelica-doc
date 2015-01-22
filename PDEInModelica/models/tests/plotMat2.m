fileName = "conservationLaws.Riemann1_res.mat";
%fileName = "conservationLaws.advection_res.mat";
varName = "rho";
[nameT, data_2, N] = openMat(fileName);
nPlots = 10;
for i = 1:nPlots
 nFrame = round(1 + (N-1)/(nPlots-1)*(i-1) ) ;
 getTimeMat(nFrame, nameT, data_2) 
 plot(getVarMat(varName, nFrame, nameT, data_2));
 pause(1);
end;

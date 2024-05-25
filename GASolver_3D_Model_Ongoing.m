FitFunc = @Check3D;
LB = [1];
UB = [45];
nVar = 1;
options = optimoptions('gamultiobj','PopulationSize',50,"Display","iter");
[x,fval,output, scores,population,best] =gamultiobj(FitFunc,nVar,[],[],[],[],LB,UB,options);
%{
[x, fval] = gamultiobj(FitFunc,nVar);
%}

%%
plot(fval(:,1),fval(:,2),'ro')
xlabel('Volume fraction of Network %')
ylabel('Minimum Distance (mm)')
title('Pareto Front for objective functions')


%%
FitFunc = @Objective;
LB = [1,1,1];
UB = [9,9,5];
nVar = 3;
options = optimoptions('gamultiobj','PopulationSize',50,"Display","iter");
[x,fval,output, scores,population,best] =gamultiobj(FitFunc,nVar,[],[],[],[],LB,UB,options);

%{
[x, fval] = gamultiobj(FitFunc,nVar);
%};
LB = [1];
UB = [45];
nVar = 1;
options = optimoptions('gamultiobj','PopulationSize',50,"Display","iter");
[x,fval,output, scores,population,best] =gamultiobj(FitFunc,nVar,[],[],[],[],LB,UB,options);
%{
[x, fval] = gamultiobj(FitFunc,nVar);
%}
%}
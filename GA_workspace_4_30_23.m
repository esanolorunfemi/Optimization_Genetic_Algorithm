function F = GA_workspace_4_30_23(Input)
% Example:
% Minimize F(x,y) where
% F(1) = x^2 + y^2
% F(2) = 2 + 0.5*((x-2)^2 + (y+1)^2)
% Edit the lines below with your calculation
   % n is the number of network

n = Input(1);% number of networks in x-axis
m = Input(2); % minimum distances in y-axis
F(1) = (0.5*100*(n+m)*100)/(100*100);  % volume fraction of network

   x =  0:1:100;
    y = 0:1:100;
    XN = [10:10:90]; % the network locations in x-axis; assuming network grows symmetrically
    YN =[10:10:90];  %network locations for y-axis, 
    k = 1:n; % count for horz netwks
    j = 1:m;  % count for vert netwks

    Q = zeros(length(j),length(k));
    BB = zeros(length(x),length(y));
    CC = zeros(length(x),length(y));
for b = 1:length(y)
  for a = 1:length(x)
         for  j= 1:m
             for k = 1:n
      D(a) = abs(x(a)-XN(k));
      E(a) = abs(y(b)-YN(j));
      L(a) = abs(x(a)-100);
      G(a) = abs(y(b)-100);
      H(a) = abs(x(a)-0);
      J(a) = abs(y(b)-0);
Q(j,k) = min([D(a),E(a),L(a),G(a),H(a),J(a)]); % store minimum of a voxel to networks
             end
         
   BB(a,b)= min(Q(:)); % store the minimum of all x and y voxels after computing from all networks
         end
         end
end
 F(2) = max(BB(:));
F = [F(1),F(2)];
end
%}



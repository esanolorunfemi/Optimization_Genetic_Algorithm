xx = 0:1:100;
yy = 0:1:100;
zz =  0:1:30;
EE = zeros(1:1:1);

    DX = zeros(1,length(xx));
     DY = zeros(1,length(xx));
     DZ = zeros(1,length(xx));
     DX1 = zeros(1,length(xx));
     DY1 = zeros(1,length(xx));
     DZ1 = zeros(1,length(xx));
     DY2 = zeros(1,length(xx));
     DX2 = zeros(1,length(xx));
     DZ2 = zeros(1,length(xx));
     DX3 = zeros(1,length(xx));
     DX4 = zeros(1,length(xx));
     DX5 = zeros(1,length(xx));
     DY3 = zeros(1,length(xx));
     DY4 = zeros(1,length(xx));
     DY5 = zeros(1,length(xx));
     DX6 = zeros(1,length(xx));
     DX7 = zeros(1,length(xx));
     DX8 = zeros(1,length(xx));
     DX9 = zeros(1,length(xx));
     DX10 = zeros(1,length(xx));
     DX11 = zeros(1,length(xx));
     DX12 = zeros(1,length(xx));
     DX13 = zeros(1,length(xx));
   
tic
for j = 1:length(zz)
for m = 1:length(yy) 
    for k = 1:length(xx)
      DX(k)= abs(xx(k)-0);
      DY(k)= abs(yy(m)-0);
      DZ(k)= abs(zz(j)-0);
      DX1(k)= abs(xx(k)-100);
      DY1(k)= abs(yy(m)-100);
      DZ1(k)= abs(zz(j)-30);
   
      

 EE(m,k,j)= min([DX(k),DY(k),DZ(k),DX1(k),DY1(k),DZ1(k)]); %Find the minimum distance of each points to 

     end
end

   if toc > 1
          fprintf('Iteration %d/%d\n',j,length(zz)) 
   end
end
M =max(EE(:));%farthest distance (x)
fprintf('Farthest distance to surface/network: %f\n', M);
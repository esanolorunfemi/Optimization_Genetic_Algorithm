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
   %15mm zero degrees
      DX2(k) = sqrt((xx(k)-49.75).^2+(zz(j)-14.75).^2); %hypotenus distance to lower boundary
      DX3(k) = sqrt((xx(k)-50.25).^2+(zz(j)-14.75).^2);
      DX4(k) = sqrt((xx(k)-49.75).^2+(zz(j)-15.25).^2); %hypotenus distance to upper boundary
      DX5(k) = sqrt((xx(k)-50.25).^2+(zz(j)-15.25).^2);
      DX6(k) = sqrt((xx(k)-24.75).^2+(zz(j)-14.75).^2); %hypotenus distance to lower boundary
      DX7(k) = sqrt((xx(k)-25.25).^2+(zz(j)-14.75).^2);
      DX8(k) = sqrt((xx(k)-24.75).^2+(zz(j)-15.25).^2);
      DX9(k) = sqrt((xx(k)-25.25).^2+(zz(j)-15.25).^2);
      DX10(k) = sqrt((xx(k)-74.75).^2+(zz(j)-14.75).^2); %hypotenus distance to upper boundary
      DX11(k) = sqrt((xx(k)-75.25).^2+(zz(j)-14.75).^2);
      DX12(k) = sqrt((xx(k)-74.75).^2+(zz(j)-15.25).^2); %hypotenus distance to upper boundary
      DX13(k) = sqrt((xx(k)-75.25).^2+(zz(j)-15.25).^2);
     
 PP(m,k,j)= min([DX(k),DY(k),DZ(k),DX1(k),DY1(k),DZ1(k),DX2(k),DX3(k),DX4(k),DX5(k), ...
     DX6(k),DX7(k),DX8(k),DX9(k),DX10(k),DX11(k),DX12(k),DX13(k)]); %Find the minimum distance of each points to 

     end
end

   if toc > 1
          fprintf('Iteration %d/%d\n',j,length(zz)) 
   end
end
M =max(PP(:));%farthest distance (x)
fprintf('Farthest distance to surface/network: %f\n', M);
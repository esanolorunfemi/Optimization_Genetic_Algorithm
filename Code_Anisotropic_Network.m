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
    

      %lower 10mm zero degrees
      DX21(k) = sqrt((xx(k)-49.75).^2+(zz(j)-10.75).^2); %hypotenus distance to lower boundary
      DX31(k) = sqrt((xx(k)-50.25).^2+(zz(j)-9.75).^2);
      DX41(k) = sqrt((xx(k)-49.75).^2+(zz(j)-10.25).^2); %hypotenus distance to upper boundary
      DX51(k) = sqrt((xx(k)-50.25).^2+(zz(j)-10.25).^2);
      DX61(k) = sqrt((xx(k)-24.75).^2+(zz(j)-9.75).^2); %hypotenus distance to lower boundary
      DX71(k) = sqrt((xx(k)-25.25).^2+(zz(j)-9.75).^2);
      DX81(k) = sqrt((xx(k)-24.75).^2+(zz(j)-10.25).^2);
      DX91(k) = sqrt((xx(k)-25.25).^2+(zz(j)-10.25).^2);
      DX101(k) = sqrt((xx(k)-74.75).^2+(zz(j)-9.75).^2); %hypotenus distance to upper boundary
      DX111(k) = sqrt((xx(k)-75.25).^2+(zz(j)-9.75).^2);
      DX121(k) = sqrt((xx(k)-74.75).^2+(zz(j)-10.25).^2); %hypotenus distance to upper boundary
      DX131(k) = sqrt((xx(k)-75.25).^2+(zz(j)-10.25).^2);
 
      % 5mm zero degrees
      DX22(k) = sqrt((xx(k)-49.75).^2+(zz(j)-4.75).^2); %hypotenus distance to lower boundary
      DX32(k) = sqrt((xx(k)-50.25).^2+(zz(j)-4.75).^2);
      DX42(k) = sqrt((xx(k)-49.75).^2+(zz(j)-5.25).^2); %hypotenus distance to upper boundary
      DX52(k) = sqrt((xx(k)-50.25).^2+(zz(j)-5.25).^2);
      DX62(k) = sqrt((xx(k)-24.75).^2+(zz(j)-4.75).^2); %hypotenus distance to lower boundary
      DX72(k) = sqrt((xx(k)-25.25).^2+(zz(j)-4.75).^2);
      DX82(k) = sqrt((xx(k)-24.75).^2+(zz(j)-5.25).^2);
      DX92(k) = sqrt((xx(k)-25.25).^2+(zz(j)-5.25).^2);
      DX102(k) = sqrt((xx(k)-74.75).^2+(zz(j)-4.75).^2); %hypotenus distance to upper boundary
      DX112(k) = sqrt((xx(k)-75.25).^2+(zz(j)-4.75).^2);
      DX122(k) = sqrt((xx(k)-74.75).^2+(zz(j)-5.25).^2); %hypotenus distance to upper boundary
      DX132(k) = sqrt((xx(k)-75.25).^2+(zz(j)-5.25).^2);
    


    
      %20mm zero degrees
       DX23(k) = sqrt((xx(k)-49.75).^2+(zz(j)-20.75).^2); %hypotenus distance to lower boundary
      DX33(k) = sqrt((xx(k)-50.25).^2+(zz(j)-19.75).^2);
      DX43(k) = sqrt((xx(k)-49.75).^2+(zz(j)-20.25).^2); %hypotenus distance to upper boundary
      DX53(k) = sqrt((xx(k)-50.25).^2+(zz(j)-20.25).^2);
      DX63(k) = sqrt((xx(k)-24.75).^2+(zz(j)-19.75).^2); %hypotenus distance to lower boundary
      DX73(k) = sqrt((xx(k)-25.25).^2+(zz(j)-19.75).^2);
      DX83(k) = sqrt((xx(k)-24.75).^2+(zz(j)-20.25).^2);
      DX93(k) = sqrt((xx(k)-25.25).^2+(zz(j)-20.25).^2);
      DX103(k) = sqrt((xx(k)-74.75).^2+(zz(j)-19.75).^2); %hypotenus distance to upper boundary
      DX113(k) = sqrt((xx(k)-75.25).^2+(zz(j)-19.75).^2);
      DX123(k) = sqrt((xx(k)-74.75).^2+(zz(j)-20.25).^2); %hypotenus distance to upper boundary
      DX133(k) = sqrt((xx(k)-75.25).^2+(zz(j)-20.25).^2);
      DY23(k) = sqrt((yy(m)-49.75).^2+(zz(j)-19.75).^2);
      DY33(k) = sqrt((yy(m)-50.25).^2+(zz(j)-19.75).^2);
      DY43(k) = sqrt((yy(m)-49.75).^2+(zz(j)-20.25).^2);
      DY53(k) = sqrt((yy(m)-50.25).^2+(zz(j)-20.25).^2);
%25mm zero degrees
      DX24(k) = sqrt((xx(k)-49.75).^2+(zz(j)-24.75).^2); %hypotenus distance to lower boundary
      DX34(k) = sqrt((xx(k)-50.25).^2+(zz(j)-24.75).^2);
      DX44(k) = sqrt((xx(k)-49.75).^2+(zz(j)-25.25).^2); %hypotenus distance to upper boundary
      DX54(k) = sqrt((xx(k)-50.25).^2+(zz(j)-25.25).^2);
      DX64(k) = sqrt((xx(k)-24.75).^2+(zz(j)-24.75).^2); %hypotenus distance to lower boundary
      DX74(k) = sqrt((xx(k)-25.25).^2+(zz(j)-24.75).^2);
      DX84(k) = sqrt((xx(k)-24.75).^2+(zz(j)-25.25).^2);
      DX94(k) = sqrt((xx(k)-25.25).^2+(zz(j)-25.25).^2);
      DX104(k) = sqrt((xx(k)-74.75).^2+(zz(j)-24.75).^2); %hypotenus distance to upper boundary
      DX114(k) = sqrt((xx(k)-75.25).^2+(zz(j)-24.75).^2);
      DX124(k) = sqrt((xx(k)-74.75).^2+(zz(j)-25.25).^2); %hypotenus distance to upper boundary
      DX134(k) = sqrt((xx(k)-75.25).^2+(zz(j)-25.25).^2);
    



 PP(m,k,j)= min([DX(k),DY(k),DZ(k),DX1(k),DY1(k),DZ1(k),DX2(k),DX3(k),DX4(k),DX5(k), ...
     DX6(k),DX7(k),DX8(k),DX9(k),DX10(k),DX11(k),DX12(k),DX13(k),DX21(k),DX31(k),DX41(k),DX51(k), ...
     DX61(k),DX71(k),DX81(k),DX91(k),DX101(k),DX111(k),DX121(k),DX131(k),DX22(k),DX32(k),DX42(k),DX52(k), ...
     DX62(k),DX72(k),DX82(k),DX92(k),DX102(k),DX112(k),DX122(k),DX132(k), ...
      DX23(k),DX33(k),DX43(k),DX53(k),DX63(k),DX73(k),DX83(k),DX93(k), ...
     DX103(k),DX113(k),DX123(k),DX133(k),DX24(k),DX34(k),DX44(k),DX54(k), ...
     DX64(k),DX74(k),DX84(k),DX94(k),DX104(k),DX114(k),DX124(k),DX134(k)]); %Find the minimum distance of each points to 

     end
end

   if toc > 1
          fprintf('Iteration %d/%d\n',j,length(zz)) 
   end
end
M =max(PP(:));%farthest distance (x)
fprintf('Farthest distance to surface/network: %f\n', M);
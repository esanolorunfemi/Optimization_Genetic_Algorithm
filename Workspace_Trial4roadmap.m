xx = 0:1:100;
yy = 0:1:100;
zz =  0:1:30;
EE = zeros(1:1:1);

    DX = zeros(1,length(xx));
     DY = zeros(1,length(xx));
     DZ = zeros(1,length(xx));
     DX1 = zeros(1,length(xx));
     DX2 = zeros(1,length(xx));
     DX3 = zeros(1,length(xx));
     DX4 = zeros(1,length(xx));
     DX5 = zeros(1,length(xx));
     DX6 = zeros(1,length(xx));
     DX7 = zeros(1,length(xx));
     DX8 = zeros(1,length(xx));
     DX9 = zeros(1,length(xx));
     DX10 = zeros(1,length(xx));
     DX14 = zeros(1,length(xx));
     DX15 = zeros(1,length(xx));
     DX16 = zeros(1,length(xx));
     DX17 = zeros(1,length(xx));
     DX11 = zeros(1,length(xx));
     DX12 = zeros(1,length(xx));
     DX13 = zeros(1,length(xx));
     DY2 = zeros(1,length(xx));
     DY3 = zeros(1,length(xx));
     DY4 = zeros(1,length(xx));
     DY5 = zeros(1,length(xx));
     DY6 = zeros(1,length(xx));
     DY7 = zeros(1,length(xx));
     DY8 = zeros(1,length(xx));
     DY9 = zeros(1,length(xx));
     DY10 = zeros(1,length(xx));
     DY11 = zeros(1,length(xx));
     DY12= zeros(1,length(xx));
     DY13 = zeros(1,length(xx));
     DY14= zeros(1,length(xx));
     DY15= zeros(1,length(xx));
     DY16 = zeros(1,length(xx));
     DY17 = zeros(1,length(xx));
     DY18 = zeros(1,length(xx));
     DY19= zeros(1,length(xx));
     DY20= zeros(1,length(xx));
     DY21= zeros(1,length(xx));
     DY22= zeros(1,length(xx));
     DY23= zeros(1,length(xx));
     DY24 = zeros(1,length(xx));
     DY25 = zeros(1,length(xx));
     DY231= zeros(1,length(xx));
     DY232= zeros(1,length(xx));
     DY233= zeros(1,length(xx));
     DY234 = zeros(1,length(xx));
     DY131= zeros(1,length(xx));
     DY132= zeros(1,length(xx));
     DY133= zeros(1,length(xx));
     DY134 = zeros(1,length(xx));
      DY1 = zeros(1,length(xx));
     DZ1 = zeros(1,length(xx));
     
     F1= zeros(1,length(xx));
     F2 = zeros(1,length(xx));
     F3= zeros(1,length(xx));
     F4= zeros(1,length(xx));
     F5= zeros(1,length(xx));
     F6 = zeros(1,length(xx));
     F7= zeros(1,length(xx));
     F8 = zeros(1,length(xx));
     FZ1= zeros(1,length(xx));
     FZ2= zeros(1,length(xx));
     FZ3 = zeros(1,length(xx));
     FZ4 = zeros(1,length(xx));
     FZ5 = zeros(1,length(xx));
     FZ6 = zeros(1,length(xx));
     FZ7 = zeros(1,length(xx));
     FZ8 = zeros(1,length(xx));
     FZ9 = zeros(1,length(xx));
     FZ10 = zeros(1,length(xx));
     FZ11= zeros(1,length(xx));
     FZ12 = zeros(1,length(xx));
     FZ13 = zeros(1,length(xx));
     FZ14 = zeros(1,length(xx));
     FZ15 = zeros(1,length(xx));
     FZ16= zeros(1,length(xx));
     FZ17= zeros(1,length(xx));
     FZ18= zeros(1,length(xx));
     FZ19= zeros(1,length(xx));
     FZ20= zeros(1,length(xx));
     FZ21= zeros(1,length(xx));
     FZ22= zeros(1,length(xx));
     FZ23= zeros(1,length(xx));
     FZ24 = zeros(1,length(xx));
     FZ25= zeros(1,length(xx));
     FZ26= zeros(1,length(xx));
     FZ27= zeros(1,length(xx));
     FZ28= zeros(1,length(xx));
      FZ73= zeros(1,length(xx));
     FZ74= zeros(1,length(xx));
     FZ83= zeros(1,length(xx));
     FZ84= zeros(1,length(xx));
     FZ85= zeros(1,length(xx));
     FZ86= zeros(1,length(xx));
    
    
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

     % zero degrees - 4 horizontal network at middle 15mm x-axis- 
      DX2(k) = sqrt((xx(k)-19.75).^2+(zz(j)-14.75).^2); %hypotenus distance to lower boundary
      DX3(k) = sqrt((xx(k)-20.25).^2+(zz(j)-14.75).^2);
      DX4(k) = sqrt((xx(k)-19.75).^2+(zz(j)-15.25).^2); %hypotenus distance to upper boundary
      DX5(k) = sqrt((xx(k)-20.25).^2+(zz(j)-15.25).^2);
      DX6(k) = sqrt((xx(k)-39.75).^2+(zz(j)-14.75).^2); %hypotenus distance to lower boundary
      DX7(k) = sqrt((xx(k)-40.25).^2+(zz(j)-14.75).^2);
      DX8(k) = sqrt((xx(k)-39.75).^2+(zz(j)-15.25).^2);
      DX9(k) = sqrt((xx(k)-40.25).^2+(zz(j)-15.25).^2);
      DX10(k) = sqrt((xx(k)-59.75).^2+(zz(j)-14.75).^2); %hypotenus distance to upper boundary
      DX11(k) = sqrt((xx(k)-60.25).^2+(zz(j)-14.75).^2);
      DX12(k) = sqrt((xx(k)-59.75).^2+(zz(j)-15.25).^2); %hypotenus distance to upper boundary
      DX13(k) = sqrt((xx(k)-60.25).^2+(zz(j)-15.25).^2);
      DX14(k) = sqrt((xx(k)-79.75).^2+(zz(j)-14.75).^2); %hypotenus distance to upper boundary
      DX15(k) = sqrt((xx(k)-80.25).^2+(zz(j)-14.75).^2);
      DX16(k) = sqrt((xx(k)-79.75).^2+(zz(j)-15.25).^2); %hypotenus distance to upper boundary
      DX17(k) = sqrt((xx(k)-80.25).^2+(zz(j)-15.25).^2);
  
      % 90 degrees - 4 horizontal network at 10mm- y axis
      DY2(k) = sqrt((yy(m)-19.75).^2+(zz(j)-9.75).^2);
      DY3(k) = sqrt((yy(m)-20.25).^2+(zz(j)-9.75).^2);
      DY4(k) = sqrt((yy(m)-19.75).^2+(zz(j)-10.25).^2);
      DY5(k) = sqrt((yy(m)-20.25).^2+(zz(j)-10.25).^2);
      DY6(k) = sqrt((yy(m)-40.25).^2+(zz(j)-9.75).^2);
      DY7(k) = sqrt((yy(m)-39.75).^2+(zz(j)-9.75).^2);
      DY8(k) = sqrt((yy(m)-40.25).^2+(zz(j)-10.25).^2);
      DY9(k) = sqrt((yy(m)-39.75).^2+(zz(j)-10.25).^2);
      DY10(k) = sqrt((yy(m)-59.75).^2+(zz(j)-9.75).^2);
      DY11(k) = sqrt((yy(m)-60.25).^2+(zz(j)-9.75).^2);
      DY12(k) = sqrt((yy(m)-59.75).^2+(zz(j)-10.25).^2);
      DY13(k) = sqrt((yy(m)-60.25).^2+(zz(j)-10.25).^2);
      DY131(k) = sqrt((yy(m)-79.75).^2+(zz(j)-9.75).^2);
      DY132(k) = sqrt((yy(m)-80.25).^2+(zz(j)-9.75).^2);
      DY133(k) = sqrt((yy(m)-79.75).^2+(zz(j)-10.25).^2);
      DY134(k) = sqrt((yy(m)-80.25).^2+(zz(j)-10.25).^2);

      %4 90 degrees- horizontal network at 20mm - y axis
      DY14(k) = sqrt((yy(m)-19.75).^2+(zz(j)-19.75).^2);
      DY15(k) = sqrt((yy(m)-20.25).^2+(zz(j)-19.75).^2);
      DY16(k) = sqrt((yy(m)-19.75).^2+(zz(j)-20.25).^2);
      DY17(k) = sqrt((yy(m)-20.25).^2+(zz(j)-20.25).^2);
      DY18(k) = sqrt((yy(m)-40.25).^2+(zz(j)-19.75).^2);
      DY19(k) = sqrt((yy(m)-39.75).^2+(zz(j)-19.75).^2);
      DY20(k) = sqrt((yy(m)-40.25).^2+(zz(j)-20.25).^2);
      DY21(k) = sqrt((yy(m)-39.75).^2+(zz(j)-20.25).^2);
      DY22(k) = sqrt((yy(m)-59.75).^2+(zz(j)-19.75).^2);
      DY23(k) = sqrt((yy(m)-60.25).^2+(zz(j)-19.75).^2);
      DY24(k) = sqrt((yy(m)-59.75).^2+(zz(j)-20.25).^2);
      DY25(k) = sqrt((yy(m)-60.25).^2+(zz(j)-20.25).^2);
      DY231(k) = sqrt((yy(m)-79.75).^2+(zz(j)-19.75).^2);
      DY232(k) = sqrt((yy(m)-80.25).^2+(zz(j)-19.75).^2);
      DY233(k) = sqrt((yy(m)-79.75).^2+(zz(j)-20.25).^2);
      DY234(k) = sqrt((yy(m)-80.25).^2+(zz(j)-20.25).^2);

      %slant variables - perpendicular distance
      F1(k)= sqrt(2)*abs(0.5*(yy(m)-xx(k)-0.25+15.14));    %Note: 10sqrt(2) = 14.14; Then plus +1 to account for index
      F2(k)= sqrt(2)*abs(0.5*(yy(m)-xx(k)+0.25+15.14));
      F3(k)= sqrt(2)*abs(0.5*(yy(m)-xx(k)-0.25+43.42));
      F4(k)= sqrt(2)*abs(0.5*(yy(m)-xx(k)+0.25+43.42));
      F5(k)= sqrt(2)*abs(0.5*(yy(m)-xx(k)-0.25-15.14));
      F6(k)= sqrt(2)*abs(0.5*(yy(m)-xx(k)+0.25-15.14));
      F7(k)= sqrt(2)*abs(0.5*(yy(m)-xx(k)-0.25-43.42));    %Note: 3*10sqrt(2) = 43.42
    check this line  F8(k)= sqrt(2)*abs(0.5*(yy(m)-xx(k)+0.25+43.42));    
     
      %45 degrees - slant-5mm-height
     FZ1(k)=sqrt(F1(k).^2 +(zz(j)- 4.75).^2);
     FZ2(k)=sqrt(F1(k).^2 + (zz(j)- 5.25).^2);
     FZ3(k)=sqrt(F2(k).^2 +(zz(j)- 4.75).^2);
     FZ4(k)=sqrt(F2(k).^2 +(zz(j)- 5.25).^2);
     FZ5(k)=sqrt(F3(k).^2 +(zz(j)- 4.75).^2);
     FZ6(k)=sqrt(F3(k).^2 +(zz(j)- 5.25).^2);
     FZ7(k)=sqrt(F4(k).^2 + (zz(j)- 4.75).^2);
     FZ8(k)=sqrt(F4(k).^2 + (zz(j)- 5.25).^2);
     FZ9(k)=sqrt(F5(k).^2 +(zz(j)- 4.75).^2);
     FZ10(k)=sqrt(F5(k).^2 +(zz(j)- 5.25).^2);
     FZ11(k)=sqrt(F6(k).^2 +(zz(j)- 4.75).^2);
     FZ12(k)=sqrt(F6(k).^2 +(zz(j)- 5.25).^2);
     FZ73(k)=sqrt(F7(k).^2 +(zz(j)- 4.75).^2);
     FZ74(k)=sqrt(F7(k).^2 + (zz(j)- 5.25).^2);
     FZ85(k)=sqrt(F8(k).^2 +(zz(j)- 4.75).^2);
     FZ86(k)=sqrt(F8(k).^2 +(zz(j)- 5.25).^2);
   

  %45 degrees - slant-25mm-height
     FZ13(k)=sqrt(F1(k).^2 +(zz(j)- 24.75).^2);
     FZ14(k)=sqrt(F1(k).^2 + (zz(j)- 25.25).^2);
     FZ15(k)=sqrt(F2(k).^2 +(zz(j)- 24.75).^2);
     FZ16(k)=sqrt(F2(k).^2 +(zz(j)- 25.25).^2);
     FZ17(k)=sqrt(F3(k).^2 +(zz(j)- 24.75).^2);
     FZ18(k)=sqrt(F3(k).^2 +(zz(j)- 25.25).^2);
     FZ19(k)=sqrt(F4(k).^2 + (zz(j)- 24.75).^2);
     FZ20(k)=sqrt(F4(k).^2 + (zz(j)- 25.25).^2);
     FZ21(k)=sqrt(F5(k).^2 +(zz(j)- 24.75).^2);
     FZ22(k)=sqrt(F5(k).^2 +(zz(j)- 25.25).^2);
     FZ23(k)=sqrt(F6(k).^2 +(zz(j)- 24.75).^2);
     FZ24(k)=sqrt(F6(k).^2 +(zz(j)- 25.25).^2);
     FZ25(k)=sqrt(F7(k).^2 + (zz(j)- 25.25).^2);
     FZ26(k)=sqrt(F7(k).^2 +(zz(j)- 24.75).^2);
     FZ27(k)=sqrt(F8(k).^2 +(zz(j)- 25.25).^2);
     FZ28(k)=sqrt(F8(k).^2 +(zz(j)- 24.75).^2);
    

 EE(m,k,j)= min([DX(k),DY(k),DZ(k),DX1(k),DY1(k),DZ1(k),DX2(k),DX3(k),DX4(k),DX5(k), ...
     DX6(k),DX7(k),DX8(k),DX9(k),DX10(k),DX11(k),DX12(k),DX13(k),FZ1(k),FZ2(k),FZ3(k), ...
     FZ4(k),FZ5(k),FZ6(k),FZ7(k),FZ8(k),FZ9(k),FZ10(k),FZ11(k),FZ12(k),FZ13(k),FZ14(k),FZ15(k), ...
     FZ16(k),FZ17(k),FZ18(k),FZ19(k),FZ20(k),FZ21(k),FZ22(k),FZ23(k),FZ24(k),DY2(k),DY3(k),DY4(k), ...
     DY5(k),DY6(k),DY7(k),DY8(k),DY9(k),DY10(k),DY11(k),DY12(k),DY13(k),DY14(k),DY15(k),DY16(k), ...
     DY17(k),DY18(k),DY19(k),DY20(k),DY21(k),DY22(k),DY23(k),DY24(k),DY25(k),FZ25(k),FZ26(k),FZ27(k), FZ28(k) ...
     FZ73(k),FZ74(k),FZ85(k),FZ86(k),DX14(k),DX15(k),DX16(k),DX17(k),DY131(k),DY132(k),DY133(k),DY134(k),DY231(k),DY232(k),DY233(k),DY234(k)]);
 %}     
    end
end

   if toc > 1
          fprintf('Iteration %d/%d\n',j,length(zz)) 
   end
end
M =max(EE(:));%farthest distance (x)
fprintf('Farthest distance to surface/network: %f\n', M);
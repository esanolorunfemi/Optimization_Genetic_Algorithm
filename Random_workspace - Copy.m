figure(18)
edges = (0:1:1);
hc1 = histcounts(PP,edges);
x1 = histogram(PP,edges);
E1 = x1.BinEdges;
y1 = x1.BinCounts;
% percent of total for each bar
s1 = compose('%.1f%%', hc1/sum(hc1)*100);
x1loc = E1(1:end-1)+diff(E1)/2;
text(x1loc-0.3, y1+1499999 , s1)
title(sprintf("Pixel Distance Distribution", M));
xlabel('Distance (mm)');
ylabel('Number of Pixels');


%%
figure(15)
LL= length(find(EE>=8));
bar(5.4,LL);
s1 = compose('%.4f%%', LL/numel(EE)*100);
text(5.4, +150000, s1)
ylim([0,numel(EE)]);
%%

A = [1,2,3,4,5,6,7,7];
B = [2,4,5,6,7,8,9,10];
C = (1:1);
for a = 1:length(B)
   C(a) = A(a)+B(a);
   D(a) = C(a);
   if B(a) == 7
       C(a) = A(a)-B(a);
   elseif (B(a)>=2)&&(B(a)<=5)||(B(a)==7)
          C(a) = A(a)*B(a); 
   end
end
disp(C)
%%
p = 0:0.5:10;
q = 0:0.5:10;
z = 0:0.0005:10;
[P,Q] = meshgrid(p,q);  % Base layer
R = zeros(length(p),length(q));
S = zeros(length(p),length(q));
for b = 1:length(p)
    Z = R+p(b); % Increment the height in z direction
    S(:,b) = Z(:,b); %Take each column of Z
end
    PP = repmat(P,1,length(z));
     QQ = repmat(Q,1,length(z));
     SS = repelem(S,1,length(z));


     %%
   p = 0:0.5:20;
q = 0:0.5:20;
%z = 0:0.0005:1;
[P,Q] = meshgrid(p,q);  % Base layer
     XX = P(:);
     YY = Q(:);
     ZZ = 0;
     kk = length(P);
     DX = zeros(1:length(kk));
     DY = zeros(1:length(kk));
     DZ = zeros(1:length(kk));
     DX1 = zeros(1:length(kk));
     DY1 = zeros(1:length(kk));
     DZ1 = zeros(1:length(kk));
      DY2 = zeros(1:length(kk));
     DX2 = zeros(1:length(kk));
     DZ2 = zeros(1:length(kk));
      DY3 = zeros(1:length(kk));
     DX3 = zeros(1:length(kk));
     DZ3 = zeros(1:length(kk));
     WW = zeros(1:length(ZZ));

  for kk = 1:length(P)
    DX(kk)= abs(XX(kk)-0);
      DY(kk)= abs(YY(kk)-0);
      DZ(kk)= abs(ZZ-0);
      DX1(kk)= abs(XX(kk)-100);
      DY1(kk)= abs(YY(kk)-100);
      DZ1(kk)= abs(ZZ-30);
      DX2(kk)= abs(XX(kk)-49.75);
      DY2(kk)= abs(YY(kk)-49.75);
      DZ2(kk)= abs(ZZ-14.75);
      DX3(kk)= abs(XX(kk)-50.25);
      DY3(kk)= abs(YY(kk)-50.25);
      DZ3(kk)= abs(ZZ-15.25);
     WW(kk) = min([DX(kk),DY(kk),DZ(kk),DX1(kk),DY1(kk),DZ1(kk),DX2(kk),DY2(kk),DZ2(kk),DX3(kk),DY3(kk),DZ3(kk)]);
   M =max(WW)
  end


  %%
xx = 0:0.1:100;
yy = 0:0.1:100;
zz =  0:0.1:30;
EE = zeros(1:1);

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
   
      DX2(k) = sqrt((xx(k)-49.75).^2+(zz(j)-14.75).^2); %hypotenus distance to lower boundary
      DX3(k) = sqrt((xx(k)-50.25).^2+(zz(j)-14.75).^2);
      DX4(k) = sqrt((xx(k)-49.75).^2+(zz(j)-15.25).^2); %hypotenus distance to upper boundary
      DX5(k) = sqrt((xx(k)-50.25).^2+(zz(j)-15.25).^2);
      DY2(k) = sqrt((yy(m)-49.75).^2+(zz(j)-14.75).^2);
      DY3(k) = sqrt((yy(m)-50.25).^2+(zz(j)-14.75).^2);
      DY4(k) = sqrt((yy(m)-49.75).^2+(zz(j)-15.25).^2);
      DY5(k) = sqrt((yy(m)-50.25).^2+(zz(j)-15.25).^2);
    
 EE(k,m,j)= min([DX(k),DY(k),DZ(k),DX1(k),DY1(k),DZ1(k)]);%,DX2(k),DX3(k),DX4(k),DX5(k),DY1(k),DY2(k),DY3(k),DY4(k),DY5(k)]); %Find the minimum distance of each points to 

      if ((xx(k)>=49.75)&&(xx(k)<=50.25))||((yy(m)>=49.75)&&(yy(m)<=50.25))
          DZ2(k)= abs(zz(j)-14.75);
           DZ3(k)= abs(zz(j)-15.25);
           W(k,m,j) = min([DX(k),DY(k),DZ(k),DX1(k),DY1(k),DZ1(k),DZ2(k),DZ3(k)]);
      elseif (zz(j)>=14.75)&&(zz(j)<=15.25)
           DX2(k)= abs(xx(k)-49.75);
           DX3(k)= abs(xx(k)-50.25);
           DY2(k)= abs(yy(m)-50.25);
           DY3(k)= abs(yy(m)-49.75);
      W(k,m,j)= min([DX(k),DY(k),DZ(k),DX1(k),DY1(k),DZ1(k),DX2(k),DX3(k),DY2(k),DY3(k)]);
    
      end   

     end
end

   if toc > 1
          fprintf('Iteration %d/%d\n',j,length(zz)) 
   end
end
M =max(EE(:));%farthest distance (x)
fprintf('Farthest distance to surface/network: %f\n', M);
%%
[i,j,k] = meshgrid(xx,yy,14:1:16);
Q = EE(1:101,1:101,15:17);
%[i,j,k] = meshgrid(xx,yy,4:1:6);
%Q = PP(1:101,1:101,5:7);
%%
[i,j,k] = meshgrid(xx,yy,14:1:16);
Q = PP(1:101,1:101,15:17);
data = k;
cdata = Q;
figure(1)
p = patch(isosurface(i,j,k,data,15));
isonormals(i,j,k,data,p)
isocolors(i,j,k,cdata,p)
p.FaceColor = 'interp';
p.EdgeColor = 'none';
view(3)
xlabel('X (mm)');ylabel('Y (mm)');zlabel('Z (mm)');zticks(15);
h = colorbar; caxis([0,10]); ylabel(h,'Distance (mm)','FontSize',15,'Rotation',90); % set(h, 'ylim', [0 12.45])
daspect([1 1 1])
axis tight
camlight
lighting gouraud
hold on
%%
 x =  0:10:100;
    y = 0:10:100;
    n = 2;
    XN = [50,25,75,10,90,30,60,40,80]; % the network locations in x-axis; assuming symmetry
    YN =[50,50,50,50,50,50,50,50,50];  %network locations for y-axis, 
    Q = zeros(1,n);
    CC = zeros(length(x),length(y));
for b = 1:11
  for a = 1:11
         for n = 1:n
      D(a) = abs(x(a)-XN(n));
      E(a) = abs(y(b)-YN(n));
      F(a) = abs(x(a)-100);
      G(a) = abs(y(b)-100);
      H(a) = abs(x(a)-0);
      J(a) = abs(y(b)-0);
Q(n) = min([D(a),E(a),F(a),G(a),H(a),J(a)]);
        end
  CC(a,b) = min(Q(:));
  end
end
 DD = max(CC(:))
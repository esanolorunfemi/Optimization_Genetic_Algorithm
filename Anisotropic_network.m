%%
% FOR PARETO B
x = 0:1:100;
y = 0:1:100;
z = 0:1:30;
[X,Y] = meshgrid(x,y);  % Base layer horizontal
[YV,ZV] = meshgrid(y,z);  % Base layer vertical
R = zeros(length(x),length(y)); % variable to store the horizonatal base layer increase
V = zeros(length(z),length(y)); % variable to store the vertical base layer increase
figure (5)
for bb = 1:numel(z)
    Z = R+z(bb); % Increment the height in z direction
   QA = mesh(X,Y,Z,'EdgeColor', [0.2,0.5,0.9], 'EdgeAlpha', 0.03);%plot the 2D XY Plane
    alpha(QA, 0);
    hold on
end  
for c = 1:numel(x) %y = x; z = y; x = z;
      XV = V+x(c);
    QB= mesh(XV,YV,ZV,'EdgeColor',  [0.2,0.5,0.9], 'EdgeAlpha', 0.03); %Plot the 2D XZ Plane
     alpha(QB, 0); 
end
yticks(0:20:100);xlabel('X (mm)');
xticks(0:20:100);ylabel('Y (mm)');
zticks(0:10:30); zlabel('Z (mm)');
%The Network design

NX1 = [0,0,0,0,0;100,100,100,100,100];
NY1 = [49.75,50.25,50.25,49.75,49.75; 49.75,50.25,50.25,49.75,49.75];
NZ15 = [14.75,14.75,15.25,15.25,14.75;14.75,14.75,15.25,15.25,14.75];
NZ5   = [4.75,4.75,5.25,5.25,4.75;4.75,4.75,5.25,5.25,4.75];
NZ25   = [24.75,24.75,25.25,25.25,24.75;24.75,24.75,25.25,25.25,24.75];
NX2 = [24.75,25.25,25.25,24.75,24.75; 24.75,25.25,25.25,24.75,24.75];
NX3 = NX2+50;
%diagonal ends points %center to center spacing is 25mm
NX4 = [0.25,0,0,0,0,0.25,0.25; 100,100,99.75,99.75,100,100,100]; %pointed edge
NY2 = [0,0,0.25,0.25,0,0,0;99.75,100,100,100,100,99.75,99.75];%pointed edge
NZD1 = [5.25,5.25,5.25,4.75,4.75,4.75,5.25; 5.25,5.25,5.25,4.75,4.75,4.75,5.25]; %point edge
NX5 = [0,0,0,0,0;75.25,74.75,74.75,75.25,75.25]; %sides
NY3 = [24.75,25.25,25.25,24.75,24.75;100,100,100,100,100]; %sides
NZD5 =[5.25,5.25,4.75,4.75,5.25; 5.25,5.25,4.75,4.75,5.25]; %point edge
NZD25 = NZD5+20;
%{
MN16 = surf(NX4,NY2,NZD1, 'LineWidth',0.5, 'FaceColor',[0,0,1]);
MN17 = surf(NX5,NY3,NZD5, 'LineWidth',0.5, 'FaceColor',[0,0,1]);
MN18 = surf(NY3,NX5,NZD5, 'LineWidth',0.5, 'FaceColor',[0,0,1]);
MN19 = surf(NX4,NY2,NZD1+20, 'LineWidth',0.5, 'FaceColor',[0,0,1]);
MN20 = surf(NX5,NY3,NZD25, 'LineWidth',0.5, 'FaceColor',[0,0,1]);
MN21 = surf(NY3,NX5,NZD25, 'LineWidth',0.5, 'FaceColor',[0,0,1]);
%}
%{
MN = surf(NX1,NY1,NZ15, 'LineWidth',0.5, 'FaceColor',[0,0,1]); %z height 15mm through x axis
%}
%height of 13mm
MN1 = surf(NY1+32.75,NX1,NZ15-2, 'LineWidth',0.5, 'FaceColor',[0,0,1]); %z height 15mm through y axis
MN2 = surf(NX2+8.25,NX1,NZ15-2, 'LineWidth',0.5, 'FaceColor',[0,0,1]); %z height 15mm x-left 
MN3 = surf(NX2+25.25,NX1,NZ15-2, 'LineWidth',0.5, 'FaceColor',[0,0,1]); %z height 15mm x-right
MN2 = surf(NX2+42.25,NX1,NZ15-2, 'LineWidth',0.5, 'FaceColor',[0,0,1]); %z height 15mm x-left 
MN3 = surf(NX2+58.25,NX1,NZ15-2, 'LineWidth',0.5, 'FaceColor',[0,0,1]); %z height 15mm x-right

%height of 25 mm
MN1 = surf(NY1+32.75,NX1,NZ15+10, 'LineWidth',0.5, 'FaceColor',[0,0,1]); %z height 15mm through y axis
MN2 = surf(NX2+8.25,NX1,NZ15+10, 'LineWidth',0.5, 'FaceColor',[0,0,1]); %z height 15mm x-left 
MN3 = surf(NX2+25.25,NX1,NZ15+10, 'LineWidth',0.5, 'FaceColor',[0,0,1]); %z height 15mm x-right
MN2 = surf(NX2+42.25,NX1,NZ15+10, 'LineWidth',0.5, 'FaceColor',[0,0,1]); %z height 15mm x-left 
MN3 = surf(NX2+58.25,NX1,NZ15+10, 'LineWidth',0.5, 'FaceColor',[0,0,1]); %z height 15mm x-right
%{
MN4 = surf(NY1,NX1,NZ5+5, 'LineWidth',0.5, 'FaceColor',[0,0,1]); %z height 15mm through y axis
MN5 = surf(NX2,NX1,NZ5+5, 'LineWidth',0.5, 'FaceColor',[0,0,1]); %z height 15mm x-left 
MN6 = surf(NX3,NX1,NZ5+5, 'LineWidth',0.5, 'FaceColor',[0,0,1]); %z height 15mm x-right

MN4 = surf(NX2-12.5/100,NX1,NZ5+5/100, 'LineWidth',0.5, 'FaceColor',[0,0,1]); %z height 5mm x-left
MN5 = surf(NX2+12.5/100,NX1,NZ5+5/100, 'LineWidth',0.5, 'FaceColor',[0,0,1]); %z height 5mm x-left
MN6 = surf(NX3-12.5/100,NX1,NZ5+5/100, 'LineWidth',0.5, 'FaceColor',[0,0,1]); %z height 5mm x-right
MN7 = surf(NX3+12.5/100,NX1,NZ5+5/100, 'LineWidth',0.5, 'FaceColor',[0,0,1]); %z height 5mm x-center shift left

MN8 = surf(NX1,NY1-25/100,NZ5+5/100, 'LineWidth',0.5, 'FaceColor',[0,0,1]); %z height 15mm y-left
MN9 = surf(NX1,NY1+25/100,NZ5+5/100, 'LineWidth',0.5, 'FaceColor',[0,0,1]); %z height 15mm y-right
%}

%direction = [0,0,1];  rotate([MN4,MN5,MN6],direction,90);


%height 20mm
%{
MN10 = surf(NY1,NX1,NZ25-5, 'LineWidth',0.5, 'FaceColor',[0,0,1]); %z height 15mm through y axis
MN11 = surf(NX2,NX1,NZ25-5, 'LineWidth',0.5, 'FaceColor',[0,0,1]); %z height 15mm x-left 
MN12 = surf(NX3,NX1,NZ25-5, 'LineWidth',0.5, 'FaceColor',[0,0,1]); %z height 15mm x-right
%{
MN10 = surf(NX2-12.5/100,NX1,NZ25-5/100, 'LineWidth',0.5, 'FaceColor',[0,0,1]); %z height 5mm x-left
MN11 = surf(NX2+12.5/100,NX1,NZ25-5/100, 'LineWidth',0.5, 'FaceColor',[0,0,1]); %z height 5mm x-left
MN12 = surf(NX3-12.5/100,NX1,NZ25-5/100, 'LineWidth',0.5, 'FaceColor',[0,0,1]); %z height 5mm x-right
MN13 = surf(NX3+12.5/100,NX1,NZ25-5/100, 'LineWidth',0.5, 'FaceColor',[0,0,1]); %z height 5mm x-right

MN14 = surf(NX1,NY1-25/100,NZ25-5/100, 'LineWidth',0.5, 'FaceColor',[0,0,1]); %z height 15mm y-left
MN15 = surf(NX1,NY1+25/100,NZ25-5/100, 'LineWidth',0.5, 'FaceColor',[0,0,1]); %z height 15mm y-right
%}
%direction = [0,0,1];rotate([MN10,MN11,MN12],direction,90);
%{
MN4 = surf(N1,N2,N5, 'LineWidth',0.5, 'FaceColor',[0,0,1]);
MN5 = surf(N2,N1,N5, 'LineWidth',0.5, 'FaceColor',[0,0,1]);
%}
%}
%{
str90 = sprintf('0%c',char(0176));
str0 = sprintf('0%c',char(0176));
str45 = sprintf('0%c',char(0176));
text(0,100,10,str90);
text(0,100,20,str90);
text(0,100,15,str0);
text(0,100,25,str45);
text(0,100,5,str45);
%}
 view(3)               %view(310,8)
 fig = gcf; % Get current figure handle
fig.Units = 'inches';
fig.Position = [0, 0, 3.5, 2.5];
hold off
hold off
%%
%FOR PARETO C
x = 0:1:100;
y = 0:1:100;
z = 0:1:30;
[X,Y] = meshgrid(x,y);  % Base layer horizontal
[YV,ZV] = meshgrid(y,z);  % Base layer vertical
R = zeros(length(x),length(y)); % variable to store the horizonatal base layer increase
V = zeros(length(z),length(y)); % variable to store the vertical base layer increase
figure (5)
for bb = 1:numel(z)
    Z = R+z(bb); % Increment the height in z direction
   QA = mesh(X,Y,Z,'EdgeColor', [0.2,0.5,0.9], 'EdgeAlpha', 0.03);%plot the 2D XY Plane
    alpha(QA, 0);
    hold on
end  
for c = 1:numel(x) %y = x; z = y; x = z;
      XV = V+x(c);
    QB= mesh(XV,YV,ZV,'EdgeColor',  [0.2,0.5,0.9], 'EdgeAlpha', 0.03); %Plot the 2D XZ Plane
     alpha(QB, 0); 
end
yticks(0:20:100);xlabel('X (mm)');
xticks(0:20:100);ylabel('Y (mm)');
zticks(0:10:30); zlabel('Z (mm)');
%The Network design

NX1 = [0,0,0,0,0;100,100,100,100,100];
NY1 = [49.75,50.25,50.25,49.75,49.75; 49.75,50.25,50.25,49.75,49.75];
NZ15 = [14.75,14.75,15.25,15.25,14.75;14.75,14.75,15.25,15.25,14.75];
NZ5   = [4.75,4.75,5.25,5.25,4.75;4.75,4.75,5.25,5.25,4.75];
NZ25   = [24.75,24.75,25.25,25.25,24.75;24.75,24.75,25.25,25.25,24.75];
NX2 = [24.75,25.25,25.25,24.75,24.75; 24.75,25.25,25.25,24.75,24.75];
NX3 = NX2+50;
%diagonal ends points %center to center spacing is 25mm
NX4 = [0.25,0,0,0,0,0.25,0.25; 100,100,99.75,99.75,100,100,100]; %pointed edge
NY2 = [0,0,0.25,0.25,0,0,0;99.75,100,100,100,100,99.75,99.75];%pointed edge
NZD1 = [5.25,5.25,5.25,4.75,4.75,4.75,5.25; 5.25,5.25,5.25,4.75,4.75,4.75,5.25]; %point edge
NX5 = [0,0,0,0,0;75.25,74.75,74.75,75.25,75.25]; %sides
NY3 = [24.75,25.25,25.25,24.75,24.75;100,100,100,100,100]; %sides
NZD5 =[5.25,5.25,4.75,4.75,5.25; 5.25,5.25,4.75,4.75,5.25]; %point edge
NZD25 = NZD5+20;
%{
MN16 = surf(NX4,NY2,NZD1, 'LineWidth',0.5, 'FaceColor',[0,0,1]);
MN17 = surf(NX5,NY3,NZD5, 'LineWidth',0.5, 'FaceColor',[0,0,1]);
MN18 = surf(NY3,NX5,NZD5, 'LineWidth',0.5, 'FaceColor',[0,0,1]);
MN19 = surf(NX4,NY2,NZD1+20, 'LineWidth',0.5, 'FaceColor',[0,0,1]);
MN20 = surf(NX5,NY3,NZD25, 'LineWidth',0.5, 'FaceColor',[0,0,1]);
MN21 = surf(NY3,NX5,NZD25, 'LineWidth',0.5, 'FaceColor',[0,0,1]);
%}
%{
MN = surf(NX1,NY1,NZ15, 'LineWidth',0.5, 'FaceColor',[0,0,1]); %z height 15mm through x axis
%}
%height of 15mm
MN1 = surf(NY1,NX1,NZ15, 'LineWidth',0.5, 'FaceColor',[0,0,1]); %z height 15mm through y axis
MN2 = surf(NX2,NX1,NZ15, 'LineWidth',0.5, 'FaceColor',[0,0,1]); %z height 15mm x-left 
MN3 = surf(NX3,NX1,NZ15, 'LineWidth',0.5, 'FaceColor',[0,0,1]); %z height 15mm x-right

%height of 20 mm 
MN1 = surf(NY1,NX1,NZ15+5, 'LineWidth',0.5, 'FaceColor',[0,0,1]); %z height 15mm through y axis
MN2 = surf(NX2,NX1,NZ15+5, 'LineWidth',0.5, 'FaceColor',[0,0,1]); %z height 15mm x-left 
MN3 = surf(NX3,NX1,NZ15+5, 'LineWidth',0.5, 'FaceColor',[0,0,1]); %z height 15mm x-right
%height of 25mm
MN1 = surf(NY1,NX1,NZ15+10, 'LineWidth',0.5, 'FaceColor',[0,0,1]); %z height 15mm through y axis
MN2 = surf(NX2,NX1,NZ15+10, 'LineWidth',0.5, 'FaceColor',[0,0,1]); %z height 15mm x-left 
MN3 = surf(NX3,NX1,NZ15+10, 'LineWidth',0.5, 'FaceColor',[0,0,1]); %z height 15mm x-right
%height of 5 mm
MN1 = surf(NY1,NX1,NZ15-10, 'LineWidth',0.5, 'FaceColor',[0,0,1]); %z height 15mm through y axis
MN2 = surf(NX2,NX1,NZ15-10, 'LineWidth',0.5, 'FaceColor',[0,0,1]); %z height 15mm x-left 
MN3 = surf(NX3,NX1,NZ15-10, 'LineWidth',0.5, 'FaceColor',[0,0,1]); %z height 15mm x-right
%height of 10mm
MN1 = surf(NY1,NX1,NZ15-5, 'LineWidth',0.5, 'FaceColor',[0,0,1]); %z height 15mm through y axis
MN2 = surf(NX2,NX1,NZ15-5, 'LineWidth',0.5, 'FaceColor',[0,0,1]); %z height 15mm x-left 
MN3 = surf(NX3,NX1,NZ15-5, 'LineWidth',0.5, 'FaceColor',[0,0,1]); %z height 15mm x-right
%{
MN4 = surf(NY1,NX1,NZ5+5, 'LineWidth',0.5, 'FaceColor',[0,0,1]); %z height 15mm through y axis
MN5 = surf(NX2,NX1,NZ5+5, 'LineWidth',0.5, 'FaceColor',[0,0,1]); %z height 15mm x-left 
MN6 = surf(NX3,NX1,NZ5+5, 'LineWidth',0.5, 'FaceColor',[0,0,1]); %z height 15mm x-right

MN4 = surf(NX2-12.5/100,NX1,NZ5+5/100, 'LineWidth',0.5, 'FaceColor',[0,0,1]); %z height 5mm x-left
MN5 = surf(NX2+12.5/100,NX1,NZ5+5/100, 'LineWidth',0.5, 'FaceColor',[0,0,1]); %z height 5mm x-left
MN6 = surf(NX3-12.5/100,NX1,NZ5+5/100, 'LineWidth',0.5, 'FaceColor',[0,0,1]); %z height 5mm x-right
MN7 = surf(NX3+12.5/100,NX1,NZ5+5/100, 'LineWidth',0.5, 'FaceColor',[0,0,1]); %z height 5mm x-center shift left

MN8 = surf(NX1,NY1-25/100,NZ5+5/100, 'LineWidth',0.5, 'FaceColor',[0,0,1]); %z height 15mm y-left
MN9 = surf(NX1,NY1+25/100,NZ5+5/100, 'LineWidth',0.5, 'FaceColor',[0,0,1]); %z height 15mm y-right
%}

%direction = [0,0,1];  rotate([MN4,MN5,MN6],direction,90);


%height 20mm
%{
MN10 = surf(NY1,NX1,NZ25-5, 'LineWidth',0.5, 'FaceColor',[0,0,1]); %z height 15mm through y axis
MN11 = surf(NX2,NX1,NZ25-5, 'LineWidth',0.5, 'FaceColor',[0,0,1]); %z height 15mm x-left 
MN12 = surf(NX3,NX1,NZ25-5, 'LineWidth',0.5, 'FaceColor',[0,0,1]); %z height 15mm x-right
%{
MN10 = surf(NX2-12.5/100,NX1,NZ25-5/100, 'LineWidth',0.5, 'FaceColor',[0,0,1]); %z height 5mm x-left
MN11 = surf(NX2+12.5/100,NX1,NZ25-5/100, 'LineWidth',0.5, 'FaceColor',[0,0,1]); %z height 5mm x-left
MN12 = surf(NX3-12.5/100,NX1,NZ25-5/100, 'LineWidth',0.5, 'FaceColor',[0,0,1]); %z height 5mm x-right
MN13 = surf(NX3+12.5/100,NX1,NZ25-5/100, 'LineWidth',0.5, 'FaceColor',[0,0,1]); %z height 5mm x-right

MN14 = surf(NX1,NY1-25/100,NZ25-5/100, 'LineWidth',0.5, 'FaceColor',[0,0,1]); %z height 15mm y-left
MN15 = surf(NX1,NY1+25/100,NZ25-5/100, 'LineWidth',0.5, 'FaceColor',[0,0,1]); %z height 15mm y-right
%}
%direction = [0,0,1];rotate([MN10,MN11,MN12],direction,90);
%{
MN4 = surf(N1,N2,N5, 'LineWidth',0.5, 'FaceColor',[0,0,1]);
MN5 = surf(N2,N1,N5, 'LineWidth',0.5, 'FaceColor',[0,0,1]);
%}
%}
%{
str90 = sprintf('0%c',char(0176));
str0 = sprintf('0%c',char(0176));
str45 = sprintf('0%c',char(0176));
text(0,100,10,str90);
text(0,100,20,str90);
text(0,100,15,str0);
text(0,100,25,str45);
text(0,100,5,str45);
%}
 view(3)               %view(310,8)
 fig = gcf; % Get current figure handle
fig.Units = 'inches';
fig.Position = [0, 0, 3.5, 2.5];
hold off
hold off
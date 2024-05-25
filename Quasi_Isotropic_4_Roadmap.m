x = 0:10:100;
y = 0:10:100;
z = 0:10:30;
[X,Y] = meshgrid(x,y);  % Base layer horizontal
[YV,ZV] = meshgrid(y,z);  % Base layer vertical
R = zeros(length(x),length(y)); % variable to store the horizonatal base layer increase
V = zeros(length(z),length(y)); % variable to store the vertical base layer increase
figure (20)
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
%diagonal ends points center to center spacing is 20mm
a = 10.*sqrt(2)+0.25; b = 10.*sqrt(2)-0.25;  %% 20 = x.sqrt(2) /Then get your 'x'
NX20 = [a,b,b,a,a;100,100,100,100,100]; %first 20 slant
NY20 = [0,0,0,0,0;100-a,100-b,100-b,100-a,100-a];%first 20 slant
NZD5 = [5.25,5.25,4.75,4.75,5.25;5.25,5.25,4.75,4.75,5.25];
c = 3*10*sqrt(2)+0.25; d = 3*10.*sqrt(2)-0.25;
NX40 = [c,d,d,c,c;100,100,100,100,100];
NY40 = [0,0,0,0,0;100-c,100-d,100-d,100-c,100-c]; 
NY41 = [0,0,0,0,0;100-3.*a,100-3.*b,100-3.*b,100-3.*a,100-3.*a]; %y values for slant at 60
% 5mm- along x section
MN16 = surf(NX20,NY20,NZD5, 'LineWidth',0.5, 'FaceColor',[0,0,1]);
MN17 = surf(NX40,NY40,NZD5, 'LineWidth',0.5, 'FaceColor',[0,0,1]);
%along y section
MN18 = surf(NY20,NX20,NZD5, 'LineWidth',0.5, 'FaceColor',[0,0,1]);
MN19 = surf(NY40,NX40,NZD5, 'LineWidth',0.5, 'FaceColor',[0,0,1]);

%25mm - along x section
MN21 = surf(NX20,NY20,NZD5+20, 'LineWidth',0.5, 'FaceColor',[0,0,1]);
MN22 = surf(NX40,NY40,NZD5+20, 'LineWidth',0.5, 'FaceColor',[0,0,1]);
%25mm - along y section
MN23 = surf(NY20,NX20,NZD5+20, 'LineWidth',0.5, 'FaceColor',[0,0,1]);
MN24 = surf(NY40,NX40,NZD5+20, 'LineWidth',0.5, 'FaceColor',[0,0,1]);

% 15mm 4-network
MN1 = surf(NY1-30,NX1,NZ15, 'LineWidth',0.5, 'FaceColor',[0,0,1]); %z height 15mm through y axis
MN2 = surf(NY1-10,NX1,NZ15, 'LineWidth',0.5, 'FaceColor',[0,0,1]); %z height 15mm x-left 
MN3 = surf(NY1+10,NX1,NZ15, 'LineWidth',0.5, 'FaceColor',[0,0,1]); %z height 15mm x-right
MN4 = surf(NY1+30,NX1,NZ15, 'LineWidth',0.5, 'FaceColor',[0,0,1]); %z height 15mm x-right

%20mm 4- Network
MN5 = surf(NY1-30,NX1,NZ15-5, 'LineWidth',0.5, 'FaceColor',[0,0,1]); %z height 15mm through y axis
MN6 = surf(NY1-10,NX1,NZ15-5, 'LineWidth',0.5, 'FaceColor',[0,0,1]); %z height 15mm x-left 
MN7 = surf(NY1+10,NX1,NZ15-5, 'LineWidth',0.5, 'FaceColor',[0,0,1]); %z height 15mm x-right
MN8 = surf(NY1+30,NX1,NZ15-5, 'LineWidth',0.5, 'FaceColor',[0,0,1]); %z height 15mm x-right
direction = [0,0,1];  rotate([MN5,MN6,MN7,MN8],direction,90);

%25mm 4- Network
MN9 = surf(NY1-30,NX1,NZ15+5, 'LineWidth',0.5, 'FaceColor',[0,0,1]); %z height 15mm through y axis
MN10 = surf(NY1-10,NX1,NZ15+5, 'LineWidth',0.5, 'FaceColor',[0,0,1]); %z height 15mm x-left 
MN11 = surf(NY1+10,NX1,NZ15+5, 'LineWidth',0.5, 'FaceColor',[0,0,1]); %z height 15mm x-right
MN12= surf(NY1+30,NX1,NZ15+5, 'LineWidth',0.5, 'FaceColor',[0,0,1]); %z height 15mm x-right
direction = [0,0,1];  rotate([MN9,MN10,MN11,MN12],direction,90);

str90 = sprintf('90%c',char(0176));
str0 = sprintf('0%c',char(0176));
str45 = sprintf('+45%c',char(0176));
text(0,100,10,str90);
text(0,100,20,str90);
text(0,100,15,str0);
text(0,100,25,str45);
text(0,100,5,str45);
%}
%}
 view(3)               %view(310,8)
hold off

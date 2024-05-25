x = 0:1:100;
y = 0:1:100;
z = 0:1:30;
[X,Y] = meshgrid(x,y);  % Base layer horizontal
[YV,ZV] = meshgrid(y,z);  % Base layer vertical
R = zeros(length(x),length(y)); % variable to store the horizonatal base layer increase
V = zeros(length(z),length(y)); % variable to store the vertical base layer increase
figure (4)
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
N5 = [25,25,25,25,25;75,75,75,75,75];%This causes the dead end
NX3 = NX2+50;

%MN = surf(NX1,NY1,NZ15, 'LineWidth',0.5, 'FaceColor',[0,0,1]); % cross network z height 15mm through x axi
MN1 = surf(NY1,NX1,NZ15, 'LineWidth',0.5, 'FaceColor',[0,0,1]); %z height 15mm through y axis
MN2 = surf(NX2,NX1,NZ15, 'LineWidth',0.5, 'FaceColor',[0,0,1]); %z For the ~24mm position
MN2 = surf(NY1+NX2,NX1,NZ15, 'LineWidth',0.5, 'FaceColor',[0,0,1]); %z For the ~75mm position
view(3)

fig = gcf; % Get current figure handle
fig.Units = 'inches';
fig.Position = [0, 0, 3.5, 2.5];
hold off
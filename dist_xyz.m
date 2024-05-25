function Distanceof = dist_xyz(X,Y,Z, D,F)
Xdist = abs(X-D);
Ydist = abs(Y-D);
Zdist = abs(Z-F);
 Distanceof = min([Xdist, Ydist, Zdist]);
end

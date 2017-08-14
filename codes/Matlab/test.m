%%

load twotankdata;
z = iddata(y,u,0.2, ...
           'Name','Two tank system',...
           'Tstart',0);
mhw1 = nlhw(z,[1 5 3],pwlinear,pwlinear);

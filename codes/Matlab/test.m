%%

load twotankdata;
z = iddata(y,u,1, ...
           'Name','Two tank system',...
           'Tstart',0);
mhw1 = nlhw(z,[1 2 3],pwlinear,pwlinear);

%%

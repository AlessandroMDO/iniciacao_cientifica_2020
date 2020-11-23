%data_10 = importfile('data_10.dat');
u=data10.u;
v=data10.v;
w=data10.w;
ix=data10.x;
iy=data10.y;
iz=data10.z;

maag=[];
for r =[1:127];
    n = (u(r,1)^2+v(r,1)^2+w(r,1)^2)^0.5;
    maag = [maag,n];

end
mags = maag';
range = [min(mags),max(mags)];

q=quiver3(ix,iy,iz,u,v,w,'linewidth',2);
%q=quiver(ix,iz,u,w,'linewidth',1)
colormap jet;
colorbar;
SetQuiverColor(q,jet,mags,range);
xlim([0 130])
ylim([0 130])
caxis([4 25]);
set(gca,'Color','k');

%meann=[]




           
            
    
    
    
    
    






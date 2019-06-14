function anime_os(t,v,m1,m2,L1,L2)
  v1=v(1,:);
  v2=v(2,:);

  xr=[ 0 .5 1.5 2.5 3.5 4 4 4];
  xr=xr/4;

  yr=[ 0 1 -1 1 -1 0 1 -1];

  ym=[1 -1 -1 1 1];
  xm=[0 0 1 1 0];

  lm1=2;
  lm2=2*m2/m1;

  drawlater
  plot(xr*(L1+v1(1)),yr,'linewidth',2);
  r1=get(gce(),'children')
  plot((L1+v1(1))+lm1+xr*(L2+v1(1)-v2(1)),yr,'linewidth',2);
  r2=get(gce(),'children')
  plot(xm*lm1+L1+v1(1),ym,'linewidth',2);
  ma1=get(gce(),'children')
  plot(xm*lm2+L1+L2+v2(1)+lm1,ym,'linewidth',2);
  ma2=get(gce(),'children')
  set(gca(),'isoview','on','auto_scale','off','box','off');
  drawnow

  for i=1:length(t)
	  drawlater
	  set(r1,'data',[xr*(L1+v1(i));yr]');
	  set(r2,'data',[L1+v1(i)+lm1+xr*(L2-v1(i)+v2(i));yr]');
	  set(ma1,'data',[xm*lm1+L1+v1(i);ym]');
	  set(ma2,'data',[xm*lm2+L1+L2+v2(i)+lm1;ym]');
    drawnow
  end

endfunction


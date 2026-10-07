function [D,H,S,L] = qos_metrics_compare(r)

t=1:r;

D.energy=exp(-0.025*t);
H.energy=exp(-0.03*t);
S.energy=exp(-0.035*t);
L.energy=exp(-0.02*t);

D.PDR=0.9-0.05*(t/r);
H.PDR=0.88-0.07*(t/r);
S.PDR=0.85-0.08*(t/r);
L.PDR=0.93-0.04*(t/r);

D.delay=90+0.4*t;
H.delay=100+0.5*t;
S.delay=110+0.6*t;
L.delay=80+0.3*t;

D.throughput=55+10*sin(t/10);
H.throughput=50+8*sin(t/10);
S.throughput=45+7*sin(t/10);
L.throughput=60+12*sin(t/10);

end
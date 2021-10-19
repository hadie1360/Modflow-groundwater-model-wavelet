%wavelet 3 decomposition levels too many data such as wells
%Data of wells must be in Workspace 
WT=[1;1];
x='db3';
for i=1:1582
    j=i+(47*(i-1));
s=T(j:j+47);
ls = length(s);
 [C,L] = wavedec(s,3,x);
cA3 = appcoef(C,L,x,3);
cD3 = detcoef(C,L,3);
cD2 = detcoef(C,L,2);
cD1 = detcoef(C,L,1);
A3 = wrcoef('a',C,L,x,3);
D1 = wrcoef('d',C,L,x,1);
D2 = wrcoef('d',C,L,x,2);
D3 = wrcoef('d',C,L,x,3);
WT=[WT;A3];
end

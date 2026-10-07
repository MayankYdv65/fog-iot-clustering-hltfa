function CH = select_CH_HLTFA(x,y,energy,k)

fitness = 0.6*energy + 0.4./(sqrt(x.^2+y.^2)+1);

[~,sorted] = sort(fitness,'descend');
CH = sorted(1:k);

end
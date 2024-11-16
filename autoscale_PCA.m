X2=zeros(size(X));

for i=1:size(X,2)
    X2(:,i)=[X(:,i)-mean(X(:,i))]./std(X(:,i));
end


[s2,v2,d2]=svd(X2);
S2=s2*v2

plot3(S2(:,1),S2(:,2),S2(:,3),'r*')
grid on

plot3(d2(:,1),d2(:,2),d2(:,3),'b*')
grid on
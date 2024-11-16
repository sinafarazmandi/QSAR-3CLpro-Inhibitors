XScaled=zeros(size(X));

for i=1:size(X,2)
    XScaled(:,i)=[X(:,i)-mean(X(:,i))]/std(X(:,i));
end

histogram(XScaled(:,1))
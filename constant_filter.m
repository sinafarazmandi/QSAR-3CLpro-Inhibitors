function [selected_index,rejected_index]=constant_filter(xx)
rejected_index=[];
for j=1:size(xx,2);
      for i=1:size(xx,1);
      t=0;
            for k=1:size(xx,1);
            if xx(i,j)==xx(k,j);
            t=t+1;
            end
            end
       if t>=floor(size(xx,1)*0.9);
       rejected_index=[rejected_index j];
       break;
       end
      end
end
selected_index=1:size(xx,2);
selected_index(rejected_index)=[];
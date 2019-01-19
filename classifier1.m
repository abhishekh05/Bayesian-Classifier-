function [z,p,I] = classifier1(input,mean_vals,var_vals)

n_i = length(input(:,1));
n_c = length(mean_vals(1,:));

for i = 1:n_i
  for j = 1:n_c
      for k = 1:n_c
          
        z(j,k) = (input(i,j) - mean_vals(1,k))/(sqrt(var_vals(1,k)));
      end
      [p(i,j),I(i,j)] = max(normpdf(z(j,:))/5);
      
  end
end
end

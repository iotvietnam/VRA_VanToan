function savenprime(n)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
rArray = findnprime(n);
strFileName=['prime',num2str(n),'.mat'];
save(strFileName,'rArray');

end


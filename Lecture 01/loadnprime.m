function loadnprime(n)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
rArray = findnprime(n);
strFileName=['prime',num2str(n),'.mat'];
load(strFileName,'rArray');
rArray
end

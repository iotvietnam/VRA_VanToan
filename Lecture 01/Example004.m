function Example004()
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
strMessage ='\n Nhap n:';
n = input (strMessage);
s = 0;
for i=1:n
    s = s+i;
end
fprintf('\n tong S = 1+2+3+...%d la: %d.\n',n,s);

end


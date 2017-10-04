function StatisticTestImg( )
% Thong ke so luong cac anh tuong ung voi cac label trong tap test
    lblTestAll = loadMNISTLabels('./t10k-labels.idx1-ubyte');
    number = zeros(10,2);
    for i=1:10
        number(i,1) =i-1;
    end
    for i=1:10000
        j = lblTestAll(i)+1;
        number(j,2) = number(j,2)+1;
    end
    xlswrite('thong ke anh Test.xls',number);
    fprintf('\n Mo file thong ke anh Test.xls de xem ket qua.');
end

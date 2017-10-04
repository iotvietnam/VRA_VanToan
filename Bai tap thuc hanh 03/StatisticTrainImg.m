function StatisticTrainImg( )
% Thong ke so luong cac anh tuong ung voi cac label trong tap train
    lblTrainAll = loadMNISTLabels('./train-labels.idx1-ubyte');
    number = zeros(10,2);
    for i=1:10
        number(i,1) =i-1;
    end
    for i=1:60000
        j = lblTrainAll(i)+1;
        number(j,2) = number(j,2)+1;
    end
    xlswrite('thong ke anh Train.xls',number);
    fprintf('\n Mo file thong ke anh Train.xls de xem ket qua.');
end


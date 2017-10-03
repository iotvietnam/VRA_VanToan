function Recognition002_Digits()
% Chýõng tr?nh n?p d? li?u train và test
% Thông báo s? lý?ng ?nh train và ?nh test
    fprintf('\n Load du lieu train');
    imgTrainAll = loadMNISTImages('./train-images.idx3-ubyte');
    lblTrainAll = loadMNISTLabels('./train-labels.idx1-ubyte');

    fprintf('\n Load du lieu test');
    imgTestAll = loadMNISTImages('./t10k-images.idx3-ubyte');
    lblTestAll = loadMNISTLabels('./train-labels.idx1-ubyte');

    nTrainImages = size(imgTrainAll,2);
    nTrainLabels = size(lblTrainAll,1);

    nTestImages = size(imgTestAll,2);
    nTestLabels = size(lblTestAll,1);

    nSizeofImage = size(imgTrainAll,1);

    fprintf('\n So luong anh Train: [%d].', nTrainImages);
    fprintf('\n So luong nhan anh Train: [%d].', nTrainLabels);
    fprintf('\n So luong anh Test: [%d].', nTestImages);
    fprintf('\n So luong nhan anh Test: [%d].', nTestLabels);
    fprintf('\n Kich thuoc cua mot anh: [%d].', nSizeofImage);


    fprintf('\n Ket thuc.\n');
end
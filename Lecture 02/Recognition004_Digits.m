function Recognition004_Digits()
% N?p d? li?u train v� test
% Hi?n th? ?nh ng?u nhi�n trong b? train
% Hi?n th? ?nh ng?u nhi�n trong b? test
    fprintf('\n Load du lieu train');
    imgTrainAll = loadMNISTImages('./train-images.idx3-ubyte');
    lblTrainAll = loadMNISTLabels('./train-labels.idx1-ubyte');

    fprintf('\n Load du lieu test');
    imgTestAll = loadMNISTImages('./t10k-images.idx3-ubyte');
    lblTestAll = loadMNISTLabels('./t10k-labels.idx1-ubyte');

    nTrainImages = size(imgTrainAll,2);
    nNumber = randi([1 nTrainImages]);
    
    figure;
    img = imgTrainAll(:,nNumber);
    img2D = reshape(img,28,28);
    strLabelImage = num2str(lblTrainAll(nNumber));
    imshow(img2D);
    title(strLabelImage);
    
    nTestImgs = size(imgTestAll,2);
    nNumber = randi([1 nTestImgs]);
    
    figure;
    imgTest = imgTestAll(:,nNumber);
    img2DTest = reshape(imgTest,28,28);
    strLabelImage = num2str(lblTestAll(nNumber));
    imshow(img2DTest);
    title(strLabelImage);
    
end


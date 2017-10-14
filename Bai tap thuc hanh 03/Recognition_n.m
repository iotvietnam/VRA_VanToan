function Recognition_n(n)

    fprintf('\n Load du lieu train');
    imgTrainAll = loadMNISTImages('./train-images.idx3-ubyte');
    lblTrainAll = loadMNISTLabels('./train-labels.idx1-ubyte');
    Mdl = fitcknn(imgTrainAll',lblTrainAll);
    
    fprintf('\n Load du lieu test');
    imgTestAll = loadMNISTImages('./t10k-images.idx3-ubyte');
    lblTestAll = loadMNISTLabels('./t10k-labels.idx1-ubyte');
    
    imgTest = imgTestAll(:,n);
    lblPredictTest = predict(Mdl,imgTest');
    
    fprintf('\n Ket qua nhan dang anh: %d la: %d.',n,lblPredictTest);
end
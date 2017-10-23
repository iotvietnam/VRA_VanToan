function Q7_sao()

    fprintf('\n Load du lieu train');
    imgTrainAll = loadMNISTImages('./train-images.idx3-ubyte');
    lblTrainAll = loadMNISTLabels('./train-labels.idx1-ubyte');
    Mdl = fitcknn(imgTrainAll',lblTrainAll);
    
    fprintf('\n Load du lieu test');
    imgTestAll = loadMNISTImages('./t10k-images.idx3-ubyte');
    lblTestAll = loadMNISTLabels('./t10k-labels.idx1-ubyte');
    
    count = zeros(10,2);
    for i=1:10
        count(i,1) =i-1;
    end
    for i =1:10000
        n = lblTestAll(i)+1;
            imgTest = imgTestAll(:,i);
            lblPredictTest = predict(Mdl,imgTest');
            if(lblPredictTest ~=n) 
                count(n,2) = count(n,2)+1;
            end
    end
    fprintf('\n Confusion matrix:\n');
    disp(count');
end
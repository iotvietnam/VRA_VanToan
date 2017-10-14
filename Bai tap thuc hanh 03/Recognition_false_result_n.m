function Recognition_false_result_n(n)

    fprintf('\n Load du lieu train');
    imgTrainAll = loadMNISTImages('./train-images.idx3-ubyte');
    lblTrainAll = loadMNISTLabels('./train-labels.idx1-ubyte');
    Mdl = fitcknn(imgTrainAll',lblTrainAll);
    
    fprintf('\n Load du lieu test');
    imgTestAll = loadMNISTImages('./t10k-images.idx3-ubyte');
    lblTestAll = loadMNISTLabels('./t10k-labels.idx1-ubyte');
    
    count = 0;
    sum = 0;
    for i =1:10000
        if(lblTestAll(i) ==n)
            sum = sum +1;
            imgTest = imgTestAll(:,i);
            lblPredictTest = predict(Mdl,imgTest');
            if(lblPredictTest ~=n) 
                count = count+1;
            end
        end
    end
    rate = 100 - count*100/sum;
    fprintf('\n Ket qua nhan dang nhan: %d bi sai la: %d.',n,count);
    fprintf('\n Tong so anh co nhan: %d la: %d.',n,sum);
    fprintf('\n Ty le chinh xac la: %.2f%%',rate);
end
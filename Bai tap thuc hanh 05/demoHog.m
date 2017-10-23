function demoHog()
    imgTrainAll = loadMNISTImages('./train-images.idx3-ubyte');
    lblTrainAll = loadMNISTLabels('./train-labels.idx1-ubyte');
    img1D = imgTrainAll(:,1968);
    img2D = reshape(img1D,28,28);
    subplot(2,3,1);
    imshow(img2D);
    [featuresVector, visualHog] = extractHOGFeatures(img2D,'CellSize',[4,4]);
    subplot(2,3,2);
    plot(visualHog);
    
    subplot(2,3,3);
    histogram(featuresVector,10);
    
    img1D = imgTrainAll(:,1993);
    img2D = reshape(img1D,28,28);
    
    subplot(2,3,4);
    imshow(img2D);
    
    [featuresVector, visualHog] = extractHOGFeatures(img2D,'CellSize',[4,4]);
    subplot(2,3,5);
    plot(visualHog);
    
    subplot(2,3,6);
    hist(featuresVector);
    fprintf('\nTest ok.\n');
end

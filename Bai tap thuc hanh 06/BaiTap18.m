function BaiTap18()
    figure;
    imgI = imread('cameraman.jpg');
    imshow(imgI);
    points = detectHarrisFeatures(imgI);
    hold on;
    subpoints = points.selectStrongest(10);
    plot(subpoints);
end

function BaiTap17()
    figure;
    imgI = imread('cameraman.jpg');
    imshow(imgI);
    points = detectSURFFeatures(imgI);
    hold on;
    subpoints = points.selectStrongest(10);
    plot(subpoints);
end

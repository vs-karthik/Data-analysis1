video = VideoReader('acm.MP4');   
frames = video.NumFrames
for img = 1:frames
    filename = strcat('frame', num2str(img), '.jpg');
    image=read(video,img);
    imwrite(image,filename);
    
end
%%

for img = 1:6
    filename = strcat('frame', num2str(img), '.jpg');
    image=read(video,img);
    figure , imshow(rgb2gray(image))

end
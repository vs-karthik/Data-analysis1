clear;
clc;
close all;
%%
temp_4=zeros(2160,1);
temp_5=zeros(2160,1);

for img=1:1059
     filename = strcat('frame', num2str(img), '.jpg');
     r= imread(filename);
     grayscale_image=rgb2gray(r);
     temp_4=double((grayscale_image(:,1930)))+temp_4;
     temp_5=(double((grayscale_image(:,1930))).^2)+temp_5;
end
%%
average= (temp_4./1059);
p1 = plot(average);
hold on
rms=sqrt(temp_5./1059);
p2 = plot(rms);
legend([p1 p2],{'average','rms'})
ylabel('Intensity values','FontSize',12,'FontWeight','normal')
title('Average and RMS values','FontSize',16,'FontWeight','bold')
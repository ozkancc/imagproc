%%

I=im2double(rgb2gray(imread('Penguins.jpg')));
% imshow(I);

level=graythresh(I);
BW1=im2bw(I,level);
BW2=im2bw(I,0.8);

imshow([BW1 BW2]);

%%
%hstgrm 

I=imread('Desert.jpg');
I=rgb2gray(I);

[M N]=size(I);
B=zeros(2,256);

for i=1:M
    for j=1:N
      a=I(i,j);
      
      B(1,a+1)=B(1,a+1)+1; % çünkü matris indislenmesi min 1
      
    end
end




% bar(B)
BCV=zeros(2,256);

t=-1;
tindex=-1;

for i=1:255
    
    BCV(1,i)=weight(B,i);
    if BCV(1,i)>t
        t=BCV(1,i);
        tindex=i;
    end
    BCV(2,i)=i;
end





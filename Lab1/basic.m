for i= 0:20
    x(i+1) = cos (3*pi*i/20);
end
plot(x)

clear all
for i= 0:20
    x(i+1) = cos(3*pi*i/20);
    if(i>5 & i<= 12 & i~=8)
        x(i+1) = x(i+1)+1;
    end 
end 
        plot(x)


clear all
for i = 0:1000
    w = (i-500)* pi/500;
    H(i+1) = 1/(1-0.5* exp(j*w));
end
plot (abs(H));
plot(angle(H));
plot(abs(ifft(H))); 
plot(real(H));
plot(imag(H));


clear all
clf
H2 = [ones(1,21) zeros(1,87) ones(1,20)];
h2 = abs(ifft(H2));
k2 = 0:127;
H3 = [ones(1,41) zeros(1,175) ones(1,40)];
h3 = abs(ifft(H3));
k3 = 0:255;
plot(H2)
plot(k2,h2);
plot(k3,h3);

clear all
clf
x =[1,2,-1,4,6];
B = [1,0,0,0,1
     0,1,1,1,2
     3,2,2,1,5
     0,0,1,.1,1
     1,0,2,0,2];
x*B
inv(B)
B'
inv(B)*B
y = [1,0,2,1,2];
%y*x
y' * x
max(x)
min(x)
size(x)
length(x)
sum(x)


for i= 0:200
    x(i+1) = cos (3*pi*i/20);
    if(i>50 & i< 90 & i~=[70,71,72,73,74,75])
        x(i+1) = x(i+1)+ 3;
    end
end
plot(x)



for i = 1:50 
    for j = 1:50
         A(i,j) = 1/ abs(i-j) 
         if(i==j)
           A(i,j) = 0
           [x,y] = eig (A)
         end
    end
end
figure(1)
mesh(A)
figure(2)
contour(A)
figure(3)
mesh(abs(fft2(A)))
inv(A)
det(A)
figure(4)




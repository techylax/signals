clear all
% 
% w=-100*pi:100*pi;
% H=j*w./((j*w).^2+3*j*w+2);
% X=1./(1+1j*w);
% figure(1)
% plot(w,real(abs(ifft(H.*X))))
% figure(2)
% t=0:0.01:10;
% yx=-t.*exp(-t)+2*exp(-t)-2*exp(-2*t);
% plot(t,abs(yx))
% 


T1= pi/(0.8*500*pi);
T2 = pi/(0.8*1200*pi);
T3 = pi/(0.8*1200 *pi)
n1 = -10/T1:10/T1;
n2 = -10/T2:10/T2;
n3 =  -10/T3:10/T3;
x1 = sinc(500*n1*T1);
x2 = sinc(1200*n2*T2);
x3 = sinc(500*n3*T3) + sinc (1200*n3*T3);
f1 = -1/(2*T1):1/(T1*length(n1)):1/(2*T1)-1/(T1*length(n1));
f2 = -1/(2*T2):1/(T2*length(n2)):1/(2*T2)-1/(T2*length(n2));
f3 = -1/(2*T3):1/(T3*length(n3)):1/(2*T3)-1/(T3*length(n3));

subplot(3,1,1), plot(f1,abs(fft(x1)))
subplot(3,1,2), plot(f2,abs(fft(x2)))
subplot(3,1,3), plot(f3,abs(fft(x3)))


% a=randn(300, 400)
% b=imread("moon.tif")
% c=imread("cameraman.tif")
% figure(1)	
% imshow(a)
% figure(2)
% mesh(fftshift(abs(fft2(a))))
% 
% figure(3)	
% imshow(b)
% figure(4)
% mesh(fftshift(abs(fft2(b))))
% 
% figure(5)	
% imshow(c)
% figure(6)
% mesh(fftshift(abs(fft2(c))))
% % 
% 

% 
% 
% k=0;	
% yi(1)=0;
% for	t=-10:0.01:10
%     k=k+1;
%     if	(t>-2 && t<2)	
%         y(k)=1;
%     else
%     	y(k)=0;	        
%     end	
%     % yd=[diff(y),0];
%     % Y=abs(fft(y));
% 
%     % u=3*t-2;
%     if	(t>=-1&&t<=	1)
%     	g(k)=1;
%     else	
%         g(k)=0;
%     end
% 
%     end
% 
% step=1/.01;
% t=-10:0.01:10;
% f=-step/2:step/length(t):step/2-step/length(t);
% f1=-step+ step/length(t):step/length(t):step-step/length(t)	;
% % subplot(3,1,1),plot(f,abs(fftshift(fft(yi))))	
% subplot(3,1,2),plot(f1,abs(fftshift(fft(conv(y,g)))))		
% subplot(3,1,3), plot(f,abs(fftshift(fft(y))).*abs(fftshift(fft(g))))
% 
% % 
% Ey=y*y'
% EY=Y*Y'/length(t)



% 
% t=-10:0.0001:10;
% x1=sinc(500*t);
% x2=sinc(1200*t);
% x3=x1+x2;
% x4=	t.*sinc(500*pi*t)
% x5 = sinc(500*pi*(t-2))
% step=1/0.0001;
% f = -step/2:step/length(t):step/2-step/length(t)
% subplot(5,1,1),	plot(f,fftshift(abs(fft(x1))))
% subplot(5,1,2),	plot(f,fftshift(abs(fft(x2))))
% subplot(5,1,3),	plot(f,fftshift(abs(fft(x3))))
% subplot(5,1,4),	plot(f,fftshift(abs(fft(x4))))
% subplot(5,1,5),	plot(f,fftshift(abs(fft(x5))))






% k =0;
% for t = -10:0.01:10;
%     k = k+1;
%     if(t>-0.5 && t <0.5) 
%         x1(k) = 1;
%     else
%         x1(k) = 0;
%     end
%   if(t>-1 && t <1) 
%         x2(k) = 1;
%   else
% 
%         x2(k) = 0;
%   end
% 
%     if(t>-2 && t <2) 
%         x3(k) = 1;
%     else
% 
%         x3(k) = 0;
%     end
%         if(t>-3 && t <3) 
%         x4(k) = 1;
%     else
%         x4(k) = 0;
%         end
% if(t>-4 && t <4) 
%         x5(k) = 1;
%     else
%         x5(k) = 0;
% end
%     end
% 
%      t = -10:0.01:10;
%      step = 1/0.01;
%      f = -step/2:step/length(t):step/2-step/length(t)
%      figure(1)
%      subplot(5,1,1), plot(x1)
%      subplot(5,1,2), plot(x2)
%      subplot(5,1,3) , plot(x3)
%      subplot(5,1,4) , plot(x4)
%      subplot(5,1,5) , plot(x5)
%  figure(2)
% 
% subplot(5,1,1),	plot(f,	fftshift(abs(fft(x1))))	
% subplot(5,1,2),	plot(f,	fftshift(abs(fft(x2))))	
% subplot(5,1,3),	plot(f,	fftshift(abs(fft(x3))))	
% subplot(5,1,4),	plot(f,	fftshift(abs(fft(x4))))	
% subplot(5,1,5),	plot(f,	fftshift(abs(fft(x5))))	


% t =0:0.01:15;  
% x1=0.5 ;
% x2 = 1/3;
% x3 = 0;
% A =1;
% x4 =0.504;
% x5 = 2/pi;
% P1=0.5^2;
% P2=1/9;
% P3 =0;
% P5 = (2/pi)^2;
% P4 = (0.504)^2;
% for k= 1:60
%     Dk = 2/pi*1/(1-4*k^2);
%     % if rem(k,2)==1
%     %     x1 = x1 +(-1)^((k-1)/2)*2/(pi*k)*cos(k*t);
%     %     P1=P1+1/2*((-1)^((k-1)/2)*2/(pi*k))^2;
%     % end
%     % x2 = x2 + 4/pi^2*(-1)^k/k^2*cos(k*pi*t);
%     % P2=P2+1/2*(4/pi^2*(-1)^k/k^2)^2;
%     % P3 = P3 + 1/2* ((2*A)/(pi*k))^2;
%     % P4 = P4 + 1/2*(0.504*2/sqrt((1+16*k^2)))^2;
%     P5 = P5 + 2 * (Dk)^2;
% 
%     % x3 = x3 + (2*A)/(pi*k)*cos(k*pi*t+(-1)^k*(pi/2));
%     % x4 = x4 +  0.504*2/(1+16*k^2)*(cos(2*k*t) + 4*k*sin(2*k*t));
%     x5 = x5+ Dk*exp(1j*2*k*t)+Dk*exp(-1j*2*k*t); 
% 
%     % subplot(4,1,1), plot(t,x1)
%     % subplot(4,1,2), plot(t,x2)
%     % subplot(4,1,3), plot(t,x3)
%     % subplot(4,1,4), plot(t,x4)
%     subplot(5,1,5), plot(t,x5)
% 
% 
% end
%    %  m=0;	
%    %  for	t=0:0.01:3*pi	
%    %  m=m+1;
%    %  if	(t>0 &&	t<=pi/2) ||	(t>3*pi/2 && t<=5*pi/2)
%    %  	x0(m)=1;
%    %  else	
%    %      x0(m)=0;
%    %  end
%    %  end
%    % t=0:0.01:3*pi;
%    %  x1=0.5;
%    %   for	k=1:60
%    %    if	rem(k,2)==1 	
%    %     x1=x1+ (-1)^((k-1)/2)*2/(pi*k)*cos(k*t);
%    %   MSE(k)=(x0-x1)*(x0-x1)';
%    %    end
%    %    end 
%    %   plot(MSE)
% 
% 
% 

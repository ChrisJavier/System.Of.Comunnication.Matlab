
clc;
clear all;
close all;


x=[ 1 0 0 1 1 0 1 0];                                   
bp=.001;                                                   
disp(x);

bit=[]; 
for n=1:1:length(x)
    if x(n)==1;
       se=ones(1,100);
    else x(n)==0;
        se=zeros(1,100);
    end
     bit=[bit se];

end
t1=bp/100:bp/100:100*length(x)*(bp/100);
subplot(3,1,1);
plot(t1,bit,'lineWidth',1);grid on;
axis([ 0 bp*length(x) -.5 1.5]);

A=5;                                          
br=1/bp;                                                        
f1=br*8;                          
f2=br*2;                                     
t2=bp/99:bp/99:bp; 
m=[];
for (i=1:1:length(x))
    if (x(i)==1)
        y=A*cos(2*pi*f1*t2);
    else
        y=A*cos(2*pi*f2*t2);
    end
    m=[m y];
end
t3=bp/99:bp/99:bp*length(x);
subplot(3,1,2);
plot(t3,m);
xlabel('time(sec)');
ylabel('amplitude(volt)');


A1=5;
A2=0;                                                       
f1=1/bp*8;                                                   
t2=bp/99:bp/99:bp;                 
m=[];
for (i=1:1:length(x))
    if (x(i)==1)
        y=A1*cos(2*pi*f1*t2);
    else
        y=A2*cos(2*pi*f1*t2);
    end
    m=[m y];
end
t3=bp/99:bp/99:bp*length(x);
subplot(3,1,3);
plot(t3,m);
xlabel('time(sec)');
ylabel('amplitude(volt)');
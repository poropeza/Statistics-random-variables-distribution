function [  ] = uniforme(  )



a=-1; %a es la cota inferior
b=-1; %a es la cota superior

while a<=-1
    a=input('Ingrese la cota inferior (a): ');
end

while b<a
    b=input('Ingrese la cota superior (b): ');
end

n=30; %total de números a generar


ri=zeros(n); %arreglo para los numeros aleatorios
ui=zeros(n); %arreglo para Ui

for i=1:n %ciclo principal
   ri(i)=randi([1 100])/100; %generación del número aleatorio
   
   ui(i)= a + (b-a)*ri(i);
   
end

ri=ri(:,1);
ui= ui(:,1);

Z=[ri ui]



end


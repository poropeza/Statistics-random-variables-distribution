function [] = montecarlo()


n=0; %n es la cantidad de clases;

while n<=0
    n=input('Ingrese la cantidad de clases: ');
end


etiqueta=zeros(n); %arreglo de las etiquetas de las clases
probabilidades=zeros(n); %arreglo de las probabilidades de las clases
lim_sup=zeros(n); %arreglo que tendrá los límites superiores de cada clase 
tot=0; %variable que contendrá el valor del total de probabilidades

for i=1:n
    
    etiqueta(i)=input('Ingrese la etiqueta para la clase: ');%se asigna una etiqueta al arreglo para esa clase i
    
    g=0;%variable auxiliar que servirá para saber el valor de entrada de probabilidad para validar si es correcto
    
    while g<=0
        
        if i==n %estamos en la última iteración (lo que falte de probabilidad, se le asigna a esta clase)
           probabilidades(i)= 100 - tot;
           lim_sup(i)=100; %se agrega la cota máxima a la última clase
           break;
        else
            g=input('Ingrese la probabilidad para la clase: ');
        
            if g+tot>100 %verifica si rebasa el 100%
               disp('El porcentaje de probabilidad rebasa el 100%, ingrese otra probabilidad'); 
               g=0;%se reinicia en 0 para pedir otra probabilidad
             
            elseif g+tot==100 %la totalidad llega a 100 y aún no llega a la última clase
                disp('El porcentaje de probabilidad da un total de 100% y faltan clases, ingrese otra probabilidad'); 
               g=0;%se reinicia en 0 para pedir otra probabilidad
            else
                probabilidades(i)=g; %se le asigna a la clase i la probabilidad ingresada
                tot= tot+g; %se aumenta el total de probabilidad ocupada.
                lim_sup(i)=tot; %se agrega la cota superior actual
                
                
                
            end
        end
        
        
    end
    
end %fin de datos de entrada

n_na=30;%randi([1 100]); %variable aleatoria para saber la cantidad de números aleatorios a generar

eti=zeros(n_na); %arreglo de las etiquetas de clase para los numeros aleatorios
al=zeros(n_na); %arreglo para los numeros aleatorios

for j=1:n_na
    
    na=randi([1 100]); %se genera un número aleatorio entre 1 y 100
    al(j)=na; %asignación al arreglo de la variable aleatoria
   
    for i=1:n
       
       if i==1 %es la iteración de la primera clase
        
           if na <= lim_sup(1) %es la primera clase
               eti(j)= etiqueta(1);
               break;
           end
           
       else
            if na <= lim_sup(i) && na > lim_sup(i-1) %verifica límites
               eti(j)= etiqueta(i);
               break;
           end
       end
    end
    
end

al=al(:,1);
eti= eti(:,1);

Z=[al eti]


    
end


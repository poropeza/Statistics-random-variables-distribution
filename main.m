function  main( )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here



opc=0;
 
 while opc~=6
     opc=0;
    
     while opc < 1 || opc > 6
         
        clc;
         
        disp('****************PROYECTO DE VARIABLES ALEATORIAS**************');
        disp('1. Monte Carlo');
        disp('2. Uniforme');
        disp('3. Exponencial');
        disp('4. Normal');
        disp('5. Poisson');
        disp('6. Salir');
        opc=input('Ingrese el valor numérico de la opción: ');
     
        
     end  
     
     
     if opc == 1
         montecarlo();
         pause;
         
     elseif opc==2
         
         uniforme();
         pause;
     elseif opc==3
         
         disp('AQUI VA LA FUNCIÓN DE ALGORITMOS GENÉTICOS');
         pause;
     elseif opc==4
         
         disp('AQUI VA LA FUNCIÓN DE ALGORITMOS GENÉTICOS');
         pause;
     elseif opc==5
         
         disp('AQUI VA LA FUNCIÓN DE ALGORITMOS GENÉTICOS');
         pause;
         
     else
         disp('HASTA LUEGO...');
         pause;
         
     end
     
     
     
     clc;
     
 end

end


# vehiculos_db
Resolución a ejercicio propuesto por la cátedra "IC414 Base de Datos".
- - -
5) Necesitamos una base de datos de vehículos, dicha base será utilizada como un estándar para toda entidad que quiera trabajar con actividades relacionadas a los automotores. Para ello debemos partir de una tabla básica y entender su contexto:
Todo vehículo tiene un nombre y un año de lanzamiento, además esta compuesto por otras tres grandes partes (modelo de carrocería, modelo de chasis y modelo de motor). Por ejemplo: Onix LT, Onix LTZ y ONIX LS se lanzaron en 2012, pero el Onix Effect y el Onix Activ fueron lanzados en 2019, a éstos les debemos configurar los demás datos para completarlo.
Un modelo de carrocería o simplemente carrocería tiene un nombre propio y la cantidad de asientos, como ser:
* Familiar 5 Puertas 3 Asientos
* Familiar 3 Puertas 3 Asientos
* Pick Up Cabina Simple 2 Asientos
* Pick Up Cabina Simple 1 Asiento
* Pick Up Cabina Doble 2 Asientos
* Pick Up Cabina Doble 3 Asientos
* Pick Up Cabina Doble 4 Asientos
* Chasis Con Cabina 1 Asiento
* Chasis Con Cabina 2 Asientos

Un modelo motor cuenta con el nombre del motor, la potencia, los centímetros cúbicos (cc) del motor así como un combustible y una marca de motor. Cada motor deberá tener un id propio que lo identifique ya que con podrán haber muchas variaciones en sus datos debido a las combinaciones de marcas y combustibles que puedan existir. 
Por ejemplo podrá existir el motor llamado “1.4 8V” de “95” cv de potencia el cual tiene una capacidad de “1398” cc de la marca “Chevlolet” y del combustible tipo “Nafta” pero puede existir el mismo motor con la marca “Ford” o que pueda variar en su tipo de combustible, por ejemplo “Renault 2.0 16V 170cv 1995cc Nafta” y “Renault 2.0 16V 170cv 1995cc Gasoil”. 

Por ultimo, el modelo de chasis cuenta con un nombre descriptivo y el número de ejes, para los vehículos particulares o vehículos de agencia la descripción generalmente sera ORIGINAL - 2 EJES pero para camiones o vehículos de transporte pueden aparecer variaciones como por ejemplo:
* CHASIS BAQUEANO - 3 EJES,
* BARANDA BAJA - 3 EJES,
* LARGUEROS PARALELOS - 4 EJES

Existe un componente transversal a todos, con excepción al chasis, el cual es la marca, es decir, cada parte principal tendrá una marca especifica aunque pueda darse el caso ser la misma para todos. Entonces habrá un componente MARCA que simplemente tendrá un nombre y un id, eso servirá para identificar después a marca_vehículo, marcha_carrocería y marca_motor dado que por ejemplo para un vehículo de trasporte de pasajeros (ómnibus) puede ser de la marca Scania, pero su motor es Mercedes y su carrocería es MarcoPolo.

![image](https://github.com/marianodr/vehiculos_db/assets/66141262/903a8212-8af6-4ebb-99b4-1c00d1aa198a)
![image](https://github.com/marianodr/vehiculos_db/assets/66141262/531bf539-e9b0-42d8-8cdd-4592ca932eab)

  a) Realizar el Modelo Relacional en su 3FN, reparando la tabla de origen creando nuevas tablas de ser necesario e insertando las claves foráneas correspondientes.
  b) Confeccionar el Script SQL correspondiente que permita crear dicha base normalizada en MySQL

6) Realizar las sentencias necesarios para insertar los datos en cada tabla usando como fuente a la imagen del ejercicio 5.

7) Realizar las sentencias necesarios para responder a las siguientes consultas:
  a) Obtener el nombre del modelo junto al nombre del motor y el combustible de aquellos vehículos lanzados después del año 2000.
  b) Obtener una lista con los nombres de los modelos y su potencia de aquellos vehículos que tengan chasis original, ordenados de manera ascendente según dicha potencia.
  c) Obtener el promedio de cilindradas de los motores agrupados por su tipo de combustible.
  d) Actualizar el nombre del combustible GASOIL por DIESEL.
  e) Eliminar los modelos de vehículo con mayor y con menor potencia registrados.

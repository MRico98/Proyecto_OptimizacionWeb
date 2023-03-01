# Especificacion de requisitos de software

## Nombre del proyecto: Lector de noticias RSS

### Manuel Martin Rico

### 01 de marzo de 2023

# Introduccion

## Proposito

El objetivo de la especificacion de requisitos es definir de manera clara y precisa todas las funcionalidades y restricciones del sistema que se desea construir. El documento va dirifido al equipo de desarrollo, el profesor y cualquier usuario final que desee entender como funciona el sistema a profundidad. Tambien se dejara el codigo para que este libre para extensiones.

Esta especificacion esta sujeta a revisiones por el grupo de usuarios, que se recogeran por medio de sucesivas versiones del documento, hasta alcanzar la aprovacion total. Esto servira de base para el desarrollo para la construccion del nuevo sistema.

## Ambito del sistema

Feed RSS o Really Simple Syndication, es un recurso para la distribucion de contenidos en tiempo real basdo en el lenguaje XML. Esta tecnologia permite a los usuarios de un blog o canal de noticias seguir sus actualizaciones a traves de un software, sitio web o agregador de navegador.

El sistema RSS está actualmente en la versión 2.0, y el acrónimo es una abreviatura del término Really Simple Syndication (algo como "distribución muy simple"). Sus versiones anteriores se llamaban Rich Site Summary (RSS 0.91) y RDF Site Summary (RSS 0.9 y 1.0).

Feeds RSS funcionan con un archivo XML conocido como webfeed, canal RSS, Atom o, simplemente, RSS feed. Es dentro de este archivo donde se encuentran los datos relacionados con el contenido del sitio, como la descripción, el autor, las imágenes y los enlaces de destino.

El lector de noticias RSS le permitira al usuario cargar urls de archivos XML para ser cargados en el sistema. De igual manera se podra acceder a un recurso que nos permitira ordenar los items en una interfaz grafica. Esto le provee al usuario una manera mas sencilla de visualizar la informacion y estar al tanto de la informacion mas reciente en cuanto a noticias.

## Definicion, Acronimos y Abreviaturas

### Definiciones

| Concepto | Definicion |
| -------- | ---------- |
| Interfaz Grafica | Pantallas y sistema que vera el usuario desde el navegador |

### Acronimos

| Acronimo | Definicion |
| -------- | ---------- |
| XML | Extensible Markup Language |
| RSS | Really Symple Syndication |

## Referencias

** IEEE Std. 830-1998 **
* Standards.ieee.org. 2020. 830-1998 - IEEE Recommended Practice For Software Requirements Specifications. [online] Available at: <https://standards.ieee.org/standard/830-1998.html> [Accessed 14 June 2020]. *

## Vision General del Documento

Este documentoc onsta de tres secciones. Esta seccion es la introduccion y proporciona una vision general del ERS. En la seccion 2 se da una descripcion general del sistema con el finlde conocer las principales funcionaes que debe realizar, los datos asociados y los factores, restricciones, supuestos y dependencias que afectan al desarrollo, sin entrar en excesivos detalles. En la seccion 3 se define detalladamente los requisitos que debe satisfacer el sistema.

# Descripcion General

## Perspectiva del Producto

El sistema interactuara con archivos XMl meidante una URL, estos archivos son genraods por webs o blogs externos yu contienen la informacion de lo que se ha publicado en dicha web (Ver ambito del sistema).

## Funciones del producto

En terminos generales, el lectos de noticias RSS debera poporcionar soporte a las siguientes tareas:
* Carga de feed RSS: El sitema permitira a los usuarios podran ingresar URL (una o mas) de archivos XML de distintas webs y la informacion de estas se percistiran en el sistema.
* Vista de feeds cargados: Los usuarios podran ingresar a la pagina principal y ver todos los datos de feed cargados anteriormente, estos se mostraran ordenados por fechas.

## Caracteristicas de los usuarios

| Usuario | Descripcion | Nivel de conocimientos sobre informatica |
| ------- | ----------- | ---------------------------------------- |
| Usuario lector | Usuario que leera los anteriormente cargadso | Medio |
| Usuario cargador | Usuario que cargara la informacion de los feeds en el sistema | Medio |

## Restricciones

Dado que es la primera entrega se espera cambios en el proceso para mejorar el performance y respuesta del sistema general.

El sistema funcionara bajo el paradigma de microservicios. Se debe proporcionar una interfaz grafica con la que los usuarios interactuaran y esta interfaz grafica se comunicara con un API la cual nos proporcionara acceso al almacenamiento de la informacion. El sistema debe funcionar de cualquier navegador a excepcion de versiones mas antiguas a internet explorer 8.

## Suposiciones y dependencias

### Suposiciones

| S-1 | El usuario tiene acceso a internet |

### Dependencias

La aplicacion debera funcionar de manera independiente, sin necesidad de comunicarse con otros sistemas externos, por lo que no hay dependencias respecto a otros temas.

## Requisitos Futuros

Se tienen contemplados cambios en el sistema para mejorar el performance de la aplicacion, ya sea paginaciones o cache.

# Requisitos Especificos

## Interfaces Externas

En esta seccion se describiran los requisitos que afectan a la interfaz de usuario, interfaz con otros sistemas (hardware y software) e interfaces de comunicacion

### Interfaces de usuario 

La interfaz de usuario consistira en un conjunto de ventanas con botones y formularios. Se podra visualizar en un navegador de internet y la interacion se realizara mediante los medios del usuario.

### Interfaces de hardware

Sera necesario que el usuario diospona de un equipo de computo equipado con lo necesario para interactura con el navegador.

### Interfaces de software

Cualquier explorador, a excepcion de versiones inferiores a Internet Explorer 8.

### Interfaces de comunicacion

Para la transferencia de informacion entre servicios se utilizara, del navegador al servidor el protocolo REST y del servidor a la base de datos el protocolo FTP.

## Funciones

### Usuario lector

| Clave | Requisito |
| ----- | --------- |
| RF001 | Un usuario podra ingresar a la pagina principal y ver todos los feeds cargados anteriormente ordenados por fecha |
| RF002 | Un usuario podra ordenar los feeds mostrados por titulo en orden ascendente o descendente |
| RF003 | Un usuario podra ordenar los feeds mostrados por url en orden ascendente o descendente |
| RF004 | Un usuario podra ordenar los feeds mostrados por descripcion en orden ascendente o descendente |
| RF005 | Un usuario podra realizar una busqueda en una caja de texto para filtrar los feeds mostrados |

### Usuario cargador

| Clave | Requisito |
| ----- | --------- |
| RF006 | Un usuario podra ingresar a una pagina en el sistema para cargar la informacion de nuevos feeds escribiento la URL en una caja de texto |
| RF007 | Un usuario pogra ingresar a una pagina en el sistema para cargar la inforamcion de nuevos feeds escribiendo multiples URLS en la caja de texto, cada URL estara separada por un salto de linea |

## Requisitos de rendimiento

No aplicable por el momento

## Restricciones de diseno

El sistema debe almacenar todas las urls validas en el formato establecido en la base de datos. Para cada item se almacenara la fecha, titulo, url, descripcion y categorias.

El sistema utilizara SQL Server como base de datos predefinida. Tambien se contara con un servidor IIS para el manejo de los servicios. 

El diseño de la base de datos contempla llevar las tablas al menos hasta la tercera forma normal, se considera necesario definir tablas que si bien no cumplan con esta forma normal, si faciliten el acceso rápido a la información.

## Atributos de sitema

* Seguridad: No se contara con ningun tipo de validacion de seguridad del tipo autenticacion y autorizacion.
* Disponibilidad: El sistema estara construido mediante contenedores para tener maxima disponibilidad y ser accedido desde navegfadores web. Tambien se utilizara el gestor de cloud azure para esto.
* Portabilidad: El sistema podra se ejecutado en cualquier equipo de compuito que cumpla con los requisitos tecnicos.
* Usabilidad: El sistema estara disenado basado en https://www.inmuebles24.com.

## Otros requisitos

* Idioma: La interfaz de usuario podra ser vista tanto en ingles como en espanol.
* Log de transacciones: El sistema contara con varios niveles de bitacoras los cuales describiran los eventos ocurridos en el sistema.

# Apendices

Los siguientes documentos continene informacion de apoyo, la cual tien como objetivo proporcionar un mejor entendimiento del presente documento:

* No aplica.
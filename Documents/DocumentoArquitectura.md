# Vistas de la arquitectura

Este documetno presenta un modelo para describir la arquitectura de sistemas de software, badansose en el uso de multiples vistas concurrentes. Este uso de multiples vistas permite abordar los itnereses de los distintos "Stakeholders" de la arquitefctura por separado: usuarios finales, desarrolladores, ingenieros de sistemas, administardores de proyecto, etc.

# Arquitectura 4 + 1

El modelo de 4+1 vistas fue desarrollado para remediar este problema. El modelo 4+1 describe la arquitectura del software usando cinco vistas concurrentes. Cada vista se refiere a un conjunto de intereses de diferentes stakeholders del sistema.

* La vista l ́ogica describe el modelo de objetos del dise ̃no cuando se usa un m ́etodo de dise ̃no orientado a objetos. Para dise ̃nar una aplicaci ́on muy orientada a los datos, se puede usar un enfoque alternativo para desarrollar alg ́un otro tipo de vista l ́ogica, tal como diagramas de entidad-relaci ́on.
* La vista de procesos describe los aspectos de concurrencia y sincronizaci ́on del dise ̃no.
* La vista f ́ısica describe el mapeo del software en el hardware y refleja los aspectos de distribuci ́on.
* La vista de desarrollo describe la organizaci ́on est ́atica del software en su ambiente de desarrollo.

## Vista logica

![Vista logica](/Documents/Diagrams/DiagramaComponents.vpd.jpg)

## Vista de proceso

![Vista de proceso](/Documents/Diagrams/FlowDiagram.vpd.jpg)

## Vista fisica

![Vista fisica](/Documents/Diagrams/DeploymentDiagram.vpd.jpg)

## Vista de desarrollo

![Vista de desarrollo](/Documents/Diagrams/DiagramaComponents.vpd.jpg)
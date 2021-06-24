# Animaciones

Existen las animaciones explicitas e implicitas: Son enfoques que permiten animar vistas

- Implicitas: Proporcionan modificadores.
- Explicitas: Son las definidas personalizadamente.

## Animaciones implicitas

- .animation(.param): Se le puede pasar tanto al padre como a los hijos independientemente y hara que estos se animen automaticamente
si tienen cambios de estados (@State)

<strong>Parametros de .animation</strong>

- .default (Swift escoge la mejor animaión)
- .easeIn
- .easeInOut
- .easeOut
- .lineal
- Y MAS

- .spring(response: 0.5, repote, etc.)

# Manejo de imagenes

<strong>SF Symbols</strong>
Son los iconos standard que apple nos provee para utilizar en nuestras aplicaciones.

Se utilizan con la clase:

```swift
	Image(systemName: "icon_name")
		.imageScale(.small)
```

Nota: A estos iconos de apple se le pueden agregar todas las propiedades de los textos como ```.font()``` para el tamaño personalizado y ```.foregroundColor()``` para el color.

## Ejemplo extentido con iconos e images

```swift
VStack {
    HStack {
        Image(systemName: "heart.fill")
            .imageScale(.small)
        Text("Small")
    }
    HStack {
        Image(systemName: "heart.fill")
            .imageScale(.medium)
        Text("Medium")
    }

    HStack {
        Image(systemName: "heart.fill")
            .imageScale(.large)
        Text("Large")
    }
}
```

## Como ponerle el fontWeight a los SF Symbols

```
.font(.system(size: 18, weight: .light, design: .default))
```

## Imagenes personalizadas

Para ello se agrega la imagen como de constumbre a la carpeta Assets y luego se llama con la funcion:

```swift
Image("name of image")
```

<strong>Redimencionar una imagen</strong>

<p>Para ello debemos especificar que la imagen si es posible ser escalada con el metodo, despues de especificar este metodo, podemos aplicar los demas metodos de redimencionamiento: </p>

- .resizable() : Habilita la redimencion
- .edgesIgnoringSafeArea(.PARAMETROS) : Redimenciona una imagen sin tomar en cuenta sus areas seguras, .top, .bottom, etc.
- .scaledToFit() : Redimenciona la imagen respetando el tamaño de la imagen.
- .aspectRatio(contentMode: .fit or fill): Es una manera mas amplica de definir el tipo de redimencionado de una imagen
- .frame() : Define el tamaño del contenedor de la imagen que como en todo caso es el View Parent Class

- .clipped(): (Es Overflow:hidden) Hay veces que cuando aplicamos fill a una imagen esta cubre toda la pantalla, incluso cuando se le pasa un tamaño con frame, para apelear este problema se utiliza este metodo.

## Imagenes Circulares

- .clipShape(Circle()) : Recibe una clase Shape, y se utiliza para crear imagenes ciruculares o de cualquier tipo de forma Shape.

## Opacidad

- .opacity(0.2 Or 1) : Recibe un Float con la dimencion de la opacidad

- .cornerRadius(INT) : Es el border radius.

## Imagen perfecta

```
Image("est-1")
    .resizable()
    .aspectRatio(contentMode: .fill)
    .frame(minWidth: 0, idealWidth:0, maxWidth: .infinity, maxHeight: 200,alignment: .center)
    .clipped()
    .background(Color(red: 230/255, green: 230/255, blue: 230/255))
```

## Opciones

Por ejemplo, esto crea una vista de imagen y tiñe todo de rojo:

```swift
Image("cat")
    .colorMultiply(.red)
```

Puede ajustar la saturación de las vistas a cualquier cantidad, donde 0.0 es completamente gris y 1.0 es su color original:

```swift
Image("boats")
    .saturation(0.3)
```

Incluso puede ajustar dinámicamente el contraste de una vista utilizando el contrast()modificador. Un valor de 0.0 no produce contraste (una imagen gris plana), 1.0 le brinda la imagen original y todo lo que esté por encima de 1.0 agrega contraste.

Entonces, esto reducirá el contraste de la imagen al 50%:

```swift
Image("sunset")
    .contrast(0.5)
```

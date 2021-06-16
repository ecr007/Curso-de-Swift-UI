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

- .clipped(): Hay veces que cuando aplicamos fill a una imagen esta cubre toda la panta, incluso cuando se le pasa un tamaño con frame, para apelear este problema se utiliza este metodo.

## Imagenes Circulares

- .clipShape(Circle()) : Recibe una clase Shape, y se utiliza para crear imagenes ciruculares o de cualquier tipo de forma Shape.

## Opacidad

- .opacity(0.2 Or 1) : Recibe un Float con la dimencion de la imagen

- .cornerRadius(INT) : Es el border radius.

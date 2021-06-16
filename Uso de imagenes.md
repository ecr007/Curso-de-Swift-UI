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


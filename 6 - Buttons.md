## Button

## Maneras de declarar un boton

```
Button(action:{

}){
	text("Titulo del boton")
}

//b

Button(action: CLUSRURE, label: CLUSURE)
```

## Botones con borde

- .border(Color, width: ) : Agrega un borde

Nota: Los modificadores se pueden agregar mas de un vez

```swift
// Button con imagen
	Button(action: {
		// print
	}, label: {
		HStack {
			
			Text("Share")
				.foregroundColor(.black)
				.font(.body)
			
			Image(systemName: "square.and.arrow.up")
				.foregroundColor(.black)
				.font(.body)
			
		}
		.padding(.horizontal, 24)
		.padding(.vertical, 10)
		.background(Color.yellow)
		.border(Color.black)
		.cornerRadius(3.0)
			
	})
```

## Gradiantes y sombras

Ahora se pueden agregar paletas de colores, en la carpeta de assets, solo hay que hacer click derecho y luego -> "New Color Set" y te da la opción de agregar el color y su reverso en dark mode.

<b>Como llamar el color personalizado?</b>

```swift
Color("nombre del color")
```

<strong>Degradados:</strong>
Estos se le aplican al background:

```swift
.background(LinearGradient(gradient: Gradient(colors: [Color("myGreen"),Color("myOrange")]), startPoint: .top, endPoint: .bottom))
```

## Botones de ancho completo

```swift
.frame(maxWidth: .infinity, alignment: .center)
```

## Estilos del boton & Reutilización

<strong>Estilos</strong>

```
struct MyButtonSyle: ButtonStyle{
	func makeBody(configuration: Configuration) -> some View {
		configuration.label
		.frame(minWidth: 0, maxWidth: .infinity,alignment: .center)
		.padding(.vertical, 12)
		.background(LinearGradient(gradient: Gradient(colors: [Color("myGreen"),Color("myOrange")]), startPoint: .top, endPoint: .bottom))
		.cornerRadius(3.0)
		.scaleEffect(configuration.isPressed ? 0.8 : 1)
	}
}

// uso
.buttonStyle(MyButtonSyle())  // atributo de Button()
```

### Como reutilizar un boton con clousure para el action?

```swift
struct ShareButtonView: View {
	var s_action: () -> Void
	var body: some View {
		Button(action: s_action, label: {
			HStack {
				
				Text("Share")
					.foregroundColor(.black)
					.font(.body)
				
				Image(systemName: "square.and.arrow.up")
					.foregroundColor(.black)
					.font(.body)
				
			}
			.padding(.horizontal, 24)
			.padding(.vertical, 10)
			.background(Color.yellow)
			.border(Color.black)
			.cornerRadius(3.0)
			
		})
	}
}

// use

ShareButtonView {
	// Action
}
```

## Animación a botones

```
.scaleEffect(configuration.isPressed ? 0.8 : 1)
```




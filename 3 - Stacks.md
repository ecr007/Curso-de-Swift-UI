# Stacks

Nos sirven para apilar las vistas

VStack: Vertical
HStack: Horizontal
ZStack: El contenido se coloca uno encima del otro

## VStack 

La stack verticales al igual que el resto se les puede pasar parametros de la siguente manera:

```swift
VStack(alignment: .center, spacing: 32, content: {
	Rectangle()
		.frame(width: 300, height: 300)
		.foregroundColor(.red)
	
	Rectangle()
		.frame(width: 100, height: 100)
		.foregroundColor(.yellow)
})
```

## Reutilizacion de Views

Para ello puedo crear Struct que retornen dichos view, haciendo click derecho sobro el View y Seleccionar Extract To Subview, siempre el View sea de tamaño que recomiende su utilización.

<b>Tambien es posible crear el Struct directamente, con parametros para que sea reutilizable:</b>

```swift
struct Plans: View {
	var name:String
	var price:String
	var bg_color:Color
	
	var body: some View {
		VStack{
			Text("Plan " + name)
				.font(.system(.title3, design: .rounded))
				.fontWeight(.bold)
				.foregroundColor(.white)
			
			Text("US$" + price)
				.font(.system(.largeTitle, design: .rounded))
				.fontWeight(.black)
				.foregroundColor(.white)
			
			Text("* Aplican ITBIS")
				.font(.system(.body,design: .rounded))
				.foregroundColor(.white)
		}
		.padding()
		.background(bg_color)
		.cornerRadius(10)
	}
}

// Uso
Plans(name: "Basico", price: "99", bg_color: Color.green)
```

Nota: Como agregar color personalizados ahora: Color(red: 150/255, greed: 50/255, blue: 30/255)

## Opciones con frame

A este metodo se le pasa minWidth, maxWidth, minHeight, maxHeight. Tambien para especificar 100% se utiliza el enumerado .infinity como parametro de uno de estos en frame

## ZStack

Este Stack ofrece mas ventajas que Overlay ya que es mas dinamico a la hora de insertar views.

- .offset(x: 0, y: 0): Esta propiedad se utiliza para mover los contenidos dentro de un ZStack, aunque puede utilizarse en cualquier Stack o View

## Ancho automatico

.frame(minWidth: 0, idealWidth: 0, maxWidth: .infinity,alignment: .center)

## Uso de map

map es un metodo seguro para buscar en opcionales y/o array, ejemplo

```swift
variable.map({

	// Coloco codigo a ejecutar
	$0 // Es el valor 0
	$1 // Es el valor 1
});

icon.map({
	Image(systemName: $0)
		.font(.system(size: CGFloat(40)))
		.foregroundColor(text_color)
});

```
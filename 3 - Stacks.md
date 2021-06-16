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
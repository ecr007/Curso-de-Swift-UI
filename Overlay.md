# Overlay

Es un modificador para colocar View encima de otros Views, en este caso sobre Image pero puede ser encima de cualquier View.

```
.overlay(View)
```

- .alignment: .top or .bottom: Es el segundo parametro de overlay, y define la ubicacion del overlay respecto al padre

```swift
Image("image2")
	.resizable()
	.aspectRatio(contentMode: .fill)
	//.edgesIgnoringSafeArea(.all)
	.frame(width: 300, height: 300, alignment: .trailing)
	.clipped()
	.clipShape(Circle())
	//.opacity(0.8)
	.overlay(
		
		Text("Battle in the flight !!!")
			.font(.title2)
			.foregroundColor(.white)
			.shadow(color: .black, radius: 1, x: 0, y: 0),
		alignment: .topTrailing
			
		
	
	)
```

Nota: Dentro de Overlay podemos colocar Shape, para oscurecer la imagen.

<strong>Como agregar un borde con overlay</strong>

Para esto se utiliza el Shape: ReundedRectangle(cordedRadius: 3):

Sus propiedades son:

- .stroke: A esta propiedad se lo puede definir el color, la opacidad y el lineWidth

```
.overlay(
	RoundedRectangle(cornerRadius: 3)
		.stroke(Color.gray.opacity(0.5), lineWidth: 1)
		
)
```


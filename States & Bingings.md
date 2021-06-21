# States And Bindings (Muy Importante)

Son acciones que se dan dependiendo la interacción que se este dando en el APP, por ejemplo si tenemos un boton de play, lo podemos cambiar por el boton de stop si el usuario lo ha precionado.

Nota: Se recomienda que los States sean declarados como variables privadas.
Nota: Sin el @State Swift no detecta su cambio!!!

```swift
@State private var isPlaying:Bool = false

// Completo

@State private var isPlaying:Bool = false
	
var body: some View {
	Button(action: {
		self.isPlaying.toggle()
	}, label: {
		Image(systemName: isPlaying ? "stop.circle.fill" : "play.circle.fill")
			.font(.system(size: 100))
			.foregroundColor(isPlaying ? .red : .blue)
	})
}
```

## Bindings

Se utiliza para que a la hora de reusar views podamos usar los @State dentro de dicho Struct.

Los @State se deben pasar como punteros a los Struct $NombreVariable

```swift
struct ContentView: View {
	
	@State private var count:Int = 0;
	@State private var count2:Int = 0;
	@State private var count3:Int = 0;
	
    var body: some View {
		VStack(alignment: .center, spacing: 16, content: {
			Text("\(count+count2+count3)")
				.font(.system(size: 50))
				.foregroundColor(.black)
			
			MyBtn(myCount: $count, bg_color: Color.red)
			MyBtn(myCount: $count2, bg_color: Color.blue)
			MyBtn(myCount: $count3, bg_color: .orange)
		})
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct MyBtn: View {
	@Binding var myCount:Int;
	
	var bg_color:Color;
	var body: some View {
		Button(action: {
			myCount += 1
		}, label: {
			Text("\(myCount)")
				.font(.system(size: 50))
				.foregroundColor(.white)
				
				.frame(width: 100, height: 100, alignment: .center)
				.background(bg_color)
				.clipShape(Circle())
		})
	}
}
```
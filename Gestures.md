# Gestures

## Agrega un toque simultaneo a otra sección, por ejemplo a los NavigationLink

```swift
.simultaneousGesture(TapGesture().onEnded{
    hideKeyBoard()
})

NavigationLink(
	destination: ForgotPassView(email: ""),
	isActive: self.$hideKeyboard,
	label: {
	    Text("No worries, click here to reset your password.")
	        .font(.body)
	        .foregroundColor(.blue)
	}).simultaneousGesture(TapGesture().onEnded{
	    hideKeyBoard()
	})
```

## .onTapGesture

Todas las vistas tienen este modificador para que sea posible 

## On Press

```swift
    @GestureState private var tap:Bool = false
    @State private var press:Bool = false

	LongPressGesture().updating($tap){ currentState, gestureState, transaction in
	    gestureState = currentState
	    //print("Tap: Presionado")
	}
	.onEnded{ value in
	    press.toggle()

	    //print("Tap: Termino")


	}
	.onChanged{ _ in
	    id = report.id


	}
```

# Modales y Alertas

Estilo de presentación Sheet: Tarjetad de presentación

## Modales

Supongamos que tenemos una vista de detalle "DetailView" para mostrar dicha vista tenemos que crear dos variables @State

* No deben ser provadas

```
@State var showModal:Bool = false
@State var userSelect:User? // Instancia del usuario para pasarle al detalle
```

Ya luego en el List debemos usarar la propiedad .sheet para presentar el modal, recibe un Binding de @State (showModal) para encargarse de cambiar la variable (Asignar false) y un Clousure para mostrar el View en el modal

```swift
.sheet(isPresented: self.$showModal){
	if let user = self.userSelect{
		DetailView(user: user)
	}
}
```

<strong>A la fila de la lista se le agrega un onTabGesture para capturar el click y el this</strong>

```
.onTabGesture{
	// Le decimos que muestre el modal
	self.showModalView = true

	// Asignamos el this tocado de la iteración
	self.userSelect = this
}

```

## Implementar un modal con Optional Binding

Solo basta con declarar @State la variable que le pasaremos al detail

```
@State var user:User?

// Luego en el onTabGesture
self.user = this
```

<strong>Cambiamos el sheet</strong>

```
// le pasamos el binding 
.sheet(item: self.$user){ user in
	// Mostramos la vista
	DetailView(user: user)
}

```

## Cerrar un modal via boton

En el detailView debemos declarar la variable @Environment esta se declara dentro del struct principal

```
@Environment(\.presentationMode) var presentationMode

// Luego para ocultar via boton:

Button(action: {
	self.presentationMode.wrappedValue.dissmiss()
}, Label: {
	// Text
})

## Alertas en SWIFT UI

Para ello debemos declarar un @State quien es que se encargara de comunicar si se muestra o no una alerta:

```swift
@State var showAlert:Bool = false

// En el boton cambiamos el estado
Button(action: {
	showAlert = true
})

// Gestionamos la alerta, esta debe ir al final del scroll o al final en general
Alert(....)

.alert(isPresented: self.$showAlter){
	Alert(...)
}
```


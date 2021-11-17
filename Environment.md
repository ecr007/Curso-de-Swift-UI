# Todo sobre Environment

Son entornos donde se lanzan vistas, osea el modo de presentación. Estas variables identifican a las vistas

## Ocultar un modal con una variable Environment

```swift

	@Environment(\.presentationMode) var myView

	// Para ocultar el modal, ejecutamos en un action
	self.myView.wrappedValue.dismiss()

	// Tamien da para atras a los navigationView child

```

Nota: El environment es presentationMode | Importante


## Listado de Environment Vars

-- @Environment(\.sizeCategory) var sizeCategory : Contiene un enum con el tamaño de fuente configurado por el usuario.

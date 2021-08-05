# Arrays

<strong>Como eliminar elementos de un array dependiendo de un valor en especifico?</strong>

```swift

myArrayObject.removeAll{ object
	return object.age == 21

	/// Alternativa
	$0.age == 21
}
// Elimina todos los objetos cuya edad es 21

```
# TextFields, SecureFields, Dividers

Se debe crear variables @State para llevar los values de los TextField & SecureField

## TextField

```swift
TextField("PlaceHolder",$bindingState)
	.propiedades

```


## SecureFeld

```swift
SecureField("PlaceHolder",$bindingStatePass)
	.properties
```

## Estilo por defecto

```swift
 .textFieldStyle(RoundedBorderTextFieldStyle())
```
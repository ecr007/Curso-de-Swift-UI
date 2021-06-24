# Navegación entre vistas

```swift
NavigationView{
	// Contenido


}.navigationViewStyle(StackNavigationViewStyle())
```
<strong>Propiedades</strong>

- .navigationBarTitle("Titulo de la navegación")
- .navigationViewStyle(StackNavigationViewStyle()) Define el mismo estilo de navegación para Ipad y Iphone
## Desplazarnos de una vista a otra

Para ello usamos la propiedad NavigationLink{destination: StructVista Instance} |

Esta debe estar dentro de un NavigationView y arropar el contenido del List para que de esta manera la lista sea clickqueable.

Ej:

```swift
NavigationView{
	List(arrays){ item

		NavigationLink(destination: ForgotPassView(),
            label: {
               	Text("No worries, click here to reset your password.")
                .font(.body)
                .foregroundColor(.blue)
        })
	}
	.navigationBarTitle("Titulo de la seccion");
}
```
## Personalizar la barra de navegación

Tenemos diferentes tipos de NavigationView por default:

- Default
- Compacta
- Scroll

Se pueden personalizar las 3 independientemente.

## Realizar una acción cuando se toca un NavigationLink

```swift
// part 1
@State private var isPushed = false

// part 2
NavigationLink(destination: EmptyView(), isActive: $isPushed, label: {
    Text("")
})

// part 3
.onChange(of: isPushed) { (newValue) in
    if newValue {
        // do what you want
    }
}
```

## Ejecutar un Navigation Link sin necesidad de tocar

```swift
	VStack{
		...
	}
	.navigate(to: MainPageView(), when: $willMoveToNextScreen)
```

## Ejecutar Codigo Swift en un View de UI y Modificar la aperiencia del NavigationView

```swift
// Agregamos un constructor al struct, antes del body

init(){
	let appeareance = UINavigationBarAppearence()
	
}



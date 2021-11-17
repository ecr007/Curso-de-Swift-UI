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
	NavigationLink(destination: NewView(), isActive: $action) {
        EmptyView() // Vista que no contiene ningun contenido
    }
```

## Ejecutar Codigo Swift en un View de UI y Modificar la aperiencia del NavigationView

```swift
// Agregamos un constructor al struct, antes del body

init(){
	let appeareance = UINavigationBarAppearence()

	UINavigationBar.appearance().backgroundColor = .orange
	UINavigationBar.appearance().tintColor = .green
	UINavigationBar.appearance().barTintColor = .yellow
	UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.red]
	UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.red]
	
}
```
## Cambiar aspaecto

You can observe the bounds of the navigationBar and change the title using a check on the height of the navigationBar.

1. for Small Title, height of navigationBar = 44

2. for Large Title, height of navigationBar > 44

```

class VC: UIViewController {
    var observer: NSKeyValueObservation?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.observer = self.navigationController?.navigationBar.observe(\.bounds, options: [.new], changeHandler: { (navigationBar, changes) in
            if let height = changes.newValue?.height {
                if height > 44.0 {
                    //Large Title
                    self.title = "Large Title"
                } else {
                    //Small Title
                    self.title = "Small Title"
                }
            }
        })
    }
}
```


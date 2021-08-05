## ObservableObject

Importante: Se de importar Combine en la clase que hereda de ObservableObject

Se utiliza para observar cambios y transmitirlo a la vista hijas instanciando dicha clase que es Observable.

Como creo la clase que sera reaccionaria y sus cambios se aplicaran donde quiera que se alla instanciado.

```swift
final class UsuariosDestacados: ObservableObject{
    @Published var user:[User] = []
}
```

El ```@Published``` es el ```@State``` Lo que le suceda a dicha propiedad es transmitido automaticamente,
donde quiera que la clase este instanciada.

## La primera vez

La primera vez que una clase que herada de ObservableObject es instanciada se debe utilizar la opción
```@StateObject``` por ejemplo:

```swift
@StateObject private var objUsrDestacados = UsuariosDestacados()
// Ya con esto tenemos control como de costumbre de todas las opciones de la clase.
```

## @ObservedObject

Se utiliza para declarar variables del tipo de una clase observable (UsuariosDestacados) ,
la limitante es que se debe llenar las instancia desde una vista padre a una vista hija, por ejemplo:

<strong>Vista padre</strong>

```swift

struct VistaHija:View{
    @ObservedObject var instancia:UsuariosDestacados

    var body: some View{
        Text(instancia.atributoDeLaClaseOmetodo)
    }
}


struct VistaPadre: View{

    @StateObject var objUsrDestacados = UsuariosDestacados()

    var body: some View{
        VistaHija(instancia: objUsrDestacados)
    }
}

```

## @EnvironmentObject 

Son variables de entorno que se declaran previamente con el modificador ```.environmentObject(instanciaDeStateObject)```
y son visibles desde todos lados.

Por ejemplo: Si tengo mi clase padre donde se declara por primera vez la instancia a ser reutilizada:

```swift
struct vistaPadre: View{

    @StateObject var users = UsuariosDestacados()

    var body: some View{
        VStack{
            VistaHija() // Ya no es necesario pasar la instancia
        }
        .environmentObject(users)
    }
}

struct vistaHija: View{
    // Ya tengo acceso a mi instancia de entorno
    @EnvironmentObject var users:UsuariosDestacados

    var body: some View{
        Text("El numero de usuarios destacados es \(users.count)")
    }
}

```


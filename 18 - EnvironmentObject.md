## Environment Object

Son propiedades que son accesibles desde todas las vistas

Los observadores deben ser hijos de ObservableObject

<strong>Palabras claves: </strong>

- EnvironmentObject: Se subscribe a los cambios de un ObservableObject
- ObservableObject: Los cambios de la entidad son notificados a la propiedas @Published
- @Published: 

Se debe import Combine para usar EnvironmentObject

```
import Combine
```

Ej:

<img src="EnvironmentObject.png" alt="">

<strong>Variable EnvironmentObject</strong>

Esta debe ser una propiedad de la clase Observer (ObservableObject)

```
@EnvironmentObject var user: UserObserver

```

<strong>2 - A la vista dentro del preview, se le debe inyectar el observador como dependencia</strong>

<img src="dependencia.png" alt="">

Nota: donde quiera que se haga uso del EnvironmentObject, esta variable debe ser inyectada como dependencia.


## Un ejemplo RANDMOM

```swift
struct LoginView: View {
    var body: some View {
        ...
    }
}

struct NextView: View {
    var body: some View {
        ...
    }
}

// Your starting view
struct ContentView: View {

    @EnvironmentObject var userAuth: UserAuth 

    var body: some View {
        if !userAuth.isLoggedin {
            LoginView()
        } else {
            NextView()
        }

    }
}

/*Debe manejar su proceso de inicio de sesión en su modelo de
datos y usar enlaces como @EnvironmentObjectpara pasar isLoggedina su vista*/

import Combine

class UserAuth: ObservableObject {

  let didChange = PassthroughSubject<UserAuth,Never>()

  // required to conform to protocol 'ObservableObject' 
  let willChange = PassthroughSubject<UserAuth,Never>()

  func login() {
    // login request... on success:
    self.isLoggedin = true
  }

  var isLoggedin = false {
    didSet {
      didChange.send(self)
    }

    // willSet {
    //       willChange.send(self)
    // }
  }
}

```

## Detectar el cambio de pantalla con environmentObject

```swift
final class OrientationInfo: ObservableObject {
    enum Orientation {
        case portrait
        case landscape
    }
    
    @Published var orientation: Orientation
    
    private var _observer: NSObjectProtocol?
    
    init() {
        // fairly arbitrary starting value for 'flat' orientations
        if UIDevice.current.orientation.isLandscape {
            self.orientation = .landscape
        }
        else {
            self.orientation = .portrait
        }
        
        // unowned self because we unregister before self becomes invalid
        _observer = NotificationCenter.default.addObserver(forName: UIDevice.orientationDidChangeNotification, object: nil, queue: nil) { [unowned self] note in
            guard let device = note.object as? UIDevice else {
                return
            }
            if device.orientation.isPortrait {
                self.orientation = .portrait
            }
            else if device.orientation.isLandscape {
                self.orientation = .landscape
            }
        }
    }
    
    deinit {
        if let observer = _observer {
            NotificationCenter.default.removeObserver(observer)
        }
    }
}

struct ContentView: View {
    @EnvironmentObject var orientationInfo: OrientationInfo
    
    var body: some View {
        Text("Orientation is '\(orientationInfo.orientation == .portrait ? "portrait" : "landscape")'")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(OrientationInfo())
    }
}

```
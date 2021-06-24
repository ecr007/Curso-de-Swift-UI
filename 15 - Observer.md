# Observer

** Pasar de una vista a otra **

```swift
class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    let loginRootViewNotification = 
         NSNotification.Name("loginRootViewNotification") // declare notification
    private var observer: Any?               // ... and observer


    ...
    // in place of window creation ...
        let window = UIWindow(windowScene: windowScene)
        window.rootViewController = UIHostingController(rootView: contentView)

        observer = NotificationCenter.default.addObserver(forName: loginRootViewNotification, object: nil, queue: nil, using: { _ in
            let anotherRootView = AnotherRootView() 
            // create another view on notification and replace
            window.rootViewController = UIHostingController(rootView: anotherRootView)
        })
```

## Action

```swift
Button(action: { 
// launch new root view here 
   NotificationCenter.default.post(loginRootViewNotification)
}, label: {Text("Login")}).padding()
```
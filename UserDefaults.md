# UserDefaults

## Uso de @AppStorage

Se utiliza para estar pendiente de modificaciones en UserDefaults

```swift
struct ContentView: View {
    @AppStorage("username") var username: String = "Anonymous"

    var body: some View {
        VStack {
            Text("Welcome, \(username)!")

            Button("Log in") {
                username = "@twostraws"
            }
        }
    }
}
```
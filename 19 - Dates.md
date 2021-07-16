# Date

Manejo de fecha en swift

```swift

//  Dates
let date = Date()
let calendar = Calendar.current

//vYear = calendar.component(.year, from: date)
//let month = calendar.component(.month, from: date)
//let day = calendar.component(.day, from: date)

calendar.component(.month, from: date)
calendar.component(.year, from: date)
calendar.component(.day, from: date)
```
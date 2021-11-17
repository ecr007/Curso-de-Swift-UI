# List

Este View biene a remplazar el TableView, es lo mismo pero mas sencillo. Se puede utilizar de diferentes maneras Sin, ForEach, Con ForEach y Como ForEach !!!

Dentro de una fila de la lista los elementos se ordenan vertical, por cada iteración.

<strong>* Una linea es una fila</strong>


```swift
List{
	Text("Texto 1")
	Text("Texto 1")
	Text("Texto 1")
}
```

<strong>Con ForEach</strong>

```swift
List{
	ForEach(1...5, id: \.self){ key in
		Text("Fila No. \(key)")
	}
}
```

Nota: Al ForEach Se le debe identificar.

<strong>Como ForEach</strong>

```swift
List(1...5, id: \.self){ key in
	Text("Fila No. \(key)")
}
```

## Propiedades de Array

- .indices: Es una propiedad con la que cuentan los Array y nos retorna el index o posicion.

```swift
ForEach(visitClass.indices){ i in
    
    BtnFilterVidiew(current: $currentVisitClass[i], label: visitClass[i].abbr){
        clearVisitClass = true
        currentVisitClass[i].toggle()
    }
}
```

<strong>Nota: Si se desea una imagen redonda el corderRadius debe ser la mitad de tamaño del frame</strong>

## Uso de Struct Con List

Cuando despleguemos información en una lista buscando en una coleccion dicha colección debe tener un identificador ya que el self no funcionara. Por ejemplo

```swift
struct User{
	var name:String;
	var age:Int;
}

var users = [User]()

users.add(User("Ever",31))
users.add(User("Cuevas",31))
users.add(User("Rodriguez",31))

List(users, id: \.name){ user in
	user.name .... etc
}
```

## Protocolo Identifiable

A la hora de crear una lista si el struct no cuenta con un ID unico la lista va a dar error por ello se recomienda utilizar el protocolo ```Identifiable``` y con esto la lista ya no necesita el parametro ID:

<strong>Nota: el struct debe contar con un atributo id = UUID()</strong>

```swift
struct User: Identifiable{
	var id = UUID()
	var name: String
	var age: Int
}

List(users){ user in
	// Ready
}
```

## Encabezados usando Lista

```swift
List {
    Section.init {
        Text("Header")
    }
    ForEach(numbers, id: \.self) {
        Text("\($0)")
    }
    .onDelete { index in
        // delete item
    }
}
```

## Lista con PULL REQUEST

```swift
List(mailbox.conversations) {
    ConversationCell($0)
}
.refreshable {
    await mailbox.fetch()
}
```

## Como Quitar el BG de una lista

// Clear Bg
UITableView.appearance().backgroundColor = .clear<br>
UITableViewCell.appearance().backgroundColor = .clear

A los hijos le aplicamos
.listRowBackground(Color.clear)


Nota: También TENGA EN CUENTA QUE si desea usar un en List en lugar de ScrollView, debe agregar
.listRowInsets(EdgeInsets())a ZStack para deshacerse del espacio en blanco adicional.

## Estilos

Estos estilos se colocan al terminal }

- .listStyle(GroupedListStyle())
- .listStyle(PlainListStyle())
- .listRowSeparator(.hidden) // Solo IOS 15 se le coloca a la fila
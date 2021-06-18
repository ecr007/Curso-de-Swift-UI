# Scrolls

LA PROPIEDAD ES!!!

```ScrollView```

Esta remplaza el VStack, y por alte de "magia" tenemos un lista con scroll :) 

```
ScrollView{
	Contenido
}
```

Carrousel o Horizontal Scroll

Nota: Siempre colocar los elementos en numeros que no sean multiplos de la pantalla, eje: 

- 300
- 600
- 900

Esto para que se vea que es un carrousel (Ejemplo completo):

<strong>Nota: Es importante que los View tengan un ancho definido</strong>

```
NavigationView{
	ScrollView(.horizontal){
		
		HStack{
			CardSingleView(title: "Build Your First iPhone App - iOS 14 Apps Using Swift 5", img: "est-1", author: "Ever Cuevas")
				.frame(width: 350)
		
			CardSingleView(title: "Build Your First iPhone App - iOS 14 Apps Using Swift 5", img: "est-2", author: "Beatriz de Cuevas").frame(width: 350)
		
			CardSingleView(title: "Build Your First iPhone App - iOS 14 Apps Using Swift 5", img: "est-3", author: "Beatriz de Cuevas").frame(width: 350)
		
			CardSingleView(title: "Build Your First iPhone App - iOS 14 Apps Using Swift 5", img: "est-4", author: "Beatriz de Cuevas").frame(width: 350)
		}
		
		Spacer()
	}
	.navigationTitle("EverSOFT")
	.navigationBarTitleDisplayMode(.large)
	
}
# Navegación entre vistas

```
NavigationView{
	// Contenido


}

<strong>Propiedades</strong>

- .navigationBarTitle("Titulo de la navegación")

## Desplazarnos de una vista a otra

Para ello usamos la propiedad NavigationLink{destination: StructVista Instance} | Esta debe estar dentro de un NavigationView y arropar el contenido del List para que de esta manera la lista sea clickqueable.

Ej:

```swift
NavigationView{
	List(arrays){ item

		NavigationLink{
			// Contenido vstack etc
		}

	}
	.navigationBarTitle("Titulo de la seccion");
}

## Personalizar la barra de navegación

Tenemos diferentes tipos de NavigationView por default:

- Default
- Compacta
- Scroll

Se pueden personalizar las 3 independientemente.
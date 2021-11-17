# ProgressView

Lo que antes conociamos como ActivityIdicator Ahora llamamos ProgressView, y puede funcionar
como loading giratorio o barra de progreso.

## Loading Giratorio

Mostrar un loading con un texto encima

```swift
ProgressView("Processing Request...")

```

## Mostrar una barra de progreso

```swift
ProgressView("Descarga", value: INT de comienzo (@State), total: INT de hasta donde llegara)
```
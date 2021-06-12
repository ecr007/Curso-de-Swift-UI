//
//  ContentView.swift
//  Shared
//
//  Created by Ever Cuevas on 1/6/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center, content: {
            Text("The first UI APP")
                .fontWeight(.bold)
                .font(.largeTitle)
                .foregroundColor(.blue)
            
            Text("Nos centraremos en entender el diseño e implementación de aplicaciones de la vida real, juegos, clones...  y mucho más, ya que aprenderemos todos los detalles a fondo de  Swift 5.2 y del desarrollo de apps para iOS a través de proyectos, retos, ejercicios y tareas a la vez que introducimos  Swift UI, la nueva tecnología de creación de aplicaciones usando el framework más avanzado de Apple: Xcode 11.")
                .font(.body)
                .multilineTextAlignment(.trailing)
                .lineLimit(5)
                .truncationMode(.tail)
                .shadow(color: .red, radius: 1, x: 0, y: 0)
                .rotation3DEffect(
                    .degrees(50),
                    axis: (x: 1.0, y: 0.0, z: 0.0)
                )
                .lineSpacing(20)
                .padding()
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


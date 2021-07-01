//
//  ContentView.swift
//  EnvironmentObject
//
//  Created by Ever Cuevas on 27/6/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var msj:String = ""
    @State var age:Int = 0
    
    var body: some View {
        VStack{
            Text("Discoteka")
                .font(.title)
                
            Text(msj)
            
            
        }
        .onAppear(perform: {
            
            self.age = 2
            
            hola(edad: self.$age) {
                msj = "Puede pasar"
            } onError: {
                msj = "Es menor de edad"
            }
        })
        
    }
    
    func hola(edad: Binding<Int>, onSuccess: () -> Void, onError: () -> Void){
        
        if edad.wrappedValue >= 18 {
            onSuccess()
        }
        else{
            onError()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

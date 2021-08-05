//
//  ContentView.swift
//  TestScroll
//
//  Created by Ever Cuevas on 19/7/21.
//

import SwiftUI

struct ContentView: View {
    
    /*init() {
        UINavigationBar.appearance().backgroundColor = .red
        //UINavigationBar.appearance().isTranslucent = false
    }*/
    
    var body: some View {
        NavigationView{
            ZStack{
                Color.red.ignoresSafeArea()
                ScrollView{
                    ForEach(0..<100, id: \.self){ i in
                        Text("Fila no. \(i+1)")
                            .frame(minWidth: 0, idealWidth: 0, maxWidth: .infinity, alignment: .leading)
                            
                    }
                }
            }
            .navigationTitle("Testing")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

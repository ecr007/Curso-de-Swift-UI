//
//  ContentView.swift
//  standard
//
//  Created by Ever Cuevas on 2/6/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "heart.fill")
                    .imageScale(.small)
                Text("Small")
            }
            HStack {
                Image(systemName: "heart.fill")
                    .imageScale(.medium)
                Text("Medium")
            }

            HStack {
                Image(systemName: "chart.bar.fill")
                    .imageScale(.large)
                Text("Large")
                    .font(.title)
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

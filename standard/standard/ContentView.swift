//
//  ContentView.swift
//  standard
//
//  Created by Ever Cuevas on 2/6/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
			Image("image2")
				.resizable()
				.aspectRatio(contentMode: .fill)
				//.edgesIgnoringSafeArea(.all)
				.frame(width: 300, height: 300, alignment: .trailing)
				.clipped()
				.clipShape(Circle())
				//.opacity(0.8)
				.overlay(
					
					Text("Battle in the flight !!!")
						.font(.title2)
						.foregroundColor(.white)
						.shadow(color: .black, radius: 1, x: 0, y: 0),
					alignment: .topTrailing
						
					
				
				)
		
			
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

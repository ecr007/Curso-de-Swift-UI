//
//  ButtonsView.swift
//  standard
//
//  Created by Ever Cuevas on 18/6/21.
//

import SwiftUI

struct ButtonsView: View {
    var body: some View {
		VStack(alignment: .center, spacing: 16, content:{
			
			// Button con imagen
			ShareButtonView {
				print("Mi Boton de Share Papa !!!")
			}
			
			ShareButtonView {
				print("Mi Boton 2 de Share Papa !!!")
			}
			
			Button(action: {
				// print
			}, label: {
				HStack {
					
					Text("Share")
						.foregroundColor(.white)
						.font(.body)
					
					Image(systemName: "square.and.arrow.up")
						.font(.system(size: 18, weight: .light, design: .default))
						.foregroundColor(.white)
					
				}
				
				
					
			})
			.buttonStyle(MyButtonSyle())
			.padding(.horizontal)
			
			
		})
    }
}

struct ButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsView()
    }
}

struct MyButtonSyle: ButtonStyle{
	func makeBody(configuration: Configuration) -> some View {
		configuration.label
		.frame(minWidth: 0, maxWidth: .infinity,alignment: .center)
		.padding(.vertical, 12)
		.background(LinearGradient(gradient: Gradient(colors: [Color("myGreen"),Color("myOrange")]), startPoint: .top, endPoint: .bottom))
		.cornerRadius(3.0)
		.scaleEffect(configuration.isPressed ? 0.8 : 1)
	}
}

struct ShareButtonView: View {
	var s_action: () -> Void
	var body: some View {
		Button(action: s_action, label: {
			HStack {
				
				Text("Share")
					.foregroundColor(.black)
					.font(.body)
				
				Image(systemName: "square.and.arrow.up")
					.foregroundColor(.black)
					.font(.body)
				
			}
			.padding(.horizontal, 24)
			.padding(.vertical, 10)
			.background(Color.yellow)
			.border(Color.black)
			.cornerRadius(3.0)
		})

	}
}

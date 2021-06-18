//
//  Stacks.swift
//  standard
//
//  Created by Ever Cuevas on 16/6/21.
//

import SwiftUI

struct Stacks: View {
	
	var body: some View {
		VStack(alignment: .center, spacing: 24, content: {
			HeaderView(weight: .bold)
			
			VStack(alignment: .center, spacing: 32, content: {
				
			
				HStack {
					PlansView(name: "Basico", price: "99",text_color: Color.white, bg_color: Color.green)
						
					
					ZStack {
						PlansView(name: "Gold", price: "180", text_color: Color.black, bg_color: Color(red: 230/255, green: 230/255, blue: 230/255))
						
						Text("New")
							.font(.caption)
							.padding(.vertical,4)
							.padding(.horizontal,16)
							.foregroundColor(.white)
							.background(Color.red)
							.offset(x: 0, y: -55)
					}
					
					
				}
				
				ZStack {
					PlansView(name: "Premium", price: "350",text_color: Color.black, bg_color: Color.yellow, icon: "lightbulb")
						
					
					Text("Esta es una oferta")
						.font(.caption)
						.padding(.vertical,4)
						.padding(.horizontal,16)
						.foregroundColor(.white)
						.background(Color.red)
						.offset(x: 0, y: -80)
				}
		
			}).padding(.horizontal)
			
			Spacer()
		})
		
		
    }
}

struct Stacks_Previews: PreviewProvider {
    static var previews: some View {
        Stacks()
    }
}

struct HeaderView: View{
	
	var weight:Font.Weight
	
	var body: some View{
		VStack(alignment: .center, spacing: nil, content: {
			Text("Tarea Stacks !!!")
				.font(.system(.title, design: .rounded))
				.fontWeight(weight)
			
			Text("Planes Disponibles:")
				.font(.system(.title2, design: .rounded))
				.fontWeight(weight)
			
			
		})
	}
}

struct PlansView: View {
	var name:String
	var price:String
	var text_color:Color
	var bg_color:Color
	var icon:String?
	
	var body: some View {
		VStack{
			
			icon.map({
				Image(systemName: $0)
					.font(.system(size: CGFloat(40)))
					.foregroundColor(text_color)
			});
			
			Text("Plan " + name)
				.font(.system(.title3, design: .rounded))
				.fontWeight(.bold)
				.foregroundColor(text_color)
			
			Text("US$" + price)
				.font(.system(.title, design: .rounded))
				.fontWeight(.black)
				.foregroundColor(text_color)
			
			Text("* Aplican ITBIS")
				.font(.system(.body,design: .rounded))
				.foregroundColor(text_color)
		}
		
		.frame(minWidth: 0, idealWidth: 0, maxWidth: .infinity,alignment: .center)
		.padding()
		.background(bg_color)
		.cornerRadius(10)
	}
}

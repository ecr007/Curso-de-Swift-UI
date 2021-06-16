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
			header(h: .bold)
			
			HStack {
				Plans(name: "Basico", price: "99", bg_color: Color.green)
				
				Plans(name: "Gold", price: "180", bg_color: Color.gray)
				
				
			}
		})
    }
}

struct Stacks_Previews: PreviewProvider {
    static var previews: some View {
        Stacks()
    }
}

public func header(h:Font.Weight) -> VStack<TupleView<(Text, Text)>> {
	return VStack(alignment: .center, spacing: nil, content: {
		Text("EverSoft")
			.font(.system(.title2, design: .rounded))
			.fontWeight(h)
		
		Text("Planes Disponibles:")
			.font(.system(.title2, design: .rounded))
			.fontWeight(h)
		
		
	})
}



struct Plans: View {
	var name:String
	var price:String
	var bg_color:Color
	
	var body: some View {
		VStack{
			Text("Plan " + name)
				.font(.system(.title3, design: .rounded))
				.fontWeight(.bold)
				.foregroundColor(.white)
			
			Text("US$" + price)
				.font(.system(.largeTitle, design: .rounded))
				.fontWeight(.black)
				.foregroundColor(.white)
			
			Text("* Aplican ITBIS")
				.font(.system(.body,design: .rounded))
				.foregroundColor(.white)
		}
		.padding()
		.background(bg_color)
		.cornerRadius(10)
	}
}

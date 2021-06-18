//
//  CardView.swift
//  standard
//
//  Created by Ever Cuevas on 16/6/21.
//

import SwiftUI

struct CardView: View {
    var body: some View {
		NavigationView{
			
			VStack {
				CardSingleView(title: "Build Your First iPhone App - iOS 14 Apps Using Swift 5", img: "est-1", author: "Ever Cuevas")
				
				CardSingleView(title: "Build Your First iPhone App - iOS 14 Apps Using Swift 5", img: "est-4", author: "Beatriz de Cuevas")
				
				Spacer()
			}
			.navigationTitle("Cursos Gratis")
			.navigationBarTitleDisplayMode(.large)
			
		}
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}

struct CardSingleView: View {
	
	var title:String
	var img:String
	var author:String
	
	var body: some View {
		VStack(alignment: .leading, spacing: nil, content: {
			
			Image(img)
				.resizable()
				.aspectRatio(contentMode: .fill)
				.frame(minWidth: 0, idealWidth:0, maxWidth: .infinity, maxHeight: 200,alignment: .center)
				.clipped()
				.background(Color(red: 230/255, green: 230/255, blue: 230/255))
				
			
			
			VStack(alignment: .leading, spacing: 8, content: {
				Text(title)
					.font(.title2)
					.fontWeight(.bold)
					.frame(minWidth: 0, idealWidth: 0, maxWidth: .infinity, alignment: .leading)
				
				Text(author)
				.font(.body)
				.foregroundColor(Color(red:150/255,green:150/255,blue:150/255))
				.frame(minWidth: 0, idealWidth: 0, maxWidth: .infinity, alignment: .leading)
				
			})
		})
		.padding()
	}
}

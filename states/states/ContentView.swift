//
//  ContentView.swift
//  states
//
//  Created by Ever Cuevas on 20/6/21.
//

import SwiftUI

struct ContentView: View {
	
	@State private var count:Int = 0;
	@State private var count2:Int = 0;
	@State private var count3:Int = 0;
	
    var body: some View {
		VStack(alignment: .center, spacing: 16, content: {
			Text("\(count+count2+count3)")
				.font(.system(size: 50))
				.foregroundColor(.black)
			
			MyBtn(myCount: $count, bg_color: Color.red)
			MyBtn(myCount: $count2, bg_color: Color.blue)
			MyBtn(myCount: $count3, bg_color: .orange)
		})
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct MyBtn: View {
	@Binding var myCount:Int;
	
	var bg_color:Color;
	var body: some View {
		Button(action: {
			myCount += 1
		}, label: {
			Text("\(myCount)")
				.font(.system(size: 50))
				.foregroundColor(.white)
				
				.frame(width: 100, height: 100, alignment: .center)
				.background(bg_color)
				.clipShape(Circle())
		})
	}
}

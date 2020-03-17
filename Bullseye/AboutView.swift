//
//  AboutView.swift
//  Bullseye
//
//  Created by David Allen on 3/17/20.
//  Copyright © 2020 David Allen. All rights reserved.
//

import SwiftUI

struct AboutView: View {
    struct HeadingStyle: ViewModifier {
        func body(content: Content) -> some View {
            return content
                .font(Font.custom("Arial Rounded MT Bold", size: 30))
                .foregroundColor(Color.black)
                .padding(.top, 20)
                .padding(.bottom, 20)
        }
    }
    
    struct TextStyle: ViewModifier {
        func body(content: Content) -> some View {
            return content
            .font(Font.custom("Arial Rounded MT Bold", size: 16))
            .foregroundColor(Color.black)
            .padding([.leading,.trailing], 60)
            .padding(.bottom, 20)
        }
    }
    
    var backgroundColor = Color(red: 255.0/255.0, green: 214.0/255.0, blue: 179.0/255.0)
    
    var body: some View {
        Group {
            VStack {
                Text("🎯 Bullseye 🎯").modifier(HeadingStyle()).lineLimit(nil)
                Text("This is Bullseye, the game where you can win points and earn fame by dragging a slider").modifier(TextStyle()).lineLimit(nil)
                Text("Your goal is to place the slider as close as possbile to the target value. The closer you are, the more points you score").modifier(TextStyle())
                Text("Enjoy!").modifier(TextStyle())
            }
            .navigationBarTitle("About Bullseye")
            .background(backgroundColor)
        }
    .background(Image("Background"))
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView().previewLayout(.fixed(width: 896, height: 414))
    }
}

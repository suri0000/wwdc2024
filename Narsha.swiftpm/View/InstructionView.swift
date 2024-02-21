//
//  SwiftUIView.swift
//
//
//  Created by 예슬 on 2/22/24.
//

import SwiftUI

struct InstructionView: View {
  var body: some View {
    ZStack {
      Color(hex: 0xE4DFFF).ignoresSafeArea()
      
      Rectangle()
        .frame(width: UIWidth * 0.85, height: UIHeight * 0.6)
        .foregroundColor(.white)
        .cornerRadius(10)
        .overlay {
          VStack {
            VStack(alignment: .leading) {
              Text("Hello! 👋")
                .font(.custom("KoddiUDOnGothic-Bold", size: 24))
                .padding(EdgeInsets(top: 44, leading: 0, bottom: 20, trailing: 0))
              
              Text("""
In this app, you can learn the meaning of icons.
I hope that learning the icons will help you use your cell phone. If you don't know how to use a cell phone before learning the icons, use the tip app to learn basic gestures. There are things I want you to think about while learning about icons.
""")
              .font(.custom("KoddiUDOnGothic-Regular", size: 20))
              .minimumScaleFactor(0.9)
              
            }
            .padding(.horizontal, 30)
            
            
            Button(action: {
              
            }, label: {
              HStack {
                Text("Next")
                  .font(.custom("KoddiUDOnGothic-Bold", size: 20))
                
                Image(systemName: "chevron.right")
              }
              .padding(EdgeInsets(top: 6, leading: 15, bottom: 6, trailing: 15))
              .background(Color(hex: 0xFFF6C7))
              .cornerRadius(5)
              
            })
            .padding(EdgeInsets(top: 50, leading: 0, bottom: 26, trailing: 0))
          }
        }
    }
  }
}

#Preview {
  InstructionView()
}

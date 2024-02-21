//
//  MainView.swift
//
//
//  Created by 예슬 on 2/21/24.
//

import SwiftUI

struct MainView: View {
  var body: some View {
    ZStack {
      Color(hex: 0xE4DFFF).ignoresSafeArea()
      VStack {
        Text("Narsha")
          .font(.custom("KoddiUDOnGothic-Bold", size: 36))
        
        Button(action: {
          
        }, label: {
          ZStack {
            Rectangle()
              .frame(width: UIWidth * 0.5, height: UIHeight * 0.09)
              .foregroundColor(Color(hex: 0xFFF6C7))
              .cornerRadius(5)
            Text("Instruction")
              .font(.custom("KoddiUDOnGothic-Bold", size: 20))
              .foregroundStyle(.black)
          }
          .padding(EdgeInsets(top: 113, leading: 0, bottom: 67, trailing: 0))
        })
        
        Button(action: {
          
        }, label: {
          ZStack {
            Rectangle()
              .frame(width: UIWidth * 0.5, height: UIHeight * 0.09)
              .foregroundColor(Color(hex: 0xFFF6C7))
              .cornerRadius(5)
            Text("Learn icons")
              .font(.custom("KoddiUDOnGothic-Bold", size: 20))
              .foregroundStyle(.black)
          }
        })
      }
    }
  }
}

#Preview {
  MainView()
}

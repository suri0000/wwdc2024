//
//  SwiftUIView.swift
//  
//
//  Created by 예슬 on 2/24/24.
//

import SwiftUI

struct MyToggleStyle: ToggleStyle {
  private let width = 53.0
  
  func makeBody(configuration: Configuration) -> some View {
    HStack {
      configuration.label
      ZStack(alignment: configuration.isOn ? .trailing : .leading) {
        // 바깥부분
        RoundedRectangle(cornerRadius: 16)
          .frame(width: width, height: (width / 2) + 5)
          .foregroundColor(configuration.isOn ? .green : Color(hex: 0xE9E9EA))
        
        // 동그라미
        RoundedRectangle(cornerRadius: 15)
          .frame(width: (width / 2) + 1, height: (width / 2) + 1)
          .padding(2)
          .foregroundColor(.white)
          .shadow(radius: 1)
          .onTapGesture {
            withAnimation {
              configuration.$isOn.wrappedValue.toggle()
            }
          }
      }
    }
  }
}

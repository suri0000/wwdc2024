//
//  SwiftUIView.swift
//  
//
//  Created by 예슬 on 2/25/24.
//

import SwiftUI

struct FontSizeView: View {
  
  @State private var imageSizeMultiplier: CGFloat = 1.0
  
    var body: some View {
      NavigationStack {
        VStack {
          Directive(directive: "Click A")
            .padding(.bottom, 167)
          
          Button {
            imageSizeMultiplier += 1
          } label: {
            Image(systemName: "textformat.size")
              .foregroundColor(.black)
              .scaleEffect(imageSizeMultiplier)
          }
          
          if imageSizeMultiplier > 3 {
            NavigationLink {
              IconDescriptionView(praises: "Well done!", iconName: Description.fontSize.rawValue, destination: ScreenLockView())
            } label: {
              NextButton()
            }
            .padding(.top, 200)
          }
        }
      }
    }
}

//#Preview {
//  FontSizeView(path: .constant(false))
//}

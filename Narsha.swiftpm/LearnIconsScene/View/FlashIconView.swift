//
//  SwiftUIView.swift
//
//
//  Created by 예슬 on 2/24/24.
//

import SwiftUI

struct FlashIconView: View {
  
  @State var flashSwitch: Bool = false
  
  var body: some View {
    NavigationStack {
      VStack {
        Directive(directive: "Use the toggle to turn the flashlight on and off.")
        
        Image(systemName: flashSwitch ? "flashlight.on.fill" : "flashlight.off.fill")
          .resizable()
          .scaledToFit()
          .frame(width: 110, height: 180)
          .padding(.vertical, 110)
        
        Toggle(isOn: $flashSwitch) {
          Text("")
        }
        .toggleStyle(MyToggleStyle())
        .overlay {
          Button {
            flashSwitch.toggle()
            toggleTorch(on: flashSwitch)
          } label: {
            Rectangle()
              .foregroundColor(.clear)
          }
        }
        
        if flashSwitch {
          NavigationLink {
            IconDescriptionView(iconName: Description.flash.rawValue, destination: ShareIconView())
          } label: {
            NextButton()
              .padding(.top, 50)
          }
        } else {
          Rectangle()
            .frame(width: UIWidth * 0.3, height: UIHeight * 0.043)
            .foregroundColor(.clear)
            .padding(.vertical, 50)
            
        }
      }
    }
  }
}

#Preview {
  FlashIconView()
}

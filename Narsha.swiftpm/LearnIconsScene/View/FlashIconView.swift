//
//  SwiftUIView.swift
//
//
//  Created by 예슬 on 2/24/24.
//

import SwiftUI

struct FlashIconView: View {
  
  @State var flashSwitch: Bool = false
  @State var toggleClick = 0
  
  var body: some View {
    NavigationStack {
      VStack {
        Directive(directive: "Use the toggle to turn the flashlight on and off. Be sure to turn off the flash before pressing the next button.")
        
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
            toggleClick += 1
          } label: {
            Rectangle()
              .foregroundColor(.clear)
          }
        }
        
        if flashSwitch || toggleClick >= 1 {
          NavigationLink {
            IconDescriptionView(iconName: Description.flash.rawValue, destination: ShareIconView())
          } label: {
            NextButton()
              .padding(.top, 45)
          }
        } else {
          Rectangle()
            .frame(width: 111, height: 39)
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

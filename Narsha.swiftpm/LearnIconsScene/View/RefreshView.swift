//
//  SwiftUIView.swift
//  
//
//  Created by 예슬 on 2/25/24.
//

import SwiftUI

struct RefreshView: View {
  
  @State private var angle: Angle = .init(degrees: 20)
  @State var rotated = false
  
    var body: some View {
      NavigationStack {
        VStack {
          Directive(directive: "Rotate it clockwise using two fingers")
          
          Image(systemName: "arrow.clockwise")
            .resizable()
            .scaledToFit()
            .frame(width: UIWidth * 0.25, height: UIHeight * 0.13)
            .rotationEffect(angle)
            .gesture(rotationGesture)
            .padding(.vertical, 205)
          
          if rotated {
            NavigationLink {
              IconDescriptionView(iconName: Description.refresh.rawValue, destination: TabIconView())
            } label: {
              NextButton()
            }
          }
        }
      }
    }
  
  private var rotationGesture: some Gesture {
    RotationGesture()
      .onChanged {
        print($0)
        angle = $0
        rotated = true
      }
  }
}

#Preview {
    RefreshView()
}

//
//  SwiftUIView.swift
//
//
//  Created by 예슬 on 2/25/24.
//

import SwiftUI

struct MagnifyingGlassesView: View {
  @State private var magnifierPosition: CGPoint = CGPoint(x: 50, y: 50)
  @GestureState private var dragOffset: CGSize = .zero
  @State private var showNextButton: Bool = false
  
  var body: some View {
    NavigationStack {
      VStack {
        Directive(directive: "Use a magnifying glass to look through the picture to find the apple")
        
        Image("fruits")
          .resizable()
          .frame(width: 300, height: 300)
          .scaledToFit()
          .mask {
            Image(systemName: "magnifyingglass")
              .resizable()
              .frame(width: 100, height: 100)
              .offset(x: magnifierPosition.x + dragOffset.width, y: magnifierPosition.y + dragOffset.height)
              .overlay {
                Circle()
                  .frame(width: 70)
                  .offset(x: magnifierPosition.x + dragOffset.width - 10, y: magnifierPosition.y + dragOffset.height - 10)
              }
          }
          .border(Color(hex: 0xFFF6C7))
          .padding(.top, 70)
          .gesture(
            DragGesture()
              .updating($dragOffset) { value, state, _ in
                state = value.translation
                showNextButton = true
              }
              .onEnded { value in
                magnifierPosition = CGPoint(x: magnifierPosition.x + value.translation.width, y: magnifierPosition.y + value.translation.height)
              }
          )
        if showNextButton {
          NavigationLink {
            IconDescriptionView(iconName: Description.magnifyingGlass.rawValue, destination: FontSizeView())
          } label: {
            NextButton()
              .padding(.top, 67)
          }
        } else {
          Rectangle()
            .frame(width: 111, height: 39)
            .padding(.top, 97)
            .foregroundColor(.clear)
        }
      }
    }
  }
}

#Preview {
  MagnifyingGlassesView()
}

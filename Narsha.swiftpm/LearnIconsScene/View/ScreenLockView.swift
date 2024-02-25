//
//  SwiftUIView.swift
//
//
//  Created by 예슬 on 2/25/24.
//

import SwiftUI

struct ScreenLockView: View {
  
  @ObservedObject var motionManager = MotionManager()
  @State private var buttonVisible = false
  
  var body: some View {
    NavigationStack {
      VStack {
        Directive(directive: "Move your phone to make the slope greater than 0")
        
        Image(systemName: "lock.rotation")
          .resizable()
          .scaledToFit()
          .frame(width: UIWidth * 0.2, height:  UIHeight * 0.09)
          .padding(.top, 52)
          .padding(.bottom, 50)
        
        Text("Slope: \(motionManager.roll)")
          .font(.custom("KoddiUDOnGothic-Regular", size: 22))
        
        ZStack {
          Image("wave")
            .padding(.top, 80)
          Image("boat")
            .rotationEffect(Angle(degrees: motionManager.roll * 30))
            .offset(y: motionManager.roll)
        }
        
        Text("If the slope is greater than 0, it is tilted to the right; if it is less than 0, it is tilted to the left.")
          .font(.custom("KoddiUDOnGothic-Regular", size: 20))
          .minimumScaleFactor(0.5)
          .frame(width: UIWidth * 0.8)
          .padding(.vertical, 20)
          .padding(.bottom, 10)
        
        
        if motionManager.roll >= 0 || buttonVisible {
          NavigationLink {
            IconDescriptionView(iconName: Description.screenLock.rawValue, destination: HistoryView())
          } label: {
            NextButton()
          }
          .onChange(of: motionManager.roll) { newValue in
            if newValue >= 0 {
              buttonVisible = true
            }
          }
        } else {
          Rectangle()
            .frame(width: 111, height: 39)
            .foregroundColor(.clear)
        }
      }
    }
  }
}

#Preview {
  ScreenLockView()
}

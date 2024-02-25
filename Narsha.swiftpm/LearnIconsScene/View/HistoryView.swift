//
//  SwiftUIView.swift
//  
//
//  Created by 예슬 on 2/25/24.
//

import SwiftUI

struct HistoryView: View {
  
  @StateObject var myTimer = MyTimer()
  @State var timerStarted = false
  
    var body: some View {
      NavigationStack {
        VStack {
          Directive(directive: "Click on the clock")
          
          Text("\(self.myTimer.value)")
            .font(.custom("KoddiUDOnGothic-Regular", size: 48))
            .padding(.vertical, 80)
          
          Button(action: {
            if !timerStarted {
              myTimer.start()
              DispatchQueue.main.async {
                timerStarted = true
              }
            }
          }) {
            Image(systemName: "clock")
              .resizable()
              .scaledToFit()
              .frame(width: UIWidth * 0.3, height: UIHeight * 0.14)
              .foregroundColor(.black)
              .padding(.bottom, 116)
          }
          
          if myTimer.value == 0 {
            NavigationLink {
              IconDescriptionView(praises: "Cool!", iconName: Description.clock.rawValue, destination: RefreshView())
            } label: {
              NextButton()
            }
          }
        }
      }
    }
}

//#Preview {
//  HistoryView(path: .constant(false))
//}

//
//  MainView.swift
//
//
//  Created by 예슬 on 2/21/24.
//

import SwiftUI

struct MainView: View {
  
  var body: some View {
    NavigationStack {
      ZStack {
        Color(hex: 0xE4DFFF).ignoresSafeArea()
        VStack {
          Text("Narsha")
            .font(.custom("KoddiUDOnGothic-Bold", size: 36))
          
          MainButton(buttonName: "Instruction")
            .padding(EdgeInsets(top: 113, leading: 0, bottom: 67, trailing: 0))
          
          MainButton(buttonName: "Learn icons")
        }
      }
      .navigationBarHidden(true)
    }
  }
}

struct MainButton: View {
  
  var buttonName: String
  
  var body: some View {
    NavigationLink {
      if buttonName == "Instruction" {
        InstructionView()
      } else {
        ShareIconView()
      }
    } label: {
      ZStack {
        Rectangle()
          .frame(width: UIWidth * 0.5, height: UIHeight * 0.09)
          .foregroundColor(Color(hex: 0xFFF6C7))
          .cornerRadius(5)
        Text(buttonName)
          .font(.custom("KoddiUDOnGothic-Bold", size: 20))
          .foregroundStyle(.black)
      }
    }
  }
}


#Preview {
  MainView()
}

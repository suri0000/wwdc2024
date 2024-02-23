//
//  SwiftUIView.swift
//
//
//  Created by 예슬 on 2/23/24.
//

import SwiftUI

struct IconDescriptionView: View {
  
  @ObservedObject var vm = IconDescriptionViewModel()
  
  var body: some View {
    NavigationStack {
      ZStack {
        Color(hex: 0xE4DFFF).ignoresSafeArea()
        Rectangle()
          .frame(width: UIWidth * 0.85, height: UIHeight * 0.6)
          .foregroundColor(.white)
          .cornerRadius(10)
          .overlay {
            VStack {
              VStack(alignment: .leading) {
                Text("")
                  .font(.custom("KoddiUDOnGothic-Bold", size: 24))
                  .padding(EdgeInsets(top: 44, leading: 0, bottom: 20, trailing: 0))
                
                Text("")
                  .font(.custom("KoddiUDOnGothic-Regular", size: 20))
                  .frame(maxHeight: 280, alignment: .top)
                  .minimumScaleFactor(0.9)
              }
              .padding(.horizontal, 30)
            }
          }
      }
    }
  }
}

#Preview {
  IconDescriptionView()
}

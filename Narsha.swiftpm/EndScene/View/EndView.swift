//
//  SwiftUIView.swift
//  
//
//  Created by 예슬 on 2/26/24.
//

import SwiftUI

struct EndView: View {
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
                Text("Thank you for your effort")
                  .font(.custom("KoddiUDOnGothic-Bold", size: 24))
                  .padding(EdgeInsets(top: 44, leading: 0, bottom: 20, trailing: 0))
                
                Text("Icon learning is complete. I hope this will help you use your cell phone in the future. As I said before, repeated learning is important. I want you to be able to use your cell phone easily. good luck.")
                  .font(.custom("KoddiUDOnGothic-Regular", size: 20))
                  .frame(maxHeight: 280, alignment: .top)
                  .minimumScaleFactor(0.5)
                  .padding(.bottom, 30)
              }
              .padding(.horizontal, 30)
              
              NavigationLink(destination: {
                MainView()
              }, label: {
                HStack {
                  Text("MAIN")
                    .font(.custom("KoddiUDOnGothic-Bold", size: 20))
                  Image(systemName: "chevron.right")
                }
                .padding(EdgeInsets(top: 6, leading: 15, bottom: 6, trailing: 15))
                .background(Color(hex: 0xFFF6C7))
                .cornerRadius(5)
                .foregroundColor(.black)
                .padding(.bottom, 40)
              })
            }
          }
      }
    }
  }
}

//#Preview {
//  EndView(path: .constant(false))
//}

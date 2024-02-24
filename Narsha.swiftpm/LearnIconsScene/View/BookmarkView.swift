//
//  SwiftUIView.swift
//  
//
//  Created by 예슬 on 2/25/24.
//

import SwiftUI

struct BookmarkView: View {
  
  @State private var isCorrect: Bool = true
  @State private var onNextButton: Bool = false
  
    var body: some View {
      NavigationStack {
        VStack {
          Directive(directive: "Choose an icon that represents a bookmark from the following:")
          
          Image("bookmark")
            .resizable()
            .frame(width: UIWidth * 0.7, height: UIHeight * 0.3)
            .scaledToFit()
          
          if !isCorrect {
            Text("Wrong.\nPlease choose again.")
              .font(.custom("KoddiUDOnGothic-Regular", size: 24))
              .minimumScaleFactor(0.5)
              .multilineTextAlignment(.center)
              .padding(.bottom, 36)
              .padding(.top, 32)
          } else {
            Spacer()
          }
          
          HStack {
            Button {
              isCorrect = true
              onNextButton = true
            } label: {
              Image(systemName: "book")
                .frame(width: UIWidth * 0.3, height: UIHeight * 0.047)
                .background(Color(hex: 0xFFF6C7))
                .cornerRadius(5)
                .foregroundColor(.black)
                .padding(.trailing, 37)
            }
            
            Button {
              isCorrect = false
            } label: {
              Image(systemName: "list.bullet")
                .frame(width: UIWidth * 0.3, height: UIHeight * 0.047)
                .background(Color(hex: 0xFFF6C7))
                .cornerRadius(5)
                .foregroundColor(.black)
            }
          }
          .padding(.bottom, 20)
          
          HStack {
            Button {
              isCorrect = false
            } label: {
              Image(systemName: "square.and.pencil")
                .frame(width: UIWidth * 0.3, height: UIHeight * 0.047)
                .background(Color(hex: 0xFFF6C7))
                .cornerRadius(5)
                .foregroundColor(.black)
                .padding(.trailing, 37)
            }
            
            Button {
              isCorrect = false
            } label: {
              Image(systemName: "eyeglasses")
                .frame(width: UIWidth * 0.3, height: UIHeight * 0.047)
                .background(Color(hex: 0xFFF6C7))
                .cornerRadius(5)
                .foregroundColor(.black)
            }
          }
          
          Spacer()
          
          if onNextButton {
            NavigationLink {
              IconDescriptionView(iconName: Description.bookmark.rawValue, destination: FlashIconView())
            } label: {
              NextButton()
            }
          }
        }
      }
    }
}

#Preview {
    BookmarkView()
}

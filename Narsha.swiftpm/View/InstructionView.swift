//
//  SwiftUIView.swift
//
//
//  Created by 예슬 on 2/22/24.
//

import SwiftUI

struct InstructionView: View {
  
  @ObservedObject var vm = InstructionViewModel()
  @State var pageNumber: Int = 0
  
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
                Text(vm.titleText[pageNumber])
                  .font(.custom("KoddiUDOnGothic-Bold", size: 24))
                  .padding(EdgeInsets(top: 44, leading: 0, bottom: 20, trailing: 0))
                
                Text(vm.bodyText[pageNumber])
                  .font(.custom("KoddiUDOnGothic-Regular", size: 20))
                  .frame(maxHeight: 280, alignment: .top)
                  .minimumScaleFactor(0.9)
              }
              .padding(.horizontal, 30)
              
              HStack {
                if pageNumber == 0 {
                  PageButton(pageNumber: $pageNumber, buttonName: "NEXT")
                } else {
                  PageButton(pageNumber: $pageNumber, buttonName: "BACK")
                  PageButton(pageNumber: $pageNumber, buttonName: "NEXT")
                }
              }
              .padding(EdgeInsets(top: 50, leading: 0, bottom: 26, trailing: 0))
            }
          }
      }
    }
  }
}

struct PageButton: View {
  
  @Binding var pageNumber: Int
  @State var buttonName: String
  
  var body: some View {
    Button {
      if buttonName == "BACK" {
        pageNumber -= 1
      } else {
        pageNumber += 1
      }
    } label: {
      HStack {
        if buttonName == "BACK" {
          Image(systemName: "chevron.left")
          
          Text(buttonName)
            .font(.custom("KoddiUDOnGothic-Bold", size: 20))
        } else {
          Text(buttonName)
            .font(.custom("KoddiUDOnGothic-Bold", size: 20))
          
          Image(systemName: "chevron.right")
        }
      }
      .padding(EdgeInsets(top: 6, leading: 15, bottom: 6, trailing: 15))
      .background(Color(hex: 0xFFF6C7))
      .cornerRadius(5)
      .foregroundColor(.black)
      .padding(.trailing, buttonName == "BACK" ? 48 : 0)
    }
  }
}

struct StartButton: View {
  
  @State var buttonName: String
  
  var body: some View {
    NavigationLink {
      LearnIconsView()
    } label: {
      HStack {
        Text(buttonName)
          .font(.custom("KoddiUDOnGothic-Bold", size: 20))
        
        Image(systemName: "chevron.right")
      }
      .padding(EdgeInsets(top: 6, leading: 15, bottom: 6, trailing: 15))
      .background(Color(hex: 0xFFF6C7))
      .cornerRadius(5)
      .foregroundColor(.black)
    }

  }
}

#Preview {
  InstructionView()
}

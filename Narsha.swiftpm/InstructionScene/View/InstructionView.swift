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
                  .minimumScaleFactor(0.5)
                  .padding(.bottom, 25)
                  .padding(.top, 44)
                
                Text(vm.bodyText[pageNumber])
                  .font(.custom("KoddiUDOnGothic-Regular", size: 20))
                  .minimumScaleFactor(0.8)
              }
              .padding(.horizontal, 30)
              
              Spacer()
              
              HStack {
                if pageNumber == 0 {
                  InstructionPageButton(pageNumber: $pageNumber, buttonName: "NEXT")
                } else if pageNumber == 3 {
                  InstructionPageButton(pageNumber: $pageNumber, buttonName: "BACK")
                  startButton
                } else {
                  InstructionPageButton(pageNumber: $pageNumber, buttonName: "BACK")
                  InstructionPageButton(pageNumber: $pageNumber, buttonName: "NEXT")
                }
              }
              .padding(.bottom, 30)
            }
          }
          .padding(.horizontal, 30)
      }
    }
  }
  
  private var startButton: some View {
    NavigationLink {
      ShareIconView()
    } label: {
      HStack {
        Text("START")
          .font(.custom("KoddiUDOnGothic-Bold", size: 20))
        
        Image(systemName: "chevron.right")
      }
      .padding(EdgeInsets(top: 6, leading: 13, bottom: 6, trailing: 13))
      .background(Color(hex: 0xFFF6C7))
      .cornerRadius(5)
      .foregroundColor(.black)
    }
  }
}

struct InstructionPageButton: View {
  
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
            .minimumScaleFactor(0.1)
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
      .padding(.trailing, buttonName == "BACK" ? 35 : 0)
    }
  }
}

#Preview {
  InstructionView()
}

//
//  SwiftUIView.swift
//
//
//  Created by 예슬 on 2/26/24.
//

import SwiftUI

struct TabIconView: View {
  
  @State private var leftRectangle: CGSize = .zero
  @State private var rightFirstRectangle: CGSize = .zero
  @State private var rightSecondRectangle: CGSize = .zero
  @State private var isNextButtonVisible1 = false
  @State private var isNextButtonVisible2 = false
  @State private var isNextButtonVisible3 = false
  
  var body: some View {
    NavigationStack {
        VStack {
          Directive(directive: "Gather the purple squares to where the gray squares are")
          
          HStack {
            Rectangle()
              .frame(width: 103, height: 102)
              .foregroundColor(Color(hex: 0xE4DFFF))
              .border(.black, width: 10)
              .cornerRadius(15)
              .offset(leftRectangle)
              .gesture(DragGesture()
                .onChanged{ value in
                  leftRectangle = value.translation
                  isNextButtonVisible1 = true
                }
              )
              .zIndex(1)
//              .onEnded { value in
//                  let dropArea = CGRect(x: /* drop area의 x 좌표 */, y: /* drop area의 y 좌표 */, width: /* drop area의 너비 */, height: /* drop area의 높이 */)
//
//                  let rect0 = CGRect(
//                      x: leftRectangle.width + rightFirstRectangle.width + rightSecondRectangle.width,
//                      y: leftRectangle.height + rightFirstRectangle.height + rightSecondRectangle.height,
//                      width: 103,
//                      height: 102
//                  )
//
//                  if rect0.contains(value.location) && dropArea.contains(value.location) {
//                      isNextButtonVisible = true
//                  } else {
//                      isNextButtonVisible = false
//                  }
//              }

            
            VStack {
              Rectangle()
                .frame(width: 103, height: 102)
                .foregroundColor(Color(hex: 0xE4DFFF))
                .border(.black, width: 10)
                .cornerRadius(15)
                .offset(rightFirstRectangle)
                .gesture(DragGesture()
                  .onChanged{ value in
                    rightFirstRectangle = value.translation
                    isNextButtonVisible2 = true
                  }
                )
                .zIndex(1)
              
              Rectangle()
                .frame(width: 103, height: 102)
                .foregroundColor(Color(hex: 0xE4DFFF))
                .border(.black, width: 10)
                .cornerRadius(15)
                .offset(rightSecondRectangle)
                .gesture(DragGesture()
                  .onChanged{ value in
                    rightSecondRectangle = value.translation
                    isNextButtonVisible3 = true
                  }
                )
                .zIndex(1)
            }
          }
          .zIndex(1)
          
            Rectangle()
              .frame(width: 103, height: 102)
              .foregroundColor(.white)
              .border(Color(hex: 0xE5E5E5), width: 10)
              .cornerRadius(15)
              .zIndex(0)
              .padding(.top, 50)
          
          if isNextButtonVisible1 && isNextButtonVisible2 && isNextButtonVisible3 {
            NavigationLink {
              IconDescriptionView(praises: "Nice!", iconName: Description.tab.rawValue, destination: EndView())
            } label: {
              NextButton()
                .padding(.top, 30)
            }
          }
        }
        }
      }
    }


#Preview {
  TabIconView()
}

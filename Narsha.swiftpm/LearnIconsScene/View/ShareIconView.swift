//
//  SwiftUIView.swift
//
//
//  Created by 예슬 on 2/22/24.
//

import SwiftUI

struct ShareIconView: View {
  //draggedOffset: 드래그한 만큼 뷰가 움직이도록 binding에 사용될 프로퍼티
  @State private var draggedOffset = CGSize.zero
  
  //accumlatedOffset: 지금까지 드래그 된 값을 기록하고 있는 프로퍼티
  @State private var accumulatedOffset = CGSize.zero
  
  var body: some View {
    NavigationStack {
      VStack {
        Text("Move the purple square in the direction of the arrow.")
          .font(.custom("KoddiUDOnGothic-Regular", size: 24))
          .padding(.top, 60)
        Spacer()
        ZStack {
          Image(systemName: "square.and.arrow.up")
            .resizable()
            .scaledToFit()
            .frame(width: 143, height: 153)
            .position(x:UIWidth / 2, y: UIHeight / 2.5)
          
          Rectangle()
            .frame(width: 78, height: 71)
            .cornerRadius(5)
            .foregroundColor(Color(hex: 0xE4DFFF))
            .position(x:UIWidth / 2, y: UIHeight / 2.34)
            .offset(draggedOffset)
            .gesture(drag)
        }
        if draggedOffset.height < -50 {
          GoToIconDescriptionButton()
        }
      }
    }
  }
  
  var drag: some Gesture {
    DragGesture()
      .onChanged { gesture in
        draggedOffset = accumulatedOffset + gesture.translation
        print("Accumulated Offset: \(accumulatedOffset)")
      }
      .onEnded { gesture in
        accumulatedOffset = accumulatedOffset + gesture.translation
      }
  }
}

extension CGSize {
  static func + (lhs: Self, rhs: Self) -> Self {
    CGSize(width: lhs.width + rhs.width, height: lhs.height + rhs.height)
  }
}

#Preview {
  ShareIconView()
}

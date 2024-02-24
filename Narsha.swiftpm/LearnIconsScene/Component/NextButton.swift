//
//  SwiftUIView.swift
//  
//
//  Created by 예슬 on 2/23/24.
//

import SwiftUI

struct NextButton: View {
  
  var body: some View {
    HStack {
      Text("NEXT")
        .font(.custom("KoddiUDOnGothic-Bold", size: 20))
      Image(systemName: "chevron.right")
    }
    .padding(EdgeInsets(top: 6, leading: 15, bottom: 6, trailing: 15))
    .background(Color(hex: 0xFFF6C7))
    .cornerRadius(5)
    .foregroundColor(.black)
    .padding(.bottom, 50)
  }
}

#Preview {
  NextButton()
}

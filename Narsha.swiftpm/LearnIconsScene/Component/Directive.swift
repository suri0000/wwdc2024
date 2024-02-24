//
//  SwiftUIView.swift
//
//
//  Created by 예슬 on 2/24/24.
//

import SwiftUI

struct Directive: View {
  
  var directive: String
  
  var body: some View {
    Text(directive)
      .font(.custom("KoddiUDOnGothic-Regular", size: 24))
      .frame(width: UIWidth * 0.8)
      .minimumScaleFactor(0.3)
      .padding(.top, 20)
  }
}

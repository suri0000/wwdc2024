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
      .minimumScaleFactor(0.9)
      .padding(.top, 60)
  }
}

//
//  SwiftUIView.swift
//  
//
//  Created by 예슬 on 2/26/24.
//

import SwiftUI

struct TabIconView: View {
  
  
    var body: some View {
      NavigationStack {
        VStack {
          Directive(directive: "Gather the purple squares to where the gray squares are.")
          
          HStack {
            Rectangle()
              .frame(width: 103, height: 102)
              .foregroundColor(Color(hex: 0xE4DFFF))
              .border(.black, width: 10)
              .cornerRadius(15)
            
            VStack {
              Rectangle()
                .frame(width: 103, height: 102)
                .foregroundColor(Color(hex: 0xE4DFFF))
                .border(.black, width: 10)
                .cornerRadius(15)
              Rectangle()
                .frame(width: 103, height: 102)
                .foregroundColor(Color(hex: 0xE4DFFF))
                .border(.black, width: 10)
                .cornerRadius(15)
            }
          }
          .padding(.bottom, 70)
          
          Rectangle()
            .frame(width: 103, height: 102)
            .foregroundColor(.white)
            .border(Color(hex: 0xE5E5E5), width: 10)
            .cornerRadius(15)
        }
      }
    }
}

#Preview {
    TabIconView()
}

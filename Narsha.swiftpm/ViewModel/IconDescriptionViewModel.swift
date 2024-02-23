//
//  SwiftUIView.swift
//  
//
//  Created by 예슬 on 2/24/24.
//

import SwiftUI

class IconDescriptionViewModel: ObservableObject {
  let praises: [String] = ["Good job!", "Great!", "Well done!", "Fantastic!", "Perfect!", "Super!", "Cool!", "Excellent!"]
}

enum Description {
  case share
  case flash
  case bookmark
  case mirroring
  case magnifyingGlass
  case clock
  case refresh
  case airplay
  case screenLock
  case fontSize
}

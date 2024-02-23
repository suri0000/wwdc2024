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

enum Description: String {
  case share = "The meaning of this icon is to export and share something, like exporting a square to the outside. You can check various activities in addition to sharing by clicking the icon."
  case flash = "Did you see the icon change? This icon represents a flashlight."
  case bookmark
  case mirroring = "Each of the squares collected earlier represents a window (screen). So this icon represents a window. Used to view tabs in Safari. It is also used as a screen mirroring icon. Screen mirroring means showing the screen on another device as if you had moved the same squares from before."
  case magnifyingGlass = "You used a magnifying glass to find an apple. This icon means find or search. It also has the meaning of expansion. A magnifying glass originally has the function of making small things appear larger."
  case clock = "3 seconds have passed. This icon represents time that has passed. Indicates the history of what you have run so far."
  case refresh = "This icon mainly represents the action of refreshing or updating data. The reason we use arrows is because they can visually indicate the flow or update of data."
  case airplay = "This icon means audio airplay. airplay allows you to wirelessly stream multimedia content such as music, videos, and photos from your Apple device to another device along with the corresponding information. The video airplay icon is this."
  case screenLock = "You moved my phone and the boat moved. This icon is an icon that prevents the phone screen from moving. If the icon looks like a lock, the screen does not turn horizontally."
  case fontSize = "This icon indicates adjusting the font size."
}

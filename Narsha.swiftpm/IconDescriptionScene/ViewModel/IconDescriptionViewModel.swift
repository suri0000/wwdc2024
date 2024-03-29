//
//  SwiftUIView.swift
//  
//
//  Created by 예슬 on 2/24/24.
//

import SwiftUI

//class IconDescriptionViewModel: ObservableObject {
//  let praises: [String] = [, "Great!", "Well done!", "Fantastic!", "Perfect!", "Super!", "Cool!", "Excellent!","Good job!"]
//}
enum Praises: String {
  case good = "Good job!"
  case great = "Great!"
  case wellDone = "Well done!"
  case fantastic = "Fantastic!"
  case perpect = "Perfect!"
  case super1 = "Super!"
  case cool = "Cool!"
  case excellent = "Excellent!"
  case nice = "Nice!"
  
  
}

enum Description: String {
  case share = "The meaning of this icon is to export and share something, like exporting a square to the outside. You can check various activities in addition to sharing by clicking the icon."
  case flash = "Have you confirmed that the flashlight turns on? Click this icon to turn the flashlight on or off."
  case bookmark = "The bookmark icon is shaped like a book. An icon made up of dots and lines represents a list. The square and pen icon means you are writing something. Lastly, the glasses-shaped icon is the reading list icon. You can find it on Safari. I often wear glasses when reading something, so please remember that."
  case tab = "Each of the squares collected earlier represents a window (screen). So this icon represents a window. Used to view tabs in Safari. This icon also looks similar to the mirroring icon. The mirroring icon looks like overlapping rectangular squares. Mirroring is a function that shows your device's screen to another device."
  case magnifyingGlass = "You used a magnifying glass to find an apple. This icon means find or search. It also has the meaning of expansion. A magnifying glass originally has the function of making small things appear larger."
  case clock = "3 seconds have passed. This icon represents time that has passed. Indicates the history of what you have run so far."
  case refresh = "This icon mainly represents the action of refreshing or updating data. The reason we use arrows is because they can visually indicate the flow or update of data."
  case airplay = "This icon means audio airplay. airplay allows you to wirelessly stream multimedia content such as music, videos, and photos from your Apple device to another device along with the corresponding information. The video airplay icon is this."
  case screenLock = "You moved my phone and the boat moved. This icon is an icon that prevents the phone screen from moving. If the icon looks like a lock, the screen does not turn horizontally."
  case fontSize = "This icon indicates adjusting the font size."
}

//
//  File.swift
//  
//
//  Created by 예슬 on 2/22/24.
//

import Foundation

class InstructionViewModel: ObservableObject {
  let titleText: [String] = ["Hello! 👋",
                              "First, don't be afraid!",
                              "Second, pay attention to the red color and notification window!",
                              "Third, repeat several times!"]
  
  let bodyText: [String] = ["""
In this app, you can learn the meaning of icons.
I hope that learning the icons will help you use your cell phone. If you don't know how to use a cell phone before learning the icons, use the tip app to learn basic gestures. There are things I want you to think about while learning about icons.
""",
  """
If you have any questions, please click once! It doesn't break down. It's free to click. Oh, of course, if you click the payment button, you have to pay. If you think you pressed the wrong button, you can go back. It doesn't break down easily.
""",
"It's okay to press anything, but a red color or notification window may indicate a warning. Please read carefully and click.",
                            
"If you don't use it, you forget it. Keep learning and using it over and over again."]
}

//enum ButtonType: String {
//  case next = "NEXT"
//  case back = "BACK"
//  case start = "START"
//}

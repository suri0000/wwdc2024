//
//  File.swift
//  
//
//  Created by 예슬 on 2/24/24.
//

import Foundation
import AVFoundation

func toggleTorch(on: Bool) {
  guard let device = AVCaptureDevice.default(for: .video) else { return }
  if device.hasTorch {
    do {
      try device.lockForConfiguration()
      
      device.torchMode = on ? .on : .off
      
      device.unlockForConfiguration()
    } catch {
      print("Torch could not be used")
    }
  } else {
    print("Torch is not available")
  }
}

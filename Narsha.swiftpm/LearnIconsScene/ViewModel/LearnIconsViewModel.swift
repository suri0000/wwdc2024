//
//  SwiftUIView.swift
//  
//
//  Created by 예슬 on 2/24/24.
//

import SwiftUI
import CoreMotion

/// 커스텀 토글
struct MyToggleStyle: ToggleStyle {
  private let width = 53.0
  
  func makeBody(configuration: Configuration) -> some View {
    HStack {
      configuration.label
      ZStack(alignment: configuration.isOn ? .trailing : .leading) {
        // 바깥부분
        RoundedRectangle(cornerRadius: 16)
          .frame(width: width, height: (width / 2) + 5)
          .foregroundColor(configuration.isOn ? .green : Color(hex: 0xE9E9EA))
        
        // 동그라미
        RoundedRectangle(cornerRadius: 15)
          .frame(width: (width / 2) + 1, height: (width / 2) + 1)
          .padding(2)
          .foregroundColor(.white)
          .shadow(radius: 1)
          .onTapGesture {
            withAnimation {
              configuration.$isOn.wrappedValue.toggle()
            }
          }
      }
    }
  }
}

/// 화면 회전
class MotionManager: ObservableObject {
  private var motionManager = CMMotionManager()
  var timer: Timer?
  
  @Published var pitch: Double = 0.0
  @Published var roll: Double = 0.0
  
  init() {
    self.timer = Timer()
    startAccelerometers()
  }
  
  deinit {
    motionManager.stopDeviceMotionUpdates()
    timer?.invalidate()
    timer = nil
  }
  
  
  func startAccelerometers() {
    // Make sure the accelerometer hardware is available.
    if self.motionManager.isAccelerometerAvailable {
      self.motionManager.accelerometerUpdateInterval = 1.0 / 50.0  // 50 Hz
      self.motionManager.startAccelerometerUpdates()
      
      
      // Configure a timer to fetch the data.
      self.timer = Timer(fire: Date(), interval: (1.0/50.0),
                         repeats: true, block: { (timer) in
        // Get the accelerometer data.
        if let data = self.motionManager.accelerometerData {
          let x = data.acceleration.x
          let y = data.acceleration.y
          
          self.pitch = x
          self.roll = y
          // Use the accelerometer data in your app.
        }
      })
      
      // Add the timer to the current run loop.
      RunLoop.current.add((self.timer)!, forMode: .default)
    }
  }
  
  func stopUpdates() {
      motionManager.stopDeviceMotionUpdates()
      timer?.invalidate()
      timer = nil
  }
}

/// 타이머
class MyTimer: ObservableObject {
  @Published var value: Int = 3
  var timer: Timer?
  
  deinit {
    timer?.invalidate()
  }
  
  func start() {
    timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) {[weak self] timer in
      
      guard let self = self else {
        timer.invalidate()
        return
      }
      if self.value > 0 {
        self.value -= 1
      } else {
        self.timer?.invalidate()
        self.timer = nil
      }
    }
  }
}

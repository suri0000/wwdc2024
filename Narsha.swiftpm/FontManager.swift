//
//  FontManager.swift
//  Narsha
//
//  Created by 예슬 on 2/21/24.
//

import SwiftUI

public struct FontManager {
    
    public static func registerFonts() {
        registerFont(bundle: Bundle.main, fontName: "KoddiUDOnGothic-Regular", fontExtension: ".otf") //change according to your ext.
      
        registerFont(bundle: Bundle.main, fontName: "KoddiUDOnGothic-Bold", fontExtension: ".otf")
    }
    
    fileprivate static func registerFont(bundle: Bundle, fontName: String, fontExtension: String) {
        print(Bundle.main)
        guard let fontURL = bundle.url(forResource: fontName, withExtension: fontExtension),
              let fontDataProvider = CGDataProvider(url: fontURL as CFURL),
              let font = CGFont(fontDataProvider) else {
            fatalError("Couldn't create font from data")
        }
        
        var error: Unmanaged<CFError>?
        
        CTFontManagerRegisterGraphicsFont(font, &error)
    }
}

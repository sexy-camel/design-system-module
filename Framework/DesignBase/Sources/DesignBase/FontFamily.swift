//
//  FontFamily.swift
//
//  Created by 박종혁 on 11/28/24.
//

import UIKit

public enum FontFamily {
    public static func registerFonts() {
        guard let fontURLs = Bundle.module.urls(forResourcesWithExtension: "otf", subdirectory: nil) else {
            debugPrint("Could not find font files")
            return
        }
        
        fontURLs.forEach { url in
            guard let fontDataProvider = CGDataProvider(url: url as CFURL),
                  let font = CGFont(fontDataProvider) else {
                debugPrint("Could not load font at URL: \(url)")
                return
            }
            
            var error: Unmanaged<CFError>?
            // 이미 등록된 폰트인지 확인
            if !CTFontManagerRegisterGraphicsFont(font, &error) {
                // 에러가 "이미 등록됨" 이면 무시
                if let error = error?.takeUnretainedValue() {
                    let errorCode = CFErrorGetCode(error)
                    if errorCode != 305 { // 305가 아닌 다른 에러인 경우에만 출력
                        debugPrint("Error registering font: \(error)")
                    }
                }
            }
            else {
                debugPrint("✅Successfully registered font: \(url.lastPathComponent)")
            }
        }
    }
}

#if canImport(SwiftUI) && DEBUG
import SwiftUI

struct RegisterFonts: ViewModifier {
    init() {
        FontFamily.registerFonts()
    }
    
    func body(content: Content) -> some View {
        content
    }
}
#endif

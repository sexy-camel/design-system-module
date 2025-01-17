//
//  Color+UIBase.swift
//
//  Created by 박종혁 on 11/27/24.
//
import SwiftUI

extension Color {
    /// Gray100 (223, 223, 223) #DFDFDF
    public static let gray100 = Color("Gray100", bundle: .module)
    /// Gray200 (197, 197, 197) #C5C5C5
    public static let gray200 = Color("Gray200", bundle: .module)
    /// Gray300 (143, 143, 143) #8F8F8F
    public static let gray300 = Color("Gray300", bundle: .module)
    /// Gray400 (94, 94, 94) #5E5E5E
    public static let gray400 = Color("Gray400", bundle: .module)
    /// Gray500 (74, 74, 74) #4A4A4A
    public static let gray500 = Color("Gray500", bundle: .module)
    /// Gray600 (50, 50, 50) #323232
    public static let gray600 = Color("Gray600", bundle: .module)
    /// BG100 (246, 247, 249) #F6F7F9
    public static let bg100 = Color("Bg100", bundle: .module)
    /// BG200 (238, 240, 244) #EEF0F4
    public static let bg200 = Color("Bg200", bundle: .module)
    /// BG300 (224, 226, 229) #E0E2E5
    public static let bg300 = Color("Bg300", bundle: .module)
    /// BG400 (190, 194, 201) #BEC2C9
    public static let bg400 = Color("Bg400", bundle: .module)
    /// Delay (245, 258, 27) #F59E1B
    public static let delay = Color("Delay", bundle: .module)
    /// Positive (5, 206, 98) #05CE62
    public static let positive = Color("Positive", bundle: .module)
    /// Warning (255, 81, 81) #FF5151
    public static let warning = Color("Warning", bundle: .module)
    /// Ocre (217, 156, 0) #D99C00
    public static let ocre = Color("Ocre", bundle: .module)
    /// Shadow (2, 8, 21) #020815 (opacity: 32%)
    public static let shadow = Color("Shadow", bundle: .module)
    /// solana (231, 235, 188) #E7EBBC
    public static let solana = Color("solana", bundle: .module)
}



#Preview {
    VStack {
        Color.gray100
        Color.gray200
        Color.gray300
        Color.gray400
        Color.gray500
        Color.gray600
        Color.bg100
        Color.bg200
        Color.bg300
        Color.bg400
        Color.delay
        Color.positive
        Color.warning
    }
}

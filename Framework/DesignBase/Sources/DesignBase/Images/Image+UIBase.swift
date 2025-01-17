//
//  Image+UIBase.swift
//
//  Created by 박종혁 on 11/27/24.
//

import SwiftUI

extension Image {
    public static let apple = Image("apple", bundle: .module)
    public static let arrow = Image("arrow", bundle: .module)
    public static let check = Image("check", bundle: .module)
    public static let copy = Image("copy", bundle: .module)
    public static let download = Image("download", bundle: .module)
    public static let facebook = Image("facebook", bundle: .module)
    public static let faceid = Image("faceid", bundle: .module)
    public static let google = Image("google", bundle: .module)
    public static let link = Image("link", bundle: .module)
    public static let pasteboard = Image("pasteboard", bundle: .module)
    public static let qrscan = Image("qrscan", bundle: .module)
    public static let refresh = Image("refresh", bundle: .module)
    public static let setting = Image("setting", bundle: .module)
    public static let share = Image("share", bundle: .module)
}

#Preview {
    VStack {
        HStack {
            Image.apple
            Image.arrow
            Image.check
        }
    }
}

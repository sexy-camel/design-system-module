//
//  RadialGradient+UIBase.swift
//
//  Created by 박종혁 on 11/27/24.
//

import SwiftUI

extension RadialGradient {
    public static let profile: Self = {
        RadialGradient(
            stops: [
                Gradient.Stop(color: Color(red: 231.0 / 255.0, green: 235.0 / 255.0, blue: 188.0 / 255.0), location: 0.0),
                Gradient.Stop(color: Color(red: 57.0 / 255.0, green: 166.0 / 255.0, blue: 199.0 / 255.0), location: 1.0)],
            center: .topLeading,
            startRadius: 0,
            endRadius: 189)
    }()
}

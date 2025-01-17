//
//  LinearGradient+UIBase.swift
//
//  Created by 박종혁 on 11/27/24.
//

import SwiftUI

extension LinearGradient {
    public static let button: Self = {
        LinearGradient(
            stops: [
                Gradient.Stop(color: Color(red: 0.03, green: 0.69, blue: 0.45), location: 0.00),
                Gradient.Stop(color: Color(red: 0.85, green: 0.61, blue: 0), location: 1.00),
            ],
            startPoint: UnitPoint(x: 0, y: 0),
            endPoint: UnitPoint(x: 1, y: 1)
        )
    }()
}

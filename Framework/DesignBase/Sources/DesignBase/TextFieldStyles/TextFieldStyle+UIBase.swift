//
//  TextFieldStyle+UIBase.swift
//
//
//  Created by 박종혁 on 12/6/24.
//

import SwiftUI

public struct PrimaryTextFieldStyle: TextFieldStyle {
    @FocusState var isFocused: Bool
    
    fileprivate struct Metric {
        static let borderRadius: CGFloat = 6.0
        static let shadowRadius: CGFloat = 8.0
        static let lineWidth: CGFloat = 1.4
        static let padding: CGFloat = 16
    }
    
    public func _body(configuration: TextField<_Label>) -> some View {
        ZStack {
            configuration
                .font(.medium(14))
                .foregroundStyle(Color.black)
                .focused($isFocused)
                .padding(Metric.padding)
                .background(Color.white)
                .overlay {
                    RoundedRectangle(cornerRadius: Metric.borderRadius)
                            .inset(by: -0.7)
                            .stroke(
                                isFocused ? Color.gray600 : Color.bg300,
                                lineWidth: Metric.lineWidth
                            )
                }
                .shadow(
                    color: isFocused ? Color.shadow : .clear,
                    radius: Metric.shadowRadius,
                    x: 0.0, y: 0.0
                )
        }
    }
}

@available(iOS 17, *)
public extension TextFieldStyle where Self == PrimaryTextFieldStyle {
    static var primary: PrimaryTextFieldStyle {
        return Self()
    }
}

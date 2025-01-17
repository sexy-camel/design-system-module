//
//  ButtonStyle+UIBase.swift
//
//  Created by 박종혁 on 11/27/24.
//

import SwiftUI

public struct GradientButtonStyle: ButtonStyle {
    @Environment(\.isEnabled) var isEnabled
    
    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.medium(16))
            .scaleEffect(configuration.isPressed ? 0.95 : 1)
            .foregroundStyle(isEnabled ? Color.white : Color.gray200)
            .padding(19)
            .frame(maxWidth: .infinity)
            .background(content: {
                Group {
                    if isEnabled {
                        LinearGradient.button
                    } else {
                        Color.bg200
                    }
                }
                .ignoresSafeArea(edges: .bottom)
            })
            .opacity(configuration.isPressed ? 0.5 : 1.0)
            .animation(.easeInOut, value: configuration.isPressed)
    }
}


extension ButtonStyle where Self == GradientButtonStyle {
    public static var primary: Self { Self() }
}

public struct SecondaryButtonStyle: ButtonStyle {
    @Environment(\.isEnabled) var isEnabled
    
    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.medium(16))
            .scaleEffect(configuration.isPressed ? 0.95 : 1)
            .foregroundStyle(Color.black)
            .padding(19)
            .frame(maxWidth: .infinity)
            .background(content: {
                Rectangle()
                    .fill(Color.bg100)
                    .stroke(Color.bg300)
                    .ignoresSafeArea(edges: .bottom)
            })
            .opacity(configuration.isPressed ? 0.5 : 1.0)
//            .overlay(content: {
//                Rectangle()
//                    .stroke(Color.bg300)
//            })
            .animation(.easeInOut, value: configuration.isPressed)
    }
}


extension ButtonStyle where Self == SecondaryButtonStyle {
    public static var secondary: Self { Self() }
}

//
//  TextStyle.swift
//
//  Created by 박종혁 on 11/28/24.
//

import SwiftUI

public extension View {
    func textStyle(_ style: TextStyle) -> some View {
        self
            .font(style.font)
            .lineSpacing(style.lineSpacing)
            .foregroundStyle(style.textColor)
    }
}

public enum TextStyle {
    /// bold, 18, (0, 0, 0)
    case title
    
    /// bold, 14, (0, 0, 0)
    case subtitle
    
    /// medium, 14, (0, 0, 0)
    case body
    
    /// medium, 12, (0, 0, 0)
    case body2
    
    /// medium, 11, Color.gray300
    case caption
    
    /// light, 10, Color.gray400
    case caption2

    
    case navigationTitle
    
    var font: Font {
        switch self {
        case .title:
            return .bold(18)
        case .subtitle, .navigationTitle:
            return .bold(14)
        case .body:
            return .medium(14)
        case .body2:
            return .medium(12)
        case .caption:
            return .medium(11)
        case .caption2:
            return .light(10)
        }
    }
    
    var lineSpacing: CGFloat {
        switch self {
        case .title:
            return 8
        case .caption:
            return 3
        case .caption2:
            return 14
        default:
            return 0
        }
    }
    
    var textColor: Color {
        switch self {
        case .title:
            return Color.black
        case .subtitle, .navigationTitle:
            return Color.black
        case .body, .body2:
            return Color.black
        case .caption:
            return Color.gray400
        case .caption2:
            return Color.gray300
        }
    }
}

#if canImport(SwiftUI) && DEBUG

#Preview {
    VStack(spacing: 24) {
        Text("Title Text Style")
            .textStyle(.title)
        
        Text("Navigation Style")
            .textStyle(.subtitle)
        
        Text("Body Text Style")
            .textStyle(.body)
        
        Text("Caption Text Style")
            .textStyle(.caption)
    }
    .modifier(RegisterFonts())
}

#endif

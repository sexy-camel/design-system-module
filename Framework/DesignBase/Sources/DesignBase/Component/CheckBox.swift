//
//  CheckBox.swift
//
//  Created by 박종혁 on 9/30/24.
//

import SwiftUI

public struct CheckBox: View {
    @Binding var isCheck: Bool
    
    public init(isCheck: Binding<Bool>) {
        self._isCheck = isCheck
    }
    
    public var body: some View {
        Button(action: {
            isCheck.toggle()
        }, label: {
            Image.check
                .resizable()
                .renderingMode(.template)
                .foregroundStyle(isCheck ? Color.white : Color.clear)
                .frame(width:18, height: 18)
                .background {
                    RoundedRectangle(cornerRadius: 6)
                        .inset(by: 0.7)
                        .stroke(isCheck ? Color.clear : Color.bg300, lineWidth: 1.4)
                        .fill(isCheck ? Color.ocre : Color.clear)
                }
        })
    }
}

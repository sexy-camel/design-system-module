//
//  SwiftUIView.swift
//  
//
//  Created by 박종혁 on 12/4/24.
//

import SwiftUI

public struct Triangle: Shape {
    public init() {}
    public func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: rect.minX, y: rect.maxY))
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
            path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
        }
    }
}

struct someView: View {
    @State private var userText = "Effect of monospacing digits: 123,110."
    
    var body: some View {
        VStack {
            TextField("Proportional", text: $userText)
                .font(.system(size: 12))
            TextField("Monospaced", text: $userText)
                .font(.system(size: 12).monospacedDigit())
            TextField("Monospaced2", text: $userText)
                .font(.system(size: 12).monospaced())
            TextField("Monospaced2", text: $userText)
                .font(.system(size: 12).width(.init(24)))
        }
        .padding()
        .navigationTitle(Text("Font + monospacedDigit()"))
    }
}

#Preview {
    VStack(spacing: 24) {
        
        Triangle()
            .foregroundStyle(Color.ocre)
            .frame(width: 20, height: 20)
        
        Triangle()
            .foregroundStyle(Color.warning)
            .frame(width: 10, height: 10)
        
        Label("Fill Rectangle", systemImage: "arrow.up")
            .font(.title)
            .symbolVariant(.fill.circle)
        
        Label(
            title: { Text("Face Id") },
            icon: { Image.faceid }
        )
        .font(.caption2)
        
        someView()
    }
}

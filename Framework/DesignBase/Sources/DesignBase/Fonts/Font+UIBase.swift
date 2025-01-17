//
//  Font+UIBase.swift
//
//  Created by 박종혁 on 11/27/24.
//

import SwiftUI

extension Font {
    public static func light(_ size: CGFloat) -> Font {
        .custom("EliceDXNeolliOTF-Lt", size: size)
    }
    
    public static func medium(_ size: CGFloat) -> Font {
        .custom("EliceDXNeolliOTF-Md", size: size)
    }
    
    public static func bold(_ size: CGFloat) -> Font {
        .custom("EliceDXNeolliOTF-Bd", size: size)
    }
}


#if canImport(SwiftUI) && DEBUG

#Preview {
    VStack {
        Text("SYSTEM Font 14")
            .font(.system(size: 14))
        
        Text("EliceDXNeolli Light 14")
            .font(.light(14))
        
        Text("EliceDXNeolli Medium 14")
            .font(.medium(14))
        
        Text("EliceDXNeolli Bold 14")
            .font(.bold(14))
    }
    .modifier(RegisterFonts())
}

#endif

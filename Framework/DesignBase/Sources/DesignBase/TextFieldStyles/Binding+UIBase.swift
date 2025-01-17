//
//  Binding+UIBase.swift
//
//
//  Created by 박종혁 on 12/11/24.
//

import SwiftUI

public extension Binding where Value: Equatable {
  func removeDuplicates() -> Self {
    .init(
      get: { self.wrappedValue },
      set: { newValue, transaction in
        guard newValue != self.wrappedValue else { return }
        self.transaction(transaction).wrappedValue = newValue
      }
    )
  }
}

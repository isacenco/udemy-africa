//
//  CenterModifier.swift
//  Africa
//
//  Created by Ghenadie Isacenco on 23/10/2025.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}

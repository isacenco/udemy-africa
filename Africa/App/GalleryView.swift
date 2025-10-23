//
//  GalleryView.swift
//  Africa
//
//  Created by Ghenadie Isacenco on 22/10/2025.
//

import SwiftUI

struct GalleryView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            Text("Gallery")
        } //: SCROLL
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(MotionAnimationView())
    }
}

// MARK: - PREVIEW
#Preview {
    GalleryView()
}

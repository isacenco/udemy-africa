//
//  CoverImageView.swift
//  Africa
//
//  Created by Ghenadie Isacenco on 22/10/2025.
//

import SwiftUI

struct CoverImageView: View {
    // MARK: - PROPERTIES
    let coverImages: [CoverImage] = Bundle.main.decode("covers.json")
    
    // MARK: - BODY
    var body: some View {
        TabView {
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                    .scaledToFill()
            } //: LOOP
        } //: TABS
        .tabViewStyle(PageTabViewStyle())
    }
}

// MARK: - PREVIEW
#Preview(traits: .fixedLayout(width: 400, height: 300)) {
    CoverImageView()
}

//
//  CreditsView.swift
//  Africa
//
//  Created by Ghenadie Isacenco on 23/10/2025.
//

import SwiftUI

struct CreditsView: View {
    var body: some View {
        VStack {
            Image("compass")
                .resizable()
                .scaledToFit()
                .frame(width: 128, height: 128)
            
            Text("""
                Copytight @ Ghenadie Isacenco
                All rights reserved
                Better Apps ♡ Less Code
                """)
            .font(.footnote)
            .multilineTextAlignment(.center)
        } //: VSTACK
        .padding()
        .opacity(0.4)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    CreditsView()
        .padding()
}

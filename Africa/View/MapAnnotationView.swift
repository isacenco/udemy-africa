//
//  MapAnnotationView.swift
//  Africa
//
//  Created by Ghenadie Isacenco on 23/10/2025.
//

import SwiftUI

struct MapAnnotationView: View {
    // MARK: - PROPERTIES
    var location: NationalParkLocation
    @State private var animation: Double = 0.0
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.accentColor)
                .frame(width: 54, height: 54, alignment: .center)
            
            Circle()
                .stroke(Color.accentColor, lineWidth: 2)
                .frame(width: 52, height: 52, alignment: .center)
                .scaleEffect(1 + CGFloat(animation))
                .opacity(1 - animation)
            
            Image(location.image)
                .resizable()
                .scaledToFit()
                .frame(width: 48, height: 48, alignment: .center)
                .clipShape(Circle())
        } //: ZSTACK
        .onAppear() {
            withAnimation(.easeOut(duration: 2).repeatForever(autoreverses: false)) {
                self.animation = 1.0
            }
        }
    }
}

// MARK: - PREVIEW
#Preview(traits: .sizeThatFitsLayout) {
    let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
    
    MapAnnotationView(location: locations[0])
        .padding()
}

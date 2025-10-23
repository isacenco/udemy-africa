//
//  AnimalGridItemView.swift
//  Africa
//
//  Created by Ghenadie Isacenco on 23/10/2025.
//

import SwiftUI

struct AnimalGridItemView: View {
    // MARK: - PROPERTIES
    let animal: Animal
    
    var body: some View {
        Image(animal.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    let animals: [Animal] = Bundle.main.decode("animals.json")
    
    AnimalGridItemView(animal: animals[0])
        .padding()
}

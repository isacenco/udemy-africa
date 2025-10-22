//
//  VideoModel.swift
//  Africa
//
//  Created by Ghenadie Isacenco on 22/10/2025.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    // COMPUTED PROPERTY
    var thumbnail: String { "video-\(id)" }
}

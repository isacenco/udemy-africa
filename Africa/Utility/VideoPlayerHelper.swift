//
//  VideoPlayerHelper.swift
//  Africa
//
//  Created by Ghenadie Isacenco on 22/10/2025.
//

import Foundation
import AVKit

var videoPlayer: AVPlayer?

func playVideo(fileName: String, fileFormat: String) -> AVPlayer {
    if Bundle.main.url(forResource: fileName, withExtension: fileFormat) != nil {
        videoPlayer = AVPlayer(url: Bundle.main.url(forResource: fileName, withExtension: fileFormat)!)
        videoPlayer?.play()
    }
    
    return videoPlayer ?? AVPlayer(url: Bundle.main.url(forResource: "lion", withExtension: "mp4")!)
}

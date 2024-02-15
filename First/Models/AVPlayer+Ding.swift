//
//  AVPlayer+Ding.swift
//  First
//
//  Created by Siddikjon Kuziboev on 15/02/24.
//

import Foundation
import AVFoundation

extension AVPlayer {
    static let shareDingPlayer: AVPlayer = {
        guard let url = Bundle.main.url(forResource: "ding", withExtension: "wav") else {fatalError("Failed to find sound file.")}
        return AVPlayer(url: url)
    }()
}

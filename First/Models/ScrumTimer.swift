//
//  ScrumTimer.swift
//  First
//
//  Created by Siddikjon Kuziboev on 12/02/24.
//

import SwiftUI

class ScrumTimer: ObservableObject {
    @Published var activeSpeaker = ""
    @Published var secondsElapsed = 0
    @Published var secondsRemaining = 0
}

//
//  FirstApp.swift
//  First
//
//  Created by Siddikjon Kuziboev on 26/12/23.
//

import SwiftUI

@main
struct FirstApp: App {
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: DailyScrum.sampleData)
        }
    }
}


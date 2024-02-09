//
//  FirstApp.swift
//  First
//
//  Created by Siddikjon Kuziboev on 26/12/23.
//

import SwiftUI

@main
struct FirstApp: App {
    @State private var scrums = DailyScrum.sampleData
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $scrums)
        }
    }
}


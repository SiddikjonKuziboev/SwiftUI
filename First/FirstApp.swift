//
//  FirstApp.swift
//  First
//
//  Created by Siddikjon Kuziboev on 26/12/23.
//

import SwiftUI

@main
struct FirstApp: App {
    @StateObject private var store = ScrumStore.init()
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $store.scrums) {
                Task {
                    do {
                        try await store.save(scrums: store.scrums)
                    } catch {
                        fatalError(error.localizedDescription)
                    }
                }
            }
                .task {
                    do {
                        try await store.load()
                    } catch {
                        fatalError(error.localizedDescription)
                    }
                }
        }
    }
}


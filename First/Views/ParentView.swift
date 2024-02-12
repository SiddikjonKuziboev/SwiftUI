//
//  ParentView.swift
//  First
//
//  Created by Siddikjon Kuziboev on 12/02/24.
//

import SwiftUI

struct ParentView: View {
    @StateObject var scrumTimer = ScrumTimer()
    
    var body: some View {
        VStack {
            ChildView()
                .environmentObject(scrumTimer)
        }
    }
}

struct ChildView: View {
    var body: some View {
        GrandChildView()
    }
}

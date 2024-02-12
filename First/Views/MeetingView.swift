//
//  ContentView.swift
//  First
//
//  Created by Siddikjon Kuziboev on 26/12/23.
//

import SwiftUI

struct MeetingView: View {
    @StateObject var scrumTimer = ScrumTimer()
    
    var body: some View {
        VStack {
            ProgressView(value: 10, total: 15)
            HStack {
                VStack(alignment: .leading) {
                    ChildView()
                        .environmentObject(scrumTimer)
                    Text("Second Elapsed")
                        .font(.caption)
                    Label("300", systemImage: "hourglass.tophalf.fill")
                }
                Spacer()
                VStack(alignment: .trailing) {
                    Text("Second Remaining")
                        .font(.caption)
                    Label("400", systemImage: "hourglass.bottomhalf.fill")
                }
            }
            .accessibilityElement(children: .ignore)
            .accessibilityLabel("Time remaining")
            .accessibilityValue("10 minutes")
            Circle()
                .strokeBorder(lineWidth: 24)
            HStack {
                Text("Speaker 1 of 3")
                Spacer()
                Button(action: {}) {
                    Image(systemName: "forward.fill")
                }
                .accessibilityLabel("Next speaker")
            }
        }
        .padding()
    }
}

struct MeetingView_Preview: PreviewProvider {
    
    static var previews: some View {
        MeetingView()
    }
}

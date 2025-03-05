//
//  TrackWorkout.swift
//  DailyWorkout
//
//  Created by Zeko Madson on 2/25/25.
//

import Foundation
import SwiftUI
import CoreData

struct TrackWorkout: View {
    var body : some View {
        
        
        Button(action: {
            // TODO: Navigate to Signup Page
            // Phone Number or User Name or Email
            // Password
            // Start Date
        }) {
            Text("Complete Workout")
                .font(.largeTitle)
                .foregroundStyle(.indigo)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(.indigo, lineWidth: 3)
                )
        }
    }
}

#Preview {
    TrackWorkout()
}

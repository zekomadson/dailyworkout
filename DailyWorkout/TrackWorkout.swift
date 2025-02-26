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
let headerText = "You Completed Your Workout!\nCongrats!"
        Text(headerText)
            .foregroundStyle(.mint)
            .font(.title)
            .padding(.top)
            .multilineTextAlignment(.center)
            .minimumScaleFactor(0.5)
        VStack {
            
            Text("How do you feel today?")
            
            Text("[Input Numeric Value]")
            
        }
        .foregroundStyle(.mint)
        .font(.largeTitle)
        .padding(.vertical)
        
        Spacer ()
    }
}

#Preview {
    TrackWorkout()
}

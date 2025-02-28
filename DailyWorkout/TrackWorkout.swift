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
      
        Spacer()
        VStack {
            
            Text("How do you feel today?")
                .padding(.vertical)
            Text("[Input Numeric Value]")
                .padding(.vertical)
        }
        .foregroundStyle(.mint)
        .font(.largeTitle)
        
        Spacer ()
        
        Button("Complete Workout") {
            // TODO: Go back to homescreen
        }
        .buttonStyle(.borderedProminent)
        .tint(Color.indigo)
        .font(.title)
    }
}

#Preview {
    TrackWorkout()
}

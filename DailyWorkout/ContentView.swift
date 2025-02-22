//
//  ContentView.swift
//  DailyWorkout
//
//  Created by Zeko Madson on 2/19/25.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    var body: some View {
        VStack {
            Text("Daily Workout")
                .font(.largeTitle)
            
            VStack {
                Text("Build a workout plan once")
                
                Text("Recieve Daily Workout Plan")
                
            }
            .padding()
            .font(.title3)
        }
    }
}

#Preview {
    ContentView()
}

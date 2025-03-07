//
//  DailyWorkoutApp.swift
//  DailyWorkout
//
//  Created by Zeko Madson on 2/19/25.
//

import SwiftUI

@main
struct DailyWorkoutApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            WorkoutPage()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

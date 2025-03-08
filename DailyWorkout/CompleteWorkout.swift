//
//  WorkoutPage.swift
//  DailyWorkout
//
//  Created by Zeko Madson on 2/23/25.
//

import Foundation
import SwiftUI
import CoreData

struct CompleteWorkout: View {
    
    
    var body : some View {
        GeometryReader { geometry in
            
            VStack(spacing: 0){
                
                let headerText = "Complete Workout"
                Text(headerText)
                    .font(.title)
                    .foregroundStyle(.indigo)
                    .frame(maxWidth:.infinity)
                
                
            }
        }
    }
}

#Preview {
    CompleteWorkout()
}

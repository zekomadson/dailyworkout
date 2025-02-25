//
//  Landing.swift
//  DailyWorkout
//
//  Created by Zeko Madson on 2/23/25.
//

import Foundation
import SwiftUI
import CoreData

struct Landing: View {
    
    @State private var headerText = "Daily Fitness"
    @State private var subHeaderText = "Track Muscle Groups, Reps, and Sets"
    @State private var button1Text = "Login"
    @State private var button2Text = "Sign Up"
    
    var body : some View {
        
        Text(headerText)
            .font(.largeTitle)
            .padding()
        
        Text(subHeaderText)
            .font(.title2)
        
        Spacer()
        
        HStack {
            
            Button(button1Text) {
                // Nothing Yet
            }
            
            Button(button2Text) {
                // Nothing Yet
            }
        }
            .buttonStyle(.borderedProminent)
            .tint(.mint)
            .font(.largeTitle)
        
        Spacer()
    }
}

#Preview {
    Landing()
}

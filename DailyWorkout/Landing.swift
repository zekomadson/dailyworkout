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
        
        VStack {
            
            Text(headerText)
                .font(.largeTitle)
            
            Text(subHeaderText)
                .font(.title2)
            
        }
        .padding()
        .foregroundStyle(.mint)
        
        Spacer()
       
        VStack {
            
        }
        VStack {
            Spacer()
            
            Text("How do you feel today?")
                .foregroundStyle(.mint)
                .font(.largeTitle)
            
            // TODO: Convert this to a numeric value that is tracked
            
            Text("[Input Numeric Value]")
                .foregroundStyle(.mint)
                .font(.largeTitle)
                .padding(.vertical)
            
            Spacer()
            
            // TODO: Jump to the Workout Page
            Button("Begin Workout") {
                
            }
            .buttonStyle(.borderedProminent)
            .tint(.mint)
            .font(.largeTitle)
            
        }
        
        Spacer()
    }
}

#Preview {
    Landing()
}

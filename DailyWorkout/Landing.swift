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
        
        VStack(spacing: 0){
            
            Text(headerText)
                .font(.largeTitle)
                .border(.black, width:3)

            Text(subHeaderText)
                .font(.title2)
                .border(.black, width:3)

        }
        .padding()
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        .foregroundStyle(.mint)
        .border(.black, width:3)

        Spacer()
       
        VStack(spacing:0) {
            Spacer()
            
            Text("How do you feel today?")
                .foregroundStyle(.mint)
                .font(.largeTitle)
                .border(.black, width:3)

            // TODO: Convert this to a numeric value that is tracked
            
            Text("[Input Numeric Value]")
                .foregroundStyle(.mint)
                .font(.largeTitle)
                .padding(.vertical)
                .border(.black, width:3)

            Spacer()
            
            // TODO: Jump to the Workout Page
            Button("Begin Workout") {
                
            }
            .buttonStyle(.borderedProminent)
            .tint(.mint)
            .font(.largeTitle)
            .border(.black, width:3)

            
        }
        .frame(maxWidth: .infinity)
        .border(.black, width:3)

        Spacer()
    }
}

#Preview {
    Landing()
}

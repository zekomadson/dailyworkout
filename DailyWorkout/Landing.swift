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
        GeometryReader { geometry in
            
            VStack(spacing: 0){
                
                Text(headerText)
                    .font(.largeTitle)
                    .padding(.bottom)
                
                Text(subHeaderText)
                    .font(.title2)

            }
            .padding()
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            .foregroundStyle(.mint)

            Spacer()
           
            VStack(spacing:0) {
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
                
                Divider()
                    .padding()
                    .frame(width: geometry.size.width * 1)
                
                // TODO: Jump to the Workout Page
                Button("Begin Workout") {
                    
                }
                .frame(width: geometry.size.width * 0.7, height: geometry.size.height * 0.098)
                .border(.indigo)
                .tint(.indigo)
                .font(.largeTitle)

                
            }
            .frame(maxWidth: .infinity)

            Spacer()
        }
    }
}

#Preview {
    Landing()
}

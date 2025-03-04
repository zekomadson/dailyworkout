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
    
    @State private var feelNumeric = ""
    
    
    var body : some View {
        GeometryReader { geometry in
            
            VStack(spacing: 0){
                
                Text(headerText)
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity)
                    .foregroundStyle(.indigo)
                
                Text(subHeaderText)
                    .font(.title2)
                    .padding(.vertical)
                    .frame(maxWidth: .infinity)
                    .foregroundStyle(.indigo)

            }
            .padding()
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            .foregroundStyle(.mint)

            Spacer()
           
            VStack(spacing:0) {
                Spacer()
                
                Text("How do you feel today?")
                    .font(.largeTitle)
                    .padding(.vertical)
                    .frame(maxWidth: .infinity)
                    .foregroundStyle(.indigo)
                
                // TODO: Convert this to a numeric value that is tracked
                TextField("", text: $feelNumeric)
                    .keyboardType(.numberPad)
                    .font(.largeTitle)
                    .padding(.vertical)
                    .frame(width: geometry.size.width * 0.9)
                    .foregroundStyle(.indigo)
                    .border(.indigo, width: 2)
                
                Spacer()
                
                Divider()
                    .padding()
                    .frame(width: geometry.size.width * 1)
                
                // TODO: Jump to the Workout Page
                
                Button(action: {
                    // TODO: Navigate to Signup Page
                    // Phone Number or User Name or Email
                    // Password
                    // Start Date
                }) {
                    Text("Begin Workout")
                        .font(.largeTitle)
                        .foregroundStyle(.indigo)
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(.indigo, lineWidth: 3)
                        )
                }
                
            }
            .frame(maxWidth: .infinity)

            Spacer()
        }
    }
}

#Preview {
    Landing()
}

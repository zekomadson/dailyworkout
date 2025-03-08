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
    
    @State private var numExercises = ""
    @State private var numSets = ""
    @State private var numReps = ""
    
    var body : some View {
        
        NavigationStack {
            
            GeometryReader { geometry in
                
                VStack(spacing: 0){
                    
                    let headerText = "Complete Workout"
                    Text(headerText)
                        .font(.largeTitle)
                        .foregroundStyle(.indigo)
                        .frame(maxWidth:.infinity)
                    
                    Spacer()
                    
                    VStack(spacing:20){
                        
                        TextField("", text: $numExercises, prompt:
                                    Text("Exercise Name")
                            .foregroundStyle(.white)
                        )
                        .keyboardType(.emailAddress)
                        .autocorrectionDisabled()
                        .multilineTextAlignment(.center)
                        .font(.title)
                        .foregroundStyle(.white)
                        .frame(width: geometry.size.width * 0.9, height: geometry.size.height * 0.098)
                        .background(.indigo.gradient)
                        .clipShape(RoundedRectangle(cornerRadius: CGFloat(20)))
                        
                        TextField("", text: $numSets, prompt:
                                    Text("Number of Sets")
                            .foregroundStyle(.white)
                        )
                        .keyboardType(.asciiCapable)
                        .autocorrectionDisabled()
                        .textContentType(.newPassword)
                        .multilineTextAlignment(.center)
                        .font(.title)
                        .foregroundStyle(.white)
                        .frame(width: geometry.size.width * 0.9, height: geometry.size.height * 0.098)
                        .background(.indigo.gradient)
                        .clipShape(RoundedRectangle(cornerRadius: CGFloat(20)))
                        
                        // TODO: for each set, add a text input for number of reps
                        TextField("", text: $numReps, prompt:
                                    Text("Number of Reps")
                            .foregroundStyle(.white)
                        )
                        .keyboardType(.asciiCapable)
                        .autocorrectionDisabled()
                        .multilineTextAlignment(.center)
                        .textContentType(.newPassword)
                        .font(.title)
                        .foregroundStyle(.white)
                        .frame(width: geometry.size.width * 0.9, height: geometry.size.height * 0.098)
                        .background(.indigo.gradient)
                        .clipShape(RoundedRectangle(cornerRadius: CGFloat(20)))
                    }
                    
                    Spacer()
                    
                    Button(action: {
                        // TODO: Navigate to Signup Page
                        // Phone Number or User Name or Email
                        // Password
                        // Start Date
                    }) {
                        Text("Add Exercise")
                            .font(.largeTitle)
                            .foregroundStyle(.indigo)
                            .frame(width: geometry.size.width * 0.6, height: geometry.size.height * 0.07)
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(.indigo, lineWidth: 3)
                            )
                    }
                    .padding(.bottom)
                    
                    Divider()
                        .frame(width: geometry.size.width * 0.9)
                        .padding(.bottom)
                    
                    NavigationLink(destination: SignUp()) {
                        // TODO: Navigate to Signup Page
                        // Phone Number or User Name or Email
                        // Password
                        // Start Date
                        Text("Track Workout")
                            .font(.largeTitle)
                            .foregroundStyle(.indigo)
                            .frame(width: geometry.size.width * 0.6, height: geometry.size.height * 0.07)
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(.indigo, lineWidth: 3)
                            )
                    }
                    
                }
            }
        }
    }
}

#Preview {
    CompleteWorkout()
}

//
//  ContentView.swift
//  DailyWorkout
//
//  Created by Zeko Madson on 2/19/25.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    @State private var imageSystemName = ""
    @State private var imageText = ""
    
    
    var body: some View {
        GeometryReader { geometry in
            
            VStack {
                Text("Welcome to Daily Workout")
                    .font(.largeTitle)
                    .padding(.vertical)
                    .frame(maxWidth: .infinity)
                    .foregroundStyle(.indigo)
                
                Spacer()
                
                VStack(spacing:20){
                    
                    Button("Sign Up") {
                        // TODO: Navigate to Signup Page
                        // Phone Number or User Name or Email
                        // Password
                        // Start Date
                    }
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                    .frame(width: geometry.size.width * 0.9, height: geometry.size.height * 0.098)
                    .background(.indigo.gradient)
                    .clipShape(RoundedRectangle(cornerRadius: CGFloat(20)))
                    
                    Button("Login") {
                        // TODO: NAVIGATE TO LOGIN PAGE
                        // Phone Number or Username or Email
                        // Passcode sent to phone, Face ID, or Password
                    }
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                    .frame(width: geometry.size.width * 0.9, height: geometry.size.height * 0.098)
                    .background(.indigo.gradient)
                    .clipShape(RoundedRectangle(cornerRadius: CGFloat(20)))
                }
                
                Spacer()

            }
            .background(.white)
            
        }
    }
}

#Preview {
    ContentView()
}

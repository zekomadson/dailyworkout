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
        VStack {
            Text("Welcome to Daily Quote")
            
            Spacer()
            
            Button("Sign Up") {
                // TODO: Navigate to Signup Page
                // Phone Number or User Name or Email
                // Password
                // Start Date
            }
            
            Button("Login") {
                // TODO: NAVIGATE TO LOGIN PAGE
                // Phone Number or Username or Email
                // Passcode sent to phone, Face ID, or Password
            }
            
            Text("Insert Start Date")
        }
        
    }
}

#Preview {
    ContentView()
}

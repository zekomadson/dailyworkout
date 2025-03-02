//
//  Login.swift
//  DailyWorkout
//
//  Created by Zeko Madson on 3/1/25.
//


import SwiftUI
import CoreData

struct Login: View {
    
    @State private var imageSystemName = ""
    @State private var imageText = ""
    
    
    var body: some View {
        VStack {
            Text("Login")
                .font(.largeTitle)
                .padding(.vertical)
                .frame(maxWidth: .infinity)
                .border(.white, width: 3)
                .foregroundStyle(.white)
            
            Spacer()
            
            VStack(spacing:20){
                
                Text("Phone / Email")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                    .frame(width: 350, height: 75)
                    .background(.lightCherryBlood)
                    .border(.white, width:3)
                
                Text("Password")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                    .frame(width: 350, height: 75)
                    .background(.lightCherryBlood)
                    .border(.white, width:3)
                
            }
            .frame(maxWidth: .infinity)
            .padding(.vertical)
            .border(.white, width:3)
            
            
            Button("Login") {
                // TODO: Navigate to Signup Page
                // Phone Number or User Name or Email
                // Password
                // Start Date
            }
            .font(.largeTitle)
            .foregroundStyle(.white)
            .frame(width: 250, height: 75)
            .background(.lightCherryBlood)
            .clipShape(RoundedRectangle(cornerRadius: CGFloat(25)))
            .border(.white, width:3)
            
            Spacer()
        }
        .background(.darkBlood.gradient)
        
    }
}

#Preview {
    Login()
}

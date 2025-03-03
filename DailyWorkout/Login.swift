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
    @State private var email = ""
    @State private var password = ""
    
    
    var body: some View {
        GeometryReader { geometry in
            
            VStack {
                Text("Login Page")
                    .font(.largeTitle)
                    .padding(.vertical)
                    .frame(maxWidth: .infinity)
                    .border(.white, width: 3)
                    .foregroundStyle(.indigo)
                
                Spacer()
                
                Divider()
                    .frame(width: geometry.size.width * 0.9)
                
                VStack(spacing:20){
                    
                    TextField("Phone / Email", text: $email)
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                        .frame(width: geometry.size.width * 0.9, height: geometry.size.height * 0.098)
                        .background(.indigo.gradient)
                        .clipShape(RoundedRectangle(cornerRadius: CGFloat(20)))
                    
                    TextField("Password", text: $password)
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                        .frame(width: geometry.size.width * 0.9, height: geometry.size.height * 0.098)
                        .background(.indigo.gradient)
                        .clipShape(RoundedRectangle(cornerRadius: CGFloat(20)))
                    
                    Button("Login") {
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
                    .border(.white, width:3)
                    
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical)
                .border(.white, width:3)
                
                Divider()
                    .frame(width: geometry.size.width * 0.9)
                
                Spacer()
            }
            .background(.white)
        }
    }
}

#Preview {
    Login()
}

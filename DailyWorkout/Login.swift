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
                
                
                VStack(spacing:20){
                    
                    TextField("", text: $email, prompt:
                                Text("  Email / Username")
                        .foregroundStyle(.white)
                    )
                    .font(.title)
                    .foregroundStyle(.white)
                    .frame(width: geometry.size.width * 0.9, height: geometry.size.height * 0.098)
                    .background(.indigo.gradient)
                    .clipShape(RoundedRectangle(cornerRadius: CGFloat(20)))
                    
                    SecureField("", text: $password, prompt:
                                Text("  Password")
                        .foregroundStyle(.white)
                    )
                    .keyboardType(.asciiCapable)
                    .autocorrectionDisabled()
                    .textContentType(.newPassword)
                    .font(.title)
                    .foregroundStyle(.white)
                    .frame(width: geometry.size.width * 0.9, height: geometry.size.height * 0.098)
                    .background(.indigo.gradient)
                    .clipShape(RoundedRectangle(cornerRadius: CGFloat(20)))
                    .tint(.white) // Makes the cursor and selection color white
                    
                    Spacer()
                    
                    Divider()
                        .frame(width: geometry.size.width * 0.9)
                    
                    Button(action: {
                        // TODO: Navigate to Signup Page
                        // Phone Number or User Name or Email
                        // Password
                        // Start Date
                    }) {
                        Text("Login")
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
                .frame(maxWidth: .infinity)
                .padding(.vertical)
                .border(.white, width:3)
                
                
                Spacer()
            }
            .background(.white)
        }
    }
}

#Preview {
    Login()
}

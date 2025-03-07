//
//  SignUp.swift
//  DailyWorkout
//
//  Created by Zeko Madson on 3/1/25.
//

//  ContentView.swift
//  DailyWorkout
//
//  Created by Zeko Madson on 2/19/25.
//

import SwiftUI
import CoreData

struct SignUp: View {
    
    @State private var imageSystemName = ""
    @State private var imageText = ""
    
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @State private var workoutPlanStartDateStr: String = ""
    @State private var workoutPlanStartDate: Date = Date()
    
    
    var body: some View {
        
        GeometryReader { geometry in
            
            VStack {
                Text("Create an Account")
                    .font(.largeTitle)
                    .foregroundStyle(.indigo)
                    .frame(width: geometry.size.width * 0.9, height: geometry.size.height * 0.098)
                    .clipShape(RoundedRectangle(cornerRadius: CGFloat(20)))
                
                Spacer()
                
                
                VStack(spacing:20){
                    
                    TextField("", text: $email, prompt:
                                Text("Email / Username")
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
                    
                    TextField("", text: $password, prompt:
                                Text("Password")
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
                    
                    TextField("", text: $confirmPassword, prompt:
                                Text("Confirm Password")
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
                    
                    Divider()
                        .frame(width: geometry.size.width * 0.9)
                    
                    DatePicker("", selection: $workoutPlanStartDate)
                        .font(.title)
                        .foregroundStyle(.white)
                        .frame(width: geometry.size.width * 0.9, height: geometry.size.height * 0.098)
                        .background(.indigo.gradient)
                        .clipShape(RoundedRectangle(cornerRadius: CGFloat(20)))

                    
                    Spacer()
                    
                    Divider()
                        .frame(width: geometry.size.width * 0.9)
                    
                    Button(action: {
                        // TODO: Navigate to Signup Page
                        // Phone Number or User Name or Email
                        // Password
                        // Start Date
                    }) {
                        Text("Create Account")
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
                
                
                
                Spacer()
            }
            .background(.white)
        }
    }
}

#Preview {
    SignUp()
}

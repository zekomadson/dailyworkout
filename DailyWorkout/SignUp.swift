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
    
    
    var body: some View {
        
        GeometryReader { geometry in
            
            VStack {
                Text("Sign Up Page")
                    .font(.largeTitle)
                    .foregroundStyle(.indigo)
                    .frame(width: geometry.size.width * 0.9, height: geometry.size.height * 0.098)
                    .clipShape(RoundedRectangle(cornerRadius: CGFloat(20)))
                
                Spacer()
               
                Divider()
                    .frame(width: geometry.size.width * 0.9)
                
                VStack(spacing:20){
                    
                    Text("Phone / Email")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                        .frame(width: geometry.size.width * 0.9, height: geometry.size.height * 0.098)
                        .background(.indigo.gradient)
                        .clipShape(RoundedRectangle(cornerRadius: CGFloat(20)))
                    
                    Text("Password")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                        .frame(width: geometry.size.width * 0.9, height: geometry.size.height * 0.098)
                        .background(.indigo.gradient)
                        .clipShape(RoundedRectangle(cornerRadius: CGFloat(20)))
                    
                    Text("Confirm Password")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                        .frame(width: geometry.size.width * 0.9, height: geometry.size.height * 0.098)
                        .background(.indigo.gradient)
                        .clipShape(RoundedRectangle(cornerRadius: CGFloat(20)))
                    
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

                }
                .frame(maxWidth: .infinity)
                .padding(.vertical)
                
                Divider()
                    .frame(width: geometry.size.width * 0.9)
                

                
                Spacer()
            }
            .background(.white)
        }
    }
}

#Preview {
    SignUp()
}

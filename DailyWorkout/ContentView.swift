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
        NavigationStack {
            GeometryReader { geometry in
                
                VStack {
                    Text("Daily Habit")
                        .font(.largeTitle)
                        .padding(.vertical)
                        .frame(maxWidth: .infinity)
                        .foregroundStyle(.indigo)
                    
                    Spacer()
                    
                    VStack(spacing:20){
                        
                        NavigationLink(destination: WorkoutPage()) {
                            Text("Workout Page")
                                .font(.largeTitle)
                                .foregroundStyle(.indigo)
                                .frame(width: geometry.size.width * 0.6, height: geometry.size.height * 0.07)
                                .padding()
                                .background(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(.indigo, lineWidth: 3)
                                )
                        }
                        
                        NavigationLink(destination: Affirmations()) {
                            Text("Affirmations")
                                .font(.largeTitle)
                                .foregroundStyle(.indigo)
                                .frame(width: geometry.size.width * 0.6, height: geometry.size.height * 0.07)
                                .padding()
                                .background(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(.indigo, lineWidth: 3)
                                )
                        }
                        
                        NavigationLink(destination: WorkoutPage()) {
                            Text("Workout Page")
                                .font(.largeTitle)
                                .foregroundStyle(.indigo)
                                .frame(width: geometry.size.width * 0.6, height: geometry.size.height * 0.07)
                                .padding()
                                .background(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(.indigo, lineWidth: 3)
                                )
                        }

                        NavigationLink(destination: Pronunciation()) {
                            Text("Pronunciation")
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
                    Spacer()
                }
                .background(.white)
                
            }
            
        }
    }
}

#Preview {
    ContentView()
}

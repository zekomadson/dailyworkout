//
//  WorkoutPage.swift
//  DailyWorkout
//
//  Created by Zeko Madson on 2/23/25.
//

import Foundation
import SwiftUI
import CoreData

struct Affirmations: View {
    
    let startDate = "03/06/2025"
    
    @State private var affirmations = [
        "You are a smart creative individual capable of building projects other people can use."
        ,"You are a mobile developer. You build great apps."
        ,"You are a kind considerate loving person."
        ,"You have the technical skills and creative vision to build remarkable things."
        ,"You are constantly growing your skills and mastering new development techniques."
        ,"You approach relationships with authenticity, empathy, and genuine care."
        ,"You are patient and supportive, giving others the space and encouragement they need."
    ]
    
    @State private var exerciseText = ""
    @State private var affirmationText = ""
    
    init() {
        _exerciseText = State(initialValue: generateAffirmationExcerciseDesc())
        _affirmationText = State(initialValue: generateAffirmationText())
    }
    var body : some View {
        
        
        GeometryReader { geometry in
            
            VStack(spacing: 0){
                
                let headerText = "Daily Affirmations"
                Text(headerText)
                    .font(.largeTitle)
                    .foregroundStyle(.indigo)
                    .frame(maxWidth:.infinity)
                
                Spacer()
                
                VStack {
                    
                    Text(exerciseText)
                        .foregroundStyle(.indigo)
                        .font(.title)
                        .multilineTextAlignment(.center)
                        .minimumScaleFactor(0.5)
                        .frame(maxWidth: .infinity)
                        .padding(.horizontal)
                    
                    Text(affirmationText)
                        .foregroundStyle(.indigo)
                        .font(.title2)
                        .multilineTextAlignment(.center)
                        .minimumScaleFactor(0.5)
                        .frame(height: geometry.size.height * 0.17)
                        .frame(maxWidth: .infinity)
                        .padding(.horizontal)
                    
                }
                
                Spacer()
                
                
                Button(action: {
                    exerciseText = generateAffirmationExcerciseDesc()
                    affirmationText = generateAffirmationText()
                }) {
                    Text("Generate New Exercise")
                        .font(.title)
                        .foregroundStyle(.indigo)
                        .minimumScaleFactor(0.5)
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
    
    func generateAffirmationExcerciseDesc() -> String {
        
        let excerciseCount = Int.random(in: 5...10)
        let exerciseText = "Repeat the below phrase \(excerciseCount) times. Out loud."
        
        return exerciseText
        
    }
    
    func generateAffirmationText() -> String {
        
        let affirmationIdx = Int.random(in: 0..<affirmations.count)
        let affirmationText = affirmations[affirmationIdx]
        
        return affirmationText
        
    }
    
    
    func daysSinceDate(dateString: String) -> Int {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy"
        
        guard let startDate = dateFormatter.date(from: dateString) else {
            return 0
        }
        
        let currentDate = Date()
        let components = Calendar.current.dateComponents([.day], from: startDate, to: currentDate)
        return components.day ?? 0
    }
}

#Preview {
    Affirmations()
}

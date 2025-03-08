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
    
    var body : some View {
        
        let workoutNum  = daysSinceDate(dateString: startDate)
        
        GeometryReader { geometry in
            
            VStack(spacing: 0){
                
                let headerText = "Daily Affirmations"
                Text(headerText)
                    .font(.largeTitle)
                    .foregroundStyle(.indigo)
                    .frame(maxWidth:.infinity)
                
                Spacer()
                
                Text(affirmations[workoutNum % affirmations.count])
                    .foregroundStyle(.indigo)
                    .font(.title2)
                    .multilineTextAlignment(.center)
                    .minimumScaleFactor(0.5)
                    .frame(height: geometry.size.height * 0.17)
                    .frame(maxWidth: .infinity)
                    .padding(.horizontal)
                
                Spacer()
                
                Spacer()

                Divider()
                    .frame(width: geometry.size.width * 0.9)
                    .padding(.bottom)
                
            }
        }
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

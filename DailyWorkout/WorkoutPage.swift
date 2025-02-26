//
//  WorkoutPage.swift
//  DailyWorkout
//
//  Created by Zeko Madson on 2/23/25.
//

import Foundation
import SwiftUI
import CoreData

struct WorkoutPage: View {
    
    @State private var headerText = "Daily Focus"
    @State private var subHeaderText = ""
    @State private var dailyQuote = "Just make it exist first.\nYou can make it good later."
    
    @State private var workoutNum = 0 // Number of workouts completed
    @State private var dayOfWeekNum = 0 // Day of week within given week
    @State private var weekNum = 0 // Week number within larger workout plan
    
    // 6 Week Planning
    @State private var muscleGroupsByDay = ["Biceps / Shoulders", "Back / Legs", "Chest / Shoulders" ,"Legs / Biceps" , "Back / Legs","Full Body","Rest / Cardio"]
    
    @State private var numSets = [3, 4, 4, 5, 5, 4]
    @State private var numReps = ["12-15", "10-12", "6-8", "12-15", "8-10", "15-20"]
    @State private var numExercisesPerGroup = []
    @State private var restBetween = [60, 75, 120, 45, 90, 30]
    @State private var weekNames = ["Neural Adaption", "Hypertrophy Foundation", "Strength Development", "Metabolic Stress", "Peak Intensity", "Definition"]
    
    // Daily Exercise Amounts
    @State private var dailySets = 3
    @State private var dailyReps = "12-15"
    
    // Inspiration
    @State private var quotes = [
        "Caring is the coolest thing I've ever seen anyone do."
        , "You don't have to be extreme. Just consistent."
        , "Success lies in relentless execution of the basics."
        , "Everyone knew it was impossible, until a fool who didn't know came along and did it."
        , "The rarest of all human qualities is consistency."
        , "Just make it exist first.\nYou can make it good later."
        , "If you are tired, then do it tired."
        , "All truly strong people are kind."
        , "And now that you don't have to be perfect, you can be good."
        , "What you are afraid to do is a clear indication of the next thing you need to do."
        , "She was never quite ready.\nBut she was brave.\nAnd the universe listens to the brave."
        , "Do it for you, not them."
        , "Consistency over intensity.\nProgress over perfection.\nFundamentals over fads."
        , "Start over as many times as you need to."
    ]
    
    var body : some View {
        Text(headerText)
            .font(.largeTitle)
            .foregroundStyle(.mint)
        
        
        Text(dailyQuote)
            .foregroundStyle(.mint)
            .font(.title)
            .padding()
            .frame(height: 200)
            .multilineTextAlignment(.center)
            .minimumScaleFactor(0.5)
        
        VStack{
            
            VStack {
                
                Text("Week #: \(weekNum + 1)")
                    .font(.largeTitle)
                    .padding(.top)
                    .foregroundStyle(.white)
                    .font(.title)
                
                Text("Workout #: \(dayOfWeekNum + 1)")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                    .font(.title)
            }
            .frame(width: 300)
            .padding(.bottom)
            .background(Color.mint)
            .clipShape(RoundedRectangle(cornerSize: CGSize(width: 10.0, height: 10.0)))
            
            VStack {
                
                Text("Muscle Groups:")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                    .font(.title)
                
                // Find the current daily muscle groups
                let dailyMuscleGroups = muscleGroupsByDay[workoutNum % muscleGroupsByDay.count]
                Text(dailyMuscleGroups)
                    .font(.title)
                    .foregroundStyle(.white)
                    .font(.title)
            }
            .frame(width: 300)
            .padding(.bottom)
            .background(Color.mint)
            .clipShape(RoundedRectangle(cornerSize: CGSize(width: 10.0, height: 10.0)))
            
            
            VStack {
                
                Text("Number of Sets: \(dailySets)")
                    .font(.title)
                    .padding(.top)
                    .foregroundStyle(.white)
                
            }
            .frame(width: 300)
            .padding(.bottom)
            .background(Color.mint)
            .clipShape(RoundedRectangle(cornerSize: CGSize(width: 10.0, height: 10.0)))
            
            
            VStack {
                
                Text("Number of Reps: " + dailyReps)
                    .font(.title)
                    .padding(.top)
                    .foregroundStyle(.white)
                
            }
            .frame(width: 300)
            .padding(.bottom)
            .background(Color.mint)
            .clipShape(RoundedRectangle(cornerSize: CGSize(width: 10.0, height: 10.0)))
            
            VStack {
                let buttonText = "Complete Workout"
                Button(buttonText) {
                 // TODO: User is guided to a page where they can track or record their workout with NLP or voice memo.
                 // v1: we just store it as a note value within the database.
                 
                 }
                
                Button("Generate Next Workout") {
                    // Iterate workout day
                    workoutNum += 1
                    dayOfWeekNum += 1
                    
                    // Calculate the number of weeks
                    if dayOfWeekNum > 6 {
                        weekNum += 1
                        dayOfWeekNum = 0
                        
                        // Find new weekly sets and reps
                        dailySets = numSets[weekNum % numSets.count]
                        dailyReps = numReps[weekNum % numReps.count]
                    }
                    
                    // Find Daily Muscle Groups
                    dailyQuote = quotes[workoutNum % quotes.count]
                    
                }
                
            }
            .buttonStyle(.borderedProminent)
            .tint(Color.indigo)
            .font(.title)
        }
        Spacer()
    }
}

#Preview {
    WorkoutPage()
}

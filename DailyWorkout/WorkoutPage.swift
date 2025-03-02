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
    
    // Light or Dark Mode
    @State private var lightMode = true
    @State private var lightPrimaryColor: Color = .mint
    @State private var lightSecondaryColor: Color = .indigo
    @State private var lightFontColor: Color = .white
    
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
        , "People do not decide their futures, they decide their habits and their habits decide their futures"
        , "Excellence is never an accident. It's always the result of high intention, sincere effort and intelligent execution."
        , "Go confidently in the direction of your dreams. Live the life you have imagined."
        , "The calmer you are, the clearer you think."
        , "You are what you do, not what you say you'll do."
        , "If you want to make the wrong decision, ask everyone."
        , "The measure of intelligence is the ability to change."
        , "May your choices reflect your hopes, not your fears."
        , "Be curious. What people call intelligence just boils down to curiousity."
        , "You can start late, look different, be uncertain and still succeed."
        , "Nature finds a way, you will to."
        , "We are what we repeatedly do. Excellence is not an act but a habit."
    ]
    
    var body : some View {
        GeometryReader { geometry in
            
            VStack(spacing: 0){
                
                Text(headerText)
                    .font(.largeTitle)
                    .foregroundStyle(lightPrimaryColor)
                    .frame(maxWidth:.infinity)
                
                Spacer()
                
                Text(dailyQuote)
                    .foregroundStyle(lightPrimaryColor)
                    .font(.title)
                    .padding(.vertical, 30)
                    .multilineTextAlignment(.center)
                    .minimumScaleFactor(0.5)
                    .frame(height: 200)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .padding(.horizontal)
                
                Spacer()
                Spacer()
                
                VStack{
                    
                    VStack {
                        
                        Text("Week #: \(weekNum + 1)")
                            .font(.largeTitle)
                            .padding(.top)
                            .foregroundStyle(lightFontColor)
                            .font(.title)
                        
                        Text("Workout #: \(dayOfWeekNum + 1)")
                            .font(.largeTitle)
                            .foregroundStyle(lightFontColor)
                            .font(.title)
                    }
                    .frame(width: 300)
                    .padding(.bottom)
                    .background(lightPrimaryColor)
                    .clipShape(RoundedRectangle(cornerSize: CGSize(width: 10.0, height: 10.0)))
                    
                    VStack {
                        
                        Text("Muscle Groups:")
                            .font(.largeTitle)
                            .foregroundStyle(lightFontColor)
                            .font(.title)
                            .padding(.top)
                        
                        
                        // Find the current daily muscle groups
                        
                        let dailyMuscleGroups = muscleGroupsByDay[workoutNum % muscleGroupsByDay.count]
                        
                        Text(dailyMuscleGroups)
                            .font(.title)
                            .foregroundStyle(lightFontColor)
                            .font(.title)
                    }
                    .frame(width: 300)
                    .padding(.bottom)
                    .background(lightPrimaryColor)
                    .clipShape(RoundedRectangle(cornerSize: CGSize(width: 10.0, height: 10.0)))
                    
                    
                    VStack {
                        
                        Text("Number of Sets: \(dailySets)")
                            .font(.title)
                            .padding(.top)
                            .foregroundStyle(lightFontColor)
                        
                    }
                    .frame(width: 300)
                    .padding(.bottom)
                    .background(lightPrimaryColor)
                    .clipShape(RoundedRectangle(cornerSize: CGSize(width: 10.0, height: 10.0)))
                    
                    
                    VStack {
                        
                        Text("Number of Reps: " + dailyReps)
                            .font(.title)
                            .padding(.top)
                            .foregroundStyle(lightFontColor)
                        
                    }
                    .frame(width: 300)
                    .padding(.bottom)
                    .background(lightPrimaryColor)
                    .clipShape(RoundedRectangle(cornerSize: CGSize(width: 10.0, height: 10.0)))
                    
                    Spacer()
                    
                    Divider()
                        .frame(width: geometry.size.width * 0.9)
                    
                    Spacer()
                    
                    VStack {
                        
                        Button("Generate Next Workout") {
                            // Iterate workout day
                            workoutNum += 1
                            dayOfWeekNum += 1
                            
                            // Calculate the number of weeks
                            if dayOfWeekNum > 6 {
                                weekNum += 1
                                dayOfWeekNum = 0
                                
                                // Find new weekly sets and reps
                                guard let nextSet = findNextValue(curCount: weekNum, records: numSets) else { return }
                                dailySets = nextSet
                                
                                guard let nextReps = findNextValue(curCount: weekNum, records: numReps) else { return }
                                dailyReps = nextReps
                            }
                            
                            // Find Daily Muscle Groups
                            guard let nextQuote = findNextValue(curCount: workoutNum, records: quotes) else { return }
                            dailyQuote = nextQuote
                            
                        }
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(lightSecondaryColor)
                    .font(.title)
                }
                
                Spacer()
            }
            
        }
        
    }
    
    func findNextValue<T>(curCount: Int, records: [T]) -> T? {
        guard records.count != 0 else {
            return nil
        }
        return records[curCount % records.count]
    }
}

#Preview {
    WorkoutPage()
}

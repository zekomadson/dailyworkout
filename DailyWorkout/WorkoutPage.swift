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
    
    let startDate = "03/06/2025"
    
    
    // Find number of days between start date and current date
    
    @State private var headerText = "Daily Focus"
    @State private var subHeaderText = ""
    @State private var dailyQuote = "Just make it exist first.\nYou can make it good later."
    
   // @State private var workoutNum = 0 // Number of workouts completed
   // @State private var dayOfWeekNum = 0 // Day of week within given week
   // @State private var weekNum = 0 // Week number within larger workout plan
    
    // Light or Dark Mode
    @State private var lightMode = true
    @State private var lightPrimaryColor: Color = .mint
    @State private var lightSecondaryColor: Color = .indigo
    @State private var lightFontColor: Color = .white
    
    // 6 Week Planning
    @State private var muscleGroupsByDay = ["Chest / Biceps", "Back / Triceps", "Legs / Shoulders" ,"Chest / Back" , "Arms / Core", "Full Body", "Rest / Cardio"]
    
    @State private var mgExercises = [
        "Bench Press, Incline Dumbbell Press, Cable Flyes, Chest Dips, Barbell Curls, Hammer Curls, Preacher Curls, Concentration Curls",
        "Pull-ups, Lat Pulldowns, Bent-over Rows, Seated Cable Rows, Tricep Pushdowns",
        "Squats, Leg Press, Lunges, Leg Extensions, Leg Curls, Shoulder Press, Lateral Raises, Front Raises",
        "Incline Bench Press, Decline Push-ups, Cable Crossovers, T-Bar Rows, Single-arm Dumbbell Rows, Wide-grip Pull-ups, Face Pulls",
        "EZ Bar Curls, Dumbbell Curls, Rope Pushdowns, Close-grip Bench Press, Hanging Leg Raises, Planks, Russian Twists, Cable Crunches",
        "Deadlifts, Kettlebell Swings, Push Press, Dumbbell Thrusters, Bulgarian Split Squats, Pull-ups, Renegade Rows, Mountain Climbers",
        "Light Jogging, Swimming, Yoga, Foam Rolling, Dynamic Stretching, Mobility Drills, Walking"
    ]
    
    @State private var dailyCardio = [
        "20-minute HIIT intervals (30 sec sprint, 90 sec jog)",
        "25-minute steady-state run at moderate pace",
        "15-minute stair climber followed by 10-minute rowing",
        "30-minute incline treadmill walk (12-15% incline)",
        "20-minute elliptical intervals with arms engaged",
        "Rest from traditional cardio",
        "45-60 minute zone 2 cardio (heart rate at 60-70% max)"
    ]
    
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
        , "You don't have to be extreme.\nJust consistent."
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
        , "People do not decide their futures,\nthey decide their habits\nand their habits decide their futures"
        , "Excellence is never an accident.\nIt's always the result of high intention,\nsincere effort and intelligent execution."
        , "Go confidently in the direction of your dreams.\nLive the life you have imagined."
        , "The calmer you are,\nthe clearer you think."
        , "You are what you do,\nnot what you say you'll do."
        , "If you want to make the wrong decision, ask everyone."
        , "The measure of intelligence is the ability to change."
        , "May your choices reflect your hopes, not your fears."
        , "Be curious. What people call intelligence just boils down to curiousity."
        , "You can start late, look different,\nbe uncertain and still succeed."
        , "Nature finds a way, you will to."
        , "Every action you take is a vote for the type of person you wish to become."
        , "You practice and you get better.\nIt's very simple."
        , "We are what we repeatedly do.\nExcellence is not an act but a habit."
        , "When a measure becomes a target,\nit ceases to be a good measure."
        , "Nature loves courage.\n You make the commitment and nature will respond to that commitment by removing impossible obstacles."
        ,"Wilson's Law\nIf you prioritize knowledge and intelligence,\nmoney will continue to come."
        ,"Everything I do is for the 17-year-old version of myself."
    ]
    
    var body : some View {
        GeometryReader { geometry in
            
            let workoutNum  = daysSinceDate(dateString: startDate)
            let weekNum = workoutNum / 7
            let dayOfWeekNum = workoutNum % 7
            
            VStack(spacing: 0){
                
                Text(headerText)
                    .font(.title)
                    .foregroundStyle(.indigo)
                    .frame(maxWidth:.infinity)
                
                Spacer()
                
                Text(quotes[workoutNum % quotes.count])
                    .foregroundStyle(.indigo)
                    .font(.title2)
                    .multilineTextAlignment(.center)
                    .minimumScaleFactor(0.5)
                    .frame(height: geometry.size.height * 0.17)
                    .frame(maxWidth: .infinity)
                    .padding(.horizontal)
                
                Spacer()
                
                VStack{
                    
                    VStack {
                        
                        Text("Week #: \(weekNum + 1), Workout #: \(dayOfWeekNum + 1)")
                            .font(.title2)
                            .padding(.top)
                            .foregroundStyle(lightFontColor)
                            .font(.title)

                    }
                    .frame(width: geometry.size.width * 0.9)
                    .padding(.bottom)
                    .background(.indigo.gradient)
                    .clipShape(RoundedRectangle(cornerSize: CGSize(width: 10.0, height: 10.0)))
                    
                    VStack {
                        
                        let dailyMuscleGroups = muscleGroupsByDay[workoutNum % muscleGroupsByDay.count]
                        
                        Text("Muscle Groups: \(dailyMuscleGroups)")
                            .font(.title2)
                            .foregroundStyle(.white)
                            .font(.title)
                            .padding(.top)
                        
                    }
                    .frame(width: geometry.size.width * 0.9)
                    .padding(.bottom)
                    .background(.indigo.gradient)
                    .clipShape(RoundedRectangle(cornerSize: CGSize(width: 10.0, height: 10.0)))
                    
                    
                    VStack {
                        
                        Text("Number of Sets: \(dailySets)")
                            .font(.title2)
                            .padding(.top)
                            .foregroundStyle(.white)
                        
                    }
                    .frame(width: geometry.size.width * 0.9)
                    .padding(.bottom)
                    .background(.indigo.gradient)
                    .clipShape(RoundedRectangle(cornerSize: CGSize(width: 10.0, height: 10.0)))
                    
                    
                    VStack {
                        
                        Text("Number of Reps: " + dailyReps)
                            .font(.title2)
                            .padding(.top)
                            .foregroundStyle(lightFontColor)
                        
                    }
                    .frame(width: geometry.size.width * 0.9)
                    .padding(.bottom)
                    .background(.indigo.gradient)
                    .clipShape(RoundedRectangle(cornerSize: CGSize(width: 10.0, height: 10.0)))
                    
                    VStack {
                        
                        Text("Exercises:")
                            .font(.title2)
                            .padding(.top)
                            .foregroundStyle(lightFontColor)
                        Text(mgExercises[workoutNum % 7])
                            .font(.title3)
                            .foregroundStyle(lightFontColor)
                            .multilineTextAlignment(.center)
                            .minimumScaleFactor(0.5)
                            .padding(.horizontal)
                        
                        
                    }
                    .frame(width: geometry.size.width * 0.9)
                    .padding(.bottom)
                    .background(.indigo.gradient)
                    .clipShape(RoundedRectangle(cornerSize: CGSize(width: 10.0, height: 10.0)))
                    
                    VStack {
                        
                        Text("Cardio:")
                            .font(.title2)
                            .padding(.top)
                            .foregroundStyle(lightFontColor)
                        Text(dailyCardio[workoutNum % 7])
                            .font(.title3)
                            .foregroundStyle(lightFontColor)
                            .multilineTextAlignment(.center)
                            .minimumScaleFactor(0.5)
                            .padding(.horizontal)
                        
                        
                    }
                    .frame(width: geometry.size.width * 0.9)
                    .padding(.bottom)
                    .background(.indigo.gradient)
                    .clipShape(RoundedRectangle(cornerSize: CGSize(width: 10.0, height: 10.0)))
                    
                    NavigationLink(destination: CompleteWorkout()) {
                        // TODO: Navigate to Signup Page
                        // Phone Number or User Name or Email
                        // Password
                        // Start Date
                        Text("Complete Workout")
                            .font(.title)
                            .minimumScaleFactor(0.5)
                            .foregroundStyle(.indigo)
                            .frame(width: geometry.size.width * 0.8, height: geometry.size.height * 0.05)
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(.indigo, lineWidth: 3)
                            )
                    }

                    Spacer()
                    
                    
                }
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

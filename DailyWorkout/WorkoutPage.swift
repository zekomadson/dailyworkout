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
    
    
    
    var body : some View {
        GeometryReader { geometry in
            
            let workoutNum  = daysSinceDate(dateString: startDate)
            let weekNum = workoutNum / 7
            let dayOfWeekNum = workoutNum % 7
            
            VStack(spacing: 0){
                
                let headerText = "Daily Fitness Goal"
                Text(headerText)
                    .font(.title)
                    .foregroundStyle(.indigo)
                    .frame(maxWidth:.infinity)
                
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
                    .padding(.vertical)

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

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
        ,"Ego rushes and reacts, but peace moves purposefully and gently."
        ,"Do small things.\nWith great love."
    ]

    var body: some View {
        NavigationStack {
            GeometryReader { geometry in
                
                VStack {
                    Text("Daily Habit")
                        .font(.largeTitle)
                        .padding(.vertical)
                        .frame(maxWidth: .infinity)
                        .foregroundStyle(.indigo)
                    
                    
                    Text(quotes[Int.random(in: 0..<quotes.count) % quotes.count])
                        .foregroundStyle(.indigo)
                        .font(.title2)
                        .multilineTextAlignment(.center)
                        .minimumScaleFactor(0.5)
                        .frame(height: geometry.size.height * 0.17)
                        .frame(maxWidth: .infinity)
                        .padding(.vertical)
                        //.border(.indigo)
                    
                    Spacer()
                    
                    VStack(spacing:20){
                        
                        NavigationLink(destination: WorkoutPage()) {
                            Text("Fitness")
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
                    .padding(.bottom)
                    
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

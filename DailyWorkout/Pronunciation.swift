//
//
//  WorkoutPage.swift
//  DailyWorkout
//
//  Created by Zeko Madson on 2/23/25.
//

import Foundation
import SwiftUI
import CoreData

struct Pronunciation: View {
    
    let startDate = "03/06/2025"
    
    @State private var minimalPairTexts = [
        "pat, bat"
        ,"tip, dip"
        ,"sue, shoe"
        ,"right, light"
    ]
    
    @State private var tongueTwisterTexts = [
        "Red leather, yellow leather"
        ,"Unique New York"
        ,"She sells seashells by the seashore"
        ,"Peter Piper picked a peck of pickled peppers"
    ]
    
    @State private var challengingConsonantsTexts = [
        "strong, strike, stream, struggle"
        ,"splash, splendid, splinter"
        ,"throw, through, throttle, threshold"
    ]
    
    @State private var longFormTexts = [
        "Read out loud for 5 - 10 minutes"
        ,"Talk for 2 - 5 minutes without the use of filler words (um, so, like, etc.)."
    ]

    
    @State private var minimalPairText = ""
    @State private var tongueTwisterText = ""
    @State private var challengingConsonantsText = ""
    @State private var longFormText = ""

    init() {
        _minimalPairText = State(initialValue: generateNewText(textArray: minimalPairTexts))
        _tongueTwisterText = State(initialValue: generateNewText(textArray: tongueTwisterTexts))
        _challengingConsonantsText = State(initialValue: generateNewText(textArray: challengingConsonantsTexts))
        _longFormText = State(initialValue: generateNewText(textArray: longFormTexts))
    }
    
    var body : some View {
        
        GeometryReader { geometry in
           
            
            VStack(spacing: 0){
                
                let headerText = "Daily Pronunciation Exercises"
                Text(headerText)
                    .font(.largeTitle)
                    .foregroundStyle(.indigo)
                    .frame(maxWidth:.infinity)
                    .multilineTextAlignment(.center)
                
                Spacer()
                
                let repeatHeaderText = "Repeat these phrases\n10 - 12 times each."
                Text(repeatHeaderText)
                    .font(.title)
                    .foregroundStyle(.indigo)
                    .frame(maxWidth:.infinity)
                    .multilineTextAlignment(.center)
                    .padding(.bottom)
                
                VStack {
                    let minimalPairHeader = "Minimal Pair:"

                    Text(minimalPairHeader)
                        .font(.title)
                        .padding(.top)
                        .foregroundStyle(.white)
                    
                    Text(minimalPairText)
                        .font(.title3)
                        .foregroundStyle(.white)
                        .multilineTextAlignment(.center)
                        .minimumScaleFactor(0.5)
                        .padding(.horizontal)
        
                }
                .frame(width: geometry.size.width * 0.9, height: geometry.size.height * 0.09)
                .padding(.bottom)
                .background(.indigo.gradient)
                .clipShape(RoundedRectangle(cornerSize: CGSize(width: 10.0, height: 10.0)))
                .padding(.bottom)


                VStack {
                    let tongueTwisterHeader = "Tongue Twister:"

                    Text(tongueTwisterHeader)
                        .font(.title)
                        .padding(.top)
                        .foregroundStyle(.white)
                    Text(tongueTwisterText)
                        .font(.title3)
                        .foregroundStyle(.white)
                        .multilineTextAlignment(.center)
                        .minimumScaleFactor(0.5)
                        .padding(.horizontal)
                    
                    
                }
                .frame(width: geometry.size.width * 0.9, height: geometry.size.height * 0.09)
                .padding(.bottom)
                .background(.indigo.gradient)
                .clipShape(RoundedRectangle(cornerSize: CGSize(width: 10.0, height: 10.0)))
                .padding(.bottom)

                VStack {
                    let challengingConsonantHeader = "Challenging Consonants:"

                    Text(challengingConsonantHeader)
                        .font(.title)
                        .padding(.top)
                        .foregroundStyle(.white)
                    
                    Text(challengingConsonantsText)
                        .font(.title3)
                        .foregroundStyle(.white)
                        .multilineTextAlignment(.center)
                        .minimumScaleFactor(0.5)
                        .padding(.horizontal)
        
                }
                .frame(width: geometry.size.width * 0.9, height: geometry.size.height * 0.09)
                .padding(.bottom)
                .background(.indigo.gradient)
                .clipShape(RoundedRectangle(cornerSize: CGSize(width: 10.0, height: 10.0)))
                .padding(.bottom)

                Divider()
                    .frame(width: geometry.size.width * 0.9)
                    .padding(.bottom)
                
                VStack {
                    let longFormHeader = "Long Form Exercise:"

                    Text(longFormHeader)
                        .font(.title)
                        .padding(.top)
                        .foregroundStyle(.white)
                    
                    Text(longFormText)
                        .font(.title3)
                        .foregroundStyle(.white)
                        .multilineTextAlignment(.center)
                        .minimumScaleFactor(0.5)
                        .padding(.horizontal)
        
                }
                .frame(width: geometry.size.width * 0.9, height: geometry.size.height * 0.12)
                .padding(.bottom)
                .background(.indigo.gradient)
                .clipShape(RoundedRectangle(cornerSize: CGSize(width: 10.0, height: 10.0)))
                
                Spacer()
                
                Button(action: {
                    
                    minimalPairText = generateNewText(textArray: minimalPairTexts)
                    tongueTwisterText = generateNewText(textArray: tongueTwisterTexts)
                    challengingConsonantsText = generateNewText(textArray: challengingConsonantsTexts)
                    longFormText = generateNewText(textArray: longFormTexts)
                    
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
    
    func generateNewText(textArray: [String]) -> String {
        
        let newTextIdx = Int.random(in: 0..<textArray.count)
        let newText = textArray[newTextIdx]
        
        return newText
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
    Pronunciation()
}

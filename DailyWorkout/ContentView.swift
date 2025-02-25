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
        VStack {
            Image(systemName: imageSystemName)
                .resizable()
                .scaledToFit()
                .frame(width: 250, height: 250)
            
            
            Text(imageText)
                .font(.title)
        }
        
        Button("Press Me!") {
            // imageSystemName == image2 ? imageText = message1 : imageText = message2
            // imageSystemName == image2 ? imageSystemName = image1 : imageSystemName = image2
                
        }
        .buttonStyle(.borderedProminent)
        .tint(.mint)
        .font(.title2)
        
    }
}

#Preview {
    ContentView()
}

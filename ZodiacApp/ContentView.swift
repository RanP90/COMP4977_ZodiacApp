//
//  ContentView.swift
//  COMP4977 Assignment1: ZodiacApp
//  Created by Ran Park (A01331544) & Aric or (A01337169)
//
import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(zodiacData) { zodiac in
                NavigationLink(destination: ZodiacDetailView(zodiac: zodiac)) {
                    HStack {
                        Text(zodiac.symbol)
                            .font(Theme.subtitleFont)
                            .foregroundColor(Theme.primaryTextColor) // White for the icon text
                        
                        Text(zodiac.name)
                            .font(Theme.bodyFont)
                            .foregroundColor(Theme.primaryTextColor) // White for the name
                    }
                }
                .listRowBackground(Color.clear) // Ensure the list rows are transparent
            }
            .navigationTitle("")
                        .navigationBarTitleDisplayMode(.inline)
                        .toolbar {
                            ToolbarItem(placement: .principal) {
                                // Custom title centered
                                Text("Zodiac Signs")
                                    .font(Theme.titleFont)
                                    .foregroundColor(Theme.primaryTextColor) // White text
                            }
                        }
                        .scrollContentBackground(.hidden) // Hide default background
                        .background(Theme.backgroundGradient.edgesIgnoringSafeArea(.all)) // Apply the background gradient directly
        }
    }
}

#Preview {
    MainTabView()
}

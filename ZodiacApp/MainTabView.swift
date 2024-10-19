//
//  MainTabView.swift
//  ZodiacApp
//
import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }

            CalculatorView()
                .tabItem {
                    Image(systemName: "calendar")
                    Text("Calculator")
                }

            AboutView()
                .tabItem {
                    Image(systemName: "info.circle")
                    Text("About")
                }
        }
        .accentColor(.white) // Tab bar icon and text color
        .background(Theme.backgroundGradient.edgesIgnoringSafeArea(.all)) // Apply the background gradient directly
    }
}

#Preview {
    MainTabView()
}

//
//  Theme.swift
//  ZodiacApp
//
import SwiftUI

/*
struct Theme {
    static let backgroundGradient = LinearGradient(
        gradient: Gradient(colors: [Color(red: 0.6, green: 0.4, blue: 0.8), Color(red: 0.3, green: 0.6, blue: 0.9)]),
        startPoint: .top,
        endPoint: .bottom
    )
    
    static let primaryTextColor = Color.white
    static let secondaryTextColor = Color(red: 0.8, green: 0.7, blue: 1.0) // Softer text color
    
    static let titleFont = Font.system(size: 34, weight: .bold, design: .rounded)
    static let bodyFont = Font.system(size: 18, weight: .medium, design: .rounded)
    
    static let buttonColor = Color.purple.opacity(0.8)
    static let buttonTextColor = Color.white
    
    static let subtitleFont = Font.system(size: 20, weight: .semibold, design: .rounded)
}
*/

struct Theme {
    // Use colors from the Assets.xcassets
    static let backgroundGradient = LinearGradient(
        gradient: Gradient(colors: [Color("GradientTopColor"), Color("GradientBottomColor")]),
        startPoint: .top,
        endPoint: .bottom
    )
    
    static let primaryTextColor = Color("PrimaryTextColor") // From Assets
    static let secondaryTextColor = Color("SecondaryTextColor") // From Assets
    
    static let titleFont = Font.system(size: 34, weight: .bold, design: .rounded)
    static let bodyFont = Font.system(size: 18, weight: .medium, design: .rounded)
    
    static let buttonColor = Color("ButtonBackgroundColor") // From Assets
    static let buttonTextColor = Color("ButtonTextColor") // From Assets
    
    static let subtitleFont = Font.system(size: 20, weight: .semibold, design: .rounded)
}

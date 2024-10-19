//
//  Theme.swift
//  ZodiacApp
//
import SwiftUI

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

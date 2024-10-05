//
//  UINavigationAppearance.swift
//  ZodiacApp
//

import SwiftUI

// A function to configure the navigation bar appearance
func setupNavigationAppearance() {
    let appearance = UINavigationBarAppearance()
    appearance.configureWithOpaqueBackground()
    appearance.backgroundColor = UIColor.clear // Transparent background
    
    // Set large title attributes
    appearance.largeTitleTextAttributes = [
        .foregroundColor: UIColor.white,
        .font: UIFont.systemFont(ofSize: 32, weight: .bold) // Set larger and bold font
    ]
    
    // Set inline title attributes (for inline mode)
    appearance.titleTextAttributes = [
        .foregroundColor: UIColor.white,
        .font: UIFont.systemFont(ofSize: 24, weight: .bold) // Customize inline title font size
    ]
    
    // Apply the appearance settings
    UINavigationBar.appearance().standardAppearance = appearance
    UINavigationBar.appearance().scrollEdgeAppearance = appearance
}

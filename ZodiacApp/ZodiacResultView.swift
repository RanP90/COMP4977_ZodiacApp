//
//  ZodiacResultView.swift
//  ZodiacApp
//

import SwiftUI

struct ZodiacResultView: View {
    var zodiac: Zodiac?

    init(zodiac: Zodiac?) { // Initialize with a zodiac argument
        self.zodiac = zodiac
        setupNavigationAppearance() // Configure the navigation bar appearance
    }

    var body: some View {
        ZStack {
            // Apply the galaxy background gradient
            Theme.backgroundGradient
                .edgesIgnoringSafeArea(.all)

            VStack {
                if let zodiac = zodiac {
                    Image(zodiac.imageName)
                        .resizable()
                        .frame(width: 150, height: 150) // Apply the larger image size
                        .clipShape(Circle())
                        .padding()

                    Text(zodiac.name)
                        .font(.system(size: 32, weight: .bold)) // Increase font size to match ZodiacDetailView
                        .foregroundColor(.white) // Use white text color
                        .padding(.top, 10)

                    Text(zodiac.dateRange)
                        .font(.system(size: 18, weight: .medium)) // Increase date range font size
                        .foregroundColor(.white)
                        .padding(.bottom, 10)

                    Text(zodiac.description)
                        .font(.system(size: 16)) // Set description font size
                        .foregroundColor(.white) // Use white text color
                        .multilineTextAlignment(.center)
                        .padding()
                } else {
                    Text("No Zodiac sign available.")
                        .font(.system(size: 20, weight: .medium))
                        .foregroundColor(.white)
                }
            }
        }
        .navigationBarTitle("Zodiac Result", displayMode: .inline) // Inline title
    }
}

#Preview {
    if let sampleZodiac = zodiacData.first {
        ZodiacResultView(zodiac: sampleZodiac) // Provide a valid Zodiac object
    } else {
        ZodiacResultView(zodiac: nil) // If zodiacData is empty, use nil
    }
}

//
//  CalculatorView.swift
//  ZodiacApp
//
import SwiftUI

struct CalculatorView: View {
    @State private var birthdate = Date()
    @State private var zodiacResult: Zodiac? = nil
    @State private var showResult = false

    var body: some View {
        NavigationView {
            VStack {
                Text("Find Your Zodiac Sign")
                    .font(Theme.titleFont)
                    .foregroundColor(Theme.primaryTextColor)
                    .padding(.top, 20)

                DatePicker("Select your birthdate:", selection: $birthdate, displayedComponents: .date)
                    .datePickerStyle(GraphicalDatePickerStyle())
                    .padding()

                NavigationLink(destination: ZodiacResultView(zodiac: zodiacResult), isActive: $showResult) {
                    Button(action: calculateZodiac) {
                        Text("Calculate")
                            .font(Theme.subtitleFont)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Theme.buttonColor)
                            .foregroundColor(Theme.buttonTextColor)
                            .cornerRadius(10)
                    }
                }
                .padding()

                Spacer()
            }
            .padding()
            .background(Theme.backgroundGradient.edgesIgnoringSafeArea(.all)) // Apply background
        }
    }

    func calculateZodiac() {
        let calendar = Calendar.current
        let birthMonth = calendar.component(.month, from: birthdate)
        let birthDay = calendar.component(.day, from: birthdate)

        zodiacResult = getZodiacSign(month: birthMonth, day: birthDay)
        showResult = true
    }

    func getZodiacSign(month: Int, day: Int) -> Zodiac? {
        switch (month, day) {
        case (3, 21...31), (4, 1...19):
            return zodiacData.first { $0.name == "Aries" }
        case (4, 20...30), (5, 1...20):
            return zodiacData.first { $0.name == "Taurus" }
        case (5, 21...31), (6, 1...20):
            return zodiacData.first { $0.name == "Gemini" }
        case (6, 21...30), (7, 1...22):
            return zodiacData.first { $0.name == "Cancer" }
        case (7, 23...31), (8, 1...22):
            return zodiacData.first { $0.name == "Leo" }
        case (8, 23...31), (9, 1...22):
            return zodiacData.first { $0.name == "Virgo" }
        case (9, 23...30), (10, 1...22):
            return zodiacData.first { $0.name == "Libra" }
        case (10, 23...31), (11, 1...21):
            return zodiacData.first { $0.name == "Scorpio" }
        case (11, 22...30), (12, 1...21):
            return zodiacData.first { $0.name == "Sagittarius" }
        case (12, 22...31), (1, 1...19):
            return zodiacData.first { $0.name == "Capricorn" }
        case (1, 20...31), (2, 1...18):
            return zodiacData.first { $0.name == "Aquarius" }
        case (2, 19...29), (3, 1...20):
            return zodiacData.first { $0.name == "Pisces" }
        default:
            return nil
        }
    }
}

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
    CalculatorView()
}

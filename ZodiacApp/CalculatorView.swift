//
//  CalculatorView.swift
//  ZodiacApp
//

import SwiftUI

struct CalculatorView: View {
    @State private var birthdate = Date()
    @State private var zodiacResult: Zodiac? = nil
    @State private var showResult = false
    @State private var showAlert = false

    var body: some View {
        NavigationStack {
            VStack {
                Text("Find Your Zodiac Sign")
                    .font(Theme.titleFont)
                    .foregroundColor(Theme.primaryTextColor)
                    .padding(.top, 20)

                DatePicker("Select your birthdate:", selection: $birthdate, displayedComponents: .date)
                    .datePickerStyle(GraphicalDatePickerStyle())
                    .padding()

                Button(action: calculateZodiac) {
                    Text("Calculate")
                        .font(Theme.subtitleFont)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Theme.buttonColor)
                        .foregroundColor(Theme.buttonTextColor)
                        .cornerRadius(10)
                }
                .padding()
                
                Spacer()
            }
            .padding()
            .background(Theme.backgroundGradient.edgesIgnoringSafeArea(.all))
            .alert(isPresented: $showAlert) {
                Alert(title: Text("Invalid Date"), message: Text("The selected birthdate is in the future. Please select a valid date."), dismissButton: .default(Text("OK")))
            }
            .navigationDestination(isPresented: $showResult) {
                ZodiacResultView(zodiac: zodiacResult) 
            }
        }
    }

    func calculateZodiac() {
        let currentDate = Date()

        // Ensure the selected birthdate is not in the future
        guard birthdate <= currentDate else {
            showAlert = true // Show alert for invalid date
            return
        }
        
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
#Preview {
    CalculatorView()
}



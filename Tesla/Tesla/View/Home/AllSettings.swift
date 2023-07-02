//
//  AllSettings.swift
//  Tesla
//
//  Created by Marc on 28/06/2023.
//

import SwiftUI

struct AllSettings: View {
    var body: some View {
        VStack {
            CategoryHeader(title: "All Settings", showEdit: false)
            LazyVGrid(columns: [GridItem(.fixed(170)), GridItem(.fixed(170))]) {
                NavigationLink(destination: CarControlsView()) {
                    SettingCard(
                        icon: "car.fill",
                        label: "Controls",
                        message: "Car Locked"
                    )
                }
                SettingCard(
                    icon: "fanblades.fill",
                    label: "Climate",
                    message: "Interior 22°C",
                    backgroundColor: Color("Blue")
                )
                NavigationLink(destination: LocationView()) {
                    SettingCard(
                        icon: "location.fill",
                        label: "Location",
                        message: "Paris"
                    )                    
                }
                SettingCard(
                    icon: "shield.checkerboard",
                    label: "Security",
                    message: "0 event detected"
                )
                SettingCard(
                    icon: "sparkles",
                    label: "Upgrade",
                    message: "3 upgrades available"
                )
            }
        }
    }
}

struct AllSettings_Previews: PreviewProvider {
    static var previews: some View {
        AllSettings()
    }
}

//
//  ContentView.swift
//  Tesla
//
//  Created by Marc on 25/06/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var openVoiceCommand = false
    @State private var openCharging = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                ScrollView {
                    VStack(spacing: 16) {
                        HomeHeader()
                        CustomDivider()
                        CarSection(chargingLevel: 420, openCharging: $openCharging)
                        CustomDivider()
                        CategoryView(
                            title: "Quick Shortcuts",
                            showEdit: true,
                            actionItems: quickShortcuts
                        )
                        CustomDivider()
                        CategoryView(
                            title: "Recent Actions",
                            actionItems: recentActions
                        )
                        CustomDivider()
                        AllSettings()
                        ReorderButton()
                    }
                    .padding()
                }
                
                VoiceCommandButton(isOpen: $openVoiceCommand)
                
                if (openVoiceCommand || openCharging) {
                    Color.black.opacity(0.5)
                        .edgesIgnoringSafeArea(.all)
                        .transition(.opacity)
                        .onTapGesture {
                            withAnimation {
                                openVoiceCommand = false
                                openCharging = false
                            }
                        }
                }
                
                if openVoiceCommand {
                    VoiceCommandView(text: "Go to Eiffel Tower", isOpen: $openVoiceCommand)
                        .zIndex(1)
                        .transition(.move(edge: .bottom))
                }
                
                if openCharging {
                    ChargingView()
                        .zIndex(1)
                        .transition(.move(edge: .bottom))
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("DarkGray"))
            .foregroundColor(Color.white)
            .navigationTitle("Tesla")
            .toolbar(.hidden)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

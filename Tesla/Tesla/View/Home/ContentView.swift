//
//  ContentView.swift
//  Tesla
//
//  Created by Marc on 25/06/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var openVoiceCommand = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                ScrollView {
                    VStack(spacing: 16) {
                        HomeHeader()
                        CustomDivider()
                        CarSection()
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
                
                if openVoiceCommand {
                    VoiceCommandView(text: "Go to Eiffel Tower", isOpen: $openVoiceCommand)
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

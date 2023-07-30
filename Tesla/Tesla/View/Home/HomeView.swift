//
//  HomeView.swift
//  Tesla
//
//  Created by Marc on 30/07/2023.
//

import SwiftUI

struct HomeView: View {
    @State private var openVoiceCommand = false
    @State private var openCharging = false
    @State private var openMedia = false
    @State private var actionText = ""
    @State private var actionIcon = ""
    @State private var openAction = false
    
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
                            actionItems: quickShortcuts,
                            openAction: $openAction,
                            actionText: $actionText,
                            actionIcon: $actionIcon,
                            openCharging: $openCharging,
                            openMedia: $openMedia
                        )
                        CustomDivider()
                        CategoryView(
                            title: "Recent Actions",
                            actionItems: recentActions,
                            openAction: $openAction,
                            actionText: $actionText,
                            actionIcon: $actionIcon,
                            openCharging: $openCharging,
                            openMedia: $openMedia
                        )
                        CustomDivider()
                        AllSettings()
                        ReorderButton()
                    }
                    .padding()
                }
                
                VoiceCommandButton(isOpen: $openVoiceCommand)
                
                if (openVoiceCommand || openCharging || openMedia || openAction) {
                    Color.black.opacity(0.5)
                        .edgesIgnoringSafeArea(.all)
                        .transition(.opacity)
                        .onTapGesture {
                            withAnimation {
                                openVoiceCommand = false
                                openCharging = false
                                openMedia = false
                                openAction = false
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
                
                if openMedia {
                    MediaPlayerView()
                        .zIndex(1)
                        .transition(.move(edge: .bottom))
                }
                
                if openAction {
                    ActionNotification(icon: actionIcon, text: actionText, isOpen: $openAction)
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

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

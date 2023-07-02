//
//  ContentView.swift
//  Tesla
//
//  Created by Marc on 25/06/2023.
//

import SwiftUI

struct ContentView: View {
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
                
                VoiceCommandButton()
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
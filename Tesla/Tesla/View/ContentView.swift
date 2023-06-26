//
//  ContentView.swift
//  Tesla
//
//  Created by Marc on 25/06/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            ScrollView {
                VStack(spacing: 20) {
                    HomeHeader()
                    CustomDivider()
                    CarSection()
                    CustomDivider()
                    CategoryHeader(title: "Quick Shortcuts", showEdit: true)
                    CustomDivider()
                    CategoryHeader(title: "Recent Actions")
                }
                .padding()
            }
            
            VoiceCommandButton()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("DarkGray"))
        .foregroundColor(Color.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

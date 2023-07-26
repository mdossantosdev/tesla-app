//
//  CategoryView.swift
//  Tesla
//
//  Created by Marc on 26/06/2023.
//

import SwiftUI

struct CategoryView: View {
    let title: String
    var showEdit: Bool = false
    var actionItems: [ActionItem]
    
    @Binding var openAction: Bool
    @Binding var actionText: String
    @Binding var actionIcon: String
    @Binding var openCharging: Bool
    @Binding var openMedia: Bool
    
    var body: some View {
        VStack {
            CategoryHeader(title: title, showEdit: showEdit)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 10) {
                    if title == "Quick Shortcuts" {
                        Button(action: {
                            withAnimation {
                                openCharging = true
                            }
                        }) {
                            ActionButton(icon: chargingShortcut.icon, label: chargingShortcut.label)
                        }
                        Button(action: {
                            withAnimation {
                                openMedia = true
                            }
                        }) {
                            ActionButton(icon: mediaShortcut.icon, label: mediaShortcut.label)
                        }
                    }
                    
                    ForEach(actionItems, id: \.self) { item in
                        Button(action: {
                            withAnimation {
                                openAction = true
                            }
                            actionText = item.label
                            actionIcon = item.icon
                        }) {
                            ActionButton(icon: item.icon, label: item.label)
                        }
                    }
                }
            }
        }
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color("DarkGray").ignoresSafeArea()
            CategoryView(
                title: "Quick Shortcuts",
                showEdit: false,
                actionItems: quickShortcuts,
                openAction: .constant(true),
                actionText: .constant(""),
                actionIcon: .constant(""),
                openCharging: .constant(true),
                openMedia: .constant(false)
            )
        }
    }
}

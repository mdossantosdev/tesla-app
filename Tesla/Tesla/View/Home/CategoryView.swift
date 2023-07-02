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
    
    var body: some View {
        VStack {
            CategoryHeader(title: title, showEdit: showEdit)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 10) {
                    ForEach(actionItems, id: \.self) { item in
                        ActionButton(icon: item.icon, label: item.label)
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
            CategoryView(title: "Quick Shortcuts", showEdit: false, actionItems: quickShortcuts)
        }
    }
}

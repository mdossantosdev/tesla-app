//
//  CategoryHeader.swift
//  Tesla
//
//  Created by Marc on 26/06/2023.
//

import SwiftUI

struct CategoryHeader: View {
    let title: String
    var showEdit: Bool
    
    var body: some View {
        VStack {
            HStack(alignment: .center) {
                Text(title)
                    .font(.title2)
                    .fontWeight(.semibold)
                Spacer()
                
                if showEdit {
                    Button(action: {}, label: {
                        Text("Edit")
                            .foregroundColor(Color.gray)
                            .fontWeight(.medium)
                    })
                }
            }
        }
    }
}

struct CategoryHeader_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHeader(title: "Quick Shortcuts", showEdit: true)
    }
}

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
    
    var body: some View {
        VStack {
            CategoryHeader(title: title, showEdit: showEdit)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {}
            }
        }
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(title: "Quick Shortcuts", showEdit: false)
    }
}

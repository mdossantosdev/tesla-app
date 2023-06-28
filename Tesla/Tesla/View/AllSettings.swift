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
        }
    }
}

struct AllSettings_Previews: PreviewProvider {
    static var previews: some View {
        AllSettings()
    }
}

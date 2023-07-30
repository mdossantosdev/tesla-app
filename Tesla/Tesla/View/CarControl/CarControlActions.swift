//
//  CarControlActions.swift
//  Tesla
//
//  Created by Marc on 01/07/2023.
//

import SwiftUI

struct CarControlActions: View {
    var body: some View {
        VStack(spacing: 20) {
            HStack(alignment: .center, spacing: 30) {
                Button(action: {}) {
                    ActionButton(icon: carControls[0].icon, label: carControls[0].label)
                }
                Button(action: {}) {
                    ActionButton(icon: carControls[1].icon, label: carControls[1].label)
                }
                Button(action: {}) {
                    ActionButton(icon: carControls[2].icon, label: carControls[2].label)
                }
            }
            HStack(alignment: .center, spacing: 30) {
                Button(action: {}) {
                    ActionButton(icon: carControls[3].icon, label: carControls[3].label)
                }
                Button(action: {}) {
                    ActionButton(icon: carControls[4].icon, label: carControls[4].label)
                }
            }
        }
        .padding()
    }
}

struct CarControlActions_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color("DarkGray").ignoresSafeArea()
            CarControlActions()
        }
    }
}

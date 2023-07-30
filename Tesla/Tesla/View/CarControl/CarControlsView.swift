//
//  CarControlsView.swift
//  Tesla
//
//  Created by Marc on 30/06/2023.
//

import SwiftUI

struct CarControlsView: View {
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                VStack(alignment: .leading) {
                    HStack {
                        Button(action: {
                            dismiss()
                        }) {
                            GeneralButton(icon: "chevron.left")
                        }
                        Spacer()
                    }
                    Text("Car Control")
                        .font(.title)
                        .fontWeight(.semibold)
                }
                CustomDivider()
                CarLockButton()
                CustomDivider()
                CarControlActions()
                CustomDivider()
                ValetModeView()
            }
            .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("DarkGray"))
        .foregroundColor(Color.white)
        .toolbar(.hidden)
    }
}

struct CarControlsView_Previews: PreviewProvider {
    static var previews: some View {
        CarControlsView()
    }
}

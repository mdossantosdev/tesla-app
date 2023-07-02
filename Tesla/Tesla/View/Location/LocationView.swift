//
//  LocationView.swift
//  Tesla
//
//  Created by Marc on 02/07/2023.
//

import SwiftUI

struct LocationView: View {
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Button(action: {
                        dismiss()
                    }) {
                        GeneralButton(icon: "chevron.left")
                    }
                    
                    Spacer()
                    
                    Button(action: {}) {
                        GeneralButton(icon: "speaker.wave.2.fill")
                    }
                }
                .padding()
                
                Spacer()
            }
            
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("DarkGray"))
        .foregroundColor(Color.white)
        .toolbar(.hidden)
    }
}

struct LocationView_Previews: PreviewProvider {
    static var previews: some View {
        LocationView()
    }
}

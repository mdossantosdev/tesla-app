//
//  SplashView.swift
//  Tesla
//
//  Created by Marc on 30/07/2023.
//

import SwiftUI

struct SplashView: View {
    @State private var scale = 0.0
    @Binding var isActive: Bool
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(Color("DarkGray"))
                .ignoresSafeArea()
            
            GeometryReader { proxy in
                let size = proxy.size
                
                ZStack {
                    Image("tesla-logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: size.width / 3, height: size.width / 3)
                        .scaleEffect(scale)
                        .animation(.interactiveSpring(
                            response: 1,
                            dampingFraction: 0.4,
                            blendDuration: 1.5
                        ), value: scale)
                        .onAppear() {
                            scale = 1
                            
                            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                                withAnimation {
                                    self.isActive = true
                                }
                            }
                        }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            }
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView(isActive: .constant(true))
    }
}

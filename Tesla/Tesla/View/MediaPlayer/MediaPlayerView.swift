//
//  MediaPlayerView.swift
//  Tesla
//
//  Created by Marc on 14/07/2023.
//

import SwiftUI

struct MediaPlayerView: View {
    let title: String = "Nightcall"
    let duration: Double = 4.17
    let artist: String = "Kavinsky"
    let album: String = "Outrun"
    let coverURL: String = "https://upload.wikimedia.org/wikipedia/en/a/a2/Kavinsky_-_OutRun.png"
    
    @State private var value: Double = 1.55
    
    var body: some View {
        VStack {
            Spacer()
            
            VStack(spacing: 20) {
                HStack(alignment: .center, spacing: 10) {
                    AsyncImage(url: URL(string: coverURL)) { image in
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                    } placeholder: {
                        ZStack {
                            Color("Green")
                            Image(systemName: "photo.fill")
                                .foregroundColor(Color("DarkGray"))
                        }
                    }
                    .frame(width: 64, height: 64)
                    .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                    .cornerRadius(10)
                    
                    VStack(alignment: .leading, spacing: 5) {
                        Text(title)
                            .font(.headline)
                            .fontWeight(.semibold)
                        
                        Text("\(artist) • \(album)")
                            .font(.footnote)
                            .fontWeight(.medium)
                            .opacity(0.5)
                    }
                    Spacer()
                }
                
                VStack(spacing: 0) {
                    HStack {
                        Text(String(format: "%.2f", value))
                        Spacer()
                        Text(String(format: "-%.2f", duration - value))
                    }
                    .font(.system(size: 14, weight: .medium, design: .monospaced))
                    .opacity(0.5)
                    
                    Slider(value: $value, in: 0...duration, step: 0.01)
                        .tint(Color("Green"))
                }
                
                CustomDivider()
                
                HStack {
                    HStack(alignment: .center,spacing: 20) {
                        Button(action: {}) {
                            Image(systemName: "backward.fill")
                                .font(.system(size: 20, weight: .semibold, design: .default))
                                .opacity(0.5)
                        }
                        Button(action: {}) {
                            Image(systemName: "playpause.fill")
                                .font(.system(size: 20, weight: .semibold, design: .default))
                        }
                        Button(action: {}) {
                            Image(systemName: "forward.fill")
                                .font(.system(size: 20, weight: .semibold, design: .default))
                                .opacity(0.5)
                        }
                    }
                    Spacer()
                    
                    HStack(alignment: .center, spacing: 20) {
                        Button(action: {}) {
                            Image(systemName: "minus")
                                .font(.system(size: 20, weight: .semibold, design: .default))
                                .opacity(0.5)
                        }
                        Button(action: {}) {
                            Image(systemName: "speaker.wave.2.fill")
                                .font(.system(size: 20, weight: .semibold, design: .default))
                        }
                        Button(action: {}) {
                            Image(systemName: "plus")
                                .font(.system(size: 20, weight: .semibold, design: .default))
                                .opacity(0.5)
                        }
                    }
                }
                
            }
            .padding(.bottom, 20)
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color("DarkGray"))
            .foregroundColor(Color.white)
            .cornerRadius(16, corners: [.topLeft, .topRight])
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct MediaPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        MediaPlayerView()
    }
}

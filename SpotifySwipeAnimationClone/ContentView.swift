//
//  ContentView.swift
//  SpotifySwipeAnimationClone
//
//  Created by Elliot Knight on 09/02/2022.
//

import SwiftUI

struct ContentView: View {
    // @State private var musics: Music
    @State private var slider: Double = 45
    @State private var isFavorite: Bool = false
    @State private var isPlaying: Bool = false
    var body: some View {
        VStack {
            ZStack {
                LinearGradient(colors: [.gray, .black], startPoint: .topLeading, endPoint: .bottomTrailing)
                    .ignoresSafeArea()
                VStack {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(alignment: .center, spacing: 40) {
                            ForEach(musics) { music in
                                VStack(alignment: .leading) {
                                CoverImageCell(music: music)
                                    Text(music.musicName)
                                        .padding(.top)
                                        .padding(.bottom, 1)
                                        .font(.title2.bold())
                                        .foregroundColor(.white)
                                    HStack {
                                    Text(music.artistName)
                                        .foregroundColor(.white)
                                        Spacer()
                                        Button(action: { self.isFavorite.toggle() }, label: {
                                            Image(systemName: music.isFavorite ? "heart.fill" : "heart")
                                                .foregroundColor(isFavorite ? .green : .secondary)
                                                .font(.system(size: 25))
                                        })
                                    }
                                }
                                
                            }
                        }
                        .padding(.leading, 20)
                        .padding(.trailing, 20)
                    }
                    Slider(value: $slider, in: 1...100)
                        .padding()
                    
                    
                    //  Buttons
                    HStack(spacing: 28) {
                        
                        Button(action: {
                            // Try to shuffle through the array
                        }, label: {
                            Image(systemName: "shuffle")
                        })
                            .font(.system(size: 25))
                        
                        
                        
                        Button(action: { }, label: {
                            Image(systemName: "backward.end.fill")
                        })
                            .font(.system(size: 40))
                        
                        Button(action: { self.isPlaying.toggle() }, label: { Image(systemName: isPlaying ? "pause.circle.fill" : "play.circle.fill")})
                            .font(.system(size: 70))
                        
                        Button(action: {}, label: {
                            Image(systemName: "forward.end.fill")
                        })
                            .font(.system(size: 40))
                        
                        Button(action: {}, label: {
                            Image(systemName: "repeat")
                        })
                            .font(.system(size: 25))
                        
                    }
                    .foregroundColor(.white)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  Music.swift
//  SpotifySwipeAnimationClone
//
//  Created by Elliot Knight on 09/02/2022.
//

import Foundation



struct Music: Identifiable{
    var id = UUID()
    let cover: String
    let musicName: String
    let albumName: String
    let artistName: String
    var isFavorite: Bool
}


var musics: [Music] =  [
    Music(cover: "whiteAlbum", musicName: "Back In The USSR", albumName: "The White Album (1968)", artistName: "The Beatles", isFavorite: false),
    Music(cover: "thunderstruck", musicName: "Thunderstruck", albumName: "The Razors Edge", artistName: "AC⚡️DC", isFavorite: false),
    Music(cover: "nelson", musicName: "On The Road Again", albumName: "On The Road Again", artistName: "Willie Nelson", isFavorite: false),
    Music(cover: "cbl", musicName: "Papi's Home", albumName: "Certified Lover Boy", artistName: "Drake", isFavorite: false)
]

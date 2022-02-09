//
//  CoverImageCell.swift
//  SpotifySwipeAnimationClone
//
//  Created by Elliot Knight on 09/02/2022.
//

import SwiftUI

struct CoverImageCell: View {
    let music: Music
    
    var body: some View {
            Image(music.cover).resizable().frame(width: 350, height: 350, alignment: .center)
            .scaledToFit()
    }
}

struct CoverImageCell_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageCell(music: Music(cover: "nelson", musicName: "oo", albumName: "ee", artistName: "nelson", isFavorite: false))
    }
}

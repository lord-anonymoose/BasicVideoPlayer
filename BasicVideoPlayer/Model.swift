//
//  Content.swift
//  BasicVideoPlayer
//
//  Created by Philipp Lazarev on 15.06.2024.
//

import Foundation
import UIKit

struct YouTubeVideo {
    var id: String
    var title: String
    var author: String
    
    init(id: String, title: String, author: String) {
        self.id = id
        self.title = title
        self.author = author
    }
}

var myPlaylist: [YouTubeVideo] = [
    YouTubeVideo(id: "Q_EYoV1kZWk", title: "Apple Intelligence in 5 minutes", author: "Apple"),
    YouTubeVideo(id: "pMX2cQdPubk", title: "Talking Tech and AI with Tim Cook!", author: "Marques Brownlee"),
    YouTubeVideo(id: "kQUJfpcSRQ0", title: "Franz Beckenbauer - Gute Freunde kann niemand trennen", author: "Schlagermusikgirl25"),
    YouTubeVideo(id: "rYkK4HHTBQ4", title: "OneRepublic - Sunshine (Official Lyric Video)", author: "OneRepublic"),
    YouTubeVideo(id: "WN_dhiDmQ-c", title: "UEFA Euro 2024 | Official Intro", author: "Football Time"),
    YouTubeVideo(id: "W9S7S67V2BY", title: "OFFICIAL: Deutschland Torhymne (Germany Goal Song)", author: "Elite Goal Horns"),
]

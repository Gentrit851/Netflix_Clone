//
//  YoutubeSearchResponse.swift
//  Netflix_Clone
//
//  Created by Florian Saqipi on 28.2.24.
//

import Foundation

struct YoutubeSearchResponse : Codable{
    let items : [VideoElement]
}

struct VideoElement: Codable{
    let id : IdVideoElement
}

struct IdVideoElement: Codable{
    let kind: String
    let videoId: String
}

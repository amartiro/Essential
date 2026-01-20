//
//  RemoteFeedItem.swift
//  EssentialFeed
//
//  Created by Artak Martirosyan on 02.01.26.
//

import Foundation

struct RemoteFeedItem: Decodable {
    let id: UUID
    let description: String?
    let location: String?
    let image: URL
}

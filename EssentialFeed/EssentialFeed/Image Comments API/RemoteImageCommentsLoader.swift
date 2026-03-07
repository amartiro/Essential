//
//  RemoteImageCommentsLoader.swift‎
//  EssentialFeed
//
//  Created by Artak Martirosyan on 04.03.26.
//

import Foundation

public typealias RemoteImageCommentsLoader = RemoteLoader<[ImageComment]>

public extension RemoteImageCommentsLoader {
    convenience init(url: URL, client: HTTPClient) {
        self.init(url: url, client: client, mapper: ImageCommentsMapper.map)
    }
}

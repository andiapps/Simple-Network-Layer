//
//  Models.swift
//  SimpleNetwork
//
//  Created by Andy Wang on 11/11/2021.
//

import Foundation

struct FlickrResponse: Codable {
    let photos: FlickrResultsPage?
}

struct FlickrResultsPage: Codable {
    let page: Int
    let pages: Int
    let photo: [Photo]
}

struct Photo: Codable {
    let id: String
    let owner: String
    let secret: String
    let server: String
    let farm: Int
}

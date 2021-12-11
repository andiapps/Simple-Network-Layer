//
//  Endpoint.swift
//  SimpleNetwork
//
//  Created by Andy Wang on 11/11/2021.
//

import Foundation

import Foundation

protocol Endpoint {
    ///HTTP or HTTPS
    var scheme: String {get}
    
    //Example URL: "api.flickr.com"
    var baseURL: String {get}
    
    // "/services/rest/"
    var path: String {get}
    
    //[URLQueryItem(name: "api_key", value: API_KEY)]
    var parameters: [URLQueryItem] {get}
    
    //"GET"
    var method: String {get}
}

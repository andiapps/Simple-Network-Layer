//
//  ViewController.swift
//  SimpleNetwork
//
//  Created by Andy Wang on 11/11/2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        NetworkEngine.request(endpoint: FlickrEndpoint.getSearchResults(searchText: "iOS", page: 1)) {
            (result: Result<FlickrResponse, Error>) in
            switch result {
            case .success(let response):
                print("Response: ", response)
            case .failure(let error):
                print(error)
            }
        }
    }


}


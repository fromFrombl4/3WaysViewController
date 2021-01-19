//
//  Manager.swift
//  3WaysViewController
//
//  Created by Roman Dod on 1/18/21.
//  Copyright © 2021 Roman Dod. All rights reserved.
//

import Foundation
import Alamofire

class Manager {
    static let shared = Manager()
    private init() {}
    fileprivate var baseUrl = "https://jsonplaceholder.typicode.com/"
    //https://jsonplaceholder.typicode.com/
    //https://toppng.com/
    init(baseUrl: String) {
        self.baseUrl = baseUrl
    }
    func getImage(endPoint: String) {
        AF.request(self.baseUrl + endPoint, method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil, interceptor: nil).response(completionHandler: {
            (responseData) in
            print("response is got")
        })
    }
}

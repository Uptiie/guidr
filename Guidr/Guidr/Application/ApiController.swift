//
//  ApiController.swift
//  Guidr
//
//  Created by Uptiie on 6/22/19.
//  Copyright © 2019 Walcenberg, Inc. All rights reserved.
//

import Foundation
import UIKit

enum HTTPMethod: String {
    case get = "GET"
    case post = "POST"
    
}

enum NetworkError: Error {
    case noAuth
    case badAuth
    case otherError
    case badData
    case noDecode
}

class APIController {
    
    private let baseUrl = URL(string: "https://lambda-guidr.herokuapp.com/api")!
    let bearer: Bearer?
    
    func signUp(
}

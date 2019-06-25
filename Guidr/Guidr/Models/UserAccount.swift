//
//  UserAccount.swift
//  Guidr
//
//  Created by Uptiie on 6/25/19.
//  Copyright © 2019 Walcenberg, Inc. All rights reserved.
//

import Foundation

struct userAccount: Codable {
    let name: String
    let age: Int
    let title: String
    let tagline: String
    let yearsAsGuide: Int
    let profilePic: String
}

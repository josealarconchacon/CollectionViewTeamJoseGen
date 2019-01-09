//
//  People.swift
//  OrgChartApp
//
//  Created by Genesis Mosquera on 12/20/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import Foundation
struct People: Codable {
        let results: [Person]
}
struct Person: Codable {
    let gender: String
    let email: String
    let name: Names
    let dob: Dobs
    let cell: String
    let picture: Pictures
}
struct Names: Codable {
    let title: String
    let first: String
    let last: String
}
struct Dobs: Codable {
    let dob: String
    let age: Int
}
struct Pictures: Codable {
    let medium: String
    let thumbnal: String
}

//
//  Results.swift
//  Hacker Man
//
//  Created by Aditya Ladwa on 05/06/20.
//  Copyright © 2020 Aditya Ladwa. All rights reserved.
//

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let title: String
    let points: Int
    let url: String?
}

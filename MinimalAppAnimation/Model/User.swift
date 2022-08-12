//
//  User.swift
//  MinimalAppAnimation
//
//  Created by Akhilgov Magomed Abdulmazhitovich on 12.08.2022.
//

import Foundation
import SwiftUI

struct User {
    var id: Int
    var name: String
    var image: String
    var type: String
    var amount: String
    var color: Color
}

var users: [User] = [
    User(id: 1, name: "Some Guy 1", image: "User1", type: "Sent", amount: "-100$", color: .black),
    User(id: 2, name: "Some Guy 2", image: "User2", type: "Received", amount: "+35$", color: .orange),
    User(id: 3, name: "Some Guy 3", image: "User3", type: "Rejected", amount: "-20$", color: .red),
    User(id: 4, name: "Some Guy 4", image: "User4", type: "Received", amount: "+40$", color: .orange)
]

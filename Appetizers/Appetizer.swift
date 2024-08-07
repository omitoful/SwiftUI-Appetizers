//
//  Appetizer.swift
//  Appetizers
//
//  Created by 陳冠甫 on 2024/8/7.
//

import Foundation

struct Appetizer: Decodable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse {
    let request: [Appetizer]
}

struct MockData {
    static let sampleAppetizer = Appetizer(id: 0001,
                                           name: "Test 1",
                                           description: "Test Description",
                                           price: 9.99,
                                           imageURL: "",
                                           calories: 99,
                                           protein: 99,
                                           carbs: 99)
    static let apptizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
}

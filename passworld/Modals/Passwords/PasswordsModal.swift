//
//  OnboardingCellModel.swift
//  passworld
//
//  Created by Mücahit Alperen Eryılmaz on 13.11.2022.
//

import Foundation

struct PasswordsJSONObject: Codable {
    let data: [PasswordsData]
}

// MARK: - PasswordsData
struct PasswordsData: Codable {
    let id: Int
    let attributes: Attributes
}

// MARK: - Attributes
struct Attributes: Codable {
    let platform, password, createdAt, updatedAt: String
    let publishedAt: String
}

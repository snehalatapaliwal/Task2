//
//  Employee.swift
//  MVVM_New
//
//  Created by Snehalata paliwal on 22/09/22.
//  Copyright © 2022 Snehalata paliwal. All rights reserved.
//

import Foundation


// MARK: - Datum
struct EmployeeData: Decodable {
    let title, body : String

    enum CodingKeys: String, CodingKey {
        case title = "title"
        case body = "body"
    }
}

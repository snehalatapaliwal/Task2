//
//  APIService.swift
//  MVVM_New
//
//  Created by Snehalata paliwal on 22/09/22.
//  Copyright © 2022 Snehalata paliwal. All rights reserved.
//

import Foundation


class APIService :  NSObject {
    
    private let sourcesURL = URL(string: "http://jsonplaceholder.typicode.com/posts")!
    
    func apiToGetEmployeeData(completion : @escaping ([EmployeeData]) -> ()){
        
        URLSession.shared.dataTask(with: sourcesURL) { (data, urlResponse, error) in
            if let data = data {
                
                let jsonDecoder = JSONDecoder()
                
                let empData = try! jsonDecoder.decode([EmployeeData].self, from: data)
            
                completion(empData)
            }
            
        }.resume()
    }
    
}

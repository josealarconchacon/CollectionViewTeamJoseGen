//
//  OrgAppKey.swift
//  OrgChartApp
//
//  Created by Genesis Mosquera on 12/20/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import Foundation

final class OrgAPIClient {
    
    static func getAllNames(keyword: String, completionHandler: @escaping (([Person]?, AppError?) -> Void)) {
        let urlString = "https://randomuser.me/api/?results=75"
        NetworkHelper.performDataTask(urlString: urlString, httpMethod: "GET") { (error, data, response) in
            if let error = error {
                completionHandler(nil, error)
            } else if let data = data {
                do {
                    let peopleData = try JSONDecoder().decode(People.self, from: data)
                    completionHandler(peopleData.results, nil)
                } catch {
        completionHandler(nil, AppError.decodingError(error))
                }
            }
        }
    }
}
// help with unwrapping People model

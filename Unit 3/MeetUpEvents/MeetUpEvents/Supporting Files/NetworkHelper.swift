//
//  NetworkHelper.swift
//  MeetUpEvents
//
//  Created by Genesis Mosquera on 12/12/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import Foundation
final class NetworkHelper {
    static func performDataTask(urlString: String, httpMethod: String, completionHandler: @escaping (Error?, Data?) -> Void) {
        guard let url = URL(string: urlString) else {
            print("badURL: \(urlString)")
            return
        }
        // so far we have been using URL to make network request
        // now we will use URLREquest to make network requests
        //URL
        
        
        //
        var request = URLRequest(url: url)
        request.httpMethod = httpMethod
        
        URLSession.shared.dataTask(with: request) { (data, response, error) in
          // handle error
            if let error = error {
                completionHandler(error, nil)
            }
            // get response status code
            
            if let response = response as? HTTPURLResponse {
                print("response status code is \(response.statusCode)")
            }
            // check for data
            
            if let data = data {
                completionHandler(nil, data)
            }
        }.resume()  
    }
}

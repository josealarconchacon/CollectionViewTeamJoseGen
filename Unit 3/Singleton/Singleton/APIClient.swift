//
//  APIClient.swift
//  Singleton
//
//  Created by Genesis Mosquera on 12/13/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import Foundation

final class APIClient {
    static func getMeACat(completionHandler: @escaping ((CatPhoto) -> Void)) {
        let myStringURL = "https://aws.random.cat/meow"
        NetworkHelper.ephemeralSession.getSecureData(url: myStringURL) { (data) in
            do {
                let catPhoto = try JSONDecoder().decode(CatPhoto.self, from: data)
                completionHandler(catPhoto)
            } catch {
                print(error)
            }
        }
        
    }
}

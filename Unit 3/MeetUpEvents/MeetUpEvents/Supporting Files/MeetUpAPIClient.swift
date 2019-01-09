//
//  MeetUpAPIClient.swift
//  MeetUpEvents
//
//  Created by Genesis Mosquera on 12/12/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import Foundation

final class MeetUpAPIClient {
    static func searchEvents(keyword: String) {
        // endpoint
        let urlString = "https://api.meetup.com/find/events?key=\(SecretKeys.APIKey)&fields=group_photo&text=\(keyword)"
        
        guard let url = URL(string: urlString) else {
            print ("badURL: \(urlString)")
            return
        }
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let response = response as? HTTPURLResponse {
                print("response status code is \(response.statusCode)")
            }
            
            if let error = error {
                print("error: \(error)")
            } else if let data = data {
                // decoding of JSON using JSONDecoder()
                do {
                    let events = try JSONDecoder().decode([Event].self, from: data)
                    print("found \(events.count) events")
                } catch {
                    print("decoding error: \(error)")
                }
            }
        }.resume()
    }


static func memberEvents() {
    let urlString = "https://api.meetup.com/self/events?key=\(SecretKeys.APIKey)&status=upcoming&desc=false&rsvp=yes"
    NetworkHelper.performDataTask(urlString: urlString, httpMethod: "GET") { (error, data) in
        if let error = error {
            print("error: \(error)")
        } else if let data = data {
            do {
                let events = try JSONDecoder().decode([Event].self, from: data)
                print("rsvp\'d to \(events.count) events")
            } catch {
                print("decoding error: \(error)")
            }
        }
        }
    }
    static func updateRSVP() {
        let urlString = "https://api.meetup.com/2/rsvp?key=45276127635aa1d74c514db147977&event_id=vczlrnyxqbqb&rsvp=yes"
    }
}

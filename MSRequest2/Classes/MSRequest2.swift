//
//  MSRequest2.swift
//  MSRequest2
//
//  Created by Maher Santina on 11/27/18.
//

import UIKit

public class MSRequest2 {
    public static func request(urlString: String, method: String = "GET", completion: (([String: Any]) -> Void)?) {
        let url = URL(string: urlString)!
        var request = URLRequest(url: url)
        request.httpMethod = method
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            guard let d = data else {
                return
            }
            
            let dict = (try? JSONSerialization.jsonObject(with: d, options: []) as? [String: Any] ?? [:]) ?? [:]
            completion?(dict)
            }.resume()
    }
    
}

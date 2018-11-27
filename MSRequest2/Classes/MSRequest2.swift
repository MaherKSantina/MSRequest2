//
//  MSRequest2.swift
//  MSRequest2
//
//  Created by Maher Santina on 11/27/18.
//

import UIKit

public class MSRequest2 {
    public static func request(urlString: String, completion: (([String: Any]) -> Void)?) {
        let url = URL(string: urlString)!
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let d = data else {
                return
            }
            
            let dict = (try? JSONSerialization.jsonObject(with: d, options: []) as? [String: Any] ?? [:]) ?? [:]
            completion?(dict)
            }.resume()
    }
    
}

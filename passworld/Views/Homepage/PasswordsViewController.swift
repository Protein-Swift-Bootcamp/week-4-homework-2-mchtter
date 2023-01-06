//
//  HomepageViewController.swift
//  passworld
//
//  Created by Mücahit Alperen Eryılmaz on 1.01.2023.
//

import UIKit

class HomepageViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "http://localhost:1337/api/passwords")!
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.setValue("Bearer 8e388756b592c5d3d41a1a8bac332dfc0f4a4b292f857d373f6ad3c9bfd107b952a9ca10a90c767a576a50a887f0fd3fe49eb43840419ad085c25c0a8905f15570959bf8ff2be78a388a92462b7302f8bbb8383db6b5c58565ee9aa7496d4aa63801d1f0b7d828dd7027e92cc75e24c4541dfc68a071c7594618fa5646f8415b", forHTTPHeaderField: "Authorization")
        
        
        

        let task = URLSession.shared.dataTask(with: request) {(data, response, error) in
            guard let data = data else { return }
            print(String(data: data, encoding: .utf8)!)
        }

        task.resume()
        
    }
    
}

//
//  HomepageViewController.swift
//  passworld
//
//  Created by Mücahit Alperen Eryılmaz on 1.01.2023.
//

import UIKit

class PasswordsViewController: UIViewController {
    
    var passwordsJSONObject : PasswordsJSONObject?
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(PasswordsTableViewCell.self, forCellReuseIdentifier: "passwordsTableViewCell")
        
        getDataFromAPI()

        
    }
    
    func getDataFromAPI() {
        let url = URL(string: "\(ProcessInfo.processInfo.environment["API_URL"]!)/passwords")!
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.setValue("Bearer \(ProcessInfo.processInfo.environment["API_TOKEN"]!)", forHTTPHeaderField: "Authorization")
        

        let task = URLSession.shared.dataTask(with: request) {(data, response, error) in
            guard let data = data else { return }
            
            do {
                let _passwordObject = try! JSONDecoder().decode(PasswordsJSONObject.self, from: data)
                
                self.passwordsJSONObject = _passwordObject
                
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }

            } catch let error as NSError {
                print(error)
            }
        }
        task.resume()
    }
}

// MARK: - UITableViewDelegate
extension PasswordsViewController: UITableViewDelegate {
    
}

// MARK: - UITableViewDataSource
extension PasswordsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return passwordsJSONObject?.data.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "passwordsTableViewCell", for: indexPath) as! PasswordsTableViewCell
        
        guard let cellData = passwordsJSONObject?.data[indexPath.row] else {
            return cell
        }
        
        cell.setup(cellData)
        
        return cell
    }
}

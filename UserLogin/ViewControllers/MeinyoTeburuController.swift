//
//  MeinyoTeburuController.swift
//  UserLogin
//
//  Created by Jerry Ren on 12/23/20.
//

import UIKit

class MeinyoTeburuController: UITableViewController {
    
    var symbolsForTesting = ["", "º", "ª", "•", "™", "∞", "¢", "£", "¡"  ]
    let customColor = UIColor(red: 30/255, green: 30/255, blue: 30/255, alpha: 1)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.backgroundColor = customColor
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: GloballyApplied.idOfMeinyoTeburuCell)
    }
    
    private func symbolsDuplication(times: Int, target: Array<String>) -> [String] {
        var newSymbols: [String] = []
        var counter = 0
        repeat {
            target.forEach {
                newSymbols.append($0)
            }
            counter += 1
        } while counter < times
        return newSymbols
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let newSymbols = symbolsDuplication(times: 1, target: symbolsForTesting)
        return newSymbols.count
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let newSymbols = symbolsDuplication(times: 6, target: symbolsForTesting)
        
        let cell = tableView.dequeueReusableCell(withIdentifier: GloballyApplied.idOfMeinyoTeburuCell, for: indexPath)
        if indexPath.row == 0 {
            cell.isHidden = true
            print("cell at 0 currently hidden")
        }
        cell.textLabel?.textColor = .white
        cell.backgroundColor = customColor
        cell.textLabel?.text = newSymbols[indexPath.row]
        return cell
    }
}

extension MeinyoTeburuController {
   
}

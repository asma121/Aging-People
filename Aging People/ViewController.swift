//
//  ViewController.swift
//  Aging People
//
//  Created by admin on 12/12/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var agingPeopleTabelView: UITableView!
    
    struct Person{
        var name: String
        let age = Int.random(in: 5...95)
    }
    
    let people = [Person(name:"Asmaa"),Person(name:"Hajar"),Person(name:"Linah"),Person(name:"Noor"),Person(name:"Leen"),Person(name:"Maha")
                  ,Person(name:"Sara"),Person(name:"Rana"),Person(name:"Reem"),Person(name:"Amal"),Person(name:"Fatimah"),Person(name:"Ahlam")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        agingPeopleTabelView.dataSource = self
        agingPeopleTabelView.reloadData()
        print(people[0].age)
    }

}

extension ViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return people.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personDetails", for: indexPath)
        cell.textLabel?.text = people[indexPath.row].name
        cell.detailTextLabel?.text = " \(String(people[indexPath.row].age)) years old "
        return cell
    }
    
    
}


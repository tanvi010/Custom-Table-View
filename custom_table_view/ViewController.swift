//
//  ViewController.swift
//  custom_table_view
//
//  Created by COE-029 on 16/12/19.
//  Copyright © 2019 COE-029. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate
{
    
    var arr = [ ["Image":#imageLiteral(resourceName: "card14"),"Name":"card 1"],
                ["Image":#imageLiteral(resourceName: "card2"),"Name":"card 2"],
                ["Image":#imageLiteral(resourceName: "card3"),"Name":"card 3"],
                ["Image":#imageLiteral(resourceName: "card4"),"Name":"card 4"],
                ["Image":#imageLiteral(resourceName: "card5"),"Name":"card 5"],
                ["Image":#imageLiteral(resourceName: "card6"),"Name":"card 6"],
                ["Image":#imageLiteral(resourceName: "card8"),"Name":"card 7"],
                ["Image":#imageLiteral(resourceName: "card9"),"Name":"card 9"],
                ["Image":#imageLiteral(resourceName: "card10"),"Name":"card 10"],
                ["Image":#imageLiteral(resourceName: "card11"),"Name":"card 11"],
                ["Image":#imageLiteral(resourceName: "card12"),"Name":"card 12"],
                ["Image":#imageLiteral(resourceName: "card13"),"Name":"card 13"]]
    
    func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! MyTableViewCell
        cell.cardImageView.image = arr[indexPath.row]["Image"] as! UIImage
        cell.lblImageName.text = arr[indexPath.row]["Name"] as! String
        return cell
    }
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


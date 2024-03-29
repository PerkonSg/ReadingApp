//
//  TopicTableViewController.swift
//  ReadingApp
//
//  Created by ctssstudent on 1/11/19.
//  Copyright © 2019 ctssstudent. All rights reserved.
//

import UIKit

class TopicTableViewController: UITableViewController {
    
    var topicsNumberAlgebra = [
        Topics(topic: "Prime Numbers, HCF & LCM", topicnumber: 0),
        Topics(topic: "Integers, Rational Numbers & Real Numbers", topicnumber: 1),
        Topics(topic: "Approximation & Estimation", topicnumber: 2),
        Topics(topic: "Rate, Ratio, Speed and Percentage", topicnumber: 3),
        Topics(topic: "Basic Algebra & Algebraic Manipulation", topicnumber: 4),
        Topics(topic: "Linear Equations & Simple Inequalities", topicnumber: 5),
        Topics(topic: "Basic Algebraic Formula", topicnumber: 6),
        Topics(topic: "Number Patterns", topicnumber: 7),
        Topics(topic: "Application of Math in Practical Situations", topicnumber: 8),
        Topics(topic: "Set Notations", topicnumber: 9),
        Topics(topic: "Venn Diagrams", topicnumber: 10),
        Topics(topic: "Quadratic Equations", topicnumber: 11)
        ]
    var topicsGeometry = [
        Topics(topic: "Basic Geometry", topicnumber: 12),
        Topics(topic: "Triangles, Quadrilaterals and Polygons", topicnumber: 13),
        Topics(topic: "Perimeter and Area of Plane Figures", topicnumber: 14),
        Topics(topic: "Volume and Surface Area of Solids", topicnumber: 15)
        ]
    var topicsStatisticsProbability = [
        Topics(topic: "Statistical Data Handling", topicnumber: 16),
        Topics(topic: "Averages of Statistical Data", topicnumber: 17),
    ]


    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 3
    }

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if section == 0 {
            return 12
        }
        else if section == 1{
            return 4
        }
        else{
            return 2
        }
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0{
            return "Number and Algebra"
        }
        else if section == 1{
            return "Geometry"
        }
        else {
            return "Statistics and Probability"
        }
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "topicCell", for: indexPath)

        // Configure the cell...
        if indexPath.section == 0{
        cell.textLabel?.text = topicsNumberAlgebra[indexPath.row].topic
        cell.detailTextLabel?.text = "Topic \(indexPath.row + 1)"
        }
        else if indexPath.section == 1{
        cell.textLabel?.text = topicsGeometry[indexPath.row].topic
        cell.detailTextLabel?.text = "Topic \(indexPath.row + 1)"
        }
        else{
        cell.textLabel?.text = topicsStatisticsProbability[indexPath.row].topic
        cell.detailTextLabel?.text = "Topic \(indexPath.row + 1)"
        }

        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toQuiz"{
            let destVC = segue.destination as! ReadyViewController
            
            let selectedIndexPath = tableView.indexPathForSelectedRow!
            if selectedIndexPath.section == 0 {
                destVC.designatedTitle = topicsNumberAlgebra[selectedIndexPath.row].topic
                destVC.topicNum = topicsNumberAlgebra[selectedIndexPath.row].topicnumber
            }
            if selectedIndexPath.section == 1 {
                destVC.designatedTitle = topicsGeometry[selectedIndexPath.row].topic
                destVC.topicNum = topicsGeometry[selectedIndexPath.row].topicnumber
            }
            if selectedIndexPath.section == 2 {
                destVC.designatedTitle = topicsStatisticsProbability[selectedIndexPath.row].topic
                destVC.topicNum = topicsStatisticsProbability[selectedIndexPath.row].topicnumber
            }
            
        }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }

}

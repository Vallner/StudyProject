//
//  TableViewDataSource.swift
//  StudyHallOfFame
//
//  Created by Danila Savitsky on 4.05.25.
//

import UIKit

class TableViewDataSource: NSObject,UITableViewDataSource {
    let iphones:[Phone] = [Phone(name: "Iphone 3G", image: UIImage(named: "Iphone")!, description: "The iPhone 3G is a smartphone developed and marketed by Apple Inc. It is the second generation of iPhone, successor to the original iPhone, and was introduced on June 9, 2008, at the WWDC 2008 which took place at the Moscone Center in San Francisco.The iPhone 3G is internally similar to its predecessor, but included several new hardware features, such as GPS, 3G data and tri-band UMTS/HSDPA. The device was originally loaded with the concurrently launched iPhone OS 2. In addition to other features (including push email and turn-by-turn navigation), this new operating system introduced the App Store—Apple's new distribution platform for third-party applications.Commercially, the iPhone 3G was successful. Its sales numbers were significantly higher than the first generation iPhone and pushed the iPhone's commercial popularity above the company's Mac products.[12] By the end of 2008, the iPhone 3G had become the best-selling cell phone domestically, overtaking the Motorola Razr V3,[13] while Apple also overtook RIM to become the second-largest vendor of smartphones.[14] Its succeeding third-generation iPhone, the iPhone 3GS, was released in June 2009."),
                           Phone(name: "Iphone 3GS", image: UIImage(named: "iphone 3GS")!, description: "The first iPhone was released in 2007"),
                           Phone(name: "Iphone 4", image: UIImage(named: "iphone 4")!, description: "The first iPhone was released in 2007"),
                           Phone(name: "Iphone 4S", image: UIImage(named: "iphone 4")!, description: "The first iPhone was released in 2007"),
                           Phone(name: "Iphone 5", image: UIImage(named: "iphone 5")!, description: "The first iPhone was released in 2007"),
                           Phone(name: "Iphone 5C", image: UIImage(named: "iphone 5")!, description: "The first iPhone was released in 2007"),
                           Phone(name: "Iphone 5S", image: UIImage(named: "iphone 5")!, description: "The first iPhone was released in 2007"),
                           Phone(name: "Iphone 6", image: UIImage(named: "iphone 6")!, description: "The first iPhone was released in 2007"),
                           Phone(name: "Iphone 6S", image: UIImage(named: "iphone 6")!, description: "The first iPhone was released in 2007"),
                           Phone(name: "Iphone 7", image: UIImage(named: "iphone 7")!, description: "The first iPhone was released in 2007"),
                           Phone(name: "Iphone 7 Plus", image: UIImage(named: "iphone 7")!, description: "The first iPhone was released in 2007")]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return iphones.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableViewCell else {
            let newCell = TableViewCell()
            newCell.configureCell(phone: iphones[indexPath.row])
            return newCell
        }
        print("old cell used")
        cell.configureCell(phone: iphones[indexPath.row])
        return cell
       
        
    }


}

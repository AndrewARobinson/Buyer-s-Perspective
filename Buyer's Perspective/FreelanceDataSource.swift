//
//  FreelanceDataSource.swift
//  Buyer's Perspective
//
//  Created by Andrew robinson on 11/2/20.
//

import UIKit

class FreelanceDataSource: NSObject, UITableViewDataSource {
    var store : freeLanceStore!
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
     
        return store.filteredData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "freeLancer") as!  FreeLancerTableViewCell
        cell.userImageView.image = store.filteredData[indexPath.row].userImage
        cell.userName.text = "\(store.filteredData[indexPath.row].firstname!) \(store.filteredData[indexPath.row].lastName!) "
        cell.userDescription.text = store.filteredData[indexPath.row].userDescription
        cell.userJobTItle.text = store.filteredData[indexPath.row].jobTitle
        return cell
    }
    
    
}

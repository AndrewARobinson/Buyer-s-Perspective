//
//  ViewController.swift
//  Buyer's Perspective
//
//  Created by Andrew robinson on 10/29/20.
//

import UIKit

class ViewController: UITableViewController,UISearchBarDelegate {
    var freelanceDataSource = FreelanceDataSource()
    var store: freeLanceStore!
    var selectedIdex : Int!
    
    @IBOutlet var searchBar: UISearchBar!
    

    override func viewDidLoad(){
        searchBar.delegate = self
        tableView.dataSource = freelanceDataSource
        tableView.delegate = self
        tableView.allowsSelection = true
        store.filteredData = store.freeLanceUsers
        freelanceDataSource.store = self.store
       
        
        
        tableView.reloadData()
//        topRightButton()
        // Do any additional setup after loading the view.
    }
    
    
    func topRightButton() {
        let button: UIButton = UIButton(type: UIButton.ButtonType.custom)
                //set image for button
        button.setImage(UIImage(named: "redIcon.png"), for: .normal)
                //add function for button
//        button.addTarget(self, action: "fbButtonPressed", for: UIControl.Event.TouchUpInside)
                //set frame
        button.frame = CGRect(x: 500, y: 0, width: 30, height: 30)

                let barButton = UIBarButtonItem(customView: button)
                //assign button to navigationbar
                self.navigationItem.rightBarButtonItem = barButton
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedIdex = indexPath.row
        self.performSegue(withIdentifier: "toDetailVC", sender: self)
        
    }
   
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {

        store.filteredData = searchText.isEmpty ? store.freeLanceUsers : store.freeLanceUsers.filter { (item: freeLancer) -> Bool in
           
            return item.jobTitle.range(of: searchText, options: .caseInsensitive, range: nil, locale: nil) != nil
        }
        tableView.reloadData()
        
    }
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
            self.searchBar.showsCancelButton = true
    }
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
            searchBar.showsCancelButton = false
            searchBar.text = ""
            searchBar.resignFirstResponder()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailVC" {
            let vC = segue.destination as? DetailedViewController
            vC?.store = store
            vC?.itemIndex = self.selectedIdex

        }
    }


}


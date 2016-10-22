//
//  BusinessesViewController.swift
//  Yelp
//
//  Created by Timothy Lee on 4/23/15.
//  Copyright (c) 2015 Timothy Lee. All rights reserved.
//

import UIKit

class BusinessesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate, FilterViewControllerDelegate {
    
    // MARK: Outlets
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: Properties
    
    var businesses: [Business]!
    var filteredBusinesses: [Business]!
    var switchStates: [Int:Bool]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        searchBar.delegate = self
        //FilterViewControllerDelegate
        
        switchStates = [Int:Bool]()
        
        // disable automatically added insets
        self.automaticallyAdjustsScrollViewInsets = false

        // put search bar in nav bar
        navigationItem.titleView = searchBar
        
        Business.searchWithTerm(
            term: "Thai",
            completion: { (businesses: [Business]?, error: Error?) -> Void in
                self.businesses = businesses
                if let businesses = businesses {
                    for business in businesses {
                        print(business.name!)
                        print(business.address!)
                    }
                }
                self.filteredBusinesses = businesses
                self.tableView.reloadData()
            }
        )
        
        /* Example of Yelp search with more search options specified
         Business.searchWithTerm("Restaurants", sort: .Distance, categories: ["asianfusion", "burgers"], deals: true) { (businesses: [Business]!, error: NSError!) -> Void in
         self.businesses = businesses
         
         for business in businesses {
         print(business.name!)
         print(business.address!)
         }
         }
         */
        
    } // viewDidLoad
    
    // MARK: FilterViewController Delegate
    
    func filterViewController(filterViewController: FilterViewController, didSwitchStates switchStates: [Int:Bool]){
        self.switchStates = filterViewController.switchStates
    }
    
    // MARK: UISearchBar Delegates
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if(searchText.isEmpty){
            self.filteredBusinesses = self.businesses
        }else{
            
            self.filteredBusinesses = []
            for business in businesses{
                if let name = business.name{
                    if(name.range(of: searchText, options: .caseInsensitive) != nil){
                        self.filteredBusinesses.append(business)
                    }
                }
            }
            
        }
        tableView.reloadData()
    }
    
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        self.searchBar.showsCancelButton = true
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searchBar.showsCancelButton = false
        searchBar.text = ""
        self.filteredBusinesses = self.businesses
        tableView.reloadData()
        searchBar.resignFirstResponder()
    }
    
    // MARK: UITableView Delegates
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BusinessCell", for: indexPath) as! BusinessCell
        
        cell.business = filteredBusinesses[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if filteredBusinesses == nil {
            return 0
        }else{
            return filteredBusinesses.count
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
     // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "FiltersSegue"){
            let nav = segue.destination as! UINavigationController
            let fvc = nav.topViewController as! FilterViewController
            
            fvc.switchStates = switchStates
            
            fvc.delegate = self

            print(switchStates)
        }
    }
    
}

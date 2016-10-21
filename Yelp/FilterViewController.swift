//
//  FilterViewController.swift
//  Yelp
//
//  Created by Jay Liew on 10/20/16.
//  Copyright © 2016 Timothy Lee. All rights reserved.
//

import UIKit

class Preferences {
    var deals = false
}

class FilterViewController: UITableViewController {

    
    // MARK: Properties
    
    var currentPrefs: Preferences!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        currentPrefs = currentPrefs ?? Preferences()

        initSwitches()
    }

    private func initSwitches() {
        //autoRefreshSwitch?.on = currentPrefs.autoRefresh
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onCancel(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func onSearch(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

//
//  CarShowTableViewController.swift
//  InteractSwift
//
//  Created by Abhishek on 06/06/17.
//  Copyright © 2017 DREAM WORKS. All rights reserved.
//

import UIKit

class ABCarShowTableViewController: UITableViewController {
    
    /**
     reuseIdentifier is for getting the same instance of uitableview cell if the cell type is same and content is different
     */
    private var reuseIdentifier = "ABCarTableViewCell"
    
    /**
     car model array to hold all the models of car in it
     */
    var carModelObj = [ABCarModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        registerNibs()
        self.tableView.estimatedRowHeight = 100
        self.tableView.rowHeight = UITableViewAutomaticDimension
        createGalleryItems()
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: - Register Nibs
    func registerNibs()  {
        self.tableView.register(UINib.init(nibName: reuseIdentifier, bundle: nil), forCellReuseIdentifier: reuseIdentifier)
    }
    
    // MARK: - Custom Methods
    func createGalleryItems () {
        
        if let URL = Bundle.main.url(forResource: "imagelist", withExtension: "plist") {
         
            if let englishFromPlist = NSArray(contentsOf: URL) as? [Dictionary <String,AnyObject>] {
        
                for myEnglish in englishFromPlist {
                    let model = ABCarModel.init(model: myEnglish["name"] as! String,
                                              make: myEnglish["description"] as! String,
                                              kilowatts: Int(arc4random_uniform(1000)+1000),
                                              photoURL: myEnglish["asset"] as! String,
                                              carId: myEnglish["Id"] as! String)
                    
                    carModelObj.append(model)
                    
                }
            }
        }
        tableView.reloadData()
    }
    
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.carModelObj.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Configure the cell...
        guard let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as? ABCarTableViewCell else {
            return UITableViewCell()
        }
        let viewModel = ABCarViewModel.init(withCar: (carModelObj[indexPath.row]) as ABCarModel)
        cell.configureCell(viewModel: viewModel)
        return cell
    }
    
}

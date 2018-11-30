//
//  RecepieViewController.swift
//  CookApp
//
//  Created by JOAQUIN DIAZ RAMIREZ on 28/11/18.
//  Copyright © 2018 JOAQUIN DIAZ RAMIREZ. All rights reserved.
//

import UIKit
import SDWebImage

class RecepieViewController: UIViewController {
     internal var recepies: [Recepies] = []
    @IBOutlet weak var tableView : UITableView!
    internal var indexCurrentSeries = 0
    var filteredCandies = [Recepies]()
   let searchController = UISearchController(searchResultsController: nil)
    
    convenience init(recepies: [Recepies])
    {
        self.init()
        self.recepies = recepies
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Search Recepies"
        navigationItem.searchController = searchController
        definesPresentationContext = true
        title = "Recepies"
        registerCells()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func searchBarIsEmpty() -> Bool {
        // Returns true if the text is empty or nil
        return searchController.searchBar.text?.isEmpty ?? true
    }
    
    func filterContentForSearchText(_ searchText: String, scope: String = "All") {
        filteredCandies = recepies.filter({( recepies : Recepies) -> Bool in
            return recepies.title.lowercased().contains(searchText.lowercased())
        })
        
        tableView.reloadData()
    }
    func isFiltering() -> Bool {
        return searchController.isActive && !searchBarIsEmpty()
    }
    private func registerCells ()
    {
        let indentifier = "RecepieTableViewCell"
        let cellNib = UINib(nibName: indentifier, bundle: nil)
        tableView.register(cellNib, forCellReuseIdentifier: "recepieCell")
    }

}

extension RecepieViewController: UISearchResultsUpdating {
    // MARK: - UISearchResultsUpdating Delegate
    func updateSearchResults(for searchController: UISearchController) {
        filterContentForSearchText(searchController.searchBar.text!)
    }
}
extension RecepieViewController: UITableViewDelegate,UITableViewDataSource
    
{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if isFiltering() {
            return filteredCandies.count
        }
        
        return recepies.count
        
    }
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return (recepies.count>0)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    
        return 88.0
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: RecepieTableViewCell = (tableView.dequeueReusableCell(withIdentifier: "recepieCell", for: indexPath) as? RecepieTableViewCell)!
        let recepie = recepies[indexPath.row]
        let recepie2: Recepies
        if isFiltering() {
            recepie2 = filteredCandies[indexPath.row]
            cell.lblTitle?.text = recepie2.title
            cell.lblIngredients?.text = recepie2.ingredients
            cell.lblCreator?.text = recepie2.creator
            cell.imgRecepie?.sd_setImage(with: URL(string: recepie2.img)!, completed: nil)
        } else {
            recepie2 = recepies[indexPath.row]
            cell.lblTitle?.text = recepie2.title
            cell.lblIngredients?.text = recepie2.ingredients
            cell.lblCreator?.text = recepie2.creator
            cell.imgRecepie?.sd_setImage(with: URL(string: recepie2.img)!, completed: nil)
        }
        
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let myRecepie = recepies[indexPath.row]
        let detailsVC = DetailsViewController(recepies: myRecepie)
        navigationController?.pushViewController(detailsVC, animated: true)
    }
    
}


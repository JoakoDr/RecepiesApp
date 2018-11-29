//
//  RecepiesViewController.swift
//  CookApp
//
//  Created by JOAQUIN DIAZ RAMIREZ on 28/11/18.
//  Copyright © 2018 JOAQUIN DIAZ RAMIREZ. All rights reserved.
//

import UIKit
import SDWebImage

class CategoryViewController: UIViewController {
    @IBOutlet weak var tableView : UITableView!
    internal var categories: [Category] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        loadArray()
        registerCells()
        title = "Categories"

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func registerCells ()
    {
        let indentifier = "CategoryTableViewCell"
        let cellNib = UINib(nibName: indentifier, bundle: nil)
        tableView.register(cellNib, forCellReuseIdentifier: "categoryCell")
    }
    private func loadArray()
    {
         var recipiesMeat: [Recepies] = []
        let bbqMeat = Recepies(imgURL: "https://api.adorable.io/avatars/200/90197d80116b41c83618598cd8b7fc47.png", lblTitle1: "BBQ Meat", ingredients: "BBQ,Meat,Bread", creator: "Joaquin")
        let cheeseFries = Recepies(imgURL: "https://api.adorable.io/avatars/200/10197d80116b41c83618598cd8b7fc47.png", lblTitle1: "Cheese Fries", ingredients: "Cheese,Fries,Bacon", creator: "Foster")
        let shet = Recepies(imgURL: "https://api.adorable.io/avatars/200/30197d80116b41c83618598cd8b7fc47.png", lblTitle1: "shet", ingredients: "Fish and Fries", creator: "England")
        let fries = Recepies(imgURL: "https://api.adorable.io/avatars/200/40197d80116b41c83618598cd8b7fc47.png", lblTitle1: "Fries", ingredients: "Fries", creator: "Joaquin")
        recipiesMeat.append(bbqMeat)
        recipiesMeat.append(cheeseFries)
        recipiesMeat.append(shet)
        recipiesMeat.append(fries)
        
        var recipiesFish: [Recepies] = []
        let swordFish = Recepies(imgURL: "https://api.adorable.io/avatars/200/30197d80116b41c83618598cd8b7fc47.png", lblTitle1: "Sword Fish", ingredients: "Fish and Fries", creator: "England")
        recipiesFish.append(swordFish)
        
        var recipiesBirds: [Recepies] = []
        let roastChicken = Recepies(imgURL: "https://api.adorable.io/avatars/200/30197880116b41c83618598cd8b7fc47.png", lblTitle1: "Roast Chicken", ingredients: "Chicken,Fries,Sauce", creator: "EEUU")
         let eagle = Recepies(imgURL: "https://api.adorable.io/avatars/200/30197880116b41c83618598cd8b7fc47.png", lblTitle1: "Real Eagle", ingredients: "Eagle,Fries,Sauce", creator: "EEUU-Joako")
         let penguin = Recepies(imgURL: "https://api.adorable.io/avatars/200/30197880116b41c83618598cd8b7fc47.png", lblTitle1: "Roast Chicken", ingredients: "Penguin,Fries,Sauce", creator: "EEUU-LA")
        recipiesBirds.append(roastChicken)
        recipiesBirds.append(eagle)
        recipiesBirds.append(penguin)
        
        var recipiesVegetables: [Recepies] = []
        let lettuce = Recepies(imgURL: "https://api.adorable.io/avatars/200/30197880116b41c83618598cd8b7fc47.png", lblTitle1: "Lettuce with Mushrooms", ingredients: "Lettuce,Mushrooms,Sauce", creator: "EEUU")
        let puerrs = Recepies(imgURL: "https://api.adorable.io/avatars/200/30197880116b41c83618598cd8b7fc47.png", lblTitle1: "Puerrs", ingredients: "Puerrs,Lettuce,Sauce", creator: "EEUU-Joako")
        recipiesVegetables.append(lettuce)
        recipiesVegetables.append(puerrs)
        
        var recipiesSalads: [Recepies] = []
        let caesarSalad = Recepies(imgURL: "https://api.adorable.io/avatars/200/30197884116b41c83618598cd8b7fc47.png", lblTitle1: "Ensalada Caesar", ingredients: "Lettuce,Chicken,oil", creator: "Caesar")
        let mixSalad = Recepies(imgURL: "https://api.adorable.io/avatars/200/30197880116b41c83618598cd7b7fc47.png", lblTitle1: "Ensalada Mixta", ingredients: "Corn,Lettuce,Tomato,Egg", creator: "Mix")
        recipiesSalads.append(caesarSalad)
        recipiesSalads.append(mixSalad)
        
        var recipiesPaste: [Recepies] = []
        let carbonara = Recepies(imgURL: "https://api.adorable.io/avatars/200/30197884116b41c83618298cd8b7fc47.png", lblTitle1: "Carbonara", ingredients: "Spaghetti,milk,cheese,bacon", creator: "Italia")
        let bolognesa = Recepies(imgURL: "https://api.adorable.io/avatars/200/30197880116b41c83618598cd7b7fc47.png", lblTitle1: "Bolognesa", ingredients: "Spaghetti,tomato,cheese,meat", creator: "Italia")
        recipiesPaste.append(carbonara)
        recipiesPaste.append(bolognesa)
        
        
        var recipiesSopes: [Recepies] = []
        let sopes = Recepies(imgURL: "https://api.adorable.io/avatars/200/30197884116b41c83218298cd8b7fc47.png", lblTitle1: "Sope", ingredients: "Noodles,Chickpeas", creator: "China")
        let galegoCald = Recepies(imgURL: "https://api.adorable.io/avatars/200/30197880112b41c83618598cd7b7fc47.png", lblTitle1: "Galego Cald", ingredients: "Noodles,potatoes,soup,Tomate Soup ", creator: "Italia")
        recipiesSopes.append(sopes)
        recipiesSopes.append(galegoCald)
        
        
        var recipiesDesserts: [Recepies] = []
        let cheesecake = Recepies(imgURL: "https://api.adorable.io/avatars/200/30197884122b41c83218298cd8b7fc47.png", lblTitle1: "CheeseCake", ingredients: "Cake,Cheese", creator: "Hagen-Daz")
        recipiesDesserts.append(cheesecake)
        
        
        
        let meat = Category(lblTitle1: "Carnes",lblNumber: "4", urlImg: "https://api.adorable.io/avatars/200/80197d80116b41c83618598cd8b7fc47.png", recepies: recipiesMeat)
        let fish = Category(lblTitle1: "Pescados",lblNumber: "4", urlImg: "https://api.adorable.io/avatars/200/80197d80116b41c83618595cd8b7fc47.png", recepies: recipiesFish)
        let ave = Category(lblTitle1: "Aves",lblNumber: "4", urlImg: "https://api.adorable.io/avatars/200/80197d80116b45c83618598cd8b7fc47.png", recepies: recipiesBirds)
        let vegetables = Category(lblTitle1: "Verduras",lblNumber: "4", urlImg: "https://api.adorable.io/avatars/200/80197s80116b41c83618598cd8b7fc47.png", recepies: recipiesVegetables)
        let salads = Category(lblTitle1: "Ensaladas",lblNumber: "4", urlImg: "https://api.adorable.io/avatars/200/80197d80116b41c83618598cd3b7fc47.png", recepies: recipiesSalads)
        let paste = Category(lblTitle1: "Pastas",lblNumber: "4", urlImg: "https://api.adorable.io/avatars/200/82197d80116b41c83618598cd8b7fc47.png", recepies: recipiesPaste)
        let sope = Category(lblTitle1: "Sopas",lblNumber: "4", urlImg: "https://api.adorable.io/avatars/200/80197d20116b41c83618598cd8b7fc47.png", recepies: recipiesSopes)
        let desserts = Category(lblTitle1: "Postres",lblNumber: "4", urlImg: "https://api.adorable.io/avatars/200/80197d803016b41c83618598cd8b7fc47.png", recepies: recipiesDesserts)
        
        categories.append(meat)
        categories.append(fish)
        categories.append(ave)
        categories.append(vegetables)
        categories.append(salads)
        categories.append(paste)
        categories.append(sope)
        categories.append(desserts)
    }

}
extension CategoryViewController: UITableViewDelegate,UITableViewDataSource
    
{
   
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return categories.count
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 88.0
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: CategoryTableViewCell = (tableView.dequeueReusableCell(withIdentifier: "categoryCell", for: indexPath) as? CategoryTableViewCell)!
       // cell.accessoryType = .disclosureIndicator
       
        let category = categories[indexPath.row]
        let x : Int
        x = category.recepies.count
        var myString = String(x)
        cell.lblTitle?.text = category.title
        cell.lblNumber?.text = myString
        cell.imgCategory?.sd_setImage(with: URL(string: category.urlImg)!, completed: nil)
        
        // cell.accessoryType = .detailDisclosureButton
        return cell
            
        }
   
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let myCategory = categories[indexPath.row]
        let recepieVC = RecepieViewController(recepies: myCategory.recepies)
        navigationController?.pushViewController(recepieVC, animated: true)
    }
    }


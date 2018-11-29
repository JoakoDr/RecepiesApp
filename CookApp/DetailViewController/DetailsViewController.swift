//
//  DetailsViewController.swift
//  CookApp
//
//  Created by JOAQUIN DIAZ RAMIREZ on 28/11/18.
//  Copyright © 2018 JOAQUIN DIAZ RAMIREZ. All rights reserved.
//

import UIKit
import SDWebImage

class DetailsViewController: UIViewController {
    
    internal var recepies:Recepies!
    @IBOutlet weak var titleLabel : UILabel!
    @IBOutlet weak var mainImageView : UIImageView!
    @IBOutlet weak var lblIngredients : UILabel!
    @IBOutlet weak var lblCreator : UILabel!
    
    convenience init(recepies: Recepies)
    {
        self.init()
        self.recepies = recepies
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Detail Recepies"
        titleLabel.text = recepies.title
        lblIngredients.text = recepies.ingredients
        lblCreator.text = recepies.creator
        mainImageView?.sd_setImage(with: URL(string: recepies.img)!, completed: nil)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

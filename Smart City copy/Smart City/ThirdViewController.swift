//
//  ThirdViewController.swift
//  Smart City
//
//  Created by Mahmoud on 3/20/21.
//  Copyright © 2021 mahmoud. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    lazy var places :[Place]={
        let model  = Model()
        return model.PlaceList
        
    }()
    var  indexpath:Int=0
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var descriptionLable: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        image.image=places[indexpath].imageOfPlace
        descriptionLable.text=places[indexpath].description
       
    }
    

    @IBAction func showOnMap(_ sender: Any) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "ForthViewController") as! ForthViewController
        vc.coordinates  = places[indexpath].coordinatesOfPlace
               self.navigationController?.pushViewController(vc, animated: true)
    }
    
}

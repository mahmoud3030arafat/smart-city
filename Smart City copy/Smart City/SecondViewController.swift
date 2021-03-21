//
//  SecondViewController.swift
//  Smart City
//
//  Created by Mahmoud on 3/20/21.
//  Copyright © 2021 mahmoud. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{
    var indexpath:Int!
    @IBOutlet weak var tabelview: UITableView!
    
    lazy var places :[Place]={
           let model  = Model()
           return model.PlaceList
           
       }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabelview.delegate=self
        tabelview.dataSource=self
        
    }
    // tableview code
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return places.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = tableView.dequeueReusableCell(withIdentifier: "cell5", for: indexPath)as!SecondTableViewCell
        cell.imagecell.image=places[indexPath.row].imageOfPlace
        cell.labelcell.text=places[indexPath.row].nameOfPlace
        return cell
        
    }

    
     func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
          return 150
      }
    
    // did select
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         indexpath = indexPath.row
         let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "ThirdViewController") as! ThirdViewController
        vc.indexpath=indexpath
        self.navigationController?.pushViewController(vc, animated: true)
        
        
    }
    
    


}



import Foundation

import UIKit
//struct Coordinates {
//    var lattitude : Double
//    var longitude : Double
//}

struct Place {
    
    var imageOfPlace:UIImage
    
    var nameOfPlace: String
    
    var coordinatesOfPlace : [Double]
    
    var description:String
 
}

struct Categories  {
    var image : UIImage
    var places : [Place]
    
}

class Model {
    
    var PlaceList: [Place] = [Place]()
    
   // var users: [User] = [User]()
    
    var CategoriesList: [Categories] = [Categories]()
    
    init() {
        
        // banks
        
        let place1 = Place(imageOfPlace:UIImage(named: "1")!, nameOfPlace: "bank misr ", coordinatesOfPlace: [30.589255232324696,31.491226131093725], description: "a good bank and support the customers  well")
        PlaceList.append(place1)
        
        let place2 = Place(imageOfPlace:UIImage(named: "2")!, nameOfPlace: "bank cairo ", coordinatesOfPlace: [12,13], description: "a very  good bank")
        PlaceList.append(place2)
        
        let place3 = Place(imageOfPlace:UIImage(named: "3")!, nameOfPlace: "bank Ahly ", coordinatesOfPlace: [12,13], description: "a very very  good bank")
        PlaceList.append(place3)
         let place4 = Place(imageOfPlace:UIImage(named: "1")!, nameOfPlace: "bank misr ", coordinatesOfPlace: [12,13], description: "a good bank and support the customers  well")
         PlaceList.append(place4)
         
         let place5 = Place(imageOfPlace:UIImage(named: "2")!, nameOfPlace: "bank cairo ", coordinatesOfPlace: [12,13], description: "a very  good bank")
         PlaceList.append(place5)
         
         let place6 = Place(imageOfPlace:UIImage(named: "3")!, nameOfPlace: "bank Ahly ", coordinatesOfPlace: [12,13], description: "a very very  good bank")
         PlaceList.append(place6)
        
        
        let category1 = Categories(image: UIImage(named: "5")!, places: PlaceList)
        CategoriesList.append(category1)
        let category2 = Categories(image: UIImage(named: "4")!, places: PlaceList)
        CategoriesList.append(category2)
        let category3 = Categories(image: UIImage(named: "4")!, places: PlaceList)
        CategoriesList.append(category3)
        let category4 = Categories(image: UIImage(named: "4")!, places: PlaceList)
        CategoriesList.append(category4)
        let category5 = Categories(image: UIImage(named: "4")!, places: PlaceList)
        CategoriesList.append(category5)
        
        
  
      
        
      
      
    
    
  }
    
}

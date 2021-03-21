

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var bottomCollectionView: UICollectionView!
 
    
    @IBOutlet weak var topCollectionView: UICollectionView!
    
    
   // @IBOutlet weak var middelCollectionView: UICollectionView!
    
    //@IBOutlet weak var bottomCollectionView: UICollectionView!
    let topImages : [UIImage] = [UIImage(named: "6")!,UIImage(named: "4")!]
    lazy var categories :[Categories]={
        let model  = Model()
        return model.CategoriesList
        
    }()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        topCollectionView.delegate=self
        topCollectionView.dataSource=self
        bottomCollectionView.delegate=self
        bottomCollectionView.dataSource=self
        
    }
    
    
    
    // collection view funcs
    
    // numberOfItemsInSection
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
      
        if collectionView == self.topCollectionView{
            
            return topImages.count
        }
        return categories.count
        
    }

     // cellForItemAt
     func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       
        if collectionView == self.topCollectionView{
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! TopCollectionViewCell
            cell.topImages.image = topImages[indexPath.row]
            return cell
        }
        
        let cell2 = collectionView.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath) as! BotomCollectionViewCell
        cell2.bottomImage.image=categories[indexPath.row].image
            //cell2.myLable.text = contents[indexPath.row].localized()
        return cell2
  
      }

    //didSelectItemAt
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == self.bottomCollectionView {
       let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "SecondViewController") as! SecondViewController
        self.navigationController?.pushViewController(vc, animated: true)
        }
    }

    // sizeForItemAt
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == self.topCollectionView{
        let height = view.frame.size.height
        let width = view.frame.size.width
        // in case you you want the cell to be 50% of your controllers view
        return CGSize(width: width * 0.5, height: height * 0.5)
        }
        return CGSize(width: 100, height: 100)

    }

    // minimumLineSpacingForSectionAt
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat
    {
        if collectionView == self.topCollectionView{
           return 3
        }
        return 3

    }
    
    // insetForSectionAt
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets
    {
        if collectionView == self.topCollectionView{
        let sectionInset = UIEdgeInsets(top: 3, left: 4, bottom: 3, right: 4)
        return sectionInset
        }

        let sectionInset2 = UIEdgeInsets(top: 3, left: 4, bottom: 3, right: 4)
        return sectionInset2

    }

   }
    
   
   
    

extension String{
func localized()->String{
    
    return NSLocalizedString(self, tableName: "Localizable", bundle: .main, value: self, comment: self)
}
    
}

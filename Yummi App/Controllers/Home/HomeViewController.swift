//
//  HomeViewController.swift
//  Yummi App
//
//  Created by Fernando González on 01/07/22.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var categoryCollectionView: UICollectionView!
    @IBOutlet weak var popularCollectionView: UICollectionView!
    
    var dishCategoryBrain: DishCategoryBrain = DishCategoryBrain()
    var dishBrain: DishBrain = DishBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Yummie"
        
        // NOTE: the next two lines I did them through control drag delegate, datasource
        // categoryCollectionView.delegate = self
        // categoryCollectionView.dataSource = self
        
        self.registerViewCells()
    }
    
    private func registerViewCells() {
        // Registering CategoryCollectionViewCell XIB
        categoryCollectionView.register(UINib(nibName: K.HomePage.categoryCollectionCellIdentifier, bundle: nil), forCellWithReuseIdentifier: K.HomePage.categoryCollectionCellIdentifier)
        // Registering DishPortraitCollectionViewCell XIB
        popularCollectionView.register(UINib(nibName: K.HomePage.dishPortraitCollectionViewCellIdentifier, bundle: nil), forCellWithReuseIdentifier: K.HomePage.dishPortraitCollectionViewCellIdentifier)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

// MARK: - UICollectionViewDelegate
extension HomeViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        switch collectionView {
        case self.categoryCollectionView:
            print(indexPath.row)
        case self.popularCollectionView:
            print(indexPath.row)
        default:
            print(indexPath.row)
        }
    }
}

// MARK: - UICollectionViewDataSource
extension HomeViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch collectionView {
        case self.categoryCollectionView:
            return self.dishCategoryBrain.getCount()
        case self.popularCollectionView:
            return self.dishBrain.getCount()
        default:
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch collectionView {
        case self.categoryCollectionView:
            let cell: CategoryCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: K.HomePage.categoryCollectionCellIdentifier, for: indexPath) as! CategoryCollectionViewCell
            
            cell.setup(with: self.dishCategoryBrain.getCategory(atIndex: indexPath.row))
            
            return cell
        case self.popularCollectionView:
            let cell: DishPortraitCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: K.HomePage.dishPortraitCollectionViewCellIdentifier, for: indexPath) as! DishPortraitCollectionViewCell
            
            cell.setup(with: self.dishBrain.getDish(atIndex: indexPath.row))
        default:
            
        }
    }
}

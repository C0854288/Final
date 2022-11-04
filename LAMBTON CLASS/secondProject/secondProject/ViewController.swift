//
//  ViewController.swift
//  secondProject
//
//  Created by Sunkara Vishnu vardhan on 2022-09-11.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var header: UILabel!
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        collectionView.dataSource=self
        collectionView.delegate = self
            collectionView.collectionViewLayout = UICollectionViewFlowLayout()
        
    }
    

}
extension   ViewController: UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return frontViews.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "imageAndTitle", for: indexPath) as! imageAndTitle
        cell.setUp(with:frontViews[indexPath.row])
        return cell
    }
}
extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200, height: 300)
    }
}

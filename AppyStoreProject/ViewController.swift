//
//  ViewController.swift
//  AppyStoreProject
//
//  Created by BridgeLabz on 16/07/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UICollectionViewDelegate,UICollectionViewDataSource {
    @IBOutlet weak var collection: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
    return 100
    
    
}

func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
    let cell: UICollectionViewCell = collectionView.dequeueReusableCellWithReuseIdentifier("CollectionViewCell", forIndexPath: indexPath) as! UICollectionViewCell
    
    
    return cell
}
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath)
        
    {
        let TableViewController1 = self.storyboard!.instantiateViewControllerWithIdentifier("TableViewController") as! TableViewController
        self.navigationController?.pushViewController(TableViewController1, animated: true)
        
        
        
    }
    
  override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


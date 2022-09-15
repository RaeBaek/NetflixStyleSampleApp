//
//  HomeViewController.swift
//  NetflixStyleSampleApp
//
//  Created by 백래훈 on 2022/09/15.
//

import UIKit

class HomeViewController: UICollectionViewController {
    
    var contents: [Content] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Navigation 설정
        navigationController?.navigationBar.backgroundColor = .clear
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.hidesBarsOnSwipe = true
      
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "netflix_icon"), style: .plain, target: nil, action: nil)
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "person.crop.circle"), style: .plain, target: nil, action: nil)
        
        //Data 설정, 가져오기
        contents = getContents()
        
        
    }
    
    func getContents() -> [Content] {
        
        guard let path = Bundle.main.path(forResource: "Content", ofType: "plist"),
              let data = FileManager.default.contents(atPath: path),
              let list = try? PropertyListDecoder().decode([Content].self, from: data) else { return [] }
        
        return list
    }
    
}

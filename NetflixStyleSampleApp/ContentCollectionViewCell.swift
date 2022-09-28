//
//  ContentCollectionViewCell.swift
//  NetflixStyleSampleApp
//
//  Created by 백래훈 on 2022/09/28.
//

import UIKit
import SnapKit

class ContentCollectonViewCell: UICollectionViewCell {
    let imageView = UIImageView()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        contentView.backgroundColor = .white
        contentView.layer.cornerRadius = 5
        contentView.clipsToBounds = true
        
        imageView.contentMode = .scaleAspectFit
        
        contentView.addSubview(imageView)
        
        imageView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
}

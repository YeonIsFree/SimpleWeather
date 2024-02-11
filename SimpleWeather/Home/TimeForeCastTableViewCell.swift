//
//  TimeForeCastTableViewCell.swift
//  SimpleWeather
//
//  Created by Seryun Chun on 2024/02/10.
//

import UIKit

class TimeForeCastTableViewCell: UITableViewCell {
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "시간 예보 (3시간)"
        label.font = .boldSystemFont(ofSize: 22)
        return label
    }()
    
    let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let spacing: CGFloat = 8
        let deviceWidth = UIScreen.main.bounds.width
        let cellWidth = (deviceWidth - spacing * 4 ) / 3
        layout.itemSize = CGSize(width: cellWidth, height: cellWidth * 1.5)
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: spacing)
        layout.minimumLineSpacing = spacing
        layout.scrollDirection = .horizontal
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        return collectionView
    }()
    
    // MARK: - Init
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        render()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - UI Configuation Method

extension TimeForeCastTableViewCell {
    private func render() {
        contentView.addSubview(titleLabel)
        titleLabel.snp.makeConstraints { make in
            make.top.horizontalEdges.equalTo(contentView).inset(8)
            make.height.equalTo(22)
        }
        
        contentView.addSubview(collectionView)
        collectionView.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(8)
            make.horizontalEdges.bottom.equalTo(contentView)
        }
    }
}

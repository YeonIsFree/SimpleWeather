//
//  TimeForeCastCollectionViewCell.swift
//  SimpleWeather
//
//  Created by Seryun Chun on 2024/02/10.
//

import UIKit

class TimeForeCastCollectionViewCell: UICollectionViewCell {
    
     // MARK: - UI Properties
    
    let timeLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 20)
        label.text = "지금"
        label.textAlignment = .center
//        label.backgroundColor = .cyan
        return label
    }()
    
    let weatherImageView: UIImageView = {
        let imageView = UIImageView(frame: .zero)
        imageView.image = UIImage(systemName: "cloud.heavyrain")
        imageView.contentMode = .scaleAspectFit
//        imageView.backgroundColor = .systemTeal
        return imageView
    }()
    
    let tempLabel: UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 20)
        label.text = "6˚"
        label.textAlignment = .center
//        label.backgroundColor = .cyan
        return label
    }()
    
     // MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        render()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
     // MARK: - 
    
     // MARK: - UI Configuration Method
    
    private func render() {
        contentView.addSubview(timeLabel)
        timeLabel.snp.makeConstraints { make in
            make.top.equalTo(contentView)
            make.horizontalEdges.equalTo(contentView)
            make.height.equalTo(20)
        }
        
        contentView.addSubview(weatherImageView)
        weatherImageView.snp.makeConstraints { make in
            make.top.equalTo(timeLabel.snp.bottom)
            make.horizontalEdges.equalTo(contentView)
            make.height.equalTo(100)
        }
        
        contentView.addSubview(tempLabel)
        tempLabel.snp.makeConstraints { make in
            make.top.equalTo(weatherImageView.snp.bottom)
            make.horizontalEdges.bottom.equalTo(contentView)
        }
    }
}

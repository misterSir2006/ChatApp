//
//  StartVCView.swift
//  tChat
//
//  Created by Илья Шахназаров on 16.09.2020.
//  Copyright © 2020 PentaBob. All rights reserved.
//

import UIKit
import SnapKit

class ProfileVCView: UIView {
    
    let userImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = Constants.Design.Images.userImage
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 48
        
        return imageView
    }()
    
    
    
    let addPhotoButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = Constants.Design.Colors.blue
        button.setBackgroundColor(color: Constants.Design.Colors.highlightedBlue, forState: .highlighted)
        button.setImage(Constants.Design.Images.addPhotoButton, for: .normal)
        button.setImage(Constants.Design.Images.addPhotoButton, for: .highlighted)
        button.imageEdgeInsets = UIEdgeInsets(top: 24, left: 24, bottom: 24, right: 24)
        button.layer.cornerRadius = 48
        
        return button
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Илья Шахназаров"
        label.font = UIFont.boldSystemFont(ofSize: 32)
        label.textColor = Constants.Design.Colors.black
        
        return label
    }()
    
    let informationLabel: UILabel = {
        let label = UILabel()
        label.text = "👨‍💻Люблю программировать под iOS\n👨‍🎓Изучать новые технологии\n👨‍🏫Помогаю развиваться другим"
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 16)
        
        return label
    }()
    
    let editButton: UIButton = {
        let button = UIButton()
        button.setTitle("Редактировать", for: .normal)
        button.setTitleColor(Constants.Design.Colors.black, for: .normal)
        button.layer.borderWidth = 1
        button.layer.borderColor = Constants.Design.Colors.black.cgColor
        button.layer.cornerRadius = 12
        
        return button
    }()
    
    // MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        fill()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        fill()
    }
    
    // MARK: - Fill
    
    private func fill() {
        
        backgroundColor = Constants.Design.Colors.white
        
        addSubview(userImage)
        userImage.snp.makeConstraints { make in
            make.top.equalTo(safeAreaLayoutGuide.snp.top).offset(16)
            make.centerX.equalToSuperview()
            make.width.equalTo(352)
            make.height.equalTo(userImage.snp.width)
        }
        
        addSubview(addPhotoButton)
        addPhotoButton.snp.makeConstraints { make in
            make.bottom.equalTo(userImage.snp.bottom)
            make.right.equalTo(userImage.snp.right)
            make.height.equalTo(96)
            make.width.equalTo(addPhotoButton.snp.height)
        }
        
        addSubview(nameLabel)
        nameLabel.snp.makeConstraints { make in
            make.top.equalTo(userImage.snp.bottom).offset(8)
            make.left.equalTo(userImage.snp.left)
            make.right.equalTo(userImage.snp.right)
        }
        
        addSubview(informationLabel)
        informationLabel.snp.makeConstraints { make in
            make.top.equalTo(nameLabel.snp.bottom).offset(8)
            make.left.equalTo(nameLabel.snp.left)
            make.right.equalTo(nameLabel.snp.right)
        }
        
        addSubview(editButton)
        editButton.snp.makeConstraints { make in
            make.bottom.equalTo(safeAreaLayoutGuide.snp.bottom).offset(-16)
            make.left.equalTo(nameLabel.snp.left)
            make.right.equalTo(nameLabel.snp.right)
            make.height.equalTo(48)
        }
    }
}

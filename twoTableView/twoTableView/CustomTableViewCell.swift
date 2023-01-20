//
//  CustomViewCell.swift
//  twoTableView
//
//  Created by mark berkov on 12.12.22.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    let image = UIImageView()
    let nameLabel: UILabel = {
            let nameLabel = UILabel()
        nameLabel.text = "imya familiya na"
            nameLabel.textColor = #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)
            return nameLabel
        }()
    let statusLabel: UILabel? = {
        let statusLabel = UILabel()
        statusLabel.text = "ur in a group!"
        statusLabel.textColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        return statusLabel
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setUpCell()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    private func setUpCell() {
        [image, nameLabel].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            contentView.addSubview($0)
        }
        
        NSLayoutConstraint.activate([
            
            image.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16),
            image.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -16),
            image.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            image.widthAnchor.constraint(equalToConstant: 37),
            image.heightAnchor.constraint(equalToConstant: 37),
            
            nameLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16),
            nameLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -16),
            nameLabel.leadingAnchor.constraint(equalTo: image.trailingAnchor, constant: 15),
            nameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 8)
            
        ])
    }
    
    
    func configure(contact: Contact) {
        image.image = contact.image
        nameLabel.text = contact.name
    }
}

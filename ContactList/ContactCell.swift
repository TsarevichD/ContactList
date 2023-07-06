//
//  ContactCell.swift
//  ContactList
//
//  Created by macbook on 04.07.2023.
//

import Foundation
import UIKit

class ContactCell: UITableViewCell {
    static let reuseId = String(describing: ContactCell.self)
    
    let firstNameLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        return label
    }()
    
    let lastNameLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        return label
    }()
    
    let phoneLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        return label
    }()
    
    let emailLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        return label
    }()
    
    lazy var nameStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [firstNameLabel, lastNameLabel])
        stackView.axis = .horizontal
        stackView.alignment = .center
        stackView.distribution = .fillEqually
        stackView.spacing = 8
        return stackView
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super .init(style: style, reuseIdentifier: reuseIdentifier)
        
        [nameStackView, phoneLabel, emailLabel].forEach(addSubview(_:))
        
        nameStackView.snp.makeConstraints { make in
            make.left.right.top.equalToSuperview().inset(16)
        }
        
        phoneLabel.snp.makeConstraints { make in
            make.top.equalTo(nameStackView.snp.bottom).offset(16)
            make.left.right.equalToSuperview().inset(16)
        }
        
        emailLabel.snp.makeConstraints { make in
            make.left.right.equalToSuperview().inset(16)
            make.top.equalTo(phoneLabel.snp.bottom).offset(16)
            make.bottom.equalToSuperview().inset(16)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        firstNameLabel.text = nil
        lastNameLabel.text = nil
        phoneLabel.text = nil
        emailLabel.text = nil
        
    }
    
    func configure(contact: Contact) {
        
        firstNameLabel.text = contact.firstName
        lastNameLabel.text = contact.lastName
        phoneLabel.text = contact.phone
        emailLabel.text = contact.email
        
        if contact.email != nil {
            emailLabel.snp.updateConstraints { make in
                make.top.equalTo(phoneLabel.snp.bottom).offset(16)
            }
        }else {
            emailLabel.snp.updateConstraints { make in
                make.top.equalTo(phoneLabel.snp.bottom).offset(0)
            }
        }
    }
}

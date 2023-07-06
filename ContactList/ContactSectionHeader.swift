//
//  ContactSectionHeader.swift
//  ContactList
//
//  Created by macbook on 04.07.2023.
//

import Foundation
import UIKit

class ContactSectionHeader: UITableViewHeaderFooterView {
    
    static let reuseId = String(describing: ContactSectionHeader.self)
    
    let label = UILabel ()
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        
        addSubview(label)
        
        label.snp.makeConstraints { make in
            make.left.right.equalToSuperview().inset(16)
            make.centerY.equalToSuperview()
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(section: String) {
        label.text = section
    }
}

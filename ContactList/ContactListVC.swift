//
//  ContactListVC.swift
//  ContactList
//
//  Created by macbook on 04.07.2023.
//

import Foundation
import UIKit
import SnapKit

class ContactListVC: UIViewController {
    
    let tableView = UITableView()
    
    var contacts = [String: [Contact]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        
        contacts = Contact.dictionary
        tableView.reloadData()
    }
    
    func setupViews() {
        navigationItem.title = "Контакты"
        view.backgroundColor = .white
        
        view.addSubview(tableView)
        
        tableView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        tableView.register(ContactCell.self, forCellReuseIdentifier: ContactCell.reuseId)
        tableView.register(ContactSectionHeader.self, forHeaderFooterViewReuseIdentifier: ContactSectionHeader.reuseId)
        tableView.dataSource = self
        tableView.delegate = self
    }
    
}

extension ContactListVC: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return contacts.keys.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // получили массив секций из ключей дикшинари, отсортированный
        let sections = contacts.keys.sorted(by: { $0 < $1 }) // ["A","Б","В", ...]
        
        //получлии текущую секцию
        let contactsSection = sections[section] // одна секция (например "А" или "Б")
        
        // получили массив контактов в текущей секции из дикшинари (например все контакты из секции "A")
        guard let contactsInSection = contacts[contactsSection] else { return 0 }
        
        return contactsSection.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ContactCell.reuseId, for: indexPath)
        
        guard let contactCell = cell as? ContactCell else { return cell }
        
        let section = indexPath.section
        let index = indexPath.row
        
        //получили массив секций из ключей дикшинари, отсортерованный
        let sections = contacts.keys.sorted(by: {$0 < $1 }) // ["A","Б","В", ...]
        
        // получили текущую секцию
        let contactsSection = sections[section] // ["A","Б","В", ...]
        
        //получили массив контактов в текущей секции из дикшинари
        guard let contactsSection = contacts[contactsSection] else { return cell }
        
        let contact = contactsSection[index]
        
        contactCell.configure(contact: contact)
        
        return contactCell
        
    }
}

extension ContactListVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let cell =  tableView.dequeueReusableHeaderFooterView(withIdentifier: ContactSectionHeader.reuseId)
        
        guard let headerCell = cell as? ContactSectionHeader else { return cell }
        
        //получили массив секций из ключей дикшинари, отсортированный
        
        let sections = contacts.keys.sorted(by: {$0 < $1})
        
        let contactsSection = sections[section]
        
        headerCell.configure(section: contactsSection)
        
        return headerCell
    }
}

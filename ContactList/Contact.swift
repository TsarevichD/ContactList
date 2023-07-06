//
//  Contact.swift
//  ContactList
//
//  Created by macbook on 04.07.2023.
//

import Foundation

struct Contact {
    let firstName: String
    let lastName: String
    let phone: String
    let email: String?
}


extension Contact {
    
    static var dictionary: [String: [Contact]] {
        [
            "A": [
                Contact(firstName: "Ангелина", lastName: "Вовк", phone: "+3806655440232", email: nil),
                Contact(firstName: "Андрей", lastName: "Раевнёв", phone: "+380676397781", email: nil),
                Contact(firstName: "Ангелина", lastName: "Вовк", phone: "+380713753611", email: "toha902@mail.ru")
            ],
            "Б": [
                Contact(firstName: "Бабушка", lastName: "Сидорова", phone: "+30953809876", email: nil),
                Contact(firstName: "Блыщик", lastName: "Петров", phone: "+380713224924", email: "blash456@gmail.com"),
                Contact(firstName: "Бригадир", lastName: "Иванов", phone: "+380505674342", email: nil)
            ],
            "В": [
                Contact(firstName: "Валера", lastName: "Башта", phone: "+30501028105", email: nil),
                Contact(firstName: "Вика", lastName: "Кравченко", phone: "+380667912110", email: nil),
                Contact(firstName: "Вова", lastName: "Иващук", phone: "+380665225551", email: "vova89@mail.ru")
            ],
            "Д": [
                Contact(firstName: "Дудь", lastName: "Сидоров", phone: "+380957894565", email: "vdud@rambler.ru"),
                Contact(firstName: "Дима", lastName: "Шевченко", phone: "+380508558888", email: nil),
                Contact(firstName: "Данил", lastName: "Торов", phone: "+380502312343", email: nil)
            ],
            "Ж": [
                Contact(firstName: "Жанна", lastName: "Ирисова", phone: "+380669585164", email: nil),
                Contact(firstName: "Женя", lastName: "Петров", phone: "+380509997864", email: "evgenPetrov@mail.ru"),
                Contact(firstName: "Жора", lastName: "Новиков", phone: "+380501585426", email: nil)
            ],
            "К": [
                Contact(firstName: "Кеша", lastName: "Нисов", phone: "+380507899871", email: "keshaN@gmail.com"),
                Contact(firstName: "Коля", lastName: "Брилов", phone: "+380509876543", email: nil),
                Contact(firstName: "Кристина", lastName: "Козина", phone: "+380501423546", email: nil)
            ],
            "М": [
                Contact(firstName: "Марина", lastName: "Шепель", phone: "+380664563782", email: nil),
                Contact(firstName: "Миша", lastName: "Сергеев", phone: "+380501534521", email: nil),
                Contact(firstName: "Мотя", lastName: "Евреев", phone: "+380501234567", email: "motya@mail.ru")
            ],
            "П": [
                Contact(firstName: "Паша", lastName: "Лактионов", phone: "+380953697166", email: nil),
                Contact(firstName: "Петя", lastName: "Петров", phone: "+380667890001", email: "petros77@gmail.com"),
                Contact(firstName: "Прося", lastName: "Сясова", phone: "+380503217864", email: nil)
            ],
            "С": [
                Contact(firstName: "Саша", lastName: "Пушкин", phone: "+380500123487", email: "alex@mail.ru"),
                Contact(firstName: "Сергей", lastName: "Капотов", phone: "+380502784672", email: nil),
                Contact(firstName: "Сява", lastName: "Петухов", phone: "+380998964831", email: nil)
            ],
        
        ]
    }
}

//
//  User.swift
//  LoginApp
//
//  Created by Алексей on 05.07.2022.
//

import Foundation
import UIKit


struct User {
    let user: String
    let password: String
    let person: Person
    
    static func getUserData () -> User {
        User(
            user: "Aleksey",
            password: "qwerty",
            person: Person(
                name: "Алексей",
                surname: "Иванов",
                age: 25,
                photo: "avatar",
                biography: """
                Автобиография – это документ, в котором человек
                описывает основные события своей жизни, как правило,
                в хронологическом порядке. С большой долей вероятности можно сказать,
                что работодателя не будет интересовать,
                например, ходили ли вы в детский сад,
                когда впервые влюбились и т.д.,
                — работодателю важны те аспекты вашей жизни,
                которые могут в той или иной мере влиять на трудовой процесс.
                """,
                studentSwiftBook: true,
                languageLerningLogo: "swift"
            )
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let age: Int
    let photo: String
    let biography: String
    let studentSwiftBook: Bool
    let languageLerningLogo: String
    
}


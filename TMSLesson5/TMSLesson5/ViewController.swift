//
//  ViewController.swift
//  TMSLesson5
//
//  Created by Mac on 1.12.23.
//


import UIKit

class ViewController: UIViewController {
    
    
    let stringOptionalValue: String? = nil
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let optionalNumber = optionalNumber(value: nil)
        
        
        //  1.Написать функцию, которая принимает опциональное число и, если оно есть, умножает его на 2
        
        func optionalNumber(value: Int?) {
            if let number = value {
                print ("Опционал имеет значения \(number * 2)")
            } else {
                print ("Опционал не содержит значение")
            }
        }
        
        
        //  2.Использовать force unwrap для извлечения значения из опциональной переменной. Затем добавьте условие, чтобы обработать случай, если значение равно nil.
        
        if stringOptionalValue != nil {
            print(stringOptionalValue)
        } else {
            print("Значение равно \(stringOptionalValue)")
        }
        
        
        // 3. Написать функцию, использующую оператор guard для проверки опционального значения. Если значение равно nil, выведите сообщение об ошибке, в противном случае выполните операцию с извлеченным значением. 3-4 примера
        
        // Пример 1
        let text = SendMyMessage(value: "I love my gob")
        func SendMyMessage (value: String?) -> String? {
            guard let text = value else {
                print("Error. Value is empty.")
                return nil
            }
            let message = text
            print("My message: \(message)")
            return message
        }
        
        let myAppleID = enterMyAppleID(appleID: nil)
        func enterMyAppleID (appleID: String?) {
            guard let id = appleID else {
                print ("Ошибка: Apple ID не был указан")
                return
            }
            print("Вы вошли в Apple ID")
            
        }
        let loginToAppleID = loginToAppleID(email: "darya12345@gmail.com", password: "Darya432")
        
        func loginToAppleID(email: String?, password: String?) {
            guard let userEmail = email, let userPassword = password else {
                print("Ошибка: необходимо указать логин и пароль")
                return
            }
            print("Вы вошли в Apple ID с почтой \(userEmail) и паролем \(userPassword)")
        }
        
        let enterPhoneNumber = enterPhoneNumber(phoneNumber: 375333456798)
        
        func enterPhoneNumber(phoneNumber: Int?) {
            guard let validPhoneNumber = phoneNumber else {
                print("Ошибка: Введен некорректный номер телефона (значение равно nil)")
                return
            }
            
            print("Введенный номер телефона: \(validPhoneNumber)")
        }
        
        // 4. Напишите функцию, которая принимает строку и пытается преобразовать ее в целое число. Если преобразование возможно, верните число, если нет - nil
        
        let numString: Int? =  guardReturnValue(myString: "45")
        
        func guardReturnValue(myString: String) -> Int? {
            let integerValue: Int? = Int(myString)
            guard let number = integerValue else {
                print("Преобразование невозможно. Значение = nil")
                return nil
            }
            print("Преобразование возможно. Значение = \(number)")
            return number
        }
        
        
        // 5. Создать перечисление Book. Напишите функцию, которая принимает Book и выводит описание книги
        
        prideAndPrejudice.displayBookInfo()
        greatExpectations.displayBookInfo()
        donQuixote.displayBookInfo()
        
    
        novelBook.printDetails()
        fantasyBook.printDetails()
        thrillerBook.printDetails()
        nonFictionBook.printDetails()
        
        
        // 6. Создайте перечисление Clothes. Напишите функцию, которая принимает Clothes в качестве параметра и выводит сообщение о выбранной одежде.
        
        let shirt = Clothes.shirt(size: "M", color: "Blue")
        let jeans = Clothes.jeans(size: "32", color: "Black", brand: "Levi's")
        let jacket = Clothes.jacket(size: "S", color: "Brown", style: "Leather")
        let shoes = Clothes.shoes(size: 6, brand: "Nike")
        
        print(describeClothes(shirt))
        print(describeClothes(jeans))
        print(describeClothes(jacket))
        print(describeClothes(shoes))
        
    }
    
    
}



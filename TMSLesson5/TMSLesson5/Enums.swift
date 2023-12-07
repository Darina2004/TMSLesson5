//
//  Enums.swift
//  TMSLesson5
//
//  Created by Mac on 7.12.23.
//

import Foundation

// 5. Создать перечисление Book. Напишите функцию, которая принимает Book и выводит описание книги

// Пример 1

enum Book{
    enum BookAuthor {
        case Jane_Austen
        case Charles_Dickens
        case Mark_Twain
    }
    enum BookGenre {
        case romance
        case classic
        case adventure
        case fantasy
        case science
    }
    
    enum BookLanguage{
        case english
        case french
        case spanish
    }
    
    enum BookType {
        case hardcover
        case paperback
        case ebook
    }
    
    struct BookInfo {
        let num: String
        let title: String
        let language: BookLanguage
        let genre: BookGenre
        let type: BookType
        let author: BookAuthor
        
        
        func displayBookInfo() {
            let infoString = "\(num). Title: \(title), Author: \(author), Genre: \(genre), Language: \(language),  Type: \(type), "
            print(infoString)
        }
    }
}

let prideAndPrejudice = Book.BookInfo(
    num: "Book1",
    title: "Pride and Prejudice",
    language: .english,
    genre: .romance,
    type: .paperback,
    author: .Jane_Austen
)
let greatExpectations = Book.BookInfo(
    num: "Book2",
    title: "Great Expectations",
    language: .english,
    genre: .classic,
    type: .hardcover,
    author: .Charles_Dickens
)

let donQuixote = Book.BookInfo(
    num: "Book3",
    title: "Adventures of Tom Sawyer",
    language: .spanish,
    genre: .adventure,
    type: .ebook,
    author: .Mark_Twain
)


// Пример 2

enum Book2 {
    case novel(title: String, author: String)
    case fantasy(title: String, author: String)
    case thriller(title: String, author: String)
    case nonFiction(title: String, author: String)
    
    var title: String {
        switch self {
        case .novel(let title, let author):
            return title
        case .fantasy(let title, let author):
            return title
        case .thriller(let title, let author):
            return title
        case .nonFiction(let title, let author):
            return title
        }
    }
    
    var author: String {
        switch self {
        case .novel(let title, let author):
            return author
        case .fantasy(let title, let author):
            return author
        case .thriller(let title, let author):
            return author
        case .nonFiction(let title, let author):
            return author
        }
    }
    
    var bookType: String {
        switch self {
        case .novel:
            return "Novel"
        case .fantasy:
            return "Fantasy"
        case .thriller:
            return "Тhriller"
        case .nonFiction:
            return "Nonfiction"
        }
    }
    
    func printDetails() {
        print("\(bookType): Title: \(title), Author: \(author)")
        
    }
}

let novelBook = Book2.novel(title: "Pride and Prejudice", author: "Jane Аusten")
let fantasyBook = Book2.fantasy(title: "The Lost World", author: "Conan Doyle")
let thrillerBook = Book2.thriller(title: "The Shawshank Redemption", author: "Stephen King")
let nonFictionBook = Book2.nonFiction(title: "A Brief History of Time", author: "Stephen Hawking")


// 6. Создайте перечисление Clothes. Напишите функцию, которая принимает Clothes в качестве параметра и выводит сообщение о выбранной одежде.

enum Clothes {
    case shirt(size: String, color: String)
    case jeans(size: String, color: String, brand: String)
    case jacket(size: String, color: String, style: String)
    case shoes(size: Int, brand: String)
}

func describeClothes(_ clothes: Clothes) -> String {
    switch clothes {
    case let .shirt(size, color):
        return "You selected a shirt. Size: \(size), Color: \(color)."
    case let .jeans(size, color, brand):
        return "You selected pants. Size: \(size), Color: \(color), Brand: \(brand)."
    case let .jacket(size, color, style):
        return "You selected a jacket. Size: \(size), Color: \(color), Style: \(style)."
    case let .shoes(size, brand):
        return "You selected shoes. Size: \(size), Brand: \(brand)."
    }
}







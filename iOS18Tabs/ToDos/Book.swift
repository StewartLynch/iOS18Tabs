//
//----------------------------------------------
// Original project: iOS18Tabs
// by  Stewart Lynch on 2024-08-05
//
// Follow me on Mastodon: @StewartLynch@iosdev.space
// Follow me on Threads: @StewartLynch (https://www.threads.net)
// Follow me on X: https://x.com/StewartLynch
// Follow me on LinkedIn: https://linkedin.com/in/StewartLynch
// Subscribe on YouTube: https://youTube.com/@StewartLynch
// Buy me a ko-fi:  https://ko-fi.com/StewartLynch
//----------------------------------------------
// Copyright © 2024 CreaTECH Solutions. All rights reserved.

import SwiftUI

struct Book: Identifiable, Codable {
    enum Category: String, Codable {
        case wishList = "Wish List"
        case reading = "Reading"
        case completed = "Completed"
        
        var color: Color {
            switch self {
            case .wishList:
                return .orange
            case .reading:
                return .green
            case .completed:
                return .red
            }
        }
    }
    var id: Int
    var title: String
    var author: String
    var category: Category
    
    init(id: Int, title: String, author: String, category: Category) {
        self.id = id
        self.title = title
        self.author = author
        self.category = category
    }
    
    static var all: [Book] {
        [
            Book(id: 1, title: "To Kill a Mockingbird", author: "Harper Lee", category: .wishList),
            Book(id: 2, title: "1984", author: "George Orwell", category: .wishList),
            Book(id: 3, title: "The Great Gatsby", author: "F. Scott Fitzgerald", category: .completed),
            Book(id: 4, title: "The Catcher in the Rye", author: "J.D. Salinger", category: .wishList),
            Book(id: 5, title: "The Hobbit", author: "J.R.R. Tolkien", category: .completed),
            Book(id: 6, title: "Fahrenheit 451", author: "Ray Bradbury", category: .completed),
            Book(id: 7, title: "Pride and Prejudice", author: "Jane Austen", category: .wishList),
            Book(id: 8, title: "Moby-Dick", author: "Herman Melville", category: .completed),
            Book(id: 9, title: "War and Peace", author: "Leo Tolstoy", category: .completed),
            Book(id: 10, title: "Crime and Punishment", author: "Fyodor Dostoevsky", category: .wishList),
            Book(id: 11, title: "The Odyssey", author: "Homer", category: .completed),
            Book(id: 12, title: "Jane Eyre", author: "Charlotte Brontë", category: .completed),
            Book(id: 13, title: "Brave New World", author: "Aldous Huxley", category: .completed),
            Book(id: 14, title: "The Lord of the Rings", author: "J.R.R. Tolkien", category: .reading),
            Book(id: 15, title: "Animal Farm", author: "George Orwell", category: .completed),
            Book(id: 16, title: "The Chronicles of Narnia", author: "C.S. Lewis", category: .completed),
            Book(id: 17, title: "Wuthering Heights", author: "Emily Brontë", category: .completed),
            Book(id: 18, title: "Great Expectations", author: "Charles Dickens", category: .completed),
            Book(id: 19, title: "Little Women", author: "Louisa May Alcott", category: .completed),
            Book(id: 20, title: "The Divine Comedy", author: "Dante Alighieri", category: .completed),
            Book(id: 21, title: "Ulysses", author: "James Joyce", category: .completed),
            Book(id: 22, title: "The Iliad", author: "Homer", category: .wishList),
            Book(id: 23, title: "The Brothers Karamazov", author: "Fyodor Dostoevsky", category: .completed),
            Book(id: 24, title: "Madame Bovary", author: "Gustave Flaubert", category: .completed),
            Book(id: 25, title: "Don Quixote", author: "Miguel de Cervantes", category: .completed),
            Book(id: 26, title: "One Hundred Years of Solitude", author: "Gabriel Garcia Marquez", category: .completed),
            Book(id: 27, title: "A Tale of Two Cities", author: "Charles Dickens", category: .completed),
            Book(id: 28, title: "Les Misérables", author: "Victor Hugo", category: .wishList),
            Book(id: 29, title: "Dracula", author: "Bram Stoker", category: .reading),
            Book(id: 30, title: "Frankenstein", author: "Mary Shelley", category: .completed)
        ]
    }
}

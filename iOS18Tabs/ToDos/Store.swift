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

@Observable
class Store {
    var books: [Book]
    var whishList: [Book] {
        books.filter{$0.category == .wishList}
    }
    var reading: [Book] {
        books.filter{$0.category == .reading}
    }
    var completed: [Book] {
        books.filter{$0.category == .completed}
    }
    
    
    init() {
        self.books = Book.all
    }
}

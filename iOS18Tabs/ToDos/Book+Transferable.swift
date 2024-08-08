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
import UniformTypeIdentifiers

// Define a custom content type identifier for ToDo
extension UTType {
    static var book: UTType {
        UTType(exportedAs: "com.createchsol.book")
    }
}

extension Book: Transferable {
    // Conform to Transferable protocol
    static var transferRepresentation: some TransferRepresentation {
        CodableRepresentation(contentType: .book)
    }
    
    // Define coding keys
    enum CodingKeys: String, CodingKey {
        case id
        case title
        case author
        case category
    }
}

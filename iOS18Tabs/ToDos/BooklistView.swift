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

struct BooklistView: View {
    var books: [Book]
    var title: String
    var body: some View {
        NavigationStack {
            List {
                ForEach(books) { book in
                    HStack {
                        VStack(alignment: .leading){
                            Text(book.title)
                                .font(.title)
                            Text(book.author)
                        }
                        Spacer()
                        Text(book.category.rawValue)
                            .padding()
                            .frame(width: 120)
                            .foregroundStyle(.white)
                            .bold()
                            .background(RoundedRectangle(cornerRadius: 10).fill(book.category.color))
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle(title)
        }
    }
}

#Preview {
    BooklistView(books: Store().books, title: "Reading List")
}

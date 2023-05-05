//
//  ContentView.swift
//  Tesst
//
//  Created by JY on 2023/5/5.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(0..<100, id: \.self) { i in
                    // emoji Unicode
                    Text(verbatim: "\u{1fa84}")
                        .font(.custom("NotoColorEmoji", size: 18))
                        .foregroundColor(.secondary)
                }                    }
            .frame(height: 400)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}

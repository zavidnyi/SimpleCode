//
//  SimpleCodeApp.swift
//  SimpleCode
//
//  Created by Ilya Zavidny on 21.06.2022.
//

import SwiftUI

@main
struct SimpleCodeApp: App {
    var body: some Scene {
        DocumentGroup(newDocument: TextFile()) { file in
            ContentView(document: file.$document)
        }
    }
}

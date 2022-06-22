//
//  ContentView.swift
//  SimpleCode
//
//  Created by Ilya Zavidny on 21.06.2022.
//

import SwiftUI

struct ContentView: View {
    @Binding var document: TextFile

    var body: some View {
        VStack {
            EditorPaneView(content: $document.content)
            OutputPaneView()
        }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}

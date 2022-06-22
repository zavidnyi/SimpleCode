//
//  EditorPaneView.swift
//  SimpleCode
//
//  Created by Ilya Zavidny on 21.06.2022.
//

import Swift
import SwiftUI

struct EditorPaneView: View {
    @Binding var content: String
    var body: some View {
        TextEditor(text: $content)
    }
}


//struct EditorPaneView_Previews: PreviewProvider {
//    static var previews: some View {
//        EditorPaneView()
//    }
//}

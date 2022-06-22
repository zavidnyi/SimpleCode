//
//  TextFile.swift
//  SimpleCode
//
//  Created by Ilya Zavidny on 21.06.2022.
//

import Foundation
import UniformTypeIdentifiers
import SwiftUI

struct TextFile: FileDocument {
    
    static var readableContentTypes = [UTType.plainText]
    
    var content = ""
    
    init(initialContent: String = "") {
        content = initialContent
    }
    
    init(configuration: ReadConfiguration) throws {
        if let data = configuration.file.regularFileContents {
            content = try String(JSONDecoder().decode(String.self, from: data))
        } else {
            throw CocoaError(.fileReadCorruptFile)
        }
    }
    
    func fileWrapper(configuration: WriteConfiguration) throws -> FileWrapper {
        let data = try JSONEncoder().encode(content)
        let fileWrapper = FileWrapper(regularFileWithContents: data)
        return fileWrapper
    }
    
}

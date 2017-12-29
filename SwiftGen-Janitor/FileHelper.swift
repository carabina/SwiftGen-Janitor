//
//  FileHelper.swift
//  SwiftGen-Janitor
//
//  Created by Felipe Braunger Valio on 16/05/17.
//  Copyright © 2017 Movile. All rights reserved.
//

import Cocoa

class FileHelper: NSObject {

    func exclude(paths: [String], fromPaths: [String]) -> [String] {
        return fromPaths.filter {
            return !paths.contains($0)
        }
    }
    
    func sourceCodesAt(projectPath: String) -> [String] {
        return filepaths(endingWith: ".swift", inPath: projectPath)
    }
    
    func interfaceFilesAt(projectPath: String) -> [String] {
        return filepaths(endingWith: ".swift", inPath: projectPath)
    }

    func filepaths(endingWith suffix: String, inPath path: String) -> [String] {
        guard let enumerator = FileManager().enumerator(atPath: path) else {
            return []
        }
        
        var filepaths: [String] = []
        
        for item in enumerator {
            if let item = item as? String, item.hasSuffix(suffix) {
                filepaths.append("\(path)/\(item)")
            }
        }
        
        return filepaths
    }
    
    func contentOfFile(at path: String) -> String? {
        let url = URL(fileURLWithPath: path)
        
        guard let data = try? Data(contentsOf: url), let str = String(data: data, encoding: .utf8) else {
            return nil
        }
        
        return str
    }
}

//
//  Multiplier.swift
//  GitHubCIExample
//
//  Created by Andrei Simvolokov on 22/02/2026.
//

final class Multiplier {
    // Multiplies 2 numbers
    static func multiply(_ a: Int, by b: Int) -> Int {
        var result: Int = 0
        for _ in 0 ..< b {
            result += a
        }
        return result
    }
}

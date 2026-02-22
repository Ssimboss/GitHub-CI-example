//
//  MultiplierTests.swift
//  GitHubCIExample
//
//  Created by Andrei Simvolokov on 22/02/2026.
//

import Testing
@testable import GitHubCIExample

struct MultiplierTests {
    @Test
    func whenMultiplyTwoPositives_thenResultIsValid() {
        let result = Multiplier.multiply(3, by: 4)
        #expect(result == 12)
    }

    @Test
    func whenMultiplyPositiveAndNegative_thenResultIsValid() {
        let result = Multiplier.multiply(3, by: -4)
        #expect(result == -12)
    }
}

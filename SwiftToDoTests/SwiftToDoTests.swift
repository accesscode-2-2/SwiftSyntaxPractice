//
//  SwiftToDoTests.swift
//  SwiftToDoTests
//
//  Created by Linus Liang on 1/8/16.
//  Copyright © 2016 Linus Liang. All rights reserved.
//

import XCTest
@testable import SwiftToDo

class SwiftToDoTests: XCTestCase {
    func testReturnAnyPositiveIntegerGreaterThan1000() {
        XCTAssertNotNil(returnAnyPositiveIntegerGreaterThan1000())
        guard let ans = returnAnyPositiveIntegerGreaterThan1000() else {
            return
        }
        XCTAssertTrue(ans > 1000)
    }
    
    func testReturnAnyNegativeFloat() {
        XCTAssertNotNil(returnAnyNegativeDouble())
        guard let ans = returnAnyNegativeDouble() else {
            return
        }
        XCTAssertTrue(ans < 0.0)
    }
    
    func testReturnABoolean() {
        XCTAssertTrue(returnABoolean() != nil)
    }
    
    func testReturnTheSumOfTwoNumbers() {
        XCTAssertTrue(returnTheSumOfIntegerXAndIntegerY(10, integerY: 20) == 30)
        XCTAssertTrue(returnTheSumOfIntegerXAndIntegerY(1, integerY: -2) == -1)
    }
    
    func testReturnTheDifferenceBetweenTwoNumbers() {
        XCTAssertTrue(returnTheDifferenceBetweenDoubleXAndDoubleY(2, B: 1) == 1)
        XCTAssertTrue(returnTheDifferenceBetweenDoubleXAndDoubleY(4.2, B: 4.1) == 0.1)
    }
    
    func testReturnTheProductOfXAnd100() {
        let input1 = 2.0
        let input2 = 0.5
        XCTAssertNotNil(returnTheProductOfXAnd100(input1))
        XCTAssertNotNil(returnTheProductOfXAnd100(input2))
        guard let ans1 = returnTheProductOfXAnd100(input1) else {
            return
        }
        XCTAssertTrue(ans1 == 200)
        guard let ans2 = returnTheProductOfXAnd100(input2) else {
            return
        }
        XCTAssertTrue(ans2 == 50)
    }
    
    func testIsGreaterThan10() {
        XCTAssertNotNil(isGreaterThan10(9.9))
        XCTAssertNotNil(isGreaterThan10(20))
        guard let ans = isGreaterThan10(20) else {
            return
        }
        XCTAssertTrue(ans)
        XCTAssertFalse(ans)
    }
    
    func testIsEven() {
        let x = 2
        let y = 11
        XCTAssertNotNil(isEven(x))
        guard let ans1 = isEven(x) else {
            return
        }
        XCTAssertTrue(ans1)
        
        guard let ans2 = isEven(y) else {
            return
        }
        XCTAssertFalse(ans2)
    }
    
    func testReturnTheSumOf0ToX() {
        XCTAssertTrue(sumFrom0To(82) == 3403)
        XCTAssertTrue(sumFrom0To(246) == 30381)
    }
    
    func testArrayUnderstanding() {
        let arr1 = [1,2,3,4,5]
        let arr2 = ["hey","boo","a","b","c"]
        XCTAssertTrue(get5thItem(arr1) as?
            Int == 5)
        XCTAssertTrue(get5thItem(arr2) as? String == "c")
    }
    
    func testDictionaryUnderstanding() {
        let dict: Dictionary = ["mountain":"yay"]
        XCTAssertTrue(returnValueForKey(dict, key: "mountain") == "yay")
    }
    
    func testBlockSyntaxUnderstanding() {
        var i = 0
        let block = {()
            i++
        }
        executeBlock(block)
        XCTAssertTrue(i == 1)
    }
    
}
    

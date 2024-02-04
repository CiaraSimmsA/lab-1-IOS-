//
//  main.swift
//  labaratory 1
//
//  Created by 903-03i on 29.01.2024.
//

import Foundation

func add(_ a: Double, _ b: Double) -> Double {
    return a + b
}

func subtract(_ a: Double, _ b: Double) -> Double {
    return a - b
}

func multiply(_ a: Double, _ b: Double) -> Double {
    return a * b
}

func divide(_ a: Double, _ b: Double) -> Double? {
    guard b != 0 else {
        print("Error: Cannot divide by zero.")
        return nil
    }
    return a / b
}

func power(_ base: Double, _ exponent: Double) -> Double {
    return pow(base, exponent)
}

func calculate() {
    print("Enter the first number:")
    guard let num1 = Double(readLine() ?? "") else {
        print("Error: Invalid input for the first number.")
        return
    }

    print("Enter the operator (+, -, *, /, ^):")
    guard let operatorInput = readLine(), let operation = operatorInput.first else {
        print("Error: Invalid input for the operator.")
        return
    }
    
    print("Enter the second number:")
    guard let num2 = Double(readLine() ?? "") else {
        print("Error: Invalid input for the second number.")
        return
    }

    var result: Double?

    switch operation {
    case "+":
        result = add(num1, num2)
    case "-":
        result = subtract(num1, num2)
    case "*":
        result = multiply(num1, num2)
    case "/":
        result = divide(num1, num2)
    case "^":
        result = power(num1, num2)
    default:
        print("Error: Unsupported operator.")
        return
    }

    if let finalResult = result {
        print("Result: \(finalResult)")
    }
}

calculate()


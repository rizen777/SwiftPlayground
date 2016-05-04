//
//  ViewController.swift
//  arrayAnalyzer
//
//  Created by Admin on 04.05.16.
//  Copyright © 2016 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let array1 = [1, 2, 3, 4, 5]
        let array2 = [2, 9, -1000, 3, 1, 0, 5]
        let result = analyzeArray(array1, array2: array2)
        print("UniqueInFirst \(result.0) UniqueInSecond \(result.1) CommonItems \(result.2)")
    }
	
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func analyzeArray(array1 : [Int], array2 : [Int]) -> (Set<Int>, Set<Int>, Set<Int>){
        var uniqueInFirstArray = Set(array1)
        var uniqueInSecondArray = Set<Int>()
        var commonItems = Set<Int>()
        for item in array2 {
            if uniqueInFirstArray.contains(item){
                commonItems.insert(item)
                uniqueInFirstArray.remove(item)
            } else{
                uniqueInSecondArray.insert(item)
            }
        }
        return (uniqueInFirstArray, uniqueInSecondArray, commonItems)
    }
}


//
//  结构体.swift
//  20131105803
//
//  Created by 20131105803 on 16/3/28.
//  Copyright © 2016年 20131105803. All rights reserved.
//

import Foundation

struct equal {
    private var CurrentAlgorthm:algorthm =  .NoChoose
    
    mutating func SetAlgorthm(temp:algorthm){
        CurrentAlgorthm = temp
    }
    
    func ReadAlgorthm() -> algorthm{
        return CurrentAlgorthm
    }
    
    enum algorthm {
        case add
        case reduction
        case multipled
        case division
        case percent
        case NoChoose
        
    }
    
    func 求结果(Number1 Number1:Double,Number2:Double) -> String{
        var Back = ""
        switch CurrentAlgorthm{
        case .add:
            Back = "\(Number1 + Number2)"
        case .reduction:
            Back = "\(Number1 - Number2)"
        case .multipled:
            Back = "\(Number1 * Number2)"
        case .division where Number2 != 0 :
            Back = "\(Number1 / Number2)"
        case .percent:
            Back = "\(Number1 * 0.01)"
        case .NoChoose:
            Back = "错误：未选择算法！"
        default:
            Back = "0 不能做被除数！"
        }
        return Back
    }
}
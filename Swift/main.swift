//
//  main.swift
//  Swift
//
//  Created by 20131105803 on 16/3/3.
//  Copyright © 2016年 20131105803. All rights reserved.
//

import Cocoa

var array = [123,34,54,65,324,89,165,145]

print("排序前：")

for item in array
{
    var ii = item
    print(ii)
}

for var i = 0;i < array.count - 1; ++i {
    for var j = 0;j < array.count - 1 - i; ++j{
        if array[j] > array[j+1]{
            var temp = array[j+1]
            array[j+1] = array[j]
            array[j] = temp
        }
    }
}

print("排序后：")

for item in array
{
    var ii = item
    print(ii)
}
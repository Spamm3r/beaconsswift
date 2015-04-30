//
//  Image.swift
//  ItSilesia beacon
//
//  Created by Tomasz Kaczmarzyk on 29.04.2015.
//  Copyright (c) 2015 Tomasz Kaczmarzyk. All rights reserved.
//

import UIKit

class Image: NSObject {
    
    func changeImage(let value: String?) -> String?
    {
        //value = option01
        return value!
    }
    func autoSize(let count: Int) -> Int
    {
        var n = count / 28
        if count % 28  > 0
        {
            n = n + 1
        }
        n = n * 30
        return n
    }
}

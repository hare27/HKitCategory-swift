//
//  UIColorExtension.swift
//  CEThemeSwitcher
//
//  Created by Mr.LuDashi on 2017/1/16.
//  Copyright © 2017年 ZeluLi. All rights reserved.
//

import UIKit

extension UIColor {
    static func rgb(_ red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
        return UIColor.init(red: red/255, green: green/255, blue: blue/255, alpha: 1)
    }
    
    static func colorWithHex(_ hex: UInt) -> UIColor {
        let r: CGFloat = CGFloat((hex & 0xff0000) >> 16)
        let g: CGFloat = CGFloat((hex & 0x00ff00) >> 8)
        let b: CGFloat = CGFloat(hex & 0x0000ff)
        
        return rgb(r, green: g, blue: b)
    }
    static func colorWithHexString(_ hex:String)->UIColor{
        
        let str = hex.uppercased()
        var sum = 0
        for i in str.utf8 {
            //0-9 从48开始
            sum = sum * 16 + Int(i) - 48
            if i >= 65 {
                //A~Z 从65开始，但初始值为10
                sum -= 7
            }  
        }
        return colorWithHex(UInt(sum))
    }
}

//
//  FruitInformation.swift
//  FruitHealth
//
//  Created by 陈武怿 on 2022/5/18.
//

import Foundation
import SwiftUI

struct FruitInfo: Hashable, Codable{
    
    var title: String
    var intro: String
    var heat: String
    
    private var imageName: String
    
    var listImage: Image{
        Image(imageName)
    }
    
}



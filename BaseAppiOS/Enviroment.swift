//
//  Enviroment.swift
//  KarmaMetricsSwift
//
//  Created by Jose De Jesus Garfias Lopez on 09/07/15.
//  Copyright (c) 2015 Jose De Jesus Garfias Lopez. All rights reserved.
//

import Foundation


class Enviroment {
    var ENV:String;
    var Values:NSDictionary!;
    
    init() {
        if let enviroment = NSBundle.mainBundle().infoDictionary?["Configuration"] as? String {
            
            ENV = enviroment;
            if let path = NSBundle.mainBundle().pathForResource("Enviroment", ofType: "plist") {
                if let EnvDict = NSDictionary(contentsOfFile: path) {
                    Values = EnvDict.valueForKey(ENV) as! NSDictionary;
                }
            }
            
        }else{
            ENV = "No Enviroment";
        }
    }
    
    
    
}



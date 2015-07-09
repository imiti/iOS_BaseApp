//
//  Formatters.swift
//  BaseAppiOS
//
//  Created by Jose De Jesus Garfias Lopez on 09/07/15.
//  Copyright (c) 2015 Jose De Jesus Garfias Lopez. All rights reserved.
//

import Foundation

class Formatter {
    
    //Formatters:
    var Number: NSNumberFormatter {
        let formatter = NSNumberFormatter()
        formatter.numberStyle = .DecimalStyle
        return formatter
    };
    
    var Currency: NSNumberFormatter {
        let formatter = NSNumberFormatter();
        formatter.numberStyle = .CurrencyStyle;
        return formatter;
    };
    
    var Date: NSDateFormatter{
        let formatter = NSDateFormatter();
        formatter.dateStyle = .MediumStyle;
        formatter.timeStyle = .MediumStyle;
        return formatter;
    };
    
    init(){
    
    
    
    }
    

}
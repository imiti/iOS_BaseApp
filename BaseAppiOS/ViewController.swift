//
//  ViewController.swift
//  BaseAppiOS
//
//  Created by Jose De Jesus Garfias Lopez on 09/07/15.
//  Copyright (c) 2015 Jose De Jesus Garfias Lopez. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    let EnvObj = Enviroment();
    let Formats = Formatter();
    
    
    @IBOutlet weak var Enviroment_Label: UILabel!
    @IBOutlet weak var ApiUrl_Label: UILabel!
    @IBOutlet weak var Image_ImageView: UIImageView!
    @IBOutlet weak var Text_Label: UILabel!
    @IBOutlet weak var Number_Label: UILabel!
    @IBOutlet weak var Currency_Label: UILabel!
    @IBOutlet weak var Date_Label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        LoadLabels();

    }
    
    func LoadLabels(){
        
        Enviroment_Label.text = EnvObj.ENV;
        ApiUrl_Label.text = EnvObj.Values["API_URL"] as? String;
        
        Text_Label.text = NSLocalizedString("text", comment:"mensaje");
        Image_ImageView.image = UIImage(named: NSLocalizedString("image_name",comment:"Imagen"));
        
        Number_Label.text = Formats.Number.stringFromNumber(9999999);
        Currency_Label.text = Formats.Currency.stringFromNumber(5090192);
        Date_Label.text = Formats.Date.stringFromDate(NSDate());
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


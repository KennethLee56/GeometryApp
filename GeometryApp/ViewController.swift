//
//  ViewController.swift
//  GeometryApp
//
//  Created by Lee, Kenneth Van on 11/5/19.
//  Copyright © 2019 Lee, Kenneth Van. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var baseTextField: UITextField!
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var radiusTextField: UITextField!
    @IBOutlet weak var area: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func rectangle(_ sender: UIButton) {
        var calculation = 0.0
        var base = 0.0
        var height = 0.0
        
        if let baseTemp = baseTextField.text, let heightTemp = heightTextField.text{
            
            let trimmedBase = baseTemp.trimmingCharacters(in: .whitespaces)
            let trimmedHeight = heightTemp.trimmingCharacters(in: .whitespaces)
            
            if(!trimmedBase.isEmpty && !trimmedHeight.isEmpty){
                
                base = Double(trimmedBase)!
                height = Double(trimmedHeight)!
                calculation = base * height
            }
        }
    
        area.text = (String(calculation))
    }
    
    
    @IBAction func triangle(_ sender: Any) {
        var calculation = 0.0
            var base = 0.0
            var height = 0.0
            
            if let baseTemp = baseTextField.text, let heightTemp = heightTextField.text{
                
                let trimmedBase = baseTemp.trimmingCharacters(in: .whitespaces)
                let trimmedHeight = heightTemp.trimmingCharacters(in: .whitespaces)
                
                if(!trimmedBase.isEmpty && !trimmedHeight.isEmpty){
                    
                    base = Double(trimmedBase)!
                    height = Double(trimmedHeight)!
                    calculation = base * height * 0.5
                }
            }
        
            area.text = (String(calculation))
        
    }
    
    
    @IBAction func circle(_ sender: Any) {
        var calculation = 0.0
        var radius = 0.0
        
        if let radiusTemp = radiusTextField.text {
            let trimmedRadius = radiusTemp.trimmingCharacters(in: .whitespaces)
            
            if(!trimmedRadius.isEmpty){
                
                radius = Double(trimmedRadius)!
                calculation = Double.pi * (radius * radius)
            }
        }
        
        area.text = (String(calculation))
    }
    

}


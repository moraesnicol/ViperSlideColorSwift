//
//  ViewController.swift
//  ViperSlideColor
//
//  Created by Gabriel on 02/07/21.
//

import UIKit



class HomeViewController: UIViewController {

    
    @IBOutlet weak var sliderRed: UISlider!
    @IBOutlet weak var sliderGreen: UISlider!
    @IBOutlet weak var sliderBlue: UISlider!
    @IBOutlet weak var lblRgbValue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }


    @IBAction func oneRedValueChange(_ sender: UISlider) {
        print("Red value received: \(sender.value)")
        onColorValueChange()
        
    }
    
    
    @IBAction func onGreenValueChange(_ sender: UISlider) {
        print("Green value received: \(sender.value)")
        onColorValueChange()
        
    }
    
    
    @IBAction func onBlueValueChange(_ sender: UISlider) {
        print("Blue value received: \(sender.value)")
        onColorValueChange()
        
    }
    
}


extension HomeViewController: ColorValueDelegate {
  
    //receive the protocol
    func onColorValueChange() {
        
        
        let red = sliderRed.value
        let green = sliderGreen.value
        let blue = sliderBlue
        
        lblRgbValue.text = "RGB (\(red)), (\(green)), (\(blue)) "
    }
    //
    
    
    
    
}

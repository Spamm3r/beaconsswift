//
//  SettingsView.swift
//  ItSilesia beacon
//
//  Created by Tomasz Kaczmarzyk on 29.04.2015.
//  Copyright (c) 2015 Tomasz Kaczmarzyk. All rights reserved.
//
import UIKit
import QuartzCore


class SettingsView: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet var FirstBeacon: UIPickerView!
    var beaconPick = ["option01", "option02"]
    let image : Image = Image()
    let viewController : ViewController = ViewController()
    var pickers : String!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.hidden = true
        self.navigationItem.hidesBackButton = true
        // Do any additional setup after loading the view
        FirstBeacon.dataSource = self
        FirstBeacon.delegate = self
        
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    //MARK: - Delegates and data sources
    //MARK: Data Sources
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return beaconPick.count
    }
    //MARK: Delegates
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return beaconPick[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        //myLabel.text = beaconPick[row]
        println(beaconPick[row])
        pickers = beaconPick[row]
        
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if (segue.identifier == "pass") {
            var svc = segue.destinationViewController as! ViewController
            let stringus: String = "aaaaaaaaaaaaaaaaaaaaaaaaaaaa"
            svc.toPass = stringus
            //svc.sizeToPass = image.autoSize(count(svc.toPass))
            let n: Int? = Int(count(stringus))
            let k: Int? = image.autoSize(n!)
            svc.textView.frame = CGRect(x: 59, y: 283, width: 256, height: k!)
        }
    }

}

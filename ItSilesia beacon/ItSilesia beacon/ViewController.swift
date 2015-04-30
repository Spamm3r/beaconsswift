//
//  ViewController.swift
//  ItSilesia beacon
//
//  Created by Tomasz Kaczmarzyk on 29.04.2015.
//  Copyright (c) 2015 Tomasz Kaczmarzyk. All rights reserved.
//
import UIKit
import CoreLocation
import QuartzCore

class ViewController: UIViewController, CLLocationManagerDelegate, UITextViewDelegate {
    

    @IBOutlet var textView: UITextView!
    
    var toPass: String!
    var maybeNil: Int!
    
    let locationManager : CLLocationManager! = CLLocationManager()
    /*
    let region1: CLBeaconRegion! = CLBeaconRegion(proximityUUID: NSUUID(UUIDString: "B9407F30-F5F8-466E-AFF9-25556B57FE6D"), major: 64619, identifier: "Estimotes1")
    
    let region2: CLBeaconRegion! = CLBeaconRegion(proximityUUID: NSUUID(UUIDString: "B9407F30-F5F8-466E-AFF9-25556B57FE6D"), major: 46875, identifier: "Estimotes2")
    
    let region3: CLBeaconRegion! = CLBeaconRegion(proximityUUID: NSUUID(UUIDString: "B9407F30-F5F8-466E-AFF9-25556B57FE6D"), major: 55488, identifier: "Estimotes3")
    */
    let range1: CLBeaconRegion! = CLBeaconRegion(proximityUUID: NSUUID(UUIDString: "8492E75F-4FD6-469D-B132-043FE94921D8"), identifier: "virtual")
    
    let range2: CLBeaconRegion! = CLBeaconRegion(proximityUUID: NSUUID(UUIDString: "B9407F30-F5F8-466E-AFF9-25556B57FE6D"), identifier: "Estimote-door")
    
    //let region2: CLBeaconRegion! = CLBeaconRegion(proximityUUID: NSUUID(UUIDString: "B9407F30-F5F8-466E-AFF9-25556B57FE6D"), major: 46875, identifier: "Estimotes2")
    
    
    override func viewDidLoad() {
        if maybeNil == nil
        {
            println("is nil")
        }
        locationManager.requestAlwaysAuthorization()
        super.viewDidLoad()
        textView.text = toPass
        //labelText.text = toPass
        self.navigationController?.navigationBar.hidden = true
        self.navigationItem.hidesBackButton = true
        locationManager.delegate = self
        //textView.editable = false
        //locationManager.startMonitoringForRegion(region2)
        //locationManager.startMonitoringForRegion(region3)
        //locationManager.requestStateForRegion(region1)
        locationManager.startRangingBeaconsInRegion(range1)
        locationManager.startRangingBeaconsInRegion(range2)
        //regions = CLBeaconRegion(proximityUUID: NSUUID(UUIDString: "B9407F30-F5F8-466E-AFF9-25556B57FE6D"), identifier: "Estimotes")
        // Do any additional setup after loading the2view, typically from a nib.
    }
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    func locationManager(manager: CLLocationManager!, didChangeAuthorizationStatus status: CLAuthorizationStatus) {
        if CLLocationManager.authorizationStatus() == CLAuthorizationStatus.Denied
        {
            println("Couldn't turn on monitoring")
        }
        else
        {
            println("ok")
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func locationManager(manager: CLLocationManager!, didEnterRegion region: CLRegion!) {
        /*
        if region == region2
        {
        checkIn.hidden = false
        let image = UIImage(named: "demo")
        imageBoard.image = image
        
        }
        else if region == region1 {
        checkIn.hidden = true
        let image = UIImage(named: "rabat")
        imageBoard.image = image
        
        }
        else if region == region3 {
        checkIn.hidden = true
        let image = UIImage(named: "schall")
        imageBoard.image = image
        
        }*/
    }
    
    func locationManager(manager: CLLocationManager!, didExitRegion region: CLRegion!) {
        /*
        if region == region1
        {
        checkIn.hidden = true
        let image = UIImage(named: "main")
        imageBoard.image = image
        
        }
        else if region == region2 {
        checkIn.hidden = true
        let image = UIImage(named: "main")
        imageBoard.image = image
        
        }
        else if region == region3 {
        checkIn.hidden = true
        let image = UIImage(named: "main")
        imageBoard.image = image
        
        }*/
        
    }
    func locationManager(manager: CLLocationManager!, monitoringDidFailForRegion region: CLRegion!, withError error: NSError!) {
        println(region)
    }
    func locationManager(manager: CLLocationManager!, didDetermineState state: CLRegionState, forRegion region: CLRegion!) {
        println(region)
    }
    func locationManager(manager: CLLocationManager!, didRangeBeacons beacons: [AnyObject]!, inRegion region: CLBeaconRegion!) {
        let knownBeacons = beacons.filter{ $0.proximity != CLProximity.Unknown }
        println("I have found \(beacons.count)")
        if (knownBeacons.count > 0) {
        let closestBeacon = knownBeacons[0] as! CLBeacon
        if closestBeacon.major == 46875 || closestBeacon.major == 9177
            {
                        
            }
        }
    }
}
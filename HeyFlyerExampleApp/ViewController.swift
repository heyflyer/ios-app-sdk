//
//  ViewController.swift
//  HeyFlyerExampleApp
//
//  Created by punit tunwar on 22/11/19.
//  Copyright © 2019 baps. All rights reserved.
//

import UIKit
import HeyFlyer
class ViewController: UIViewController,HttpHeyflyerDelegate {
    
    //HeyFlyer Wrapper Success Delegate Method
    func HttpHeyflyerfetchDataSuccess(wrapper: HttpHeyFlyerWrapper, dicsResponse: NSMutableDictionary) {
        print(dicsResponse)
    }
    //HeyFlyer Wrapper Fail Delegate Method
    func HttpHeyflyerfetchDataFail(wrapper: HttpHeyFlyerWrapper, error: NSError) {
        print(error)
    }
    
    
    var getairportData  = HttpHeyFlyerWrapper()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        GetAirportData()
       
        // Do any additional setup after loading the view.
    }
    
    
    //Airport Data JSON Get In Delegate Method
    func GetAirportData()
    {
        //Check Net Connection First
        self.getairportData = HttpHeyFlyerWrapper.init()
        self.getairportData.delegate = self
        self.getairportData.AirportData(AirpotCode: "DXB", apiUserId: "1")
        
    }
    
    func GetAirportArrivalData()
    {
        //Check Net Connection First
        self.getairportData = HttpHeyFlyerWrapper.init()
        self.getairportData.delegate = self
        self.getairportData.ArrivalAirportData(AirpotCode: "DXB", apiUserId: "1")
        
    }
    
    func GetAirportDepartureData()
    {
        //Check Net Connection First
        self.getairportData = HttpHeyFlyerWrapper.init()
        self.getairportData.delegate = self
        self.getairportData.DepartureAirportData(AirpotCode: "DXB", apiUserId: "1")
        
    }

}

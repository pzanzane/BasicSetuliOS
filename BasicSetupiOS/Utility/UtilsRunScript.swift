//
//  UtilsRunScript.swift
//  BeanLoginMacApp
//
//  Created by Apple on 25/06/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import Foundation

public class UtilsRunScript {
    
    func connectoToLinuxServer(userName: String, pass: String, hostName: String){
        
        /*
         let pass = "admin@123"
         let userName = "Thinkitive"
         let ipAddress = "192.168.3.173"
         */
        let strCommand = "\"sshpass -p "+pass+" ssh "+userName+"@"+hostName+"\""
        let script = "osascript -e 'tell application \"Terminal\" to do script "+strCommand+"'"
        
        executeSript(script)
    }
    
    func connectoToWindowsServer(userName: String, pass: String, hostName: String){
        
        let script = "/Applications/CoRD.app/Contents/MacOS/CoRD -host \(hostName) -u \(userName) -p \(pass)"
        
        executeSript(script)
    }
    
    func executeSript(_ script: String){
        
        let task = Process()
        task.launchPath = "/bin/bash"
        task.arguments = ["-c", script] as! [String]
        task.launch()
    }
    
}

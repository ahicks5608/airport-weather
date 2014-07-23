//
//  CommonWUApi.swift
//  AirportWeather
//
//  Created by Alex Hicks on 6/23/14.
//  Copyright (c) 2014 Yellow Dog. All rights reserved.
//

import UIKit

//http://api.wunderground.com/api/9f7c9584ae6f03b6/conditions/q/SFO.json

class UWApi: NSObject {
    
    func testInternetConnection() -> Bool {
        return true;
    }
    
    init()  {
        //do something here
    }
    
    func getData(url:NSURL) -> NSData {
        
        var data:NSData = NSData(contentsOfURL: url)
        return data
    }
    
    func buildURL(airportCode:String) -> String {
        
        // return "http://api.wunderground.com/api/9f7c9584ae6f03b6/conditions/q/SFO.json"
        
        
        var result =  NSMutableString()
        //   result.appendString("http://")
        result.appendString(apiUWUrlBase)
        result.appendString(apiUWKey)
        result.appendString("/conditions/q/")
        result.appendString(airportCode)
        result.appendString(".json")
        return result
        
    }
    
}






/* Checks if we have an internet connection or not
- (void)testInternetConnection
{
    internetReachableFoo = [Reachability reachabilityWithHostname:@"www.google.com"];
    
    // Internet is reachable
    internetReachableFoo.reachableBlock = ^(Reachability*reach)
    {
        // Update the UI on the main thread
        dispatch_async(dispatch_get_main_queue(), ^{
            NSLog(@"Yayyy, we have the interwebs!");
            });
    };
    
    // Internet is not reachable
    internetReachableFoo.unreachableBlock = ^(Reachability*reach)
    {
        // Update the UI on the main thread
        dispatch_async(dispatch_get_main_queue(), ^{
            NSLog(@"Someone broke the internet :(");
            });
    };
    
    [internetReachableFoo startNotifier];
}
*/
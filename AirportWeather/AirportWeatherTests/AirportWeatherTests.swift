//
//  AirportWeatherTests.swift
//  AirportWeatherTests
//
//  Created by Alex Hicks on 6/20/14.
//  Copyright (c) 2014 Yellow Dog. All rights reserved.
//
/*
import XCTest
import AirportWeather

class AirportWeatherTests: XCTestCase {
    let response = UWResponse()
    
    override func setUp() {
        super.setUp()
       // response = UWResponse()
        var values = [UWObservationTime:UWObservationTime,
            UWTempF:22,
            UWTempC:56,
            UWRelativeHumidity:UWRelativeHumidity,
            UWWindDirection:UWWindDirection,
            UWWindDegrees:UWWindDegrees,
            UWWindMPH:UWWindMPH,
            UWWindKPH:UWWindKPH,
            UWVisibilityMiles:UWVisibilityMiles,
            UWVisibilityKilometers:UWVisibilityKilometers,
            UWFeelsLikeC:UWFeelsLikeC,
            UWFeelsLikeF:UWFeelsLikeF,
            UWWindChillC:UWWindChillC,
            UWWindChillF:UWWindChillF,
            UWPrecip1hrIn:UWPrecip1hrIn,
            UWPrecip1hrMetric:UWPrecip1hrMetric,
            UWPrecipTodayIn:UWPrecipTodayIn,
            UWPrecipTodayMetric:UWPrecipTodayMetric,
            UWForecastURL:UWForecastURL,
            UWHistoryURL:UWHistoryURL,
            UWUV:UWUV]
         response.setValues(values)
    }
    
 //   init() {
 //       super.init();
  //     // self.response = UWResponse()
 //   }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
        // response = nil
    }
    
    func testObservationTime() {
    XCTAssertNotNil(response, "response is nul")
    var testObservationTime:NSString = response.getObservationTime()
    XCTAssertEqual(testObservationTime, UWObservationTime, "obsv not equal")
    }

    func testTempF() {
    XCTAssertNotNil(response, "response is nul")
    var testTempF:NSString = response.getTempF()
    XCTAssertEqual(testTempF, UWTempF, "temp f not equal")

    }

    func testTempC() {
    XCTAssertNotNil(response, "response is nul")
    var testTempC:NSString = response.getTempC()
    XCTAssertEqual(testTempC, UWTempC, "temp c not equal")
        
    }

    func testRelativeHumidity() {
    XCTAssertNotNil(response, "response is nul")
    var testRelativeHumidity:NSString = response.getRelativeHumidity()
    XCTAssertEqual(testRelativeHumidity, UWRelativeHumidity, "Rel Humd not equal")
    }
    
    func testWindDirection() {
    XCTAssertNotNil(response, "response is nul")
    var testWindDirection:NSString = response.getWindDirection()
    XCTAssertEqual(testWindDirection, UWWindDirection, "Wind Direction not equal")
        
    }
    
    func testWindDegrees() {
    XCTAssertNotNil(response, "response is nul")
    var testWindDegrees:NSString = response.getWindDegrees()
    XCTAssertEqual(testWindDegrees, UWWindDegrees, "WindDegrees not equal")
        
    }
    
    func testWindMPH() {
        XCTAssertNotNil(response, "response is nul")
        var testWindMPH:NSString = response.getWindMPH()
        XCTAssertEqual(testWindMPH, UWWindMPH, "WindMPH not equal")
    }
    
    func testWindKPH() {
        XCTAssertNotNil(response, "response is nul")
        var testWindKPH:NSString = response.getWindKPH()
        XCTAssertEqual(testWindKPH, UWWindKPH, "WindKPH not equal")
        
    }
    
    func testVisibilityMiles() {
        XCTAssertNotNil(response, "response is nul")
        var testVisibilityMiles:NSString = response.getVisibilityMiles()
        XCTAssertEqual(testVisibilityMiles, UWVisibilityMiles, "VisibilityMiles not equal")
        
    }
    
    func testVisibilityKilometers() {
        XCTAssertNotNil(response, "response is nul")
        var testVisibilityKilometers:NSString = response.getVisibilityKilometers()
        XCTAssertEqual(testVisibilityKilometers, UWVisibilityKilometers, "VisibilityKilometers not equal")
    }
    
    func testFeelsLikeC() {
        XCTAssertNotNil(response, "response is nul")
        var testFeelsLikeC:NSString = response.getFeelsLikeC()
        XCTAssertEqual(testFeelsLikeC, UWFeelsLikeC, "FeelsLikeC not equal")
        
    }
    
    func testFeelsLikeF() {
        XCTAssertNotNil(response, "response is nul")
        var testFeelsLikeF:NSString = response.getFeelsLikeF()
        XCTAssertEqual(testFeelsLikeF, UWFeelsLikeF, "FeelsLikeF not equal")
        
    }
    
    func testWindChillC() {
        XCTAssertNotNil(response, "response is nul")
        var testWindChillC:NSString = response.getWindChillC()
        XCTAssertEqual(testWindChillC, UWWindChillC, "WindChillC not equal")
    }
    
    func testWindChillF() {
        XCTAssertNotNil(response, "response is nul")
        var testWindChillF:NSString = response.getWindChillF()
        XCTAssertEqual(testWindChillF, UWWindChillF, "WindChillF not equal")
        
    }
    
    func testPrecip1hrIn() {
        XCTAssertNotNil(response, "response is nul")
        var testPrecip1hrIn:NSString = response.getPrecip1hrIn()
        XCTAssertEqual(testPrecip1hrIn, UWPrecip1hrIn, "Precip1hrIn not equal")
        
    }
    
    func testPrecip1hrMetric() {
        XCTAssertNotNil(response, "response is nul")
        var testPrecip1hrMetric:NSString = response.getPrecip1hrMetric()
        XCTAssertEqual(testPrecip1hrMetric, UWPrecip1hrMetric, "Precip1hrMetric not equal")
    }
    
    func testPrecipTodayIn() {
        XCTAssertNotNil(response, "response is nul")
        var testPrecipTodayIn:NSString = response.getPrecipTodayIn()
        XCTAssertEqual(testPrecipTodayIn, UWPrecipTodayIn, "PrecipTodayIn not equal")
        
    }
    
    func testPrecipTodayMetric() {
        XCTAssertNotNil(response, "response is nul")
        var testPrecipTodayMetric:NSString = response.getPrecipTodayMetric()
        XCTAssertEqual(testPrecipTodayMetric, UWPrecipTodayMetric, "PrecipTodayMetric not equal")
        
    }
    
    func testForecastURL() {
        XCTAssertNotNil(response, "response is nul")
        var testForecastURL:NSString = response.getForecastURL()
        XCTAssertEqual(testForecastURL, UWForecastURL, "ForecastURL not equal")
    }
    
    func testHistoryURL() {
        XCTAssertNotNil(response, "response is nul")
        var testHistoryURL:NSString = response.getHistoryURL()
        XCTAssertEqual(testHistoryURL, UWHistoryURL, "HistoryURL not equal")
        
    }
    
    func testUV() {
        XCTAssertNotNil(response, "response is nul")
        var testUV:NSString = response.getUV()
        XCTAssertEqual(testUV, UWUV, "UV not equal")
        
    }


    func testURL() {
        let uwApi:UWApi = UWApi()
        
        var aPCode:NSString = "SFO"
        var url = uwApi.buildURL(aPCode)
         let stringResult = "http://api.wunderground.com/api/9f7c9584ae6f03b6/conditions/q/SFO.json"
         XCTAssertEqual(url, stringResult, "Api is  not equal")
       // var customAddress =
        
        //let stringResult = "http://api.wunderground.com/api/9f7c9584ae6f03b6/conditions/q/SFO.json"
        //XCTAssertEqual(result, stringResult, "Api is equal")
        
    }
/*
    func testGetData() {
        let uwApi:UWApi = UWApi()
        
        var aPCode:NSString = "SFO"
        var url = uwApi.buildURL(aPCode)
        let stringResult = "http://api.wunderground.com/api/9f7c9584ae6f03b6/conditions/q/SFO.json"
        XCTAssertEqual(url, stringResult, "Api is  not equal")
        var theUrl:NSURL = NSURL(string:url)
        var error:NSError?
        var data:NSData = NSData.dataWithContentsOfURL(theUrl, options: NSDataReadingOptions.DataReadingMappedIfSafe, error: &error)
        
        XCTAssertNotNil(data, "It does not works")
        
        //url,options: NSDataReadingOptions.DataReadingMappedIfSafe, error: &err)
        
        // class func dataWithContentsOfURL(url: NSURL!, options readOptionsMask: NSDataReadingOptions, error errorPtr: NSErrorPointer) -> Self!
        
        var jsonResult = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers, error: &error) as NSDictionary
        
        XCTAssertNotNil(jsonResult, "It does not works")
        
        var currentCond = jsonResult.valueForKey("current_observation") as NSDictionary
        
        XCTAssertNotNil(currentCond, "It does not works")
        
        var resp = UWResponse(values: currentCond)
        
        XCTAssertNotNil(resp, "It does not works")
        
        */
        
        
    }
    
    
    
    
 /*
    \
    
    et url = NSURL.URLWithString("http://live-wallpaper.net/iphone/img/app/i/p/iphone-4s-wallpapers-mobile-backgrounds-dark_2466f886de3472ef1fa968033f1da3e1_raw_1087fae1932cec8837695934b7eb1250_raw.jpg");
    var err: NSError?
    var imageData :NSData = NSData.dataWithContentsOfURL(url,options: NSDataReadingOptions.DataReadingMappedIfSafe, error: &err)
    var bgImage = UIImage(data:imageData)
    
    func testURL() {
        let uwApi:NSString = WUApi)
        let ace:NSString = "SFO"
        WUApi.buildURL(ace)
        let stringResult = "http://api.wunderground.com/api/9f7c9584ae6f03b6/conditions/q/SFO.json"
        XCTAssertEqual(result, stringResult, "Api is equal")
        
    }
   */

    



*/



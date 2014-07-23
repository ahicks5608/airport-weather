//
//  CommonResponse.swift
//  AirportWeather
//
//  Created by Alex Hicks on 6/20/14.
//  Copyright (c) 2014 Yellow Dog. All rights reserved.
//

import UIKit

class UWResponse: NSObject {
    var fldObservationTime:NSString
    var fldTempF:NSString
    var fldTempC:NSString
    var fldRelativeHumidity:NSString
    var fldWindDirection:NSString
    var fldWindDegrees:NSString
    var fldWindMPH:NSString
    var fldWindKPH:NSString
    var fldVisibilityMiles:NSString
    var fldVisibilityKilometers:NSString
    var fldFeelsLikeF:NSString
    var fldFeelsLikeC:NSString
    var fldWindChillC:NSString
    var fldWindChillF:NSString
    var fldPrecip1hrIn:NSString
    var fldPrecip1hrMetric:NSString
    var fldPrecipTodayIn:NSString
    var fldPrecipTodayMetric:NSString
    var fldForecastURL:NSString
    var fldHistoryURL:NSString
    var fldUV:NSString
    
    
    
    
    init()  {
        //do something here
        fldObservationTime = ""
        fldTempC = ""
        fldTempF = ""
        fldRelativeHumidity = ""
        fldWindDirection = ""
        fldWindDegrees = ""
        fldWindMPH = ""
        fldWindKPH = ""
        fldVisibilityMiles = ""
        fldVisibilityKilometers = ""
        fldFeelsLikeF = ""
        fldFeelsLikeC = ""
        fldWindChillF = ""
        fldWindChillC = ""
        fldPrecip1hrIn = ""
        fldPrecip1hrMetric = ""
        fldPrecipTodayIn = ""
        fldPrecipTodayMetric = ""
        fldForecastURL = ""
        fldHistoryURL = ""
        fldUV = ""

        
    }
    
    convenience init(values:NSDictionary){
        self.init()
        
        NSLog("values all keys %@", values.allKeys)
        NSLog("values all values %@", values.allValues)
        
        self.setValues(values)
    }
    
    
    func setValues(values:NSDictionary) {
        fldObservationTime = values.valueForKey(UWObservationTime) as NSString
        fldTempF = values.valueForKey(UWTempF) as NSString
        fldTempC = values.valueForKey(UWTempC) as NSString
        fldRelativeHumidity = values.valueForKey(UWRelativeHumidity) as NSString
        fldWindDirection = values.valueForKey(UWWindDirection) as NSString
        fldWindDegrees = values.valueForKey(UWWindDegrees) as NSString
        fldWindMPH = values.valueForKey(UWWindMPH) as NSString
        fldWindKPH = values.valueForKey(UWWindKPH) as NSString
        fldVisibilityMiles = values.valueForKey(UWVisibilityMiles) as NSString
        fldVisibilityKilometers = values.valueForKey(UWVisibilityKilometers) as NSString
        fldFeelsLikeC = values.valueForKey(UWFeelsLikeC) as NSString
        fldFeelsLikeF = values.valueForKey(UWFeelsLikeF) as NSString
        fldWindChillF = values.valueForKey(UWWindChillF) as NSString
        fldWindChillC = values.valueForKey(UWWindChillC) as NSString
        fldPrecip1hrIn = values.valueForKey(UWPrecip1hrIn) as NSString
        fldPrecip1hrMetric = values.valueForKey(UWPrecip1hrMetric) as NSString
        fldPrecipTodayIn = values.valueForKey(UWPrecipTodayIn) as NSString
        fldPrecipTodayMetric = values.valueForKey(UWPrecipTodayMetric) as NSString
        fldForecastURL = values.valueForKey(UWForecastURL) as NSString
        fldHistoryURL = values.valueForKey(UWHistoryURL) as NSString
        fldUV = values.valueForKey(UWUV) as NSString

    }
    
    func getObservationTime() ->NSString {
        return fldObservationTime
    }
    func getTempF() ->NSString {
        return fldTempF
    }
    func getTempC() ->NSString {
        return fldTempC
    }
    func getRelativeHumidity() ->NSString {
        return fldRelativeHumidity
    }
    func getWindDirection() ->NSString {
        return fldWindDirection
    }
    func getWindDegrees() ->NSString {
        return fldWindDegrees
    }
    func getWindMPH() ->NSString {
        return fldWindMPH
    }
    func getWindKPH() ->NSString {
        return fldWindKPH
    }
    func getVisibilityMiles() ->NSString {
        return fldVisibilityMiles
    }
    func getVisibilityKilometers() ->NSString {
        return fldVisibilityKilometers
    }
    func getFeelsLikeC() ->NSString {
        return fldFeelsLikeC
    }
    func getFeelsLikeF() ->NSString {
        return fldFeelsLikeF
    }
    func getWindChillF() ->NSString {
        return fldWindChillF
    }
    func getWindChillC() ->NSString {
        return fldWindChillC
    }
    func getPrecip1hrIn() ->NSString {
        return fldPrecip1hrIn
    }
    func getPrecip1hrMetric() ->NSString {
        return fldPrecip1hrMetric
    }
    func getPrecipTodayIn() ->NSString {
        return fldPrecipTodayIn
    }
    func getPrecipTodayMetric() ->NSString {
        return fldPrecipTodayMetric
    }
    func getForecastURL() ->NSString {
        return fldForecastURL
    }
    func getHistoryURL() ->NSString {
        return fldHistoryURL
    }
    func getUV() ->NSString {
        return fldUV
    }


















    
    
    
    
    
    
    
    
    
    
    
    
    
    
   
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    /*

    {
"response": {
"version": "0.1",
"termsofService": "http://www.wunderground.com/weather/api/d/terms.html",
"features": {
"conditions": 1
}
},
"current_observation": {
"image": {
"url": "http://icons-ak.wxug.com/graphics/wu2/logo_130x80.png",
"title": "Weather Underground",
"link": "http://www.wunderground.com"
},
"display_location": {
"full": "San Francisco, CA",
"city": "San Francisco",
"state": "CA",
"state_name": "California",
"country": "US",
"country_iso3166": "US",
"zip": "94101",
"latitude": "37.77500916",
"longitude": "-122.41825867",
"elevation": "47.00000000"
},
"observation_location": {
"full": "SOMA - Near Van Ness, San Francisco, California",
"city": "SOMA - Near Van Ness, San Francisco",
"state": "California",
"country": "US",
"country_iso3166": "US",
"latitude": "37.773285",
"longitude": "-122.417725",
"elevation": "49 ft"
},
"estimated": {},
"station_id": "KCASANFR58",
"observation_time": "Last Updated on June 27, 5:27 PM PDT",
"observation_time_rfc822": "Wed, 27 Jun 2012 17:27:13 -0700",
"observation_epoch": "1340843233",
"local_time_rfc822": "Wed, 27 Jun 2012 17:27:14 -0700",
"local_epoch": "1340843234",
"local_tz_short": "PDT",
"local_tz_long": "America/Los_Angeles",
"local_tz_offset": "-0700",
"weather": "Partly Cloudy",
"temperature_string": "66.3 F (19.1 C)",
"temp_f": 66.3,
"temp_c": 19.1,
"relative_humidity": "65%",
"wind_string": "From the NNW at 22.0 MPH Gusting to 28.0 MPH",
"wind_dir": "NNW",
"wind_degrees": 346,
"wind_mph": 22.0,
"wind_gust_mph": "28.0",
"wind_kph": 35.4,
"wind_gust_kph": "45.1",
"pressure_mb": "1013",
"pressure_in": "29.93",
"pressure_trend": "+",
"dewpoint_string": "54 F (12 C)",
"dewpoint_f": 54,
"dewpoint_c": 12,
"heat_index_string": "NA",
"heat_index_f": "NA",
"heat_index_c": "NA",
"windchill_string": "NA",
"windchill_f": "NA",
"windchill_c": "NA",
"feelslike_string": "66.3 F (19.1 C)",
"feelslike_f": "66.3",
"feelslike_c": "19.1",
"visibility_mi": "10.0",
"visibility_km": "16.1",
"solarradiation": "",
"UV": "5",
"precip_1hr_string": "0.00 in ( 0 mm)",
"precip_1hr_in": "0.00",
"precip_1hr_metric": " 0",
"precip_today_string": "0.00 in (0 mm)",
"precip_today_in": "0.00",
"precip_today_metric": "0",
"icon": "partlycloudy",
"icon_url": "http://icons-ak.wxug.com/i/c/k/partlycloudy.gif",
"forecast_url": "http://www.wunderground.com/US/CA/San_Francisco.html",
"history_url": "http://www.wunderground.com/history/airport/KCASANFR58/2012/6/27/DailyHistory.html",
"ob_url": "http://www.wunderground.com/cgi-bin/findweather/getForecast?query=37.773285,-122.417725"
}
}
*/
}

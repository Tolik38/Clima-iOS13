

import Foundation

struct WeatherManager {
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?appid=2279b840d390cb60585367de278934b8&units=metric"
    
    func fetchWeather (cityName: String){
        let urlSting = "\(weatherURL)&q=\(cityName)"
        self.performRequest(urlString: urlSting)
    }
    
    func performRequest (urlString: String) {
        
        //        1. Create a URL
        if let url = URL(string: urlString){
            //        2. Create a URLSession
            let session = URLSession(configuration: .default)
            //        3. Give the session a Task
            //let task = session.dataTask(with: url, completionHandler: handle(data:response:error:))
            
            let task = session.dataTask(with: url) { (data, response, error) in
                if error != nil{
                    print(error!)
                    return
                }
                
                if let safeData = data{
                    parseJSON(weatherData: <#T##Data#>)
                }
            }
            //        4.Start the task
            task.resume()
        }
    }
    func parseJSON(weatherData: Data){
        
    }
    
}


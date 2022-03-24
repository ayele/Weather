//
//  WeatherView.swift
//  Weather
//
//  Created by Amanuel Ayele on 3/23/22.
//

import SwiftUI

struct WeatherView: View {
    var weather: ResponseBody
    
    var body: some View {
        VStack(spacing: 20) {
            Text(weather.name)
                .font(Font.custom("Roboto-Regular", size: 24))
            Image(systemName: "cloud").font(.system(size: 150))
            
            Text(weather.weather.first?.main ?? "")
                .font(Font.custom("Roboto-Regular", size: 20))
            
            Text(" " + weather.main.temp.roundDouble() + "°")
                .font(Font.custom("Roboto-Regular", size: 120))
            
            Spacer()
                .frame(height: 100)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(LinearGradient.myGradient())
        .preferredColorScheme(.dark)
    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView(weather: previewWeather)
    }
}

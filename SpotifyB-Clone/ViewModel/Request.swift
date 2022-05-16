//
//  Request.swift
//  SpotifyB-Clone
//
//  Created by MAC32 on 15/05/22.
//

import Foundation

class Request {
    
    let token = "BQAtcDl9r2-j_cjB18KK-Il4H7TLBGHXu82Qs5IuW27WNiRYSYY-MfMpnYP-si_u5NyuvTH3bKS_W0tVHLmfpFhQbyn5QxJxOtfRSKq0cG1khxsGbLAKdHuy4Y2v7Ws1PyZ9gVwbDRSlwOnQw5IyGMPjwE30AobBKfUJnNJKP8nzxUGd6b2LeA"
    
    let BASE_URL = "https://api.spotify.com/v1/"
    
    func getDataFromAPI(url: String) async -> Data?{
        do{
            var request = URLRequest(url:HelperString.getURLFromString(url: "\(BASE_URL)\(url)")!)
            request.httpMethod = "GET"
            request.addValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
            let (data, _) = try await URLSession.shared.data(for: request)
            return data
        }catch{
            return nil
        }
    }
    
}

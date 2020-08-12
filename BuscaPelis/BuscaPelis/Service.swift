//
//  Service.swift
//  BuscaPelis
//
//  Created by OSCAR on 12/08/2020.
//  Copyright © 2020 OSCAR. All rights reserved.
//

import Foundation
import Alamofire
class Service{
//    http://www.omdbapi.com/?t=matrix
    fileprivate var baseUrl = ""
    init (baseUrl:String) {
        self.baseUrl = baseUrl
    }
    //MARK:- OBTENER PELICULAS
    func getPelis(endPoint:String){
        AF.request(self.baseUrl + endPoint, method: .get, parameters:nil, encooding: URLEncoding.default, headers:nil, interceptor: nil).response {
            (responseData) in
            guard let data = responseData.data else {
                return
            } do {
                let titulo = try JOSNDecoder() .decode (Pelis.self, from: data)
            } catch {
                print("error decoding == \(error)")
            }
            
        }
        
    }
}

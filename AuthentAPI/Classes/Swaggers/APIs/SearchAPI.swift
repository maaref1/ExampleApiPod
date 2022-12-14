//
// SearchAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class SearchAPI: APIBase {
    /**
     Recherche un espace
     - parameter marque: (query)  
     - parameter searchInput: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func searchByMarque(marque: String, searchInput: SearchInput, completion: @escaping ((_ data: SearchOutput?, _ error: ErrorResponse?) -> Void)) {
        searchByMarqueWithRequestBuilder(marque: marque, searchInput: searchInput).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Recherche un espace
     - POST /api/accounts/search
     - 

     - examples: [{contentType=application/json, example={
  "identifiantTechnique" : "identifiantTechnique",
  "statutOTP" : "statutOTP",
  "identifiantPersonneSI" : "identifiantPersonneSI",
  "nombreEchecs" : 0,
  "roles" : [ "roles", "roles" ],
  "dateDeblocageDemandeOTP" : 6.02745618307040320615897144307382404804229736328125,
  "moyensCom" : {
    "moyenCom" : [ {
      "valeur" : "valeur",
      "cleSI" : "cleSI",
      "identifiant" : true,
      "type" : "type"
    }, {
      "valeur" : "valeur",
      "cleSI" : "cleSI",
      "identifiant" : true,
      "type" : "type"
    } ]
  },
  "collaborateur" : true,
  "statut" : "statut",
  "marque" : "marque"
}}]
     - parameter marque: (query)  
     - parameter searchInput: (body)  
     - returns: RequestBuilder<SearchOutput> 
     */
    open class func searchByMarqueWithRequestBuilder(marque: String, searchInput: SearchInput) -> RequestBuilder<SearchOutput> {
        let path = "/api/accounts/search"
        let URLString = AuthentAPIAPI.basePath + path
        let parameters = searchInput.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "marque": marque
        ])

        let requestBuilder: RequestBuilder<SearchOutput>.Type = AuthentAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}

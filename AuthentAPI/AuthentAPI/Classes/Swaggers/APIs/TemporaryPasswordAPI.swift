//
// TemporaryPasswordAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class TemporaryPasswordAPI: APIBase {
    /**
     Envoi un mot de passe provisoire
     - parameter sendTemporyPasswordInput: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func sendTemporyPassword(sendTemporyPasswordInput: SendTemporyPasswordInput, completion: @escaping ((_ data: SendTemporyPasswordOutput?, _ error: ErrorResponse?) -> Void)) {
        sendTemporyPasswordWithRequestBuilder(sendTemporyPasswordInput: sendTemporyPasswordInput).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Envoi un mot de passe provisoire
     - POST /api/temporary-password
     - 

     - examples: [{contentType=application/json, example={
  "identifiantTechnique" : "identifiantTechnique",
  "motDePasse" : "motDePasse"
}}]
     - parameter sendTemporyPasswordInput: (body)  
     - returns: RequestBuilder<SendTemporyPasswordOutput> 
     */
    open class func sendTemporyPasswordWithRequestBuilder(sendTemporyPasswordInput: SendTemporyPasswordInput) -> RequestBuilder<SendTemporyPasswordOutput> {
        let path = "/api/temporary-password"
        let URLString = AuthentAPIAPI.basePath + path
        let parameters = sendTemporyPasswordInput.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<SendTemporyPasswordOutput>.Type = AuthentAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Verifie le mot de passe provisoire
     - parameter verifyTemporyPasswordInput: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func verifyTemporyPassword(verifyTemporyPasswordInput: VerifyTemporyPasswordInput, completion: @escaping ((_ data: IdAccountOutput?, _ error: ErrorResponse?) -> Void)) {
        verifyTemporyPasswordWithRequestBuilder(verifyTemporyPasswordInput: verifyTemporyPasswordInput).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Verifie le mot de passe provisoire
     - POST /api/temporary-password/verify
     - 

     - examples: [{contentType=application/json, example={
  "idAccount" : "idAccount"
}}]
     - parameter verifyTemporyPasswordInput: (body)  
     - returns: RequestBuilder<IdAccountOutput> 
     */
    open class func verifyTemporyPasswordWithRequestBuilder(verifyTemporyPasswordInput: VerifyTemporyPasswordInput) -> RequestBuilder<IdAccountOutput> {
        let path = "/api/temporary-password/verify"
        let URLString = AuthentAPIAPI.basePath + path
        let parameters = verifyTemporyPasswordInput.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<IdAccountOutput>.Type = AuthentAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}

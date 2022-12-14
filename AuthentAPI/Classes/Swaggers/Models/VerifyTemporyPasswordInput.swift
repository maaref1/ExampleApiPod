//
// VerifyTemporyPasswordInput.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class VerifyTemporyPasswordInput: JSONEncodable {

    public var identifiantTechnique: String?
    public var identifiantPersonneSI: String?
    public var motDePasseProvisoire: String?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["identifiantTechnique"] = self.identifiantTechnique
        nillableDictionary["identifiantPersonneSI"] = self.identifiantPersonneSI
        nillableDictionary["motDePasseProvisoire"] = self.motDePasseProvisoire

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}


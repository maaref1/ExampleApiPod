//
// SearchOutput.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class SearchOutput: JSONEncodable {

    public var identifiantTechnique: String?
    public var statutOTP: String?
    public var identifiantPersonneSI: String?
    public var nombreEchecs: Int32?
    public var dateDeblocageDemandeOTP: Double?
    public var roles: [String]?
    public var moyensCom: MoyenComItems?
    public var statut: String?
    public var marque: String?
    public var collaborateur: Bool?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["identifiantTechnique"] = self.identifiantTechnique
        nillableDictionary["statutOTP"] = self.statutOTP
        nillableDictionary["identifiantPersonneSI"] = self.identifiantPersonneSI
        nillableDictionary["nombreEchecs"] = self.nombreEchecs?.encodeToJSON()
        nillableDictionary["dateDeblocageDemandeOTP"] = self.dateDeblocageDemandeOTP
        nillableDictionary["roles"] = self.roles?.encodeToJSON()
        nillableDictionary["moyensCom"] = self.moyensCom?.encodeToJSON()
        nillableDictionary["statut"] = self.statut
        nillableDictionary["marque"] = self.marque
        nillableDictionary["collaborateur"] = self.collaborateur

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}


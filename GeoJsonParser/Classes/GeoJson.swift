
import Foundation

public protocol GeoJSON {
    
}

extension String {
    
    public func toGeoJSONObject(json: String) -> GeoJSON? {
        
        guard let jsonObject = json.jsonStringToDictionary else { return nil }
        
        guard let type = jsonObject["type"] as? String else {
            return nil
        }
        
        switch type {
        case "Point":
            return GeoPoint(JSONString: self)

        case "LineString":
            return GeoLineString(JSONString: self)

        case "Polygon":
            return GeoPolygon(JSONString: self)

        case "MultiPoint":
            return GeoMultiPolygon(JSONString: self)

        case "MultiLineString":
            return GeoMultiLineString(JSONString: self)

        case "MultiPolygon":
            return GeoMultiPolygon(JSONString: self)
        default:
            return nil
        }
    }
}

fileprivate extension String {
    var jsonStringToDictionary: [String: AnyObject]? {
        if let data = data(using: String.Encoding.utf8) {
            do {
                return try JSONSerialization.jsonObject(with: data, options: []) as? [String:AnyObject] } catch let error as NSError {
                    print(error)
            }
        }
        return nil
    }
}

import Foundation

extension Endpoint {
  var url: URL {
    var components = URLComponents()
    components.scheme = "https"
    components.host = "dummyapi.io"
    components.path = "/data/v1" + path
    components.queryItems = queryItems
    
    guard let url = components.url else {
      preconditionFailure("Invalid URL components: \(components)")
    }
    
    return url
  }
  
  var headers: [String: Any] {
    return [
      "app-id" : "613e301a1d47bb98d58199d6"
    ]
  }
}

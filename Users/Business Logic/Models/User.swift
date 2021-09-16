import Foundation

struct User: Codable, Identifiable {
  let id: String?
  let title: String?
  let firstName: String
  let lastName: String
  let picture: String?
}

extension User {
  static func fake() -> Self {
    return User(id: "123",
                title: "Test",
                firstName: "First Name",
                lastName: "Last Name",
                picture: nil)
  }
}

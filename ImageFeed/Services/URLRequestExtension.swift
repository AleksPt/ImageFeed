import UIKit

extension URLRequest {
    static func makeHTTPRequest(
        path: String,
        httpMethod: String,
        baseURL: URL? = KeyAndUrl.defaultBaseUrl
    ) -> URLRequest? {
        var request = URLRequest(url: URL(string: path, relativeTo: baseURL) ?? KeyAndUrl.defaultBaseUrl)
        request.httpMethod = httpMethod
        return request
    }
}


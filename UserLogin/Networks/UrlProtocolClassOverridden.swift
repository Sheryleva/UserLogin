//
//  UrlProtocolClassOverridden.swift
//  NSDrivenByXCT
//
//  Created by Jerry Ren on 1/6/21.
//

import Foundation

class UrlSimulatedProtocolClass: URLProtocol {
    static var stubbedResponseData: Data?
    
    override class func canonicalRequest(for request: URLRequest) -> URLRequest {
        return request
    }
    override class func canInit(with request: URLRequest) -> Bool {
         return true
    }
    override func stopLoading() { }
    
    override func startLoading() { [self]
        client?.urlProtocol(self, didLoad: UrlSimulatedProtocolClass.stubbedResponseData ?? Data())
        self.client?.urlProtocolDidFinishLoading(self)
    }
}

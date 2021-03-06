//
//  ChatTests.swift
//  OraChat
//
//  Created by Kyle Zawacki on 4/4/17.
//
//

import XCTest
@testable import OraChat

class ChatDetailViewControllerTests: XCTestCase {
    
    var detail: ChatDetailViewController!
    let mockData = MockData()
    
    override func setUp() {
        super.setUp()
        let storyboard = UIStoryboard(name: "Chat Detail", bundle: nil)
        detail = storyboard.instantiateViewController(withIdentifier: "Chat Detail") as! ChatDetailViewController
        detail.chat = mockData.chat
        UIApplication.shared.keyWindow!.rootViewController = detail
        let _ = detail.view
    }
    
    func testView() {
        XCTAssert(detail.view != nil)
    }
    
}

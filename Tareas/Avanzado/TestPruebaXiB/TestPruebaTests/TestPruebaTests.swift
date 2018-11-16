//
//  TestPruebaTests.swift
//  TestPruebaTests
//
//  Created by Gerardo Castillo on 11/9/18.
//  Copyright © 2018 GerardoCastillo. All rights reserved.
//

import XCTest
@testable import TestPrueba

class TestPruebaTests: XCTestCase {

    override func setUp() {
        let session = Sesion.sharedInstante
        session.token = nil
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testCorrectLogin(){
        XCTAssertTrue(User.login(user: "iosGer", password: "1q2w3e4r"))
    }
    
    func testWrongLogin(){
        XCTAssertFalse(User.login(user: "WSWS", password: "WSWSWSW"))
    }

    
    func testSaveSession(){
        let session = Sesion.sharedInstante
        let _ = User.login(user: "iosGer", password: "1q2w3e4r")
        XCTAssertNotNil(session.token)
    }
    
    func testWrongSaveSession(){
        let session = Sesion.sharedInstante
        let _ = User.login(user: "iosGer", password: "223")
        XCTAssertNil(session.token)
  
    }
    
    func testExpectdToken(){
        let session = Sesion.sharedInstante
        let _ = User.login(user: "iosGer", password: "1q2w3e4r")
        XCTAssertEqual(session.token, "1234567890","Token should Match")
    }
    func testWrongExpectedToken()
    {
        let session = Sesion.sharedInstante
        let _ = User.login(user: "iosGer", password: "1q2w3e4r")
        XCTAssertNotEqual(session.token, "123456789","Token should Match")
    }
    
    func testMusicSongs(){
        var resultSongs:[Song] = []
        let promise = expectation(description: "Song Download")
        Music.fetchSongs { (songs) in
            resultSongs = songs
            promise.fulfill()
        }
        waitForExpectations(timeout: 5, handler: nil)
        XCTAssertNotEqual(resultSongs.count, 0)
    }

    


}

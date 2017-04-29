//
//  CrashLogHandler.swift
//  PerfectTemplate
//
//  Created by Glasses on 29/04/2017.
//
//
import PerfectLib
import PerfectHTTP
import PerfectHTTPServer
import SQLite

func crashLogServiceHandler(data: [String:AnyObject]) -> RequestHandler {
  return { request, response in
    
//    let requestParams = request.params()
//    let requestHeaders = request.headers
//    //    let postParams = request.postParams
//    print(requestHeaders)
//    print(requestParams)
//    //		let requestInfo = requestParams[0]
//    //		let crashJSON = requestInfo[]
//    //    for item in requestHeaders {
//    //      print("\(item.1) + \(item.0)")
//    //    }
//    let deviceUUID = request.header(HTTPRequestHeader.Name.custom(name: "device_udid"))
//    //    let rootPath = request.documentRoot
//    
//    try! sqlite.execute(statement: "INSERT INTO posts (device_UDID, crash_log) VALUES (:1,:2)") {
//      (stmt:SQLiteStmt) -> () in
//      
//      try stmt.bind(position: 1, deviceUUID!)
//      try stmt.bind(position: 2, "this is device crash")
//    }
//    
    //
    response.completed()
    
    
  }
}

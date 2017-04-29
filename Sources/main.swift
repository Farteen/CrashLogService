//
//  main.swift
//  PerfectTemplate
//
//  Created by Kyle Jessup on 2015-11-05.
//	Copyright (C) 2015 PerfectlySoft, Inc.
//
//===----------------------------------------------------------------------===//
//
// This source file is part of the Perfect.org open source project
//
// Copyright (c) 2015 - 2016 PerfectlySoft Inc. and the Perfect project authors
// Licensed under Apache License v2.0
//
// See http://perfect.org/licensing.html for license information
//
//===----------------------------------------------------------------------===//
//

import PerfectLib
import PerfectHTTP
import PerfectHTTPServer
import SQLite

// Configuration data for two example servers.
// This example configuration shows how to launch one or more servers
// using a configuration dictionary.

let port1 = 8080, port2 = 8181

let confData = [
  "servers": [
    // Configuration data for one server which:
    //	* Serves the hello world message at <host>:<port>/
    //	* Serves static files out of the "./webroot"
    //		directory (which must be located in the current working directory).
    //	* Performs content compression on outgoing data when appropriate.
    [
      "name":"localhost",
      "port":port1,
      "routes":[
        ["method":"get", "uri":"/uploadcrashlog", "handler":crashLogServiceHandler],
      ]
    ],
    // Configuration data for another server which:
    //	* Redirects all traffic back to the first server.
  ]
]

do {
  
	// Launch the servers based on the configuration data.
	try HTTPServer.launch(configurationData: confData)
} catch {
	fatalError("\(error)") // fatal error launching one of the servers
}


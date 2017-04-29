//
//  SQLiteManager.swift
//  PerfectTemplate
//
//  Created by Glasses on 29/04/2017.
//
//
import SQLite

class CrashLogSQLiteManager {
  
  static let sharedManager = CrashLogSQLiteManager()!
  fileprivate let dbPath = "./db/database"
  fileprivate var sqlite: SQLite
  
  init?() {
    do {
      try self.sqlite = SQLite(dbPath, readOnly: false, busyTimeoutMillis: 5)
      try sqlite.execute(statement: "CREATE TABLE IF NOT EXISTS posts (id INTEGER PRIMARY KEY NOT NULL, device_udid TEXT NOT NULL, crash_log TEXT NOT NULL)")
      
    } catch {
      print(error)
      return nil
    }
  }
  
  func excuteSQLStatement(statement: String) {
    do {
      try self.sqlite.execute(statement: statement)
    } catch {
        print(error)
    }
  }
  
}

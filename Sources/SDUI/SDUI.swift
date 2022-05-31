//
//  SDUI.swift
//
//
//  Created by Dylan on 10/04/2022.
//

public class ServerDrivenUI {
    public static var shared = ServerDrivenUI()
    
    public var delegate: SDUIDelegate?

    public init() {}
    
}

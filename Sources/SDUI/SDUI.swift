//
//  SDUI.swift
//
//
//  Created by Dylan on 10/04/2022.
//

public class ServerDrivenUI {
    public static var shared = ServerDrivenUI()

    public var dataSource: SDUIDataSource?
    public var componentDelegate: SDUIComponentDelegate?
    public var headerDelegate: SDUIHeaderDelegate?
    public var actionDelegate: SDUIActionDelegate?
    public var placeHolderDelegate: SDUIPlaceHolderDelegate?

    public init() {}

}

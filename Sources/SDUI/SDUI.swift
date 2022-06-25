//
//  SDUI.swift
//
//
//  Created by Dylan on 10/04/2022.
//

/// Main SDUI class holding a shared public variable of itself.
/// On this class the datasource and delegates can be set
/// for a specific project.
public class ServerDrivenUI {
    /// Shared variable containing the local properties.
    public static var shared = ServerDrivenUI()

    /// Datasource responsible for retrieving API datastructs.
    public var dataSource: SDUIDataSource?
    /// Component delegate responsible for dealing with custom components.
    public var componentDelegate: SDUIComponentDelegate?
    /// Header delegate responsible for dealing with custom headers.
    public var headerDelegate: SDUIHeaderDelegate?
    /// Action delegate responsible for dealing with custom actions.
    public var actionDelegate: SDUIActionDelegate?
    /// PlaceHolder delegate responsible for dealing with custom placeholders.
    public var placeHolderDelegate: SDUIPlaceHolderDelegate?

    public init() {}

}

//
//  SDUIDelegate.swift
//  
//
//  Created by Dylan on 08/05/2022.
//

import Foundation
import SwiftUI

/// Delegate responsible for handling custom components specific to an application. These components expand on the library's components.
public protocol SDUIComponentDelegate: AnyObject {
    /// Function that renders a View for the custom Component and returns it as an AnyView to the Library.
    /// - Parameters:
    ///   - component: Library custom Component type, the project is responsible for decoding it to a project Component Type.
    /// - Returns: AnyView containing a View created for this Component.
    func view(for component: SDUI.SDUICustomComponent) -> AnyView

    /// Function that decodes a custom Component and returns it as an AnyHasable. This way the Library can deal with the decoded
    /// information without having to know what the actual type/model is.
    /// - Parameter decoder: taking care of decoding (for example a JSONDecoder).
    /// - Returns: AnyHashable, the library can save this without more information. The project side can later cast it back to its custom type.
    func decode(from decoder: Decoder) throws -> AnyHashable

    /// Equal function used to compare custom components. This is needed because the Library does not know what the decoded AnyHashable
    /// variable contains (from the decoder). So the project will have to manually compare the custom components by first casting it to project
    /// related custom component. Comparing them is important for SwiftUI views to update on for example refreshes.
    /// - Parameters:
    ///   - lhs: Left custuom component to compare.
    ///   - rhs: Right  custuom component to compare.
    /// - Returns: Bool whether the custom components are equal.
    func equals(_ lhs: SDUICustomComponent, _ rhs: SDUICustomComponent) -> Bool

    /// Filter function for a component. Returns true if the component should stay.
    /// - Parameter component: Custom component, the project side is responsible in retrieving its AnyHashable details and filtering based on this.
    /// - Returns: Bool whether the component should be filtered.
    func filter(component: SDUICustomComponent) -> Bool
}

/// Delegate responsible for handling custom headers specific to an application. These components expand on the library's headers.
public protocol SDUIHeaderDelegate: AnyObject {
    /// Function that renders a View for the custom Header and returns it as an AnyView to the Library.
    /// - Parameters:
    ///   - header: Library custom Header type, the project is responsible for decoding it to a project Header Type.
    /// - Returns: AnyView containing a View created for this Header.
    func view(for header: SDUICustomHeader) -> AnyView

    /// Function that decodes a custom Header and returns it as an AnyHasable. This way the Library can deal with the decoded
    /// information without having to know what the actual type/model is.
    /// - Parameter decoder: taking care of decoding (for example a JSONDecoder).
    /// - Returns: AnyHashable, the library can save this without more information. The project side can later cast it back to its custom type.
    func decode(from decoder: Decoder) throws -> AnyHashable

    /// Equal function used to compare custom Header. This is needed because the Library does not know what the decoded AnyHashable
    /// variable contains (from the decoder). So the project will have to manually compare the custom Headers by first casting it to project
    /// related custom Header. Comparing them is important for SwiftUI views to update on for example refreshes.
    /// - Parameters:
    ///   - lhs: Left custuom Header to compare.
    ///   - rhs: Right  custuom Header to compare.
    /// - Returns: Bool whether the Header components are equal.
    func equals(_ lhs: SDUICustomHeader, _ rhs: SDUICustomHeader) -> Bool
}

/// Delegate responsible for handling custom actions specific to an application. These components expand on the library's actions.
public protocol SDUIActionDelegate: AnyObject {
    /// Function that decodes a custom Action and returns it as an AnyHasable. This way the Library can deal with the decoded
    /// information without having to know what the actual type/model is.
    /// - Parameter decoder: taking care of decoding (for example a JSONDecoder).
    /// - Returns: AnyHashable, the library can save this without more information. The project side can later cast it back to its custom type.
    func decode(from decoder: Decoder) throws -> AnyHashable

    /// Equal function used to compare custom Actions. This is needed because the Library does not know what the decoded AnyHashable
    /// variable contains (from the decoder). So the project will have to manually compare the custom Actions by first casting it to project
    /// related custom Action. Comparing them is important for SwiftUI views to update on for example refreshes.
    /// - Parameters:
    ///   - lhs: Left custuom Action to compare.
    ///   - rhs: Right  custuom Action to compare.
    /// - Returns: Bool whether the custom Actions are equal.
    func equals(_ lhs: SDUICustomAction, _ rhs: SDUICustomAction) -> Bool
}

/// Delegate responsible for handling custom placeholders specific to an application.
public protocol SDUIPlaceHolderDelegate: AnyObject {
    /// Function that renders a View for the custom PlaceHolder and returns it as an AnyView to the Library.
    /// - Parameters:
    ///   - placeHolder: Library custom PlaceHolder type, the project is responsible for decoding it to a project PlaceHolder Type.
    /// - Returns: AnyView containing a View created for this PlaceHolder.
    func view(for placeHolder: SDUIPlaceHolder) -> AnyView

    /// Function that decodes a custom PlaceHolder and returns it as an AnyHasable. This way the Library can deal with the decoded
    /// information without having to know what the actual type/model is.
    /// - Parameter decoder: taking care of decoding (for example a JSONDecoder).
    /// - Returns: AnyHashable, the library can save this without more information. The project side can later cast it back to its custom type.
    func decode(from decoder: Decoder) throws -> AnyHashable

    /// Equal function used to compare custom placeholders. This is needed because the Library does not know what the decoded AnyHashable
    /// variable contains (from the decoder). So the project will have to manually compare the custom PlaceHolder by first casting it to project
    /// related custom PlaceHolder. Comparing them is important for SwiftUI views to update on for example refreshes.
    /// - Parameters:
    ///   - lhs: Left custuom PlaceHolder to compare.
    ///   - rhs: Right  custuom PlaceHolder to compare.
    /// - Returns: Bool whether the custom PlaceHolders are equal.
    func equals(_ lhs: SDUIPlaceHolder, _ rhs: SDUIPlaceHolder) -> Bool
}

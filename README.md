# SDUI Swift Library

- [SDUI Swift Library](#sdui-swift-library)
  - [Getting started](#getting-started)
    - [Installation](#installation)
    - [Api](#api)
    - [SDUIDataSource](#sduidatasource)
    - [SDUIRootView](#sduirootview)
  - [Default types and models](#default-types-and-models)
  - [Adding custom Components, Headers, Actions and PlaceHolders](#adding-custom-components-headers-actions-and-placeholders)
    - [Setting up the delegate](#setting-up-the-delegate)
      - [Decoder](#decoder)
      - [View](#view)
      - [Equals](#equals)
      - [Filter (Component only)](#filter-component-only)
    - [Generate new type](#generate-new-type)
    - [Implement type](#implement-type)
  - [Passing Project Data](#passing-project-data)
  - [Contributing](#contributing)

The SDUI Library helps integrating SDUI in a new or existing probject. Its core functionality is based on SwiftUI. The corresponding types are generated using a second repo: [backend](https://github.com/iDylanK/sdui.backend). This (backend) repo also features a sample Express server that works with this library. 

## Getting started

### Installation 

There are 3 ways to get started with the library:
1. Use Swift Package Manger to install as a package (in the future..).
2. Clone this repo and manually import as Swift Package to your application.
3. Clone this repo and use the Sample Application. 

### Api 
Setup your API using the instructions in the SDUI backend repo found [here](https://github.com/iDylanK/sdui.backend).

### SDUIDataSource

Before it's possible to display Server Driven views, the library needs a SDUIDataSource to connect to the API mentioned above. 
Create this datasource `ServerDrivenUI.shared.dataSource = YourProjectsDataSource()` and connect it to your app's network manager. The network manager should use a JSONDecoder to decode all respones to a SDUIScreen. To read more about how to implement it, see the SDUIDataSource file.

### SDUIRootView

Displaying the first Server Driven View is as simple as calling the View: `SDUIRootView()` with the optional parameter `navigationView: Bool`, to specifiy whether the view has to be wrapped in a NavigationView. This is needed for the following concepts to work properly: 
- NavigationLink
- ...

So make sure to use a NavigationView (either using the library or via the app itself) when using these properties.

## Default types and models
See the backend repo's wiki [here](https://github.com/iDylanK/sdui.backend/wiki/SDUI-Types).

## Adding custom Components, Headers, Actions and PlaceHolders
The first thing that is needed is a file with SDUI models that expands the Library Model file (containing all the Codable structs). This can automatically be created using the backend repo [here](https://github.com/iDylanK/sdui.backend).

The next step is to implement the right delegate. In this example a new Component is created and the delegate is set:

Create a SDUIComponentDelegate and install it: `ServerDrivenUI.shared.componentDelegate = YourComponentDelegate()`.

### Setting up the delegate
Implement the following functions:

#### Decoder
Only the application will hold information about how to decode custom components. This information has to be shared with the SDUI Library by adding a decode function to the delegate. In the example app an enum is used to switch between the different custom types: 

```
public enum SDUIComponent: Codable, Equatable, Hashable {
    case product(SDUIProductComponent)
    ...

    public init(from decoder: Decoder) throws {
        let type = try SDUIComponentType(rawValue: decoder.decodeType())

        switch type {
        case .product: self = try .product(decoder.decodeSingleValueContainer())
        default: self = try .empty(decoder.decodeSingleValueContainer())
        }
    }
}
```

The decoded SDUIComponent is saved as an AnyHashable decoded variable to the Library Component. This is later passed back to the delegate's view function to render the corresponding component.

#### View
The delegate is responsible for rendering the Component's view. En example implementation:

```
guard let componentDecoded = component.decoded as? SDUIComponent else { return AnyView(ErrorView(error: "Decoding error")) }

switch componentDecoded {
case .product(let product): return AnyView(ProductComponent(component: product))
case ...
}
```

The decoded AnyHashable variable from the [decode](#decoder) step is cast back to the app's SDUIComponent. Using a switch the right type is found and the corresponding ProductComponent is returned. 

#### Equals
This is needed to update states within the SwiftUI architecture. The SDUI Library won't be able to compare custom models correctly. Therefore the right equals function should cast the decoded types and compare them. Example implementation: 

```
guard let lhs = lhs.decoded as? SDUIComponent else { return false }
guard let rhs = rhs.decoded as? SDUIComponent else { return false }
return lhs == rhs
```

#### Filter (Component only)
...

### Generate new type
In order to support new types, the SDUI backend library has to be altered first. 

### Implement type
... 

## Passing Project Data
...

## Contributing
...

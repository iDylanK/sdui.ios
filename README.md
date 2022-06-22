# SDUI Swift Library

The SDUI Library helps integrating SDUI in a new or existing probject. Its core functionality is based on SwiftUI. The corresponding types are generated using a second repo: XX. This (backend) repo also features a sample Express server that works with this library. 

## Getting started

### Installation 

There are 3 ways to get started with the library:
1. Use Swift Package Manger to install as a package (in the future..).
2. Clone this repo and manually import as Swift Package to your application.
3. Clone this repo and use the Sample Application. 

### SDUIDataSource

Before it's possible to display Server Driven views, the library needs a SDUIDataSource. 
Create this datasource `ServerDrivenUI.shared.dataSource = YourProjectsDataSource()` and connect it to your app's network manager. The network manager should use a JSONDecoder to decode all respones to a SDUIScreen. To read more about how to implement it, see the SDUIDataSource file.

### SDUIRootView

Displaying the first Server Driven View is as simple as calling the View: `SDUIRootView()` with the optional parameter `navigationView: Bool`, to specifiy whether the view has to be wrapped in a NavigationView. This is needed for the following concepts to work properly: 
- NavigationLink
- ...
So make sure to use a NavigationView (either using the library or via the app itself) when using these properties.

## Default types and models
See the backend repo (XX).

## Adding custom Components, Headers, Actions and PlaceHolders
The first thing that is needed is a file with SDUI models that expands the Library Model file (containing all the Codable structs). This can automatically be created using the backend repo (see: XX).

### Setting up the right Delegate
...

#### Decoding
...

#### Showing the right SwiftUI View
...

#### Equals
This is needed to update states within the SwiftUI architecture. 

### Generate new type
...

### Implement type
... 

## Passing Project Data
...

## Contributing
# InAppStory UGC for SwiftUI

Library for adding a UGC editor to the InAppStorySDK

## Contents

* [Installation](https://github.com/inappstory/ios-ugc-sdk/tree/SwiftUI#Installation)
	* [CocoaPods](https://github.com/inappstory/ios-ugc-sdk/tree/SwiftUI#CocoaPods)
	* [Carthage](https://github.com/inappstory/ios-ugc-sdk/tree/SwiftUI#Carthage)
	* [Swift Package Manager](https://github.com/inappstory/ios-ugc-sdk/tree/SwiftUI#Swift-Package-Manager)
	* [Manual installation](https://github.com/inappstory/ios-ugc-sdk/tree/SwiftUI#Manual-installation)
	* [Library import](https://github.com/inappstory/ios-ugc-sdk/tree/SwiftUI#Library-import)
* [InAppStoryEditor](https://github.com/inappstory/ios-ugc-sdk/tree/SwiftUI#InAppStory)
	* [Initialization](https://github.com/inappstory/ios-ugc-sdk/tree/SwiftUI#Initialization)
	* [Methods](https://github.com/inappstory/ios-ugc-sdk/tree/SwiftUI#Methods)
	* [Parameters and properties](https://github.com/inappstory/ios-ugc-sdk/tree/SwiftUI#Parameters-and-properties)
* [Protocols](https://github.com/inappstory/ios-ugc-sdk/tree/SwiftUI#Protocols)
	* [InAppStoryEditorDelegate](https://github.com/inappstory/ios-ugc-sdk/tree/SwiftUI#InAppStoryEditorDelegate)
	* [DownloadPlaceholderProtocol](https://github.com/inappstory/ios-ugc-sdk/tree/SwiftUI#DownloadPlaceholderProtocol)

* [Sample](https://github.com/inappstory/ios-ugc-sdk/tree/SwiftUI#Sample)

## Installation

| InAppStory version | Build version | iOS version |
|--------------------|---------------|-------------|
| 1.2.1              | 386           | >= 13.4     |

Version of the library can be obtained from the parameter `InAppStoryEditor.frameworkInfo`


### CocoaPods

[CocoaPods](https://cocoapods.org) is a dependency manager for Cocoa projects. For usage and installation instructions, visit their website. To integrate InAppStory into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
use_frameworks!
pod 'InAppStoryUGC_SwiftUI', :git => 'https://github.com/inappstory/ios-ugc-sdk.git', :tag => '1.2.1-SwiftUI'
```

### Carthage

[Carthage](https://github.com/Carthage/Carthage) is a decentralized dependency manager that builds your dependencies and provides you with binary frameworks. To integrate InAppStory into your Xcode project using Carthage, specify it in your `Cartfile`:

```ogdl
github "inappstory/ios-ugc-sdk" ~> 1.2.1-SwiftUI
```

### Swift Package Manager

The [Swift Package Manager](https://swift.org/package-manager/) is a tool for automating the distribution of Swift code and is integrated into the `swift` compiler. It is in early development, but InAppStory does support its use on supported platforms.

Once you have your Swift package set up, adding InAppStory as a dependency is as easy as adding it to the `dependencies` value of your `Package.swift`.

```swift
dependencies: [
    .package(url: "https://github.com/inappstory/ios-ugc-sdk.git", .upToNextMajor(from: "1.2.1-SwiftUI"))
]
```

### Manual installation

Download `InAppStoryUGC_SwiftUI.xcframework` from the repository. Connect in the project settings on the *General* tab.


### Library import

The UGC editor works only with InAppStorySDK frameworks. The SDK must be imported to work fully.

##### Swift

```swift
import InAppStorySDK_SwiftUI
import InAppStoryUGC_SwiftUI
```

## InAppStoryEditor

The main singleton class for managing data and customizing the display of lists and the reader.

### Initialization

Before using the UGC editor, the InAppStorySDK must be initialized with the service key and settings.
InAppStorySDK Initialization is preferably carried out in `AppDelegate`: 

```swift
func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool 
{
	InAppStory.shared.initWith(serviceKey: <String>, testKey: <String>, settings: <Settings?>)
	return true
}
```

* `serviceKey` - service authorization key (\<*String*>); 
* `testKey ` - test authorization key in the service (\<*String*>);  
* `settings` - configuration object (*<[Settings?](https://github.com/inappstory/ios-ugc-sdk/tree/SwiftUI#Settings)>* - *optional*).

>**Attention!**  
>If you pass *testKey*, then the library will display the stories only in the **"Moderation"** status.

### Parameters and properties
* `editorPlaceholderView` - custom loader, should implement the protocol *<[DownloadPlaceholderProtocol](https://github.com/inappstory/ios-ugc-sdk/tree/SwiftUI#DownloadPlaceholderProtocol)>*;

## Protocols

### DownloadPlaceholderProtocol  

* `isAnimate: <Bool> { get }` - returns the state of the animation
* `start` - start animation
* `stop` - stop animation

## List of delegate events

The `InAppStoryEditorDelegate` can receive the following events from the editor:

* `editorWillShow` - library will show editor screen;
* `editorDidClose` - library did cloe editor screen;
* `slideAdded` - a slide was added to the editor. Parameters:
    * `slideIndex` - index of the added slide;
    * `totalSlides` - total number of slides;
    * `ts` - time of the event in timestamp format;
* `slideRemoved` - a slide was removed in the editor. Parameters:
    * `slideIndex` - index of the removed slide;
    * `totalSlides` - total number of slides;
    * `ts` - time of the event in timestamp format;
* `storyPublishedSuccess` - The story has been sent for moderation. Parameters:
    * `totalSlides` - total number of slides;
    * `ts` - time of the event in timestamp format;
* `storyPublishedFail` - failed to submit the story for moderation. Parameters:
    * `totalSlides` - total number of slides;
    * `ts` - time of the event in timestamp format;
    * `reason` - the cause of the error, when sending for moderation;
* `EditorFailure` - errors when receiving the editor from the server;
    * `reason` - the cause of an error when retrieving, unpacking or searching the device cache;


## Sample

First you need to initialize the InAppStorySDK_SwiftUI and enable the editor cell display in the history lists.

#### AppDelegate.swift
```swift
import InAppStorySDK_SwiftUI
...

func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool 
{
   // Init InAppstorySDK
   InAppStory.shared.initWith(serviceKey: <String>, testKey: <String>, settings: <Settings?>)
   
   return true
}
```

Next, in the View, create a StoryListView to display a list of stories.

>**Attention!**  
>For the UGC editor to work properly, you must install and import the InAppStorySDK_SwiftUI.

#### ContentView.swift
```swift
import InAppStorySDK_SwiftUI // import main framework
import InAppStoryUGC_SwiftUI // import UGC editor framework

struct ContentView: View {
    // Editor showing state var
    @State private var isEditorShowing: Bool = false

    var body: some View {
        VStack {
            // Creating StoryListView with default feed & settings
            StoryListView(editorSelect: {
                // called after taping the editor cell in the list
                // toggle state of editor
                isEditorShowing.toggle()
            })
        }
        // View modificator for showng Editor screen
        .storyEditor(isPresented: $isEditorShowing, payload: [:], onDismiss: {
            // сalled when the editor is closed
        }, editorEvent: { name, data in
            // сalled when the editor send event
        })
    }
}
```

Full list of editor events [Full list of events](https://github.com/inappstory/ios-ugc-sdk/tree/SwiftUI#ListOfDelegateEvents)

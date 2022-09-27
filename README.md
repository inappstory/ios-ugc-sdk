# InAppStory UGC

Library for adding a UGC editor to the InAppStorySDK

## Contents

* [Installation](https://github.com/inappstory/ios-ugc-sdk#Installation)
	* [CocoaPods](https://github.com/inappstory/ios-ugc-sdk#CocoaPods)
	* [Carthage](https://github.com/inappstory/ios-ugc-sdk#Carthage)
	* [Swift Package Manager](https://github.com/inappstory/ios-ugc-sdk#Swift-Package-Manager)
	* [Manual installation](https://github.com/inappstory/ios-ugc-sdk#Manual-installation)
	* [Library import](https://github.com/inappstory/ios-ugc-sdk#Library-import)
* [InAppStoryEditor](https://github.com/inappstory/ios-ugc-sdk#InAppStory)
	* [Initialization](https://github.com/inappstory/ios-ugc-sdk#Initialization)
	* [Methods](https://github.com/inappstory/ios-ugc-sdk#Methods)
	* [Parameters and properties](https://github.com/inappstory/ios-ugc-sdk#Parameters-and-properties)
* [Protocols](https://github.com/inappstory/ios-ugc-sdk#Protocols)
	* [PlaceholderProtocol](https://github.com/inappstory/ios-ugc-sdk#PlaceholderProtocol)
	* [GamePlaceholderProtocol](https://github.com/inappstory/ios-ugc-sdk#DownloadPlaceholderProtocol)
* [Sample](https://github.com/inappstory/ios-ugc-sdk#Sample)

## Installation

| InAppStory version | Build version | iOS version |
|--------------------|---------------|-------------|
| 1.0.0              | 235           | >= 11.0     |

Version of the library can be obtained from the parameter `InAppStoryEditor.frameworkInfo`


### CocoaPods

[CocoaPods](https://cocoapods.org) is a dependency manager for Cocoa projects. For usage and installation instructions, visit their website. To integrate InAppStory into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
use_frameworks!
pod 'InAppStory', :git => 'https://github.com/inappstory/ios-ugc-sdk.git'
```

### Carthage

[Carthage](https://github.com/Carthage/Carthage) is a decentralized dependency manager that builds your dependencies and provides you with binary frameworks. To integrate InAppStory into your Xcode project using Carthage, specify it in your `Cartfile`:

```ogdl
github "inappstory/ios-ugc-sdk" ~> 1.0.0
```

### Swift Package Manager

The [Swift Package Manager](https://swift.org/package-manager/) is a tool for automating the distribution of Swift code and is integrated into the `swift` compiler. It is in early development, but InAppStory does support its use on supported platforms.

Once you have your Swift package set up, adding InAppStory as a dependency is as easy as adding it to the `dependencies` value of your `Package.swift`.

```swift
dependencies: [
    .package(url: "https://github.com/inappstory/ios-ugc-sdk.git", .upToNextMajor(from: "1.0.0"))
]
```

### Manual installation

Download `InAppStoryUGC.xcframework` from the repository. Connect in the project settings on the *General* tab.


### Library import

The UGC editor works only with InAppStorySDK frameworks. The SDK must be imported to work fully.

##### Swift

```swift
import InAppStorySDK
import InAppStoryUGC
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
* `settings` - configuration object (*<[Settings?](https://github.com/inappstory/ios-sdk#Settings)>* - *optional*).

>**Attention!**  
>If you pass *testKey*, then the library will display the stories only in the **"Moderation"** status.

To enable the display of the editor cell in the list of stories, you must also specify `isEditorEnabled = true`.

```swift
func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool 
{
   // Init InAppstorySDK
   InAppStory.shared.initWith(serviceKey: <String>, testKey: <String>, settings: <Settings?>)
   // Enabling the UGC editor cell display in the list of stories
   InAppStory.shared.isEditorEnabled = true
   return true
}
```

### Methods

* `showEditor(from target: <UIViewController>, delegate: <InAppStoryEditorDelegate>? = nil, complete: (<Bool>) -> Void)` - presenting UGC editor from target controller;
* `func closeEditor(complete: () -> Void)` - close UGC editor.

### Parameters and properties
* `editorPlaceholderView` - custom loader, should implement the protocol *<[DownloadPlaceholderProtocol](https://github.com/inappstory/ios-ugc-sdk#DownloadPlaceholderProtocol)>*;

## Protocols

### DownloadPlaceholderProtocol  

* `isAnimate: <Bool> { get }` - returns the state of the animation
* `start` - start animation
* `stop` - stop animation


## Sample

First you need to initialize the InAppStorySDK and enable the editor cell display in the history lists.

#### AppDelegate.swift
```swift
import InAppStory
...

func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool 
{
   // Init InAppstorySDK
   InAppStory.shared.initWith(serviceKey: <String>, testKey: <String>, settings: <Settings?>)
   // Enabling the UGC editor cell display in the list of stories
   InAppStory.shared.isEditorEnabled = true
   
   return true
}
```

Next, in the controller, create a StoryView to display a list of stories.

>**Attention!**  
>For the UGC editor to work properly, you must install and import the InAppStorySDK.

#### ViewController.swift
```swift
import InAppStory // import main framework
import InAppStoryUGC // import UGC editor framework

class ViewController: UIViewController {

    // StoryView variable declaration
    fileprivate var storyView: StoryView! 
...
    override func viewDidLoad() {
        super.viewDidLoad()
        // creating a StoryView with a default list of stories and setting the size
        storyView = StoryView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 160))
        // specifies the target for the StoryView from which the Story Reader will be displayed
        storyView.target = self
        // specifies a delegate in which the StoryView actions can be tracked
        storyView.storiesDelegate = self
        // adding StoryView to the controller's view
        view.addSubview(storyView)
        
        // running the internal StoryView logic to retrieve a list of stories
        storyView.create()
    }
}

extension ViewController: InAppStoryDelegate
{
    // called after the contents are updated for sories type
    func storiesDidUpdated(isContent: Bool, from storyType: StoriesType) { ... }
    // called after a link is received from stories with the interaction type and stories type
    func storyReader(actionWith target: String, for type: ActionType, from storyType: StoriesType) { ... }
    // called after editor cell tapped in stories list
    func editorCellDidSelect()
    {
        // showing an editor with specifying from where to show it and adding a delegate to it
        InAppStoryEditor.shared.showEditor(from: self, delegate: self) { show in
            // called after editor screen showing
        }
    }
}

// delegate methods for the editor
extension ViewController: InAppStoryEditorDelegate
{
    // called before closing the editor screen
    func editorWillShow() { ... }
    // called after closing the editor screen
    func editorDidClose() { ... }
}   
```
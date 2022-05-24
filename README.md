#  Orchard

[![Version](https://img.shields.io/cocoapods/v/Orchard.svg?style=flat)](https://cocoapods.org/pods/Orchard)
[![License](https://img.shields.io/cocoapods/l/Orchard.svg?style=flat)](https://github.com/detroit-labs/Orchard/blob/master/LICENSE)
[![Platform](https://img.shields.io/cocoapods/p/Orchard.svg?style=flat)](https://github.com/detroit-labs/Orchard)

## Device identification for iOS, watchOS, and tvOS.

Orchard is a library for iOS, watchOS, and tvOS to identify the device running
your code. Built in both Swift and Objective-C variants, the code uses the
device model identifier of the system to identify the device.

### Use

_“But I thought we weren’t supposed to do it like this!”_

For most cases, you shouldn’t use the model of the device to control features of
your app. Instead of hardcoding which devices support Touch ID or Face ID, use
`LAContext`. Instead of computing layout based on device model, use Auto Layout
and size classes.

There are certain instances where it _is_ important to know which device your
code is running on. Whether you’re trying to sell accessories for the user’s
current device, [draw onscreen elements in actual size][1], or locate device
hardware relative to the screen, sometimes you need to know the actual device,
and that’s where Orchard comes in.

[1]: https://github.com/detroit-labs/IRLSize

#### Objective-C

To use Orchard in Objective-C, use the `Orchard` category on `UIDevice` (or
`WKInterfaceDevice` on watchOS) to get an enum value representing the
device—either an `OrchardiOSDevice`, `OrchardwatchOSDevice`, or
`OrchardtvOSDevice`, depending on the OS. You can then use this value in a
`switch` statement or pass it to other methods, such as
`OrchardMarketingNameForiOSDevice()`, which returns an `NSString` representing
the marketing name for the device (e.g. “iPhone XS Max”). You can see this in
the example below:

```Objective-C
OrchardiOSDevice device = [UIDevice.currentDevice orchardiOSDevice];

switch (device) {
  case OrchardiOSDeviceiPhoneXSMax:
    NSLog(@"You have an iPhone XS Max!)";
}
```

#### Swift

To use Orchard in Swift, use the `DeviceIdentity` enum. You can obtain the
instance representing the current device using the `deviceIdentity` computed
property of `UIDevice` or `WKInterfaceDevice`. Instances of the `DeviceIdentity`
enum have a `marketingName` property that returns the marketing name for the
device (e.g. “iPad Pro (12.9-inch) (3rd Generation)”). You can see this in the
example below:

```Swift
let deviceIdentity = UIDevice.current.deviceIdentity

print("I’m an \(deviceIdentity.marketingName ?? "unknown device").")

switch deviceIdentity {
case .iPhone(.iPhone11ProMax), .iPhone(.iPhoneXSMax), .iPhone(.iPhone8Plus),
     .iPhone(.iPhone7Plus), .iPhone(.iPhone6sPlus), .iPhone(.iPhone6Plus),
     .iPad(.iPadPro12_9Inch), .iPad(.iPadPro12_9Inch2),
     .iPad(.iPadPro12_9Inch3), .iPad(.iPadPro12_9Inch4):
    print("You got the big one!")
default: break
}
```

#### Mixed-Source Projects

Orchard’s Objective-C code is completely usable from Swift; device names are
annotated with [`NS_SWIFT_NAME`][2] and therefore can be used in the above
example just as their Swift-native counterparts.

[2]: https://developer.apple.com/documentation/swift/objective-c_and_c_code_customization/renaming_objective-c_apis_for_swift

### Installation

#### CocoaPods

Orchard can be installed using CocoaPods. There are two subspecs, `Swift` and
`ObjC`, so use either of these lines in your `Podfile`:

`pod "Orchard/ObjC"`

`pod "Orchard/Swift"`

#### Swift Package Manager

The Swift portion of Orchard can be installed using the
[Swift package manager][3].

[3]: https://swift.org/package-manager/

### Development

Orchard uses [Swift gyb] to generate both Objective-C and Swift source files.
The actual device data is in the `Data` folder, in TSV format. To add new
devices, simply update the TSV file(s) with new device info and rebuild both
targets; the source code will be regenerated. Do not modify any file for which
there is a corresponding `.gyb` file, as the builds will overwrite your changes.

To update the generated source files, run the following command:

```Shell
make generate
```

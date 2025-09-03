# WEB_VIEW_LIB

A Swift Package that provides WebView functionality for iOS applications, specifically designed for payment and web content integration.

## Features

- 🚀 Easy WebView integration
- 💳 Payment service integration
- 🔐 Secure CI (Customer Identification) handling
- 📱 iOS native WebView wrapper
- 🎯 Simple API for opening WebView modals

## Requirements

- iOS 13.0+
- Xcode 12.0+
- Swift 5.0+

## Installation

### Swift Package Manager

Add the following to your `Package.swift` file:

```swift
dependencies: [
    .package(url: "https://github.com/kimleak/WEBVIEW_SDK", from: "1.0.0")
]
```

Or add it through Xcode:
1. File → Add Package Dependencies
2. Enter: `https://github.com/kimleak/WEBVIEW_SDK`
3. Select the version and add to your target

## Usage

### Basic Setup

1. Import the library in your view controller:

```swift
import WEBVIEW_SDK
```

2. Create an instance of `BeplePayService`:

```swift
class ViewController: UIViewController {
    var beplePayService: BeplePayService!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Initialize the service
        beplePayService = BeplePayService(rootViewController: self)
    }
}
```

### Opening WebView

To open a WebView with a specific CI (Customer Identification):

```swift
func openWebView() {
    DispatchQueue.main.async {
        self.beplePayService.openGwangJuWebView(CI: "your_ci_string_here")
    }
}
```

### Example Implementation

```swift
import UIKit
import WEBVIEW_SDK

class ViewController: UIViewController {
    var beplePayService: BeplePayService!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        beplePayService = BeplePayService(rootViewController: self)
    }
    
    @IBAction func openPaymentWebView(_ sender: UIButton) {
        DispatchQueue.main.async {
            self.beplePayService.openGwangJuWebView(CI: "1234567890")
        }
    }
}
```

## API Reference

### BeplePayService

The main service class for handling WebView operations.

#### Initialization

```swift
init(rootViewController: UIViewController)
```

- `rootViewController`: The view controller that will present the WebView

#### Methods

##### openGwangJuWebView(CI:)

Opens a WebView with the specified Customer Identification.

```swift
func openGwangJuWebView(CI: String)
```

- `CI`: Customer Identification string for authentication/identification

## Security Notes

- Always ensure CI strings are properly encrypted and secure
- Never hardcode sensitive CI values in your source code
- Consider using environment variables or secure storage for CI values

## Error Handling

The SDK handles common WebView errors internally, but you should implement proper error handling for network issues and invalid CI values.

## Sample CI Values

For testing purposes, you can use these sample CI values:

```swift
// Test user examples
let testCIs = [
    "1234567890" // 회원가입
]
```

## Troubleshooting

### Common Issues

1. **Import Error**: Make sure the package is properly added to your target
2. **Build Error**: Ensure iOS deployment target is 13.0 or higher
3. **WebView Not Opening**: Check that the CI string is valid and properly formatted

### Debug Mode

Enable debug logging by setting the appropriate flags in your app's configuration.

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add tests if applicable
5. Submit a pull request

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Support

For support and questions:
- Create an issue in the GitHub repository
- Contact: [Your contact information]

## Changelog

### Version 1.0.0
- Initial release
- Basic WebView functionality
- BeplePayService implementation
- CI-based authentication support

---

**Note**: This SDK is designed for specific use cases. Please ensure you have the proper permissions and agreements before using in production environments.

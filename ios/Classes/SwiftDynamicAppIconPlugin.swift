import Flutter
import UIKit

public class SwiftDynamicAppIconPlugin: NSObject, FlutterPlugin
{
	static let channelName = "plugins.olavstoppen.no/dynamic_app_icon"

	public static func register(with registrar: FlutterPluginRegistrar)
	{
		let channel = FlutterMethodChannel(name: channelName, binaryMessenger: registrar.messenger())
		let instance = SwiftDynamicAppIconPlugin()
		registrar.addMethodCallDelegate(instance, channel: channel)
	}
	
	func change(to icon:String)
	{
		if #available(iOS 10.3, *)
		{
			guard UIApplication.shared.supportsAlternateIcons else { return }
			let currentIcon = UIApplication.shared.alternateIconName ?? ""
			guard currentIcon != icon else { return }
			UIApplication.shared.setAlternateIconName(icon.isEmpty ? nil : icon)
			{ error in
				if let error = error
				{
					print("DynamicAppIconPlugin error: \(error)")
				}
				else
				{
					print("DynamicAppIconPlugin success changed to icon with name \(icon)")
				}
			}
		}
		else
		{
			
		}
	}
	
	var currentIcon : String?
	{
		if #available(iOS 10.3, *)
		{
			guard UIApplication.shared.supportsAlternateIcons else { return nil }
			return UIApplication.shared.alternateIconName
		}
		else
		{
			return nil
		}
	}
	
	public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult)
	{
		switch call.method
		{
		case "change": change(to:(call.arguments as? [String:Any])?["iconName"] as? String ?? ""); result(true)
		case "current": result(currentIcon)
		default: result(FlutterMethodNotImplemented)
		}
	}
}

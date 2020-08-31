package no.olavstoppen.plugins.dynamic_app_icon

import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import io.flutter.plugin.common.PluginRegistry.Registrar

class DynamicAppIconPlugin: MethodCallHandler 
{
	companion object 
	{
		val channelName = "plugins.olavstoppen.no/dynamic_app_icon"

		@JvmStatic
		fun registerWith(registrar: Registrar) 
		{
			val channel = MethodChannel(registrar.messenger(), channelName)
			channel.setMethodCallHandler(DynamicAppIconPlugin())
		}
	}

	override fun onMethodCall(call: MethodCall, result: Result) 
	{
		result.notImplemented()
	}
}

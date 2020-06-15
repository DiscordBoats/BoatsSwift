import Just
extension BoatsSwift {
	public func getBotInfo(botID: UInt64) -> Any {
		var obj = Just.get("https://discord.boats/api/bot/\(botID)")
		if obj == nil {
			return "Error: Bot wasn't found"
		}
		return obj.json!
	}
}

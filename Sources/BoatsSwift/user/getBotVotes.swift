import Just
extension BoatsSwift {
	public func getUserVoted(botID: UInt64, userID: UInt64) -> Any {
		var obj = Just.get("https://discord.boats/api/bot/\(botID)/voted?id=\(userID)")
		if obj == nil {
			return "Error: Bot or user wasn't found"
		}
		return obj.json!
	}
}

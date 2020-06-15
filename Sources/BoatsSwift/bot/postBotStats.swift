import Just
extension BoatsSwift {
	public func postStats(id: UInt64, serverCount: Int) -> Any {
		let myJustDefaults = JustSessionDefaults(
			JSONReadingOptions: .mutableContainers,
			JSONWritingOptions: .prettyPrinted,
			headers:  ["Authorization": self.apiKey]
		)
		let jhttp = JustOf<HTTP>(defaults: myJustDefaults)
		var r = jhttp.post("https://discord.boats/api/bot/\(id)", json:["server_count": serverCount])
		return r.json
	}
}

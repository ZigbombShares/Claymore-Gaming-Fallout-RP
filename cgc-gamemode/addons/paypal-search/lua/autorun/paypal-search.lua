local pPrint = jlib.GetPrintFunction("[PayPal-Search]")

pPrint("Loaded")
hook.Add("PostGamemodeLoaded", "PayPalSearch", function()
	pPrint("Adding PayPal search permission")
	serverguard.permission:Add("PayPalSearch")
end)

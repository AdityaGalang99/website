Variable ={}
Variable["RegisterURL"] = ""
Prompt = gg.prompt({"Username","Password","ConfirmPassword","Back"},nil,{"text","text","text","checkbox"})
	if not Prompt then
	return
	end
	if Prompt[4] then
	return
	end
	

Variable["TempRegister"]  = '{"Username":"'..Prompt[1]..'","Password":"'..Prompt[2]..'","ConfirmPassword":"'..Prompt[3]..'"}'
ResponseContent = gg.makeRequest(Variable["RegisterURL"],nil,Variable["TempRegister"]).content
pcall(load(ResponseContent))

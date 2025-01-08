indent = 0
stuff = "ᖇᵉᵐᑜᵗᵉᵉ᧩ᵀ"

for _, service in pairs(game:GetChildren()) do
    for _, object in pairs(service:GetChildren()) do
        if object:IsA("RemoteEvent") then
            print(string.rep(" ", indent * 2) .. stuff .. ": " .. object.Name)
        elseif object:IsA("Folder") then
            warn(string.rep(" ", indent * 2) .. "Folder: " .. object.Name)
            for _, child in pairs(object:GetChildren()) do
                if child:IsA("RemoteEvent") then
                    print(string.rep(" ", (indent + 1) * 2) .. stuff .. ": " .. child.Name)
                end
            end
        end
    end
end

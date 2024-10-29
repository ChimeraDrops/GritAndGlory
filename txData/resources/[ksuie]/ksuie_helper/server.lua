local Core = exports.vorp_core:GetCore()

function printTable(tbl, indent)
    indent = indent or 0
    local indentString = string.rep("  ", indent)

    for key, value in pairs(tbl) do
        if type(value) == "table" then
            print(indentString .. tostring(key) .. ":")
            printTable(value, indent + 1)
        else
            print(indentString .. tostring(key) .. ": " .. tostring(value))
        end
    end
end
exports('printTable', printTable)
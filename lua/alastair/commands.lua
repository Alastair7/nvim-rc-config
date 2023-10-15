-- C++ compilation + execution command
vim.cmd([[
command!  Gcc execute 'lua CompileCFile()'
]])


function CompileCFile()
    local c_file = vim.fn.expand('%')
    local output_file = string.gsub(c_file, "%.cpp$", '')

    local compile_cmd = "g++ " .. c_file .. " -g -o " .. output_file

    --  local chmod_cmd = 'chmod o+x ' .. output_file
    -- local run_cmd = './' .. output_file

    vim.fn.system(compile_cmd)
end

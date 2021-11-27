-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/ins/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/ins/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/ins/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/ins/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/ins/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["ctrlp.vim"] = {
    config = { "\27LJ\2\n≥\3\0\0\3\0\r\0\0296\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\2\15\0\0\0X\1\tÄ6\0\0\0009\0\4\0'\1\6\0=\1\5\0006\0\0\0009\0\4\0)\1\0\0=\1\a\0X\0\bÄ6\0\0\0009\0\4\0005\1\t\0=\1\b\0006\0\0\0009\0\4\0005\1\n\0=\1\5\0006\0\0\0009\0\4\0'\1\f\0=\1\v\0K\0\1\0\ara\28ctrlp_working_path_mode\1\3\0\0\t.gitAcd %s && git ls-files . --cached --exclude-standard --others\1\0\2\bdir\31v[/](.(git|hg|svn)|_site)$\tfile'v.(exe|so|dll|class|png|jpg|jpeg)$\24ctrlp_custom_ignore\22ctrlp_use_cachingAag %s --files-with-matches -g \"\" --ignore \".git$|.hg$|.svn$\"\23ctrlp_user_command\6g\aag\15executable\afn\bvim\0" },
    loaded = true,
    path = "/Users/ins/.local/share/nvim/site/pack/packer/start/ctrlp.vim",
    url = "https://github.com/kien/ctrlp.vim"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n–\4\0\0\6\0\25\0!6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\0\0=\3\4\0025\3\5\0=\3\6\0025\3\a\0005\4\b\0=\4\t\3=\3\n\0025\3\v\0004\4\0\0=\4\f\3=\3\r\0025\3\14\0004\4\0\0=\4\15\3=\3\16\0025\3\17\0004\4\0\0=\4\18\3=\3\19\0025\3\20\0005\4\21\0004\5\0\0=\5\22\4=\4\23\3=\3\24\2B\0\2\1K\0\1\0\tview\rmappings\tlist\1\0\1\16custom_only\1\1\0\5\nwidth\3\30\16auto_resize\1\tside\tleft\21hide_root_folder\1\vheight\3\30\ffilters\vcustom\1\0\1\rdotfiles\1\16system_open\targs\1\0\0\24update_focused_file\16ignore_list\1\0\2\15update_cwd\1\venable\2\16diagnostics\nicons\1\0\4\fwarning\bÔÅ±\tinfo\bÔÅö\nerror\bÔÅó\thint\bÔÅ™\1\0\1\venable\1\22update_to_buf_dir\1\0\2\14auto_open\2\venable\2\23ignore_ft_on_setup\1\0\a\15update_cwd\1\18hijack_cursor\1\16open_on_tab\1\15auto_close\2\18open_on_setup\1\17hijack_netrw\2\18disable_netrw\2\nsetup\14nvim-tree\frequire\0" },
    loaded = true,
    path = "/Users/ins/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/Users/ins/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/ins/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/ins/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n–\4\0\0\6\0\25\0!6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\0\0=\3\4\0025\3\5\0=\3\6\0025\3\a\0005\4\b\0=\4\t\3=\3\n\0025\3\v\0004\4\0\0=\4\f\3=\3\r\0025\3\14\0004\4\0\0=\4\15\3=\3\16\0025\3\17\0004\4\0\0=\4\18\3=\3\19\0025\3\20\0005\4\21\0004\5\0\0=\5\22\4=\4\23\3=\3\24\2B\0\2\1K\0\1\0\tview\rmappings\tlist\1\0\1\16custom_only\1\1\0\5\nwidth\3\30\16auto_resize\1\tside\tleft\21hide_root_folder\1\vheight\3\30\ffilters\vcustom\1\0\1\rdotfiles\1\16system_open\targs\1\0\0\24update_focused_file\16ignore_list\1\0\2\15update_cwd\1\venable\2\16diagnostics\nicons\1\0\4\fwarning\bÔÅ±\tinfo\bÔÅö\nerror\bÔÅó\thint\bÔÅ™\1\0\1\venable\1\22update_to_buf_dir\1\0\2\14auto_open\2\venable\2\23ignore_ft_on_setup\1\0\a\15update_cwd\1\18hijack_cursor\1\16open_on_tab\1\15auto_close\2\18open_on_setup\1\17hijack_netrw\2\18disable_netrw\2\nsetup\14nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: ctrlp.vim
time([[Config for ctrlp.vim]], true)
try_loadstring("\27LJ\2\n≥\3\0\0\3\0\r\0\0296\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\2\15\0\0\0X\1\tÄ6\0\0\0009\0\4\0'\1\6\0=\1\5\0006\0\0\0009\0\4\0)\1\0\0=\1\a\0X\0\bÄ6\0\0\0009\0\4\0005\1\t\0=\1\b\0006\0\0\0009\0\4\0005\1\n\0=\1\5\0006\0\0\0009\0\4\0'\1\f\0=\1\v\0K\0\1\0\ara\28ctrlp_working_path_mode\1\3\0\0\t.gitAcd %s && git ls-files . --cached --exclude-standard --others\1\0\2\bdir\31v[/](.(git|hg|svn)|_site)$\tfile'v.(exe|so|dll|class|png|jpg|jpeg)$\24ctrlp_custom_ignore\22ctrlp_use_cachingAag %s --files-with-matches -g \"\" --ignore \".git$|.hg$|.svn$\"\23ctrlp_user_command\6g\aag\15executable\afn\bvim\0", "config", "ctrlp.vim")
time([[Config for ctrlp.vim]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end

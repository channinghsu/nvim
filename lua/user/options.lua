-- Neovim 编辑器核心配置选项
-- 该文件定义了编辑器的基础行为和显示设置

local options = {
	-- ========== 编辑器基础设置 ==========
	autoindent = true, -- 自动缩进：新行自动继承上一行的缩进
	relativenumber = false, -- 相对行号：显示绝对行号而非相对行号
	cursorline = true, -- 高亮当前行：在光标所在行显示下划线或背景色
	cursorcolumn = false, -- 高亮当前列：不显示光标所在列的高亮
	number = true, -- 显示行号：在左侧显示绝对行号
	wrap = false, -- 自动换行：禁用长行的自动折行显示
	signcolumn = "yes", -- 标记列：始终显示左侧标记列（用于 git、诊断等）

	-- ========== 滚动与视图 ==========
	scrolloff = 5, -- 垂直滚动偏移：光标距离顶部/底部至少保留 5 行
	sidescrolloff = 8, -- 水平滚动偏移：光标距离左右边缘至少保留 8 列

	-- ========== 命令行与弹窗 ==========
	cmdheight = 0, -- 命令行高度：空闲时隐藏，需兼容插件
	pumheight = 15, -- 弹出菜单高度：补全菜单最多显示 15 个选项

	-- ========== 响应速度 ==========
	timeoutlen = 300, -- 快捷键超时：等待组合键的时间（毫秒）
	updatetime = 200, -- 更新时间：触发 CursorHold 事件的延迟（毫秒）

	-- ========== 缩进与制表符 ==========
	expandtab = true, -- 空格替代 Tab：按 Tab 键插入空格而非制表符
	shiftwidth = 4, -- 自动缩进宽度：使用 >> 或 << 时缩进 4 个空格
	tabstop = 4, -- Tab 宽度：一个制表符显示为 4 个空格宽度
	softtabstop = 4, -- 软制表符宽度：编辑时 Tab 和 Backspace 的行为宽度
	smartindent = true, -- 智能缩进：根据代码语法自动调整缩进

	-- ========== 搜索设置 ==========
	ignorecase = true, -- 忽略大小写：搜索时不区分大小写
	smartcase = true, -- 智能大小写：搜索包含大写字母时区分大小写

	-- ========== 交互设备 ==========
	mouse = "a", -- 鼠标支持：在所有模式下启用鼠标功能
	clipboard = "unnamedplus", -- 系统剪贴板：使用系统剪贴板进行复制粘贴

	-- ========== 文件管理 ==========
	undofile = true, -- 持久化撤销：保存撤销历史到文件（重启后可撤销）
	swapfile = false, -- 交换文件：禁用 .swp 交换文件
	backup = false, -- 备份文件：不创建备份文件
	writebackup = false, -- 写入备份：保存前不创建临时备份

	-- ========== 窗口分割 ==========
	splitbelow = true, -- 水平分割位置：新窗口在下方打开
	splitright = true, -- 垂直分割位置：新窗口在右侧打开
}
return options

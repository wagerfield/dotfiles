local M = {}

M.te = "▔" -- top edge
M.re = "🮇" -- right edge
M.be = "▁" -- bottom edge
M.le = "▎" -- left edge

M.hd = "┳" -- horizontal down
M.vl = "┫" -- vertical left
M.vr = "┣" -- vertical right
M.hu = "┻" -- horizontal up

M.hs = "━" -- horizontal split
M.vs = "┃" -- vertical split
M.vh = "╋" -- vertical horizontal

M.tl = "┏" -- top left
M.tr = "┓" -- top right
M.bl = "┗" -- bottom left
M.br = "┛" -- bottom right

M.box = { M.tl, M.hs, M.tr, M.vs, M.br, M.hs, M.bl, M.vs }

return M

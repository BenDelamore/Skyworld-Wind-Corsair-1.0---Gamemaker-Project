/// @description Get Player's Position + add forbidden cells?
/*
xx = oPlayer.x
yy = oPlayer.y

/*
if mp_grid_get_cell(global.ai_grid,(x div 64),(y div 64)) != 1
{
	mp_grid_add_cell(global.ai_grid,(x div 64),(y div 64))
}

/*
cell_occupied = mp_grid_get_cell(global.ai_grid,oEnemy.x,oEnemy.y)
if !mp_grid_get_cell(cell_occupied)
{
	mp_grid_clear_cell(global.ai_grid)
}

//Middle cell
cellX = (x - oGrid.x) div oGrid.cellSize;
cellY = (y - oGrid.y) div oGrid.cellSize;

mp_grid_add_cell(global.NavGrid, cellX -1, cellY - 3);
mp_grid_add_cell(global.NavGrid, cellX, cellY - 3);
mp_grid_add_cell(global.NavGrid, cellX + 1, cellY - 3);

mp_grid_add_cell(global.NavGrid, cellX - 2, cellY - 2);
mp_grid_add_cell(global.NavGrid, cellX + 2, cellY - 2);

mp_grid_add_cell(global.NavGrid, cellX + 3, cellY - 1);
mp_grid_add_cell(global.NavGrid, cellX - 3, cellY - 1);

mp_grid_add_cell(global.NavGrid, cellX + 2, cellY);
mp_grid_add_cell(global.NavGrid, cellX - 2, cellY);

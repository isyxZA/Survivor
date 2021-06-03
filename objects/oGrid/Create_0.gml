cellSize = 32;
cellCountX = 320;//Horizontal 
cellCountY = 320;//Vertical

gridWidth  = cellCountX * cellSize;
gridHeight = cellCountY * cellSize;

showGrid = false;

min_x = x + (cellSize * 0.5);
max_x = min_x + gridWidth;
min_y = y + (cellSize * 0.5);
max_y = min_y + gridHeight;

//Initialise motion planning grid
global.NavGrid = mp_grid_create(x, y, cellCountX, cellCountY, cellSize, cellSize);
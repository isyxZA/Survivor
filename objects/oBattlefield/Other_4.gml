/// @description Spawn the battlefield 
//Spawn friendly platoons
//PLATOON 1
if createfPlatoon1
{
	createfPlatoon1 = false;
	//Squad Able
	var fPlatoon1X = room_width * 0.5;
	var fPlatoon1Y = oGrid.max_y - (oGrid.cellSize * 13);
	for (var i = 0; i < squadSize; ++i)
	{
		GetFormationPosition(F_RIFLEMAN, i, "SQUARE");
		var px = fPlatoon1X + xAdj;
		var py = fPlatoon1Y + yAdj;
		if GetCell(px, py)
		{
			cellX = (px - oGrid.x) div oGrid.cellSize;
			cellY = (py - oGrid.y) div oGrid.cellSize;
			var no;
			if i == 0 { no = oPlayer; }
				else { no = oFriend; }
			var nu = instance_create_layer(px, py, "Units", no);
			fSquadP1a[| i] = nu;
			if i == 0 
			{ 
				fsquadLeadP1a = nu;
				nu.uIsSquadLead = true;
				nu.uSquadLead = nu;
				nu.findGoal = true;

			}
			else
			{
				nu.uSquadLead = fsquadLeadP1a;
				nu.uFollowTarget = fsquadLeadP1a;
				nu.uFollow = true;
			}
			nu.uFormationPosition = i;
			nu.uPlatoon = 1;
			nu.uSquad = "f1_A";
			nu.xAdj = xAdj;
			nu.yAdj = yAdj;
			nu.cellX = cellX;
			nu.cellY = cellY;
			mp_grid_add_cell(global.NavGrid, cellX, cellY);
		}
	}
	//Squad Bravo
	fPlatoon1X = room_width * 0.45;
	fPlatoon1Y = oGrid.max_y - (oGrid.cellSize * 6);
	for (var i = 0; i < squadSize; ++i)
	{
		GetFormationPosition(F_RIFLEMAN, i, "SQUARE");
		var px = fPlatoon1X + xAdj;
		var py = fPlatoon1Y + yAdj;
		if GetCell(px, py)
		{
			cellX = (px - oGrid.x) div oGrid.cellSize;
			cellY = (py - oGrid.y) div oGrid.cellSize;
			var nu = instance_create_layer(px, py, "Units", oFriend);
			fSquadP1b[| i] = nu;
			if i == 0 
			{ 
				fsquadLeadP1b = nu;
				nu.uIsSquadLead = true;
				nu.uSquadLead = nu;
				nu.findGoal = true;
			}
			else
			{
				nu.uSquadLead = fsquadLeadP1b;
				nu.uFollowTarget = fsquadLeadP1b;
				nu.uFollow = true;
			}
			nu.uFormationPosition = i;
			nu.uPlatoon = 1;
			nu.uSquad = "f1_B";
			nu.xAdj = xAdj;
			nu.yAdj = yAdj;
			nu.cellX = cellX;
			nu.cellY = cellY;
			mp_grid_add_cell(global.NavGrid, cellX, cellY);
		}
	}
	//Squad Charlie
	fPlatoon1X = room_width * 0.55;
	fPlatoon1Y = oGrid.max_y - (oGrid.cellSize * 6);
	for (var i = 0; i < squadSize; ++i)
	{
		GetFormationPosition(F_RIFLEMAN, i, "SQUARE");
		var px = fPlatoon1X + xAdj;
		var py = fPlatoon1Y + yAdj;
		if GetCell(px, py)
		{
			cellX = (px - oGrid.x) div oGrid.cellSize;
			cellY = (py - oGrid.y) div oGrid.cellSize;
			var nu = instance_create_layer(px, py, "Units", oFriend);
			fSquadP1c[| i] = nu;
			if i == 0 
			{ 
				fsquadLeadP1c = nu;
				nu.uIsSquadLead = true;
				nu.uSquadLead = nu;
				nu.findGoal = true;
			}
			else
			{
				nu.uSquadLead = fsquadLeadP1c;
				nu.uFollowTarget = fsquadLeadP1c;
				nu.uFollow = true;
			}
			nu.uFormationPosition = i;
			nu.uPlatoon = 1;
			nu.uSquad = "f1_C";
			nu.xAdj = xAdj;
			nu.yAdj = yAdj;
			nu.cellX = cellX;
			nu.cellY = cellY;
			mp_grid_add_cell(global.NavGrid, cellX, cellY);
		}
	}
	//Squad Delta
	fPlatoon1X = room_width * 0.4;
	fPlatoon1Y = oGrid.max_y - (oGrid.cellSize * 6);
	for (var i = 0; i < squadSize; ++i)
	{
		GetFormationPosition(F_RIFLEMAN, i, "SQUARE");
		var px = fPlatoon1X + xAdj;
		var py = fPlatoon1Y + yAdj;
		if GetCell(px, py)
		{
			cellX = (px - oGrid.x) div oGrid.cellSize;
			cellY = (py - oGrid.y) div oGrid.cellSize;
			var nu = instance_create_layer(px, py, "Units", oFriend);
			fSquadP1d[| i] = nu;
			if i == 0 
			{ 
				fsquadLeadP1d = nu;
				nu.uIsSquadLead = true;
				nu.uSquadLead = nu;
				nu.findGoal = true;
			}
			else
			{
				nu.uSquadLead = fsquadLeadP1d;
				nu.uFollowTarget = fsquadLeadP1d;
				nu.uFollow = true;
			}
			nu.uFormationPosition = i;
			nu.uPlatoon = 1;
			nu.uSquad = "f1_D";
			nu.xAdj = xAdj;
			nu.yAdj = yAdj;
			nu.cellX = cellX;
			nu.cellY = cellY;
			mp_grid_add_cell(global.NavGrid, cellX, cellY);
		}
	}
	//Squad Echo
	fPlatoon1X = room_width * 0.6;
	fPlatoon1Y = oGrid.max_y - (oGrid.cellSize * 6);
	for (var i = 0; i < squadSize; ++i)
	{
		GetFormationPosition(F_RIFLEMAN, i, "SQUARE");
		var px = fPlatoon1X + xAdj;
		var py = fPlatoon1Y + yAdj;
		if GetCell(px, py)
		{
			cellX = (px - oGrid.x) div oGrid.cellSize;
			cellY = (py - oGrid.y) div oGrid.cellSize;
			var nu = instance_create_layer(px, py, "Units", oFriend);
			fSquadP1e[| i] = nu;
			if i == 0 
			{ 
				fsquadLeadP1e = nu;
				nu.uIsSquadLead = true;
				nu.uSquadLead = nu;
				nu.findGoal = true;
			}
			else
			{
				nu.uSquadLead = fsquadLeadP1e;
				nu.uFollowTarget = fsquadLeadP1e;
				nu.uFollow = true;
			}
			nu.uFormationPosition = i;
			nu.uPlatoon = 1;
			nu.uSquad = "f1_E";
			nu.xAdj = xAdj;
			nu.yAdj = yAdj;
			nu.cellX = cellX;
			nu.cellY = cellY;
			mp_grid_add_cell(global.NavGrid, cellX, cellY);
		}
	}
}

//PLATOON 2
if createfPlatoon2
{
	createfPlatoon2 = false;
	//Squad Able
	var fPlatoon2X = room_width * 0.25;
	var fPlatoon2Y = oGrid.max_y - (oGrid.cellSize * 13);
	for (var i = 0; i < squadSize; ++i)
	{
		GetFormationPosition(F_RIFLEMAN, i, "SQUARE");
		var px = fPlatoon2X + xAdj;
		var py = fPlatoon2Y + yAdj;
		if GetCell(px, py)
		{
			cellX = (px - oGrid.x) div oGrid.cellSize;
			cellY = (py - oGrid.y) div oGrid.cellSize;
			var nu = instance_create_layer(px, py, "Units", oFriend);
			fSquadP2a[| i] = nu;
			if i == 0 
			{ 
				fsquadLeadP2a = nu;
				nu.uIsSquadLead = true;
				nu.uSquadLead = nu;
				nu.findGoal = true;
			}
			else
			{
				nu.uSquadLead = fsquadLeadP2a;
				nu.uFollowTarget = fsquadLeadP2a;
				nu.uFollow = true;
			}
			nu.uFormationPosition = i;
			nu.uPlatoon = 2;
			nu.uSquad = "f2_A";
			nu.xAdj = xAdj;
			nu.yAdj = yAdj;
			nu.cellX = cellX;
			nu.cellY = cellY;
			mp_grid_add_cell(global.NavGrid, cellX, cellY);
		}
	}
	//Squad Bravo
	fPlatoon2X = room_width * 0.2;
	fPlatoon2Y = oGrid.max_y - (oGrid.cellSize * 6);
	for (var i = 0; i < squadSize; ++i)
	{
		GetFormationPosition(F_RIFLEMAN, i, "SQUARE");
		var px = fPlatoon2X + xAdj;
		var py = fPlatoon2Y + yAdj;
		if GetCell(px, py)
		{
			cellX = (px - oGrid.x) div oGrid.cellSize;
			cellY = (py - oGrid.y) div oGrid.cellSize;
			var nu = instance_create_layer(px, py, "Units", oFriend);
			fSquadP2b[| i] = nu;
			if i == 0 
			{ 
				fsquadLeadP2b = nu;
				nu.uIsSquadLead = true;
				nu.uSquadLead = nu;
				nu.findGoal = true;
			}
			else
			{
				nu.uSquadLead = fsquadLeadP2b;
				nu.uFollowTarget = fsquadLeadP2b;
				nu.uFollow = true;
			}
			nu.uFormationPosition = i;
			nu.uPlatoon = 2;
			nu.uSquad = "f2_B";
			nu.xAdj = xAdj;
			nu.yAdj = yAdj;
			nu.cellX = cellX;
			nu.cellY = cellY;
			mp_grid_add_cell(global.NavGrid, cellX, cellY);
		}
	}
	//Squad Charlie
	fPlatoon2X = room_width * 0.3;
	fPlatoon2Y = oGrid.max_y - (oGrid.cellSize * 6);
	for (var i = 0; i < squadSize; ++i)
	{
		GetFormationPosition(F_RIFLEMAN, i, "SQUARE");
		var px = fPlatoon2X + xAdj;
		var py = fPlatoon2Y + yAdj;
		if GetCell(px, py)
		{
			cellX = (px - oGrid.x) div oGrid.cellSize;
			cellY = (py - oGrid.y) div oGrid.cellSize;
			var nu = instance_create_layer(px, py, "Units", oFriend);
			fSquadP2c[| i] = nu;
			if i == 0 
			{ 
				fsquadLeadP2c = nu;
				nu.uIsSquadLead = true;
				nu.uSquadLead = nu;
				nu.findGoal = true;
			}
			else
			{
				nu.uSquadLead = fsquadLeadP2c;
				nu.uFollowTarget = fsquadLeadP2c;
				nu.uFollow = true;
			}
			nu.uFormationPosition = i;
			nu.uPlatoon = 2;
			nu.uSquad = "f2_C";
			nu.xAdj = xAdj;
			nu.yAdj = yAdj;
			nu.cellX = cellX;
			nu.cellY = cellY;
			mp_grid_add_cell(global.NavGrid, cellX, cellY);
		}
	}
	//Squad Delta
	fPlatoon2X = room_width * 0.15;
	fPlatoon2Y = oGrid.max_y - (oGrid.cellSize * 6);
	for (var i = 0; i < squadSize; ++i)
	{
		GetFormationPosition(F_RIFLEMAN, i, "SQUARE");
		var px = fPlatoon2X + xAdj;
		var py = fPlatoon2Y + yAdj;
		if GetCell(px, py)
		{
			cellX = (px - oGrid.x) div oGrid.cellSize;
			cellY = (py - oGrid.y) div oGrid.cellSize;
			var nu = instance_create_layer(px, py, "Units", oFriend);
			fSquadP2d[| i] = nu;
			if i == 0 
			{ 
				fsquadLeadP2d = nu;
				nu.uIsSquadLead = true;
				nu.uSquadLead = nu;
				nu.findGoal = true;
			}
			else
			{
				nu.uSquadLead = fsquadLeadP2d;
				nu.uFollowTarget = fsquadLeadP2d;
				nu.uFollow = true;
			}
			nu.uFormationPosition = i;
			nu.uPlatoon = 2;
			nu.uSquad = "f2_D";
			nu.xAdj = xAdj;
			nu.yAdj = yAdj;
			nu.cellX = cellX;
			nu.cellY = cellY;
			mp_grid_add_cell(global.NavGrid, cellX, cellY);
		}
	}
	//Squad Echo
	fPlatoon2X = room_width * 0.35;
	fPlatoon2Y = oGrid.max_y - (oGrid.cellSize * 6);
	for (var i = 0; i < squadSize; ++i)
	{
		GetFormationPosition(F_RIFLEMAN, i, "SQUARE");
		var px = fPlatoon2X + xAdj;
		var py = fPlatoon2Y + yAdj;
		if GetCell(px, py)
		{
			cellX = (px - oGrid.x) div oGrid.cellSize;
			cellY = (py - oGrid.y) div oGrid.cellSize;
			var nu = instance_create_layer(px, py, "Units", oFriend);
			fSquadP2e[| i] = nu;
			if i == 0 
			{ 
				fsquadLeadP2e = nu;
				nu.uIsSquadLead = true;
				nu.uSquadLead = nu;
				nu.findGoal = true;
			}
			else
			{
				nu.uSquadLead = fsquadLeadP2e;
				nu.uFollowTarget = fsquadLeadP2e;
				nu.uFollow = true;
			}
			nu.uFormationPosition = i;
			nu.uPlatoon = 2;
			nu.uSquad = "f2_E";
			nu.xAdj = xAdj;
			nu.yAdj = yAdj;
			nu.cellX = cellX;
			nu.cellY = cellY;
			mp_grid_add_cell(global.NavGrid, cellX, cellY);
		}
	}
}

//PLATOON 3
if createfPlatoon3
{
	createfPlatoon3 = false;
	//Squad Able
	var fPlatoon3X = room_width * 0.75;
	var fPlatoon3Y = oGrid.max_y - (oGrid.cellSize * 13);
	for (var i = 0; i < squadSize; ++i)
	{
		GetFormationPosition(F_RIFLEMAN, i, "SQUARE");
		var px = fPlatoon3X + xAdj;
		var py = fPlatoon3Y + yAdj;
		if GetCell(px, py)
		{
			cellX = (px - oGrid.x) div oGrid.cellSize;
			cellY = (py - oGrid.y) div oGrid.cellSize;
			var nu = instance_create_layer(px, py, "Units", oFriend);
			fSquadP3a[| i] = nu;
			if i == 0 
			{ 
				fsquadLeadP3a = nu;
				nu.uIsSquadLead = true;
				nu.uSquadLead = nu;
				nu.findGoal = true;
			}
			else
			{
				nu.uSquadLead = fsquadLeadP3a;
				nu.uFollowTarget = fsquadLeadP3a;
				nu.uFollow = true;
			}
			nu.uFormationPosition = i;
			nu.uPlatoon = 3;
			nu.uSquad = "f3_A";
			nu.xAdj = xAdj;
			nu.yAdj = yAdj;
			nu.cellX = cellX;
			nu.cellY = cellY;
			mp_grid_add_cell(global.NavGrid, cellX, cellY);
		}
	}
	//Squad Bravo
	fPlatoon3X = room_width * 0.7;
	fPlatoon3Y = oGrid.max_y - (oGrid.cellSize * 6);
	for (var i = 0; i < squadSize; ++i)
	{
		GetFormationPosition(F_RIFLEMAN, i, "SQUARE");
		var px = fPlatoon3X + xAdj;
		var py = fPlatoon3Y + yAdj;
		if GetCell(px, py)
		{
			cellX = (px - oGrid.x) div oGrid.cellSize;
			cellY = (py - oGrid.y) div oGrid.cellSize;
			var nu = instance_create_layer(px, py, "Units", oFriend);
			fSquadP3b[| i] = nu;
			if i == 0 
			{ 
				fsquadLeadP3b = nu;
				nu.uIsSquadLead = true;
				nu.uSquadLead = nu;
				nu.findGoal = true;
			}
			else
			{
				nu.uSquadLead = fsquadLeadP3b;
				nu.uFollowTarget = fsquadLeadP3b;
				nu.uFollow = true;
			}
			nu.uFormationPosition = i;
			nu.uPlatoon = 3;
			nu.uSquad = "f3_B";
			nu.xAdj = xAdj;
			nu.yAdj = yAdj;
			nu.cellX = cellX;
			nu.cellY = cellY;
			mp_grid_add_cell(global.NavGrid, cellX, cellY);
		}
	}
	//Squad Charlie
	fPlatoon3X = room_width * 0.8;
	fPlatoon3Y = oGrid.max_y - (oGrid.cellSize * 6);
	for (var i = 0; i < squadSize; ++i)
	{
		GetFormationPosition(F_RIFLEMAN, i, "SQUARE");
		var px = fPlatoon3X + xAdj;
		var py = fPlatoon3Y + yAdj;
		if GetCell(px, py)
		{
			cellX = (px - oGrid.x) div oGrid.cellSize;
			cellY = (py - oGrid.y) div oGrid.cellSize;
			var nu = instance_create_layer(px, py, "Units", oFriend);
			fSquadP3c[| i] = nu;
			if i == 0 
			{ 
				fsquadLeadP3c = nu;
				nu.uIsSquadLead = true;
				nu.uSquadLead = nu;
				nu.findGoal = true;
			}
			else
			{
				nu.uSquadLead = fsquadLeadP3c;
				nu.uFollowTarget = fsquadLeadP3c;
				nu.uFollow = true;
			}
			nu.uFormationPosition = i;
			nu.uPlatoon = 3;
			nu.uSquad = "f3_C";
			nu.xAdj = xAdj;
			nu.yAdj = yAdj;
			nu.cellX = cellX;
			nu.cellY = cellY;
			mp_grid_add_cell(global.NavGrid, cellX, cellY);
		}
	}
	//Squad Delta
	fPlatoon3X = room_width * 0.65;
	fPlatoon3Y = oGrid.max_y - (oGrid.cellSize * 6);
	for (var i = 0; i < squadSize; ++i)
	{
		GetFormationPosition(F_RIFLEMAN, i, "SQUARE");
		var px = fPlatoon3X + xAdj;
		var py = fPlatoon3Y + yAdj;
		if GetCell(px, py)
		{
			cellX = (px - oGrid.x) div oGrid.cellSize;
			cellY = (py - oGrid.y) div oGrid.cellSize;
			var nu = instance_create_layer(px, py, "Units", oFriend);
			fSquadP3d[| i] = nu;
			if i == 0 
			{ 
				fsquadLeadP3d = nu;
				nu.uIsSquadLead = true;
				nu.uSquadLead = nu;
				nu.findGoal = true;
			}
			else
			{
				nu.uSquadLead = fsquadLeadP3d;
				nu.uFollowTarget = fsquadLeadP3d;
				nu.uFollow = true;
			}
			nu.uFormationPosition = i;
			nu.uPlatoon = 3;
			nu.uSquad = "f3_D";
			nu.xAdj = xAdj;
			nu.yAdj = yAdj;
			nu.cellX = cellX;
			nu.cellY = cellY;
			mp_grid_add_cell(global.NavGrid, cellX, cellY);
		}
	}
	//Squad Echo
	fPlatoon3X = room_width * 0.85;
	fPlatoon3Y = oGrid.max_y - (oGrid.cellSize * 6);
	for (var i = 0; i < squadSize; ++i)
	{
		GetFormationPosition(F_RIFLEMAN, i, "SQUARE");
		var px = fPlatoon3X + xAdj;
		var py = fPlatoon3Y + yAdj;
		if GetCell(px, py)
		{
			cellX = (px - oGrid.x) div oGrid.cellSize;
			cellY = (py - oGrid.y) div oGrid.cellSize;
			var nu = instance_create_layer(px, py, "Units", oFriend);
			fSquadP3e[| i] = nu;
			if i == 0 
			{ 
				fsquadLeadP3e = nu;
				nu.uIsSquadLead = true;
				nu.uSquadLead = nu;
				nu.findGoal = true;
			}
			else
			{
				nu.uSquadLead = fsquadLeadP3e;
				nu.uFollowTarget = fsquadLeadP3e;
				nu.uFollow = true;
			}
			nu.uFormationPosition = i;
			nu.uPlatoon = 3;
			nu.uSquad = "f3_E";
			nu.xAdj = xAdj;
			nu.yAdj = yAdj;
			nu.cellX = cellX;
			nu.cellY = cellY;
			mp_grid_add_cell(global.NavGrid, cellX, cellY);
		}
	}
}

//TANK PLATOON
if createfPlatoonT
{
	createfPlatoonT = false;
	//Squad Able
	var fPlatoonTX = room_width * 0.5;
	var fPlatoonTY = oGrid.max_y - (oGrid.cellSize * 30);
	for (var i = 0; i < squadSizeT; ++i)
	{
		GetFormationPosition(F_TANK, i, "SQUARE");
		var px = fPlatoonTX + xAdj;
		var py = fPlatoonTY + yAdj;
		if GetCellArea(F_TANK, px, py)
		{
			cellX = (px - oGrid.x) div oGrid.cellSize;
			cellY = (py - oGrid.y) div oGrid.cellSize;
			var nu = instance_create_layer(px, py, "Units", oFriendTank);
			fSquadPTa[| i] = nu;
			if i == 0 
			{ 
				fsquadLeadPTa = nu;
				nu.uIsSquadLead = true;
				nu.uSquadLead = nu;
				nu.findGoal = true;

			}
			else
			{
				nu.uSquadLead = fsquadLeadPTa;
				nu.uFollowTarget = fsquadLeadPTa;
				nu.uFollow = true;
			}
			nu.uFormationPosition = i;
			nu.uPlatoon = 5;
			nu.uSquad = "fT_A";
			nu.xAdj = xAdj;
			nu.yAdj = yAdj;
			nu.cellX = cellX;
			nu.cellY = cellY;
			mp_grid_add_cell(global.NavGrid, cellX-1, cellY-1);
			mp_grid_add_cell(global.NavGrid, cellX, cellY-1);
			mp_grid_add_cell(global.NavGrid, cellX+1, cellY-1);
			mp_grid_add_cell(global.NavGrid, cellX-1, cellY);
			mp_grid_add_cell(global.NavGrid, cellX, cellY);
			mp_grid_add_cell(global.NavGrid, cellX+1, cellY);
			mp_grid_add_cell(global.NavGrid, cellX-1, cellY+1);
			mp_grid_add_cell(global.NavGrid, cellX, cellY+1);
			mp_grid_add_cell(global.NavGrid, cellX+1, cellY+1);
		}
	}
	//Squad Bravo
	fPlatoonTX = room_width * 0.4;
	fPlatoonTY = oGrid.max_y - (oGrid.cellSize * 24);
	for (var i = 0; i < squadSizeT; ++i)
	{
		GetFormationPosition(F_TANK, i, "SQUARE");
		var px = fPlatoonTX + xAdj;
		var py = fPlatoonTY + yAdj;
		if GetCellArea(F_TANK, px, py)
		{
			cellX = (px - oGrid.x) div oGrid.cellSize;
			cellY = (py - oGrid.y) div oGrid.cellSize;
			var nu = instance_create_layer(px, py, "Units", oFriendTank);
			fSquadPTb[| i] = nu;
			if i == 0 
			{ 
				fsquadLeadPTb = nu;
				nu.uIsSquadLead = true;
				nu.uSquadLead = nu;
				nu.findGoal = true;
			}
			else
			{
				nu.uSquadLead = fsquadLeadPTb;
				nu.uFollowTarget = fsquadLeadPTb;
				nu.uFollow = true;
			}
			nu.uFormationPosition = i;
			nu.uPlatoon = 5;
			nu.uSquad = "fT_B";
			nu.xAdj = xAdj;
			nu.yAdj = yAdj;
			nu.cellX = cellX;
			nu.cellY = cellY;
			mp_grid_add_cell(global.NavGrid, cellX-1, cellY-1);
			mp_grid_add_cell(global.NavGrid, cellX, cellY-1);
			mp_grid_add_cell(global.NavGrid, cellX+1, cellY-1);
			mp_grid_add_cell(global.NavGrid, cellX-1, cellY);
			mp_grid_add_cell(global.NavGrid, cellX, cellY);
			mp_grid_add_cell(global.NavGrid, cellX+1, cellY);
			mp_grid_add_cell(global.NavGrid, cellX-1, cellY+1);
			mp_grid_add_cell(global.NavGrid, cellX, cellY+1);
			mp_grid_add_cell(global.NavGrid, cellX+1, cellY+1);
		}
	}
	//Squad Charlie
	fPlatoonTX = room_width * 0.6;
	fPlatoonTY = oGrid.max_y - (oGrid.cellSize * 24);
	for (var i = 0; i < squadSizeT; ++i)
	{
		GetFormationPosition(F_TANK, i, "SQUARE");
		var px = fPlatoonTX + xAdj;
		var py = fPlatoonTY + yAdj;
		if GetCellArea(F_TANK, px, py)
		{
			cellX = (px - oGrid.x) div oGrid.cellSize;
			cellY = (py - oGrid.y) div oGrid.cellSize;
			var nu = instance_create_layer(px, py, "Units", oFriendTank);
			fSquadPTc[| i] = nu;
			if i == 0 
			{ 
				fsquadLeadPTc = nu;
				nu.uIsSquadLead = true;
				nu.uSquadLead = nu;
				nu.findGoal = true;
			}
			else
			{
				nu.uSquadLead = fsquadLeadPTc;
				nu.uFollowTarget = fsquadLeadPTc;
				nu.uFollow = true;
			}
			nu.uFormationPosition = i;
			nu.uPlatoon = 5;
			nu.uSquad = "fT_C";
			nu.xAdj = xAdj;
			nu.yAdj = yAdj;
			nu.cellX = cellX;
			nu.cellY = cellY;
			mp_grid_add_cell(global.NavGrid, cellX-1, cellY-1);
			mp_grid_add_cell(global.NavGrid, cellX, cellY-1);
			mp_grid_add_cell(global.NavGrid, cellX+1, cellY-1);
			mp_grid_add_cell(global.NavGrid, cellX-1, cellY);
			mp_grid_add_cell(global.NavGrid, cellX, cellY);
			mp_grid_add_cell(global.NavGrid, cellX+1, cellY);
			mp_grid_add_cell(global.NavGrid, cellX-1, cellY+1);
			mp_grid_add_cell(global.NavGrid, cellX, cellY+1);
			mp_grid_add_cell(global.NavGrid, cellX+1, cellY+1);
		}
	}
}

//Spawn Foe Platoons
//PLATOON 1 FOE
if createePlatoon1
{
	createePlatoon1 = false;
	//Squad Able
	var ePlatoon1X = room_width * 0.5;
	var ePlatoon1Y = oGrid.y + (oGrid.cellSize * 13);
	for (var i = 0; i < squadSize; ++i)
	{
		GetFormationPosition(E_RIFLEMAN, i, "SQUARE");
		var px = ePlatoon1X + xAdj;
		var py = ePlatoon1Y + yAdj;
		if GetCell(px, py)
		{
			cellX = (px - oGrid.x) div oGrid.cellSize;
			cellY = (py - oGrid.y) div oGrid.cellSize;
			var nu = instance_create_layer(px, py, "Units", oFoe);
			eSquadP1a[| i] = nu;
			if i == 0 
			{ 
				esquadLeadP1a = nu;
				nu.uIsSquadLead = true;
				nu.uSquadLead = nu;
				nu.findGoal = true;
			}
			else
			{
				nu.uSquadLead = esquadLeadP1a;
				nu.uFollowTarget = esquadLeadP1a;
				nu.uFollow = true;
			}
			nu.uFormationPosition = i;
			nu.uPlatoon = 1;
			nu.uSquad = "e1_A";
			nu.xAdj = xAdj;
			nu.yAdj = yAdj;
			nu.cellX = cellX;
			nu.cellY = cellY;
			mp_grid_add_cell(global.NavGrid, cellX, cellY);
		}
	}
	//Squad Bravo
	ePlatoon1X = room_width * 0.55;
	ePlatoon1Y = oGrid.y + (oGrid.cellSize * 6);
	for (var i = 0; i < squadSize; ++i)
	{
		GetFormationPosition(E_RIFLEMAN, i, "SQUARE");
		var px = ePlatoon1X + xAdj;
		var py = ePlatoon1Y + yAdj;
		if GetCell(px, py)
		{
			cellX = (px - oGrid.x) div oGrid.cellSize;
			cellY = (py - oGrid.y) div oGrid.cellSize;
			var nu = instance_create_layer(px, py, "Units", oFoe);
			eSquadP1b[| i] = nu;
			if i == 0 
			{ 
				esquadLeadP1b = nu;
				nu.uIsSquadLead = true;
				nu.uSquadLead = nu;
				nu.findGoal = true;
			}
			else
			{
				nu.uSquadLead = esquadLeadP1b;
				nu.uFollowTarget = esquadLeadP1b;
				nu.uFollow = true;
			}
			nu.uFormationPosition = i;
			nu.uPlatoon = 1;
			nu.uSquad = "e1_B";
			nu.xAdj = xAdj;
			nu.yAdj = yAdj;
			nu.cellX = cellX;
			nu.cellY = cellY;
			mp_grid_add_cell(global.NavGrid, cellX, cellY);
		}
	}
	//Squad Charlie
	ePlatoon1X = room_width * 0.45;
	ePlatoon1Y = oGrid.y + (oGrid.cellSize * 6);
	for (var i = 0; i < squadSize; ++i)
	{
		GetFormationPosition(E_RIFLEMAN, i, "SQUARE");
		var px = ePlatoon1X + xAdj;
		var py = ePlatoon1Y + yAdj;
		if GetCell(px, py)
		{
			cellX = (px - oGrid.x) div oGrid.cellSize;
			cellY = (py - oGrid.y) div oGrid.cellSize;
			var nu = instance_create_layer(px, py, "Units", oFoe);
			eSquadP1c[| i] = nu;
			if i == 0 
			{ 
				esquadLeadP1c = nu;
				nu.uIsSquadLead = true;
				nu.uSquadLead = nu;
				nu.findGoal = true;
			}
			else
			{
				nu.uSquadLead = esquadLeadP1c;
				nu.uFollowTarget = esquadLeadP1c;
				nu.uFollow = true;
			}
			nu.uFormationPosition = i;
			nu.uPlatoon = 1;
			nu.uSquad = "e1_C";
			nu.xAdj = xAdj;
			nu.yAdj = yAdj;
			nu.cellX = cellX;
			nu.cellY = cellY;
			mp_grid_add_cell(global.NavGrid, cellX, cellY);
		}
	}
	//Squad Delta
	ePlatoon1X = room_width * 0.6;
	ePlatoon1Y = oGrid.y + (oGrid.cellSize * 6);
	for (var i = 0; i < squadSize; ++i)
	{
		GetFormationPosition(E_RIFLEMAN, i, "SQUARE");
		var px = ePlatoon1X + xAdj;
		var py = ePlatoon1Y + yAdj;
		if GetCell(px, py)
		{
			cellX = (px - oGrid.x) div oGrid.cellSize;
			cellY = (py - oGrid.y) div oGrid.cellSize;
			var nu = instance_create_layer(px, py, "Units", oFoe);
			eSquadP1d[| i] = nu;
			if i == 0 
			{ 
				esquadLeadP1d = nu;
				nu.uIsSquadLead = true;
				nu.uSquadLead = nu;
				nu.findGoal = true;
			}
			else
			{
				nu.uSquadLead = esquadLeadP1d;
				nu.uFollowTarget = esquadLeadP1d;
				nu.uFollow = true;
			}
			nu.uFormationPosition = i;
			nu.uPlatoon = 1;
			nu.uSquad = "e1_D";
			nu.xAdj = xAdj;
			nu.yAdj = yAdj;
			nu.cellX = cellX;
			nu.cellY = cellY;
			mp_grid_add_cell(global.NavGrid, cellX, cellY);
		}
	}
	//Squad Echo
	ePlatoon1X = room_width * 0.4;
	ePlatoon1Y = oGrid.y + (oGrid.cellSize * 6);
	for (var i = 0; i < squadSize; ++i)
	{
		GetFormationPosition(E_RIFLEMAN, i, "SQUARE");
		var px = ePlatoon1X + xAdj;
		var py = ePlatoon1Y + yAdj;
		if GetCell(px, py)
		{
			cellX = (px - oGrid.x) div oGrid.cellSize;
			cellY = (py - oGrid.y) div oGrid.cellSize;
			var nu = instance_create_layer(px, py, "Units", oFoe);
			eSquadP1e[| i] = nu;
			if i == 0 
			{ 
				esquadLeadP1e = nu;
				nu.uIsSquadLead = true;
				nu.uSquadLead = nu;
				nu.findGoal = true;
			}
			else
			{
				nu.uSquadLead = esquadLeadP1e;
				nu.uFollowTarget = esquadLeadP1e;
				nu.uFollow = true;
			}
			nu.uFormationPosition = i;
			nu.uPlatoon = 1;
			nu.uSquad = "e1_E";
			nu.xAdj = xAdj;
			nu.yAdj = yAdj;
			nu.cellX = cellX;
			nu.cellY = cellY;
			mp_grid_add_cell(global.NavGrid, cellX, cellY);
		}
	}
}

//PLATOON 2 FOE
if createePlatoon2
{
	createePlatoon2 = false;
	//Squad Able
	var ePlatoon2X = room_width * 0.75;
	var ePlatoon2Y = oGrid.y + (oGrid.cellSize * 13);
	for (var i = 0; i < squadSize; ++i)
	{
		GetFormationPosition(E_RIFLEMAN, i, "SQUARE");
		var px = ePlatoon2X + xAdj;
		var py = ePlatoon2Y + yAdj;
		if GetCell(px, py)
		{
			cellX = (px - oGrid.x) div oGrid.cellSize;
			cellY = (py - oGrid.y) div oGrid.cellSize;
			var nu = instance_create_layer(px, py, "Units", oFoe);
			eSquadP2a[| i] = nu;
			if i == 0 
			{ 
				esquadLeadP2a = nu;
				nu.uIsSquadLead = true;
				nu.uSquadLead = nu;
				nu.findGoal = true;
			}
			else
			{
				nu.uSquadLead = esquadLeadP2a;
				nu.uFollowTarget = esquadLeadP2a;
				nu.uFollow = true;
			}
			nu.uFormationPosition = i;
			nu.uPlatoon = 2;
			nu.uSquad = "e2_A";
			nu.xAdj = xAdj;
			nu.yAdj = yAdj;
			nu.cellX = cellX;
			nu.cellY = cellY;
			mp_grid_add_cell(global.NavGrid, cellX, cellY);
		}
	}
	//Squad Bravo
	ePlatoon2X = room_width * 0.8;
	ePlatoon2Y = oGrid.y + (oGrid.cellSize * 6);
	for (var i = 0; i < squadSize; ++i)
	{
		GetFormationPosition(E_RIFLEMAN, i, "SQUARE");
		var px = ePlatoon2X + xAdj;
		var py = ePlatoon2Y + yAdj;
		if GetCell(px, py)
		{
			cellX = (px - oGrid.x) div oGrid.cellSize;
			cellY = (py - oGrid.y) div oGrid.cellSize;
			var nu = instance_create_layer(px, py, "Units", oFoe);
			eSquadP2b[| i] = nu;
			if i == 0 
			{ 
				esquadLeadP2b = nu;
				nu.uIsSquadLead = true;
				nu.uSquadLead = nu;
				nu.findGoal = true;
			}
			else
			{
				nu.uSquadLead = esquadLeadP2b;
				nu.uFollowTarget = esquadLeadP2b;
				nu.uFollow = true;
			}
			nu.uFormationPosition = i;
			nu.uPlatoon = 2;
			nu.uSquad = "e2_B";
			nu.xAdj = xAdj;
			nu.yAdj = yAdj;
			nu.cellX = cellX;
			nu.cellY = cellY;
			mp_grid_add_cell(global.NavGrid, cellX, cellY);
		}
	}
	//Squad Charlie
	ePlatoon2X = room_width * 0.7;
	ePlatoon2Y = oGrid.y + (oGrid.cellSize * 6);
	for (var i = 0; i < squadSize; ++i)
	{
		GetFormationPosition(E_RIFLEMAN, i, "SQUARE");
		var px = ePlatoon2X + xAdj;
		var py = ePlatoon2Y + yAdj;
		if GetCell(px, py)
		{
			cellX = (px - oGrid.x) div oGrid.cellSize;
			cellY = (py - oGrid.y) div oGrid.cellSize;
			var nu = instance_create_layer(px, py, "Units", oFoe);
			eSquadP2c[| i] = nu;
			if i == 0 
			{ 
				esquadLeadP2c = nu;
				nu.uIsSquadLead = true;
				nu.uSquadLead = nu;
				nu.findGoal = true;
			}
			else
			{
				nu.uSquadLead = esquadLeadP2c;
				nu.uFollowTarget = esquadLeadP2c;
				nu.uFollow = true;
			}
			nu.uFormationPosition = i;
			nu.uPlatoon = 2;
			nu.uSquad = "e2_C";
			nu.xAdj = xAdj;
			nu.yAdj = yAdj;
			nu.cellX = cellX;
			nu.cellY = cellY;
			mp_grid_add_cell(global.NavGrid, cellX, cellY);
		}
	}
	//Squad Delta
	ePlatoon2X = room_width * 0.85;
	ePlatoon2Y = oGrid.y + (oGrid.cellSize * 6);
	for (var i = 0; i < squadSize; ++i)
	{
		GetFormationPosition(E_RIFLEMAN, i, "SQUARE");
		var px = ePlatoon2X + xAdj;
		var py = ePlatoon2Y + yAdj;
		if GetCell(px, py)
		{
			cellX = (px - oGrid.x) div oGrid.cellSize;
			cellY = (py - oGrid.y) div oGrid.cellSize;
			var nu = instance_create_layer(px, py, "Units", oFoe);
			eSquadP2d[| i] = nu;
			if i == 0 
			{ 
				esquadLeadP2d = nu;
				nu.uIsSquadLead = true;
				nu.uSquadLead = nu;
				nu.findGoal = true;
			}
			else
			{
				nu.uSquadLead = esquadLeadP2d;
				nu.uFollowTarget = esquadLeadP2d;
				nu.uFollow = true;
			}
			nu.uFormationPosition = i;
			nu.uPlatoon = 2;
			nu.uSquad = "e2_D";
			nu.xAdj = xAdj;
			nu.yAdj = yAdj;
			nu.cellX = cellX;
			nu.cellY = cellY;
			mp_grid_add_cell(global.NavGrid, cellX, cellY);
		}
	}
	//Squad Echo
	ePlatoon2X = room_width * 0.65;
	ePlatoon2Y = oGrid.y + (oGrid.cellSize * 6);
	for (var i = 0; i < squadSize; ++i)
	{
		GetFormationPosition(E_RIFLEMAN, i, "SQUARE");
		var px = ePlatoon2X + xAdj;
		var py = ePlatoon2Y + yAdj;
		if GetCell(px, py)
		{
			cellX = (px - oGrid.x) div oGrid.cellSize;
			cellY = (py - oGrid.y) div oGrid.cellSize;
			var nu = instance_create_layer(px, py, "Units", oFoe);
			eSquadP2e[| i] = nu;
			if i == 0 
			{ 
				esquadLeadP2e = nu;
				nu.uIsSquadLead = true;
				nu.uSquadLead = nu;
				nu.findGoal = true;
			}
			else
			{
				nu.uSquadLead = esquadLeadP2e;
				nu.uFollowTarget = esquadLeadP2e;
				nu.uFollow = true;
			}
			nu.uFormationPosition = i;
			nu.uPlatoon = 2;
			nu.uSquad = "e2_E";
			nu.xAdj = xAdj;
			nu.yAdj = yAdj;
			nu.cellX = cellX;
			nu.cellY = cellY;
			mp_grid_add_cell(global.NavGrid, cellX, cellY);
		}
	}
}

//PLATOON 3 FOE
if createePlatoon3
{
	createePlatoon3 = false;
	//Squad Able
	var ePlatoon3X = room_width * 0.25;
	var ePlatoon3Y = oGrid.y + (oGrid.cellSize * 13);
	for (var i = 0; i < squadSize; ++i)
	{
		GetFormationPosition(E_RIFLEMAN, i, "SQUARE");
		var px = ePlatoon3X + xAdj;
		var py = ePlatoon3Y + yAdj;
		if GetCell(px, py)
		{
			cellX = (px - oGrid.x) div oGrid.cellSize;
			cellY = (py - oGrid.y) div oGrid.cellSize;
			var nu = instance_create_layer(px, py, "Units", oFoe);
			eSquadP3a[| i] = nu;
			if i == 0 
			{ 
				esquadLeadP3a = nu;
				nu.uIsSquadLead = true;
				nu.uSquadLead = nu;
				nu.findGoal = true;
			}
			else
			{
				nu.uSquadLead = esquadLeadP3a;
				nu.uFollowTarget = esquadLeadP3a;
				nu.uFollow = true;
			}
			nu.uFormationPosition = i;
			nu.uPlatoon = 3;
			nu.uSquad = "e3_A";
			nu.xAdj = xAdj;
			nu.yAdj = yAdj;
			nu.cellX = cellX;
			nu.cellY = cellY;
			mp_grid_add_cell(global.NavGrid, cellX, cellY);
		}
	}
	//Squad Bravo
	ePlatoon3X = room_width * 0.3;
	ePlatoon3Y = oGrid.y + (oGrid.cellSize * 6);
	for (var i = 0; i < squadSize; ++i)
	{
		GetFormationPosition(E_RIFLEMAN, i, "SQUARE");
		var px = ePlatoon3X + xAdj;
		var py = ePlatoon3Y + yAdj;
		if GetCell(px, py)
		{
			cellX = (px - oGrid.x) div oGrid.cellSize;
			cellY = (py - oGrid.y) div oGrid.cellSize;
			var nu = instance_create_layer(px, py, "Units", oFoe);
			eSquadP3b[| i] = nu;
			if i == 0 
			{ 
				esquadLeadP3b = nu;
				nu.uIsSquadLead = true;
				nu.uSquadLead = nu;
				nu.findGoal = true;
			}
			else
			{
				nu.uSquadLead = esquadLeadP3b;
				nu.uFollowTarget = esquadLeadP3b;
				nu.uFollow = true;
			}
			nu.uFormationPosition = i;
			nu.uPlatoon = 3;
			nu.uSquad = "e3_B";
			nu.xAdj = xAdj;
			nu.yAdj = yAdj;
			nu.cellX = cellX;
			nu.cellY = cellY;
			mp_grid_add_cell(global.NavGrid, cellX, cellY);
		}
	}
	//Squad Charlie
	ePlatoon3X = room_width * 0.2;
	ePlatoon3Y = oGrid.y + (oGrid.cellSize * 6);
	for (var i = 0; i < squadSize; ++i)
	{
		GetFormationPosition(E_RIFLEMAN, i, "SQUARE");
		var px = ePlatoon3X + xAdj;
		var py = ePlatoon3Y + yAdj;
		if GetCell(px, py)
		{
			cellX = (px - oGrid.x) div oGrid.cellSize;
			cellY = (py - oGrid.y) div oGrid.cellSize;
			var nu = instance_create_layer(px, py, "Units", oFoe);
			eSquadP3c[| i] = nu;
			if i == 0 
			{ 
				esquadLeadP3c = nu;
				nu.uIsSquadLead = true;
				nu.uSquadLead = nu;
				nu.findGoal = true;
			}
			else
			{
				nu.uSquadLead = esquadLeadP3c;
				nu.uFollowTarget = esquadLeadP3c;
				nu.uFollow = true;
			}
			nu.uFormationPosition = i;
			nu.uPlatoon = 3;
			nu.uSquad = "e3_C";
			nu.xAdj = xAdj;
			nu.yAdj = yAdj;
			nu.cellX = cellX;
			nu.cellY = cellY;
			mp_grid_add_cell(global.NavGrid, cellX, cellY);
		}
	}
	//Squad Delta
	ePlatoon3X = room_width * 0.35;
	ePlatoon3Y = oGrid.y + (oGrid.cellSize * 6);
	for (var i = 0; i < squadSize; ++i)
	{
		GetFormationPosition(E_RIFLEMAN, i, "SQUARE");
		var px = ePlatoon3X + xAdj;
		var py = ePlatoon3Y + yAdj;
		if GetCell(px, py)
		{
			cellX = (px - oGrid.x) div oGrid.cellSize;
			cellY = (py - oGrid.y) div oGrid.cellSize;
			var nu = instance_create_layer(px, py, "Units", oFoe);
			eSquadP3d[| i] = nu;
			if i == 0 
			{ 
				esquadLeadP3d = nu;
				nu.uIsSquadLead = true;
				nu.uSquadLead = nu;
				nu.findGoal = true;
			}
			else
			{
				nu.uSquadLead = esquadLeadP3d;
				nu.uFollowTarget = esquadLeadP3d;
				nu.uFollow = true;
			}
			nu.uFormationPosition = i;
			nu.uPlatoon = 3;
			nu.uSquad = "e3_D";
			nu.xAdj = xAdj;
			nu.yAdj = yAdj;
			nu.cellX = cellX;
			nu.cellY = cellY;
			mp_grid_add_cell(global.NavGrid, cellX, cellY);
		}
	}
	//Squad Echo
	ePlatoon3X = room_width * 0.15;
	ePlatoon3Y = oGrid.y + (oGrid.cellSize * 6);
	for (var i = 0; i < squadSize; ++i)
	{
		GetFormationPosition(E_RIFLEMAN, i, "SQUARE");
		var px = ePlatoon3X + xAdj;
		var py = ePlatoon3Y + yAdj;
		if GetCell(px, py)
		{
			cellX = (px - oGrid.x) div oGrid.cellSize;
			cellY = (py - oGrid.y) div oGrid.cellSize;
			var nu = instance_create_layer(px, py, "Units", oFoe);
			eSquadP3e[| i] = nu;
			if i == 0 
			{ 
				esquadLeadP3e = nu;
				nu.uIsSquadLead = true;
				nu.uSquadLead = nu;
				nu.findGoal = true;
			}
			else
			{
				nu.uSquadLead = esquadLeadP3e;
				nu.uFollowTarget = esquadLeadP3e;
				nu.uFollow = true;
			}
			nu.uFormationPosition = i;
			nu.uPlatoon = 3;
			nu.uSquad = "e3_E";
			nu.xAdj = xAdj;
			nu.yAdj = yAdj;
			nu.cellX = cellX;
			nu.cellY = cellY;
			mp_grid_add_cell(global.NavGrid, cellX, cellY);
		}
	}
}

//TANK PLATOON
if createePlatoonT
{
	createePlatoonT = false;
	//Squad Able
	var ePlatoonTX = room_width * 0.5;
	var ePlatoonTY = oGrid.y + (oGrid.cellSize * 30);
	for (var i = 0; i < squadSizeT; ++i)
	{
		GetFormationPosition(E_TANK, i, "SQUARE");
		var px = ePlatoonTX + xAdj;
		var py = ePlatoonTY + yAdj;
		if GetCellArea(E_TANK, px, py)
		{
			cellX = (px - oGrid.x) div oGrid.cellSize;
			cellY = (py - oGrid.y) div oGrid.cellSize;
			var nu = instance_create_layer(px, py, "Units", oFoeTank);
			eSquadPTa[| i] = nu;
			if i == 0 
			{ 
				esquadLeadPTa = nu;
				nu.uIsSquadLead = true;
				nu.uSquadLead = nu;
				nu.findGoal = true;

			}
			else
			{
				nu.uSquadLead = esquadLeadPTa;
				nu.uFollowTarget = esquadLeadPTa;
				nu.uFollow = true;
			}
			nu.uFormationPosition = i;
			nu.uPlatoon = 5;
			nu.uSquad = "eT_A";
			nu.xAdj = xAdj;
			nu.yAdj = yAdj;
			nu.cellX = cellX;
			nu.cellY = cellY;
			mp_grid_add_cell(global.NavGrid, cellX-1, cellY-1);
			mp_grid_add_cell(global.NavGrid, cellX, cellY-1);
			mp_grid_add_cell(global.NavGrid, cellX+1, cellY-1);
			mp_grid_add_cell(global.NavGrid, cellX-1, cellY);
			mp_grid_add_cell(global.NavGrid, cellX, cellY);
			mp_grid_add_cell(global.NavGrid, cellX+1, cellY);
			mp_grid_add_cell(global.NavGrid, cellX-1, cellY+1);
			mp_grid_add_cell(global.NavGrid, cellX, cellY+1);
			mp_grid_add_cell(global.NavGrid, cellX+1, cellY+1);
		}
	}
	//Squad Bravo
	ePlatoonTX = room_width * 0.6;
	ePlatoonTY = oGrid.y + (oGrid.cellSize * 24);
	for (var i = 0; i < squadSizeT; ++i)
	{
		GetFormationPosition(E_TANK, i, "SQUARE");
		var px = ePlatoonTX + xAdj;
		var py = ePlatoonTY + yAdj;
		if GetCellArea(E_TANK, px, py)
		{
			cellX = (px - oGrid.x) div oGrid.cellSize;
			cellY = (py - oGrid.y) div oGrid.cellSize;
			var nu = instance_create_layer(px, py, "Units", oFoeTank);
			eSquadPTb[| i] = nu;
			if i == 0 
			{ 
				esquadLeadPTb = nu;
				nu.uIsSquadLead = true;
				nu.uSquadLead = nu;
				nu.findGoal = true;
			}
			else
			{
				nu.uSquadLead = esquadLeadPTb;
				nu.uFollowTarget = esquadLeadPTb;
				nu.uFollow = true;
			}
			nu.uFormationPosition = i;
			nu.uPlatoon = 5;
			nu.uSquad = "eT_B";
			nu.xAdj = xAdj;
			nu.yAdj = yAdj;
			nu.cellX = cellX;
			nu.cellY = cellY;
			mp_grid_add_cell(global.NavGrid, cellX-1, cellY-1);
			mp_grid_add_cell(global.NavGrid, cellX, cellY-1);
			mp_grid_add_cell(global.NavGrid, cellX+1, cellY-1);
			mp_grid_add_cell(global.NavGrid, cellX-1, cellY);
			mp_grid_add_cell(global.NavGrid, cellX, cellY);
			mp_grid_add_cell(global.NavGrid, cellX+1, cellY);
			mp_grid_add_cell(global.NavGrid, cellX-1, cellY+1);
			mp_grid_add_cell(global.NavGrid, cellX, cellY+1);
			mp_grid_add_cell(global.NavGrid, cellX+1, cellY+1);
		}
	}
	//Squad Charlie
	ePlatoonTX = room_width * 0.4;
	ePlatoonTY = oGrid.y + (oGrid.cellSize * 24);
	for (var i = 0; i < squadSizeT; ++i)
	{
		GetFormationPosition(E_TANK, i, "SQUARE");
		var px = ePlatoonTX + xAdj;
		var py = ePlatoonTY + yAdj;
		if GetCellArea(E_TANK, px, py)
		{
			cellX = (px - oGrid.x) div oGrid.cellSize;
			cellY = (py - oGrid.y) div oGrid.cellSize;
			var nu = instance_create_layer(px, py, "Units", oFoeTank);
			eSquadPTc[| i] = nu;
			if i == 0 
			{ 
				esquadLeadPTc = nu;
				nu.uIsSquadLead = true;
				nu.uSquadLead = nu;
				nu.findGoal = true;
			}
			else
			{
				nu.uSquadLead = esquadLeadPTc;
				nu.uFollowTarget = esquadLeadPTc;
				nu.uFollow = true;
			}
			nu.uFormationPosition = i;
			nu.uPlatoon = 5;
			nu.uSquad = "eT_C";
			nu.xAdj = xAdj;
			nu.yAdj = yAdj;
			nu.cellX = cellX;
			nu.cellY = cellY;
			mp_grid_add_cell(global.NavGrid, cellX-1, cellY-1);
			mp_grid_add_cell(global.NavGrid, cellX, cellY-1);
			mp_grid_add_cell(global.NavGrid, cellX+1, cellY-1);
			mp_grid_add_cell(global.NavGrid, cellX-1, cellY);
			mp_grid_add_cell(global.NavGrid, cellX, cellY);
			mp_grid_add_cell(global.NavGrid, cellX+1, cellY);
			mp_grid_add_cell(global.NavGrid, cellX-1, cellY+1);
			mp_grid_add_cell(global.NavGrid, cellX, cellY+1);
			mp_grid_add_cell(global.NavGrid, cellX+1, cellY+1);
		}
	}
}
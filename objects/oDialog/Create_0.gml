global.DialogList = ds_list_create();

GenerateNames();
GenerateTraits();

menuSurf = -1;

menuActive = false;
menuLevel = 0;

menuX = 0;
menuY = 0;

menuList = ds_list_create();

menuCellw = MENUCELL_W;
menuCellh = MENUCELL_H;

menuCellmx = menuCellw * 0.5;//Cell middle x
menuCellmy = menuCellh * 0.5;//Cell middle y

menuWidth  = menuCellw;//Menu total width
menuHeight = menuCellh;//Menu total height

menuScalex = menuWidth / sprite_get_width(sUIa);//UI sprite scale x
menuScaley = menuCellh / sprite_get_height(sUIa);//UI sprite scale y

menuRatio = 0;//Menu size ratio

textHeader = "Action Menu";

touchHeader = false;
touchButton = false;



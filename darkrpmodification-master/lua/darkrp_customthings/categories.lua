--[[-----------------------------------------------------------------------
Categories
---------------------------------------------------------------------------
The categories of the default F4 menu.

Please read this page for more information:
http://wiki.darkrp.com/index.php/DarkRP:Categories

In case that page can't be reached, here's an example with explanation:

DarkRP.createCategory{
    name = "Citizens", -- The name of the category.
    categorises = "jobs", -- What it categorises. MUST be one of "jobs", "entities", "shipments", "weapons", "vehicles", "ammo".
    startExpanded = true, -- Whether the category is expanded when you open the F4 menu.
    color = Color(0, 107, 0, 255), -- The color of the category header.
    canSee = function(ply) return true end, -- OPTIONAL: whether the player can see this category AND EVERYTHING IN IT.
    sortOrder = 100, -- OPTIONAL: With this you can decide where your category is. Low numbers to put it on top, high numbers to put it on the bottom. It's 100 by default.
}


Add new categories under the next line!
---------------------------------------------------------------------------]]
DarkRP.createCategory{
    name = "Clone Troopers",
    categorises = "jobs",
    startExpanded = true,
    color = Color(222, 67, 255),
    sortOrder = 1,
}
DarkRP.createCategory{
    name = "501st", 
    categorises = "jobs",
    startExpanded = true,
    color = Color(107, 0, 255),
    sortOrder = 2, 
}
DarkRP.createCategory{
    name = "187th", 
    categorises = "jobs",
    startExpanded = true,
    color = Color(146, 0, 214),
    sortOrder = 3, 
}
DarkRP.createCategory{
    name = "91st Reconnaissance Corps", 
    categorises = "jobs",
    startExpanded = true,
    color = Color(171, 2, 69),
    sortOrder = 4, 
}
DarkRP.createCategory{
    name = "5th Fleet Security", 
    categorises = "jobs",
    startExpanded = true,
    color = Color(3, 7, 128),
    sortOrder = 5, 
}
DarkRP.createCategory{
    name = "Bad Batch", 
    categorises = "jobs",
    startExpanded = true,
    color = Color(107, 90, 92),
    sortOrder = 6, 
}
DarkRP.createCategory{
    name = "Naval Personnel", 
    categorises = "jobs",
    startExpanded = true,
    color = Color(115, 115, 115),
    sortOrder = 7, 
}
DarkRP.createCategory{
    name = "Vixen Squadron", 
    categorises = "jobs",
    startExpanded = true,
    color = Color(115, 115, 115),
    sortOrder = 8, 
}
DarkRP.createCategory{
    name = "High Command", 
    categorises = "jobs",
    startExpanded = true,
    color = Color(107, 0, 255),
    sortOrder = 9, 
}
DarkRP.createCategory{
    name = "Event Jobs", 
    categorises = "jobs",
    startExpanded = true,
    color = Color(107, 0, 255),
    sortOrder = 10, 
}
DarkRP.createCategory{
    name = "Staff", 
    categorises = "jobs",
    startExpanded = true,
    color = Color(107, 0, 255),
    sortOrder = 11, 
}
DarkRP.createCategory{
    name = "Equipment", 
    categorises = "entities",
    startExpanded = true,
    color = Color(107, 0, 255),
    sortOrder = 1, 
}
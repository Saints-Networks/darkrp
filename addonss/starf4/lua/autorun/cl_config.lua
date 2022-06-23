StarHUD = StarHUD or {}
-------------------------------------------

function StarHUD.InitConfig()
-------------------------------------------
--ENGLISH
local English = {}

English["Title"] = "F4 Menu"
--
English["Jobs"] = "Jobs"
English["Weapons"] = "Weapons"
English["Ammo"] = "Ammo"
English["Shipments"] = "Shipments"
English["Entities"] = "Entities"
--
English["Job Title"] = "Job Title"
English["Job Description"] = "Job Description"
English["Job Weapons"] = "Job Weapons"

English["Colour"] = "Colour"
English["Salary"] = "Salary"
--
StarHUD.language.Reg( "English", English )
-----------------------------------------------------
--FRENCH
local French = {}

French["Title"] = "F4 Menu"
--
French["Jobs"] = "Emplois"
French["Weapons"] = "Armes"
French["Ammo"] = "Munitions"
French["Shipments"] = "Livraisons"
French["Entities"] = "Entités"
--
French["Job Title"] = "Profession"
French["Job Description"] = "Description de l'emploi"
French["Job Weapons"] = "Armes équipées"

French["Colour"] = "Couleur"
French["Salary"] = "Un salaire"
--
StarHUD.language.Reg( "French", French )
-----------------------------------------------------
--Spanish
local Spanish = {}

Spanish["Title"] = "F4 Menú"
--
Spanish["Jobs"] = "Trabajos"
Spanish["Weapons"] = "Armas"
Spanish["Ammo"] = "Munición"
Spanish["Shipments"] = "Envíos"
Spanish["Entities"] = "Entidades"
--
Spanish["Job Title"] = "Título profesional"
Spanish["Job Description"] = "Descripción del trabajo"
Spanish["Job Weapons"] = "Armas de trabajo"

Spanish["Colour"] = "Color"
Spanish["Salary"] = "Salario"
--
StarHUD.language.Reg( "Spanish", Spanish )
-----------------------------------------------------
--Russian
local Russian = {}

Russian["Title"] = "Меню F4"
--
Russian["Jobs"] = "работы"
Russian["Weapons"] = "оружие"
Russian["Ammo"] = "боеприпасы"
Russian["Shipments"] = "Отгрузки"
Russian["Entities"] = "Предметы"
--
Russian["Job Title"] = "Название работы"
Russian["Job Description"] = "Описание вакансии"
Russian["Job Weapons"] = "Оборудовано оружием"

Russian["Colour"] = "Цвет"
Russian["Salary"] = "Зарплата"
--
StarHUD.language.Reg( "Russian", Russian )
-----------------------------------------------------
end
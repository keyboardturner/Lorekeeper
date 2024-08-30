local _, LK = ...; -- Let's use the private table passed to every .lua

--Purposeful global variable so plugins and other addons can access
Lorekeeper_API = {}
Lorekeeper_API.LK = LK

local function defaultFunc(L, key)
 -- If this function was called, we have no localization for this key.
 -- We could complain loudly to allow localizers to see the error of their ways, 
 -- but, for now, just return the key as its own localization. This allows you to—avoid writing the default localization out explicitly.
 return key;
end
setmetatable(LK, {__index=defaultFunc});

local LOCALE = GetLocale()

if LOCALE == "enUS" then
	-- The EU English game client also
	-- uses the US English locale code.
	LK["Lorekeeper"] = "Lorekeeper"
	LK["LoreKeeperMinMap"] = "Click to toggle Lorekeeper journal."
	LK["LoreKIntro"] = "Type /lorekeeper to open the journal."
	LK["SlashLoreK1"] = "lorekeeper"
	LK["SlashLoreK2"] = "lorek"
	LK["ReplaceMats"] = "Replace Materials"
	LK["ReplaceMatsTT"] = "The background material will be replaced, providing different background options than the default parchment."
	LK["FogOfLore"] = "Fog of Lore"
	LK["FogOfLoreTT"] = "Reveal document text only after having read the item."
	LK["SlashRead"] = "Play '/Read' Emote"
	LK["SlashReadTT"] = "Upon opening Lorekeeper, have your character play the /read emote."
	LK["Debug"] = "Debug Mode"
	LK["DebugTT"] = "Include extra debug information (this may be spammy)."
	LK["Library"] = "Library"
	LK["Mail"] = MAIL_LABEL
	LK["Settings"] = SETTINGS
	LK["DeleteAll"] = "Delete All Copies"
	LK["DeleteAllConfirm"] = "Are you sure you want to delete all saved versions for this entry? This cannot be undone."
	LK["NotYetAvailable"] = FEATURE_NOT_YET_AVAILABLE
	LK["AddonDisabled"] = "Plugin AddOn is disabled."
	LK["ColorPicker"] = COLOR_PICKER
	LK["SampleText"] = [[
<html>
<body>
<br />
<h1 align="center">Header 1</h1>
<p>This is a paragraph under header 1.</p>
<h2 align="right">Header 2</h2>
<p>This is a paragraph under header 2.</p>
<h3>Header 3</h3>
<p>This is a paragraph under header 3.</p>
<p align="center">This paragraph is centered under header 3.</p>
</body>
</html>
]]
	LK["SampleTitle"] = "Placeholder Title"
	LK["TextMaterial"] = "Material"
	LK["Title"] = "Title"
	LK["TitleText"] = "Title Text"
	LK["Header1"] = "Header 1"
	LK["Header2"] = "Header 2"
	LK["Header3"] = "Header 3"
	LK["Paragraph"] = "Paragraph"
	LK["Textures"] = TEXTURES_SUBHEADER
	LK["FontSize"] = FONT_SIZE
	LK["Quests"] = QUESTS_LABEL
	LK["Campaign"] = QUEST_CLASSIFICATION_CAMPAIGN
	LK["Professions"] = TRADE_SKILLS
	LK["Misc"] = MISCELLANEOUS
	LK["ListOfCmds"] = "List of Commands: "
	LK["help"] = "help"
	LK["show"] = "show"
	LK["filter"] = FILTER
	LK["SetFavorite"] = TRANSMOG_ITEM_SET_FAVORITE
	LK["UnsetFavorite"] = TRANSMOG_ITEM_UNSET_FAVORITE
	LK["Hide"] = HIDE
	LK["Show"] = SHOW
	LK["Collected"] = COLLECTED
	LK["NotCollected"] = NOT_COLLECTED
	LK["Hidden"] = "Hidden"
	LK["ClassRestricted"] = "Class Restricted"
	LK["Unobtainable"] = "Unobtainable"

return end

if LOCALE == "esES" or LOCALE == "esMX" then
	-- Spanish translations go here
	LK["Lorekeeper"] = "Lorekeeper"
	LK["LoreKeeperMinMap"] = "Haz clic para alternar el diario del Lorekeeper."
	LK["LoreKIntro"] = "Escribe /lorekeeper para abrir el diario."
	LK["SlashLoreK1"] = "lorekeeper"
	LK["SlashLoreK2"] = "lorek"
	LK["ReplaceMats"] = "Reemplazar Materiales"
	LK["ReplaceMatsTT"] = "El material de fondo se reemplazará, proporcionando diferentes opciones de fondo además del pergamino predeterminado."
	LK["FogOfLore"] = "Niebla del Saber"
	LK["FogOfLoreTT"] = "Revelar el texto del documento solo después de haber leído el artículo."
	LK["SlashRead"] = "Reproducir Emote '/Leer'"
	LK["SlashReadTT"] = "Al abrir Lorekeeper, tu personaje realizará el gesto /leer."
	LK["Debug"] = "Modo de Depuración"
	LK["DebugTT"] = "Incluir información de depuración adicional (esto puede ser spam)."
	LK["Library"] = "Biblioteca"
	LK["Mail"] = MAIL_LABEL
	LK["Settings"] = SETTINGS
	LK["DeleteAll"] = "Eliminar Todas las Copias"
	LK["DeleteAllConfirm"] = "¿Estás seguro de que deseas eliminar todas las versiones guardadas para esta entrada? Esto no se puede deshacer."
	LK["NotYetAvailable"] = FEATURE_NOT_YET_AVAILABLE
	LK["AddonDisabled"] = "El complemento está deshabilitado."
	LK["ColorPicker"] = COLOR_PICKER
	LK["SampleText"] = [[
<html>
<body>
<br />
<h1 align="center">Encabezado 1</h1>
<p>Este es un párrafo bajo el encabezado 1.</p>
<h2 align="right">Encabezado 2</h2>
<p>Este es un párrafo bajo el encabezado 2.</p>
<h3>Encabezado 3</h3>
<p>Este es un párrafo bajo el encabezado 3.</p>
<p align="center">Este párrafo está centrado bajo el encabezado 3.</p>
</body>
</html>
]]
	LK["SampleTitle"] = "Título de Ejemplo"
	LK["TextMaterial"] = "Material"
	LK["Title"] = "Título"
	LK["TitleText"] = "Texto del Título"
	LK["Header1"] = "Encabezado 1"
	LK["Header2"] = "Encabezado 2"
	LK["Header3"] = "Encabezado 3"
	LK["Paragraph"] = "Párrafo"
	LK["Textures"] = TEXTURES_SUBHEADER
	LK["FontSize"] = FONT_SIZE
	LK["Quests"] = QUESTS_LABEL
	LK["Campaign"] = QUEST_CLASSIFICATION_CAMPAIGN
	LK["Professions"] = TRADE_SKILLS
	LK["Misc"] = MISCELLANEOUS
	LK["ListOfCmds"] = "Lista de Comandos: "
	LK["help"] = "ayuda"
	LK["show"] = "mostrar"
	LK["filter"] = FILTER
	LK["SetFavorite"] = TRANSMOG_ITEM_SET_FAVORITE
	LK["UnsetFavorite"] = TRANSMOG_ITEM_UNSET_FAVORITE
	LK["Hide"] = HIDE
	LK["Show"] = SHOW
	LK["Collected"] = COLLECTED
	LK["NotCollected"] = NOT_COLLECTED
	LK["Hidden"] = "Oculto"
	LK["ClassRestricted"] = "Restringido por Clase"
	LK["Unobtainable"] = "Inalcanzable"

return end

if LOCALE == "deDE" then
	-- German translations go here
	LK["Lorekeeper"] = "Lorekeeper"
	LK["LoreKeeperMinMap"] = "Klicken, um das Tagebuch des Lorekeepers umzuschalten."
	LK["LoreKIntro"] = "Geben Sie /lorekeeper ein, um das Tagebuch zu öffnen."
	LK["SlashLoreK1"] = "lorekeeper"
	LK["SlashLoreK2"] = "lorek"
	LK["ReplaceMats"] = "Materialien ersetzen"
	LK["ReplaceMatsTT"] = "Das Hintergrundmaterial wird ersetzt und bietet andere Hintergrundoptionen als das Standardpergament."
	LK["FogOfLore"] = "Nebel des Wissens"
	LK["FogOfLoreTT"] = "Dokumententext nur nach dem Lesen des Artikels anzeigen."
	LK["SlashRead"] = "Emote '/Lesen' ausführen"
	LK["SlashReadTT"] = "Beim Öffnen von Lorekeeper wird dein Charakter das /lesen-Emote ausführen."
	LK["Debug"] = "Debug-Modus"
	LK["DebugTT"] = "Zusätzliche Debug-Informationen einbeziehen (dies kann spammy sein)."
	LK["Library"] = "Bibliothek"
	LK["Mail"] = MAIL_LABEL
	LK["Settings"] = SETTINGS
	LK["DeleteAll"] = "Alle Kopien löschen"
	LK["DeleteAllConfirm"] = "Sind Sie sicher, dass Sie alle gespeicherten Versionen für diesen Eintrag löschen möchten? Dies kann nicht rückgängig gemacht werden."
	LK["NotYetAvailable"] = FEATURE_NOT_YET_AVAILABLE
	LK["AddonDisabled"] = "Plugin-AddOn ist deaktiviert."
	LK["ColorPicker"] = COLOR_PICKER
	LK["SampleText"] = [[
<html>
<body>
<br />
<h1 align="center">Überschrift 1</h1>
<p>Dies ist ein Absatz unter Überschrift 1.</p>
<h2 align="right">Überschrift 2</h2>
<p>Dies ist ein Absatz unter Überschrift 2.</p>
<h3>Überschrift 3</h3>
<p>Dies ist ein Absatz unter Überschrift 3.</p>
<p align="center">Dieser Absatz ist zentriert unter Überschrift 3.</p>
</body>
</html>
]]
	LK["SampleTitle"] = "Platzhaltertitel"
	LK["TextMaterial"] = "Material"
	LK["Title"] = "Titel"
	LK["TitleText"] = "Titeltext"
	LK["Header1"] = "Überschrift 1"
	LK["Header2"] = "Überschrift 2"
	LK["Header3"] = "Überschrift 3"
	LK["Paragraph"] = "Absatz"
	LK["Textures"] = TEXTURES_SUBHEADER
	LK["FontSize"] = FONT_SIZE
	LK["Quests"] = QUESTS_LABEL
	LK["Campaign"] = QUEST_CLASSIFICATION_CAMPAIGN
	LK["Professions"] = TRADE_SKILLS
	LK["Misc"] = MISCELLANEOUS
	LK["ListOfCmds"] = "Befehlsliste: "
	LK["help"] = "hilfe"
	LK["show"] = "anzeigen"
	LK["filter"] = FILTER
	LK["SetFavorite"] = TRANSMOG_ITEM_SET_FAVORITE
	LK["UnsetFavorite"] = TRANSMOG_ITEM_UNSET_FAVORITE
	LK["Hide"] = HIDE
	LK["Show"] = SHOW
	LK["Collected"] = COLLECTED
	LK["NotCollected"] = NOT_COLLECTED
	LK["Hidden"] = "Versteckt"
	LK["ClassRestricted"] = "Klassenbeschränkt"
	LK["Unobtainable"] = "Unerreichbar"

return end

if LOCALE == "frFR" then
	-- French translations go here
	LK["Lorekeeper"] = "Lorekeeper"
	LK["LoreKeeperMinMap"] = "Cliquez pour basculer le journal du Lorekeeper."
	LK["LoreKIntro"] = "Tapez /lorekeeper pour ouvrir le journal."
	LK["SlashLoreK1"] = "lorekeeper"
	LK["SlashLoreK2"] = "lorek"
	LK["ReplaceMats"] = "Remplacer les Matériaux"
	LK["ReplaceMatsTT"] = "Le matériau de fond sera remplacé, offrant des options de fond différentes du parchemin par défaut."
	LK["FogOfLore"] = "Brume du Savoir"
	LK["FogOfLoreTT"] = "Révéler le texte du document seulement après avoir lu l'article."
	LK["SlashRead"] = "Jouer Emote '/Lire'"
	LK["SlashReadTT"] = "Lors de l'ouverture du Lorekeeper, votre personnage exécutera l'emote /lire."
	LK["Debug"] = "Mode Débogage"
	LK["DebugTT"] = "Inclure des informations de débogage supplémentaires (cela peut être spammy)."
	LK["Library"] = "Bibliothèque"
	LK["Mail"] = MAIL_LABEL
	LK["Settings"] = SETTINGS
	LK["DeleteAll"] = "Supprimer toutes les copies"
	LK["DeleteAllConfirm"] = "Êtes-vous sûr de vouloir supprimer toutes les versions enregistrées pour cette entrée ? Cela ne peut pas être annulé."
	LK["NotYetAvailable"] = FEATURE_NOT_YET_AVAILABLE
	LK["AddonDisabled"] = "Le module complémentaire est désactivé."
	LK["ColorPicker"] = COLOR_PICKER
	LK["SampleText"] = [[
<html>
<body>
<br />
<h1 align="center">En-tête 1</h1>
<p>Ceci est un paragraphe sous l'en-tête 1.</p>
<h2 align="right">En-tête 2</h2>
<p>Ceci est un paragraphe sous l'en-tête 2.</p>
<h3>En-tête 3</h3>
<p>Ceci est un paragraphe sous l'en-tête 3.</p>
<p align="center">Ce paragraphe est centré sous l'en-tête 3.</p>
</body>
</html>
]]
	LK["SampleTitle"] = "Titre d'Espace réservé"
	LK["TextMaterial"] = "Matériel"
	LK["Title"] = "Titre"
	LK["TitleText"] = "Texte du Titre"
	LK["Header1"] = "En-tête 1"
	LK["Header2"] = "En-tête 2"
	LK["Header3"] = "En-tête 3"
	LK["Paragraph"] = "Paragraphe"
	LK["Textures"] = TEXTURES_SUBHEADER
	LK["FontSize"] = FONT_SIZE
	LK["Quests"] = QUESTS_LABEL
	LK["Campaign"] = QUEST_CLASSIFICATION_CAMPAIGN
	LK["Professions"] = TRADE_SKILLS
	LK["Misc"] = MISCELLANEOUS
	LK["ListOfCmds"] = "Liste des Commandes : "
	LK["help"] = "aide"
	LK["show"] = "montrer"
	LK["filter"] = FILTER
	LK["SetFavorite"] = TRANSMOG_ITEM_SET_FAVORITE
	LK["UnsetFavorite"] = TRANSMOG_ITEM_UNSET_FAVORITE
	LK["Hide"] = HIDE
	LK["Show"] = SHOW
	LK["Collected"] = COLLECTED
	LK["NotCollected"] = NOT_COLLECTED
	LK["Hidden"] = "Caché"
	LK["ClassRestricted"] = "Restreint à la classe"
	LK["Unobtainable"] = "Inaccessible"

return end

if LOCALE == "itIT" then
	-- French translations go here
	LK["Lorekeeper"] = "Lorekeeper"
	LK["LoreKeeperMinMap"] = "Clicca per attivare/disattivare il diario del Lorekeeper."
	LK["LoreKIntro"] = "Digita /lorekeeper per aprire il diario."
	LK["SlashLoreK1"] = "lorekeeper"
	LK["SlashLoreK2"] = "lorek"
	LK["ReplaceMats"] = "Sostituisci Materiali"
	LK["ReplaceMatsTT"] = "Il materiale di sfondo verrà sostituito, offrendo diverse opzioni di sfondo rispetto alla pergamena predefinita."
	LK["FogOfLore"] = "Nebbia del Sapere"
	LK["FogOfLoreTT"] = "Rivelare il testo del documento solo dopo aver letto l'oggetto."
	LK["SlashRead"] = "Esegui Emote '/Leggere'"
	LK["SlashReadTT"] = "All'apertura del Lorekeeper, il tuo personaggio eseguirà l'emote /leggere."
	LK["Debug"] = "Modalità Debug"
	LK["DebugTT"] = "Includi informazioni di debug extra (questo può essere invasivo)."
	LK["Library"] = "Biblioteca"
	LK["Mail"] = MAIL_LABEL
	LK["Settings"] = SETTINGS
	LK["DeleteAll"] = "Elimina Tutte le Copie"
	LK["DeleteAllConfirm"] = "Sei sicuro di voler eliminare tutte le versioni salvate per questa voce? Questa operazione non può essere annullata."
	LK["NotYetAvailable"] = FEATURE_NOT_YET_AVAILABLE
	LK["AddonDisabled"] = "Plugin AddOn è disabilitato."
	LK["ColorPicker"] = COLOR_PICKER
	LK["SampleText"] = [[
<html>
<body>
<br />
<h1 align="center">Intestazione 1</h1>
<p>Questo è un paragrafo sotto l'intestazione 1.</p>
<h2 align="right">Intestazione 2</h2>
<p>Questo è un paragrafo sotto l'intestazione 2.</p>
<h3>Intestazione 3</h3>
<p>Questo è un paragrafo sotto l'intestazione 3.</p>
<p align="center">Questo paragrafo è centrato sotto l'intestazione 3.</p>
</body>
</html>
]]
	LK["SampleTitle"] = "Titolo Segnaposto"
	LK["TextMaterial"] = "Materiale"
	LK["Title"] = "Titolo"
	LK["TitleText"] = "Testo del Titolo"
	LK["Header1"] = "Intestazione 1"
	LK["Header2"] = "Intestazione 2"
	LK["Header3"] = "Intestazione 3"
	LK["Paragraph"] = "Paragrafo"
	LK["Textures"] = TEXTURES_SUBHEADER
	LK["FontSize"] = FONT_SIZE
	LK["Quests"] = QUESTS_LABEL
	LK["Campaign"] = QUEST_CLASSIFICATION_CAMPAIGN
	LK["Professions"] = TRADE_SKILLS
	LK["Misc"] = MISCELLANEOUS
	LK["ListOfCmds"] = "Elenco dei Comandi: "
	LK["help"] = "aiuto"
	LK["show"] = "mostra"
	LK["filter"] = FILTER
	LK["SetFavorite"] = TRANSMOG_ITEM_SET_FAVORITE
	LK["UnsetFavorite"] = TRANSMOG_ITEM_UNSET_FAVORITE
	LK["Hide"] = HIDE
	LK["Show"] = SHOW
	LK["Collected"] = COLLECTED
	LK["NotCollected"] = NOT_COLLECTED
	LK["Hidden"] = "Nascosto"
	LK["ClassRestricted"] = "Limitato alla Classe"
	LK["Unobtainable"] = "Irreperibile"

return end

if LOCALE == "ptBR" then
	-- Brazilian Portuguese translations go here
	LK["Lorekeeper"] = "Lorekeeper"
	LK["LoreKeeperMinMap"] = "Clique para alternar o diário do Lorekeeper."
	LK["LoreKIntro"] = "Digite /lorekeeper para abrir o diário."
	LK["SlashLoreK1"] = "lorekeeper"
	LK["SlashLoreK2"] = "lorek"
	LK["ReplaceMats"] = "Substituir Materiais"
	LK["ReplaceMatsTT"] = "O material de fundo será substituído, oferecendo diferentes opções de fundo além do pergaminho padrão."
	LK["FogOfLore"] = "Névoa da Tradição"
	LK["FogOfLoreTT"] = "Revelar o texto do documento apenas depois de ter lido o item."
	LK["SlashRead"] = "Executar Emote '/Ler'"
	LK["SlashReadTT"] = "Ao abrir Lorekeeper, seu personagem executará o emote /ler."
	LK["Debug"] = "Modo de Depuração"
	LK["DebugTT"] = "Incluir informações de depuração extras (isso pode ser spam)."
	LK["Library"] = "Biblioteca"
	LK["Mail"] = MAIL_LABEL
	LK["Settings"] = SETTINGS
	LK["DeleteAll"] = "Excluir Todas as Cópias"
	LK["DeleteAllConfirm"] = "Tem certeza de que deseja excluir todas as versões salvas para esta entrada? Isso não pode ser desfeito."
	LK["NotYetAvailable"] = FEATURE_NOT_YET_AVAILABLE
	LK["AddonDisabled"] = "O plugin está desativado."
	LK["ColorPicker"] = COLOR_PICKER
	LK["SampleText"] = [[
<html>
<body>
<br />
<h1 align="center">Cabeçalho 1</h1>
<p>Este é um parágrafo sob o cabeçalho 1.</p>
<h2 align="right">Cabeçalho 2</h2>
<p>Este é um parágrafo sob o cabeçalho 2.</p>
<h3>Cabeçalho 3</h3>
<p>Este é um parágrafo sob o cabeçalho 3.</p>
<p align="center">Este parágrafo está centrado sob o cabeçalho 3.</p>
</body>
</html>
]]
	LK["SampleTitle"] = "Título de Exemplo"
	LK["TextMaterial"] = "Material"
	LK["Title"] = "Título"
	LK["TitleText"] = "Texto do Título"
	LK["Header1"] = "Cabeçalho 1"
	LK["Header2"] = "Cabeçalho 2"
	LK["Header3"] = "Cabeçalho 3"
	LK["Paragraph"] = "Parágrafo"
	LK["Textures"] = TEXTURES_SUBHEADER
	LK["FontSize"] = FONT_SIZE
	LK["Quests"] = QUESTS_LABEL
	LK["Campaign"] = QUEST_CLASSIFICATION_CAMPAIGN
	LK["Professions"] = TRADE_SKILLS
	LK["Misc"] = MISCELLANEOUS
	LK["ListOfCmds"] = "Lista de Comandos: "
	LK["help"] = "ajuda"
	LK["show"] = "mostrar"
	LK["filter"] = FILTER
	LK["SetFavorite"] = TRANSMOG_ITEM_SET_FAVORITE
	LK["UnsetFavorite"] = TRANSMOG_ITEM_UNSET_FAVORITE
	LK["Hide"] = HIDE
	LK["Show"] = SHOW
	LK["Collected"] = COLLECTED
	LK["NotCollected"] = NOT_COLLECTED
	LK["Hidden"] = "Oculto"
	LK["ClassRestricted"] = "Restrito à Classe"
	LK["Unobtainable"] = "Inalcançável"

-- Note that the EU Portuguese WoW client also
-- uses the Brazilian Portuguese locale code.
return end

if LOCALE == "ruRU" then
	-- Russian translations go here
	LK["Lorekeeper"] = "Хранитель знаний"
	LK["LoreKeeperMinMap"] = "Нажмите, чтобы переключить журнал Хранителя знаний."
	LK["LoreKIntro"] = "Введите /lorekeeper, чтобы открыть журнал."
	LK["SlashLoreK1"] = "хранительзнаний"
	LK["SlashLoreK2"] = "хранительз"
	LK["ReplaceMats"] = "Заменить Материалы"
	LK["ReplaceMatsTT"] = "Фоновый материал будет заменен, предлагая другие варианты фона, кроме стандартного пергамента."
	LK["FogOfLore"] = "Туман Знаний"
	LK["FogOfLoreTT"] = "Текст документа откроется только после прочтения предмета."
	LK["SlashRead"] = "Исполнить эмоцию '/Читать'"
	LK["SlashReadTT"] = "При открытии Хранителя знаний ваш персонаж выполнит эмоцию /читать."
	LK["Debug"] = "Режим Отладки"
	LK["DebugTT"] = "Включить дополнительную информацию об отладке (это может быть навязчиво)."
	LK["Library"] = "Библиотека"
	LK["Mail"] = MAIL_LABEL
	LK["Settings"] = SETTINGS
	LK["DeleteAll"] = "Удалить все копии"
	LK["DeleteAllConfirm"] = "Вы уверены, что хотите удалить все сохраненные версии для этой записи? Это нельзя отменить."
	LK["NotYetAvailable"] = FEATURE_NOT_YET_AVAILABLE
	LK["AddonDisabled"] = "Плагин AddOn отключен."
	LK["ColorPicker"] = COLOR_PICKER
	LK["SampleText"] = [[
<html>
<body>
<br />
<h1 align="center">Заголовок 1</h1>
<p>Это параграф под заголовком 1.</p>
<h2 align="right">Заголовок 2</h2>
<p>Это параграф под заголовком 2.</p>
<h3>Заголовок 3</h3>
<p>Это параграф под заголовком 3.</p>
<p align="center">Этот параграф выровнен по центру под заголовком 3.</p>
</body>
</html>
]]
	LK["SampleTitle"] = "Заголовок-заполнитель"
	LK["TextMaterial"] = "Материал"
	LK["Title"] = "Заголовок"
	LK["TitleText"] = "Текст Заголовка"
	LK["Header1"] = "Заголовок 1"
	LK["Header2"] = "Заголовок 2"
	LK["Header3"] = "Заголовок 3"
	LK["Paragraph"] = "Параграф"
	LK["Textures"] = TEXTURES_SUBHEADER
	LK["FontSize"] = FONT_SIZE
	LK["Quests"] = QUESTS_LABEL
	LK["Campaign"] = QUEST_CLASSIFICATION_CAMPAIGN
	LK["Professions"] = TRADE_SKILLS
	LK["Misc"] = MISCELLANEOUS
	LK["ListOfCmds"] = "Список Команд: "
	LK["help"] = "помощь"
	LK["show"] = "показать"
	LK["filter"] = FILTER
	LK["SetFavorite"] = TRANSMOG_ITEM_SET_FAVORITE
	LK["UnsetFavorite"] = TRANSMOG_ITEM_UNSET_FAVORITE
	LK["Hide"] = HIDE
	LK["Show"] = SHOW
	LK["Collected"] = COLLECTED
	LK["NotCollected"] = NOT_COLLECTED
	LK["Hidden"] = "Скрыто"
	LK["ClassRestricted"] = "Ограничено классом"
	LK["Unobtainable"] = "Недоступно"

return end

if LOCALE == "koKR" then
	-- Korean translations go here
	LK["Lorekeeper"] = "지식의 수호자"
	LK["LoreKeeperMinMap"] = "클릭하여 지식의 수호자 일지를 전환하세요."
	LK["LoreKIntro"] = "일지를 열려면 /지식수호자 를 입력하세요."
	LK["SlashLoreK1"] = "지식수호자"
	LK["SlashLoreK2"] = "지식수"
	LK["ReplaceMats"] = "재료 교체"
	LK["ReplaceMatsTT"] = "배경 재료가 교체되며, 기본 양피지와 다른 배경 옵션이 제공됩니다."
	LK["FogOfLore"] = "지식의 안개"
	LK["FogOfLoreTT"] = "아이템을 읽은 후에만 문서 텍스트를 공개합니다."
	LK["SlashRead"] = "'/읽기' 감정 표현 실행"
	LK["SlashReadTT"] = "지식의 수호자를 열 때, 캐릭터가 /읽기 감정 표현을 수행합니다."
	LK["Debug"] = "디버그 모드"
	LK["DebugTT"] = "추가 디버그 정보를 포함합니다(스팸이 될 수 있습니다)."
	LK["Library"] = "도서관"
	LK["Mail"] = MAIL_LABEL
	LK["Settings"] = SETTINGS
	LK["DeleteAll"] = "모든 복사본 삭제"
	LK["DeleteAllConfirm"] = "이 항목에 대한 모든 저장된 버전을 삭제하시겠습니까? 이 작업은 취소할 수 없습니다."
	LK["NotYetAvailable"] = FEATURE_NOT_YET_AVAILABLE
	LK["AddonDisabled"] = "플러그인 애드온이 비활성화되었습니다."
	LK["ColorPicker"] = COLOR_PICKER
	LK["SampleText"] = [[
<html>
<body>
<br />
<h1 align="center">머리글 1</h1>
<p>머리글 1 아래의 단락입니다.</p>
<h2 align="right">머리글 2</h2>
<p>머리글 2 아래의 단락입니다.</p>
<h3>머리글 3</h3>
<p>머리글 3 아래의 단락입니다.</p>
<p align="center">이 단락은 머리글 3 아래에 가운데 정렬되었습니다.</p>
</body>
</html>
]]
	LK["SampleTitle"] = "자리 표시자 제목"
	LK["TextMaterial"] = "재료"
	LK["Title"] = "제목"
	LK["TitleText"] = "제목 텍스트"
	LK["Header1"] = "머리글 1"
	LK["Header2"] = "머리글 2"
	LK["Header3"] = "머리글 3"
	LK["Paragraph"] = "단락"
	LK["Textures"] = TEXTURES_SUBHEADER
	LK["FontSize"] = FONT_SIZE
	LK["Quests"] = QUESTS_LABEL
	LK["Campaign"] = QUEST_CLASSIFICATION_CAMPAIGN
	LK["Professions"] = TRADE_SKILLS
	LK["Misc"] = MISCELLANEOUS
	LK["ListOfCmds"] = "명령어 목록: "
	LK["help"] = "도움말"
	LK["show"] = "보이기"
	LK["filter"] = FILTER
	LK["SetFavorite"] = TRANSMOG_ITEM_SET_FAVORITE
	LK["UnsetFavorite"] = TRANSMOG_ITEM_UNSET_FAVORITE
	LK["Hide"] = HIDE
	LK["Show"] = SHOW
	LK["Collected"] = COLLECTED
	LK["NotCollected"] = NOT_COLLECTED
	LK["Hidden"] = "숨김"
	LK["ClassRestricted"] = "직업 제한"
	LK["Unobtainable"] = "획득 불가"

return end

if LOCALE == "zhCN" then
	-- Simplified Chinese translations go here
	LK["Lorekeeper"] = "知识守护者"
	LK["LoreKeeperMinMap"] = "点击以切换知识守护者日志。"
	LK["LoreKIntro"] = "输入 /知识守护者 打开日志。"
	LK["SlashLoreK1"] = "知识守护者"
	LK["SlashLoreK2"] = "知识守"
	LK["ReplaceMats"] = "更换材料"
	LK["ReplaceMatsTT"] = "背景材料将被替换，提供与默认羊皮纸不同的背景选项。"
	LK["FogOfLore"] = "知识之雾"
	LK["FogOfLoreTT"] = "仅在阅读物品后显示文档文本。"
	LK["SlashRead"] = "执行'/阅读'表情"
	LK["SlashReadTT"] = "打开知识守护者时，角色将执行/阅读表情。"
	LK["Debug"] = "调试模式"
	LK["DebugTT"] = "包括额外的调试信息（这可能会产生大量信息）。"
	LK["Library"] = "图书馆"
	LK["Mail"] = MAIL_LABEL
	LK["Settings"] = SETTINGS
	LK["DeleteAll"] = "删除所有副本"
	LK["DeleteAllConfirm"] = "您确定要删除此条目的所有已保存版本吗？此操作无法撤销。"
	LK["NotYetAvailable"] = FEATURE_NOT_YET_AVAILABLE
	LK["AddonDisabled"] = "插件已禁用。"
	LK["ColorPicker"] = COLOR_PICKER
	LK["SampleText"] = [[
<html>
<body>
<br />
<h1 align="center">标题 1</h1>
<p>这是标题 1 下的段落。</p>
<h2 align="right">标题 2</h2>
<p>这是标题 2 下的段落。</p>
<h3>标题 3</h3>
<p>这是标题 3 下的段落。</p>
<p align="center">这个段落在标题 3 下居中对齐。</p>
</body>
</html>
]]
	LK["SampleTitle"] = "占位符标题"
	LK["TextMaterial"] = "材料"
	LK["Title"] = "标题"
	LK["TitleText"] = "标题文本"
	LK["Header1"] = "标题 1"
	LK["Header2"] = "标题 2"
	LK["Header3"] = "标题 3"
	LK["Paragraph"] = "段落"
	LK["Textures"] = TEXTURES_SUBHEADER
	LK["FontSize"] = FONT_SIZE
	LK["Quests"] = QUESTS_LABEL
	LK["Campaign"] = QUEST_CLASSIFICATION_CAMPAIGN
	LK["Professions"] = TRADE_SKILLS
	LK["Misc"] = MISCELLANEOUS
	LK["ListOfCmds"] = "命令列表: "
	LK["help"] = "帮助"
	LK["show"] = "显示"
	LK["filter"] = FILTER
	LK["SetFavorite"] = TRANSMOG_ITEM_SET_FAVORITE
	LK["UnsetFavorite"] = TRANSMOG_ITEM_UNSET_FAVORITE
	LK["Hide"] = HIDE
	LK["Show"] = SHOW
	LK["Collected"] = COLLECTED
	LK["NotCollected"] = NOT_COLLECTED
	LK["Hidden"] = "隐藏"
	LK["ClassRestricted"] = "职业限制"
	LK["Unobtainable"] = "无法获得"

return end

if LOCALE == "zhTW" then
	-- Traditional Chinese translations go here
	LK["Lorekeeper"] = "知識守護者"
	LK["LoreKeeperMinMap"] = "點擊以切換知識守護者日誌。"
	LK["LoreKIntro"] = "輸入 /知識守護者 打開日誌。"
	LK["SlashLoreK1"] = "知識守護者"
	LK["SlashLoreK2"] = "知識守"
	LK["ReplaceMats"] = "更換材料"
	LK["ReplaceMatsTT"] = "背景材料將被替換，提供與默認羊皮紙不同的背景選項。"
	LK["FogOfLore"] = "知識之霧"
	LK["FogOfLoreTT"] = "僅在閱讀物品後顯示文檔文本。"
	LK["SlashRead"] = "執行'/閱讀'表情"
	LK["SlashReadTT"] = "打開知識守護者時，角色將執行/閱讀表情。"
	LK["Debug"] = "調試模式"
	LK["DebugTT"] = "包括額外的調試信息（這可能會產生大量信息）。"
	LK["Library"] = "圖書館"
	LK["Mail"] = MAIL_LABEL
	LK["Settings"] = SETTINGS
	LK["DeleteAll"] = "刪除所有副本"
	LK["DeleteAllConfirm"] = "您確定要刪除此條目的所有已保存版本嗎？此操作無法撤銷。"
	LK["NotYetAvailable"] = FEATURE_NOT_YET_AVAILABLE
	LK["AddonDisabled"] = "插件已禁用。"
	LK["ColorPicker"] = COLOR_PICKER
	LK["SampleText"] = [[
<html>
<body>
<br />
<h1 align="center">標題 1</h1>
<p>這是標題 1 下的段落。</p>
<h2 align="right">標題 2</h2>
<p>這是標題 2 下的段落。</p>
<h3>標題 3</h3>
<p>這是標題 3 下的段落。</p>
<p align="center">這個段落在標題 3 下居中對齊。</p>
</body>
</html>
]]
	LK["SampleTitle"] = "佔位符標題"
	LK["TextMaterial"] = "材料"
	LK["Title"] = "標題"
	LK["TitleText"] = "標題文本"
	LK["Header1"] = "標題 1"
	LK["Header2"] = "標題 2"
	LK["Header3"] = "標題 3"
	LK["Paragraph"] = "段落"
	LK["Textures"] = TEXTURES_SUBHEADER
	LK["FontSize"] = FONT_SIZE
	LK["Quests"] = QUESTS_LABEL
	LK["Campaign"] = QUEST_CLASSIFICATION_CAMPAIGN
	LK["Professions"] = TRADE_SKILLS
	LK["Misc"] = MISCELLANEOUS
	LK["ListOfCmds"] = "命令列表: "
	LK["help"] = "幫助"
	LK["show"] = "顯示"
	LK["filter"] = FILTER
	LK["SetFavorite"] = TRANSMOG_ITEM_SET_FAVORITE
	LK["UnsetFavorite"] = TRANSMOG_ITEM_UNSET_FAVORITE
	LK["Hide"] = HIDE
	LK["Show"] = SHOW
	LK["Collected"] = COLLECTED
	LK["NotCollected"] = NOT_COLLECTED
	LK["Hidden"] = "隱藏"
	LK["ClassRestricted"] = "職業限制"
	LK["Unobtainable"] = "無法取得"

return end

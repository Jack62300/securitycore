Config = {}

-- Choose the language of the script, "fr" and "en" only supported for this release.
-- If you want to add your language, please refer to line 73

Config.langInfo = "fr"

-- Activate the debug print in console
Config.debug = true

--------------
-- Security --
--------------

-- Configure the desired level of security to enable: True otherwise set: false
-- If you want to disable everything, prefer config.activeSecurity

Config.Isp = true                  -- Indicate if the script must use our ISP (internet service provider) security
Config.Ip = true                    -- Indicate if the script must use our IP (Whitelist) security
Config.Pays = true                  -- Indicate if the script must use our country check security
Config.Vpn = true                   -- Indicate if the script must use our VPN check security
Config.Blacklist = true             -- Indicate if the script must use our device ban security (This system use unique IDs of a machine to ban all the player accounts)
Config.identifier = "licence"       -- licence or steam check 
-- If false : Deactivate all the security options listed before
Config.activeSecurity = true

Config.AllowList = {
    '127.0.0.1',
    '81.66.95.40',
    '66.51.112.3', --IP Antoine INTERNAT
    '80.214.218.19', -- 4G Thomas
    '86.215.87.210' --Lisouille la fripouille
}

-----------
-- API's -- 
-----------

-- Url API to test VPN (You need to register with a valid email)
Config.apiUrl = "http://check.getipintel.net/check.php?ip=" 

-- Email to connect the API's (Must be the one you registered with)
Config.email = ""


-- Url API to test the ISP & Country Code (We recommand to keep this one)
Config.apiUrl2 = "http://ip-api.com/json/" 

---------------------
-- Discord related --
---------------------

-- Discord url to display for the player if he has an error
Config.discordUrl =  ""

-- Title of the discord bot (Footer)
Config.discordfooter = ""

-- Name of the discord Bot
Config.botUsername = "INSPECTOR 2000"

-- Discord WebHook to receive logs of the security script
Config.webhooks = ""

-- Profile Picture of the bot 
Config.avatarUrl = ""

---------------
-- Languages --
---------------

-- Config your language if needeed
Config.lang = {
    fr = { 
        -- Discord webhooks
        isp = "Tentative de connexion ISP BLOQU??E", 
        pays = "Tentative de connexion PAYS BLOQU??E", 
        whitelist = "Connexion non autoris?? : NON WHITELIST??",
        vpn = "Connexion VPN bloqu??e ", 
        connexionOk = "Connexion r??ussie - VPN / ISP / PAYS",
        ispName = "FAI",
        paysName = " Code pays",
        ipName = " Ip Joueur",
        playerName = " Nom du Joueur",
        ipDiscord = "L'ip suivante n'est pas valide ou non whitelist??e. Voici les informations re??ues",
        ispDiscord = " L'isp suivante n'est pas valide ou non whitelist??e. Voici les informations re??ues",
        paysDiscord = " Pays suivant non whitelist?? ou non valide. Voici les informations re??ues",
        connectDiscord = " Connection autoris??e. Voici les informations re??ues ",
        vpnDiscord = " Connexion via VPN detect??e. Voici les informations re??ues ",
        vpnProba = "Probalitit?? d'utilisation de VPN ",

        -- Message lors des commandes
        titlePlayerBlacklistMessage = " Joueur Guid Unique ",
        titlePlayerBlacklistMessage2 = " Nom du joueur ",
        titlePlayerBlacklistMessage3 = " Ip du Joueur ",
        BlacklistMessageSendErrorBdd = " Aucun Joueur trouv??",
        
        -- Pendant la connexion 
        kickVpn = "[SECURITY] Nous avons d??tect?? que vous utilisez un VPN ou un proxy. Si vous pensez qu\'il s\'agit d\'une erreur, veuillez contacter l\'??quipe administrative.",
        MessageAttente = "Merci de patienter, nous s??curisons la connexion",
        deferalMessageIp = "Vous devez ??tre whitelist?? sur notre serveur pour vous connecter",
        deferalMessageisp = "Votre fournisseur d'acc??s n'est pas valid?? sur notre serveur",
        deferalMessagePays = "Votre pays n'est pas valid?? sur notre serveur",
        kickBlacklist = "Vous ??tes banni du serveur pour ",
    },

    en = {
        -- Discord webhooks
        isp = "ISP BLOCKED connection attempt", 
        pays = "BLOCKED COUNTRY login attempt", 
        whitelist = "Unauthorized connection: NOT WHITELISTED",
        vpn = "VPN connection blocked", 
        connexionOk = "Connection successful - VPN/ISP/COUNTRY",
        ispName = "ISP",
        paysName = " Country Code",
        ipName = " Player IP",
        playerName = " Player Name",
        ipDiscord = "The following ip is invalid or not whitelisted. Here is the information received",
        ispDiscord = " The following isp is not valid or not whitelisted. Here is the information received",
        paysDiscord = " This country is not whitelisted or invalid. Here is the information received",
        connectDiscord = " Connection authorized. Here is the information received",
        vpnDiscord = " Connection via VPN detected. Here is the information received",
        vpnProba = "Probability of using VPN ",

        -- Message after a chat command
        titlePlayerBlacklistMessage = " Unique Player GUID ",
        titlePlayerBlacklistMessage2 = " Player name ",
        titlePlayerBlacklistMessage3 = " Player Ip ",
        BlacklistMessageSendErrorBdd = " No player found",
         
        -- While connecting 
        kickVpn = "[SECURITY] We have detected that you are using a VPN or proxy. If you believe this is an error, please contact the admin team.",
        MessageAttente = "Please wait, we are securing the connection",
        deferalMessageIp = "You must be whitelisted on our server to connect",
        deferalMessageisp = "Your ISP is not validated on our server",
        deferalMessagePays = "Your country is not validated on our server",
        kickBlacklist = "You are banned from the server for ",
    },
}

Config.error =  {
    fr = {
        isp = "Votre founisseur d'acc??s n'est pas autoris?? sur notre serveur",
        pays = "Votre pays n'est pas autoris?? sur notre serveur",
        ip = "Votre ip n'est pas whitelist?? merci de passer via discord",
        ispMessageErrorBdd = "ISP d??ja pr??sent en base de donn??es",
        PaysMessageErrorBdd = "Pays d??ja pr??sent en base de donn??es",
        IpMessageErrorBdd = "IP d??ja pr??sente en base de donn??es",
        BlacklistMessageErrorBdd = "Guid d??ja en base de donn??e",
        BlacklistMessageSendErrorBdd = " Aucun Joueur trouver",
    },

    en = {
        isp = "Your ISP is not authorized on our server",
        pays = "Your country is not allowed on our server",
        ip = "Your ip is not whitelisted please use discord",
        ispMessageErrorBdd = "ISP already present in database",
        PaysMessageErrorBdd = "Country already present in the database",
        IpMessageErrorBdd = "IP already present in database",
        BlacklistMessageErrorBdd = "Guid already in database",
        BlacklistMessageSendErrorBdd = " No Player found",
    } 
}

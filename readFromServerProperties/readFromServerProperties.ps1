$props = ConvertFrom-StringData(Get-Content ./Server.local.properties -raw)
$props.'sql.dbname'
$splister = $props.'sql.dbname'.Split(":")
$port = $splister[1].Split(";")
$splister[0] + "," + $port[0]
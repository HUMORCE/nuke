param(
    $app_dir,
    $app_version
)

$app = "$app_dir\$app_version"
$data = "$env:APPDATA\duowan\yy\"

$components =
"components\com.yy.cefdev2",
"components\com.yy.gameproxy",
"components\com.yy.processservice",
"components\com.yy.vip"

$junks =
"BugReport.exe",
"crashreport.dll",
"dwupdate.dll",
"installstat.exe",
"libcurl.dll",
"p2ppunch.dll",
"RoVee.dll",
"videotools.dll",
"widgetchannel.dll",
"yyacc.dll",
"yyaccessiblehelper.dll",
"yyadhelper.dll",
"yybrowser.exe",
"yychappplatform.dll",
"yyiecontainer.dll",
"yyp2pvideohandler.dll",
"yyplugin.dll",
"yystatistics.dll",
"yyversion.dll",
"yyvoicechanger.dll",
# addictions
"preloadexternalproxy.dll",
"udbreportsdk.dll",
"YY.exe",
"yypersonalfont.dll",
"yyrun.exe",
"yysdkcontainer.dll"

foreach ($junk in $junks) {
    Remove-Item "$app\$junk" -Force -Recurse
}

foreach ($component in $components) {
    Remove-Item "$app\$component" -Force -Recurse
    New-Item "$app\$component" -Force | Out-Null
    (Get-Item "$app\$component").Attributes = "Readonly"
}

if (Test-Path $data) {
    $t = Get-ChildItem -Path $data | Where-Object { $_.Name -ne "mainframe" }
    if ($t) {
        Remove-Item $t.FullName -Force -Recurse
    }
}

$data_re =
"log",
"update"

foreach ($i in $data_re) {
    New-Item "$data\$i" -Force | Out-Null
    (Get-Item "$data\$i").Attributes = "Readonly"
}

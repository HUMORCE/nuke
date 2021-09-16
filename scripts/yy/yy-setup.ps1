param(
    $app_dir,
    $app_version
)

$datas = "$env:APPDATA\duowan\yy\"

$components =
"$app_dir\$app_version\components\com.yy.cefdev2",
"$app_dir\$app_version\components\com.yy.gameproxy",
"$app_dir\$app_version\components\com.yy.processservice",
"$app_dir\$app_version\components\com.yy.vip"

$junks =
"$app_dir\$app_version\BugReport.exe",
"$app_dir\$app_version\crashreport.dll",
"$app_dir\$app_version\dwupdate.dll",
"$app_dir\$app_version\installstat.exe",
"$app_dir\$app_version\libcurl.dll",
"$app_dir\$app_version\p2ppunch.dll",
"$app_dir\$app_version\RoVee.dll",
"$app_dir\$app_version\videotools.dll",
"$app_dir\$app_version\widgetchannel.dll",
"$app_dir\$app_version\yyacc.dll",
"$app_dir\$app_version\yyaccessiblehelper.dll",
"$app_dir\$app_version\yyadhelper.dll",
"$app_dir\$app_version\yybrowser.exe",
"$app_dir\$app_version\yychappplatform.dll",
"$app_dir\$app_version\yyiecontainer.dll",
"$app_dir\$app_version\yyp2pvideohandler.dll",
"$app_dir\$app_version\yyplugin.dll",
"$app_dir\$app_version\yystatistics.dll",
"$app_dir\$app_version\yyversion.dll",
"$app_dir\$app_version\yyvoicechanger.dll"

foreach ($i in $junks) {
    Remove-Item $i -Force -Recurse
}

foreach ($i in $components) {
    Remove-Item $i -Force -Recurse
    New-Item $i | Out-Null
    (Get-Item $i).Attributes = "Readonly"
}

if (Test-Path $datas) {
    $t = Get-ChildItem -Path $datas | Where-Object { $_.Name -ne "mainframe" }
    if ($t) {
        Remove-Item $t -Force -Recurse
    }
}

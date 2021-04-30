param(
    $app_dir,
    $app_version
)

$data_dir = $env:APPDATA + "\duowan"

$struct =
"$data_dir\yy\business\",
"$data_dir\yy\cache\",
"$data_dir\yy\openplatform\",
"$data_dir\yy\yycomstore\2052\"

$app_remove =
# \$app_version\
"$app_dir\$app_version\BugReport.exe",
"$app_dir\$app_version\yystatistics.dll",
"$app_dir\$app_version\yyversion.dll"

$app_replace =
# \Microsoft.VC90.CRT\
"$app_dir\Microsoft.VC90.CRT\msvcm90.dll",
"$app_dir\Microsoft.VC90.CRT\msvcp90.dll",
"$app_dir\Microsoft.VC90.CRT\msvcr90.dll",
# \$app_version\components\
"$app_dir\$app_version\components\com.yy.cefdev2",
"$app_dir\$app_version\components\com.yy.gameproxy",
"$app_dir\$app_version\components\com.yy.vip"

$data_replace =
# \
"$data_dir\gamebox",
"$data_dir\phonetreasure",
"$data_dir\yyedownloader",
"$data_dir\YYExplorer",
"$data_dir\yygame",
"$data_dir\yygame5",
"$data_dir\yygamestore",
# \yy\
"$data_dir\yy\setup",
"$data_dir\yy\update",
"$data_dir\yy\yyapkinst",
# \yy\business\
"$data_dir\yy\business\gamenotify",
"$data_dir\yy\business\gameproxy",
"$data_dir\yy\business\gamesmilies",
"$data_dir\yy\business\garbagecleaner",
"$data_dir\yy\business\logingiftbag",
# \yy\cache\
"$data_dir\yy\cache\download",
# \yy\openplatform\
"$data_dir\yy\openplatform\aggame",
# \yy\yycomstore\2052\
"$data_dir\yy\yycomstore\2052\com.yy.activity",
"$data_dir\yy\yycomstore\2052\com.yy.apphelper",
"$data_dir\yy\yycomstore\2052\com.yy.apppush",
"$data_dir\yy\yycomstore\2052\com.yy.bzAssistant",
"$data_dir\yy\yycomstore\2052\com.yy.cefdev",
"$data_dir\yy\yycomstore\2052\com.yy.cefdev2",
"$data_dir\yy\yycomstore\2052\com.yy.collect",
"$data_dir\yy\yycomstore\2052\com.yy.cooperator",
"$data_dir\yy\yycomstore\2052\com.yy.dianhuservice",
"$data_dir\yy\yycomstore\2052\com.yy.dianhushow",
"$data_dir\yy\yycomstore\2052\com.yy.dice",
"$data_dir\yy\yycomstore\2052\com.yy.dxchecker",
"$data_dir\yy\yycomstore\2052\com.yy.entchair",
"$data_dir\yy\yycomstore\2052\com.yy.entgiftflw",
"$data_dir\yy\yycomstore\2052\com.yy.enthall",
"$data_dir\yy\yycomstore\2052\com.yy.entroomservice",
"$data_dir\yy\yycomstore\2052\com.yy.entshinyshow",
"$data_dir\yy\yycomstore\2052\com.yy.entvote",
"$data_dir\yy\yycomstore\2052\com.yy.follow",
"$data_dir\yy\yycomstore\2052\com.yy.freerunning",
"$data_dir\yy\yycomstore\2052\com.yy.friendassist",
"$data_dir\yy\yycomstore\2052\com.yy.gamecard",
"$data_dir\yy\yycomstore\2052\com.yy.gamechannel",
"$data_dir\yy\yycomstore\2052\com.yy.gamechannelbaby",
"$data_dir\yy\yycomstore\2052\com.yy.gameHall",
"$data_dir\yy\yycomstore\2052\com.yy.gamelivecard",
"$data_dir\yy\yycomstore\2052\com.yy.gamenotify",
"$data_dir\yy\yycomstore\2052\com.yy.gamepk",
"$data_dir\yy\yycomstore\2052\com.yy.gameproxy",
"$data_dir\yy\yycomstore\2052\com.yy.gamesmilies",
"$data_dir\yy\yycomstore\2052\com.yy.gamestore",
"$data_dir\yy\yycomstore\2052\com.yy.gameteam",
"$data_dir\yy\yycomstore\2052\com.yy.gamewakuang",
"$data_dir\yy\yycomstore\2052\com.yy.gamewonder",
"$data_dir\yy\yycomstore\2052\com.yy.garbagecleaner",
"$data_dir\yy\yycomstore\2052\com.yy.grouplistbanner",
"$data_dir\yy\yycomstore\2052\com.yy.honor",
"$data_dir\yy\yycomstore\2052\com.yy.kefu",
"$data_dir\yy\yycomstore\2052\com.yy.kuaikuai",
"$data_dir\yy\yycomstore\2052\com.yy.legalbiz",
"$data_dir\yy\yycomstore\2052\com.yy.livemini",
"$data_dir\yy\yycomstore\2052\com.yy.logingiftbag",
"$data_dir\yy\yycomstore\2052\com.yy.mostoolassist",
"$data_dir\yy\yycomstore\2052\com.yy.mostoolTeamfightTactics",
"$data_dir\yy\yycomstore\2052\com.yy.officialnews",
"$data_dir\yy\yycomstore\2052\com.yy.phonetreasure",
"$data_dir\yy\yycomstore\2052\com.yy.template.gametaskcenter",
"$data_dir\yy\yycomstore\2052\com.yy.videoondemand",
"$data_dir\yy\yycomstore\2052\com.yy.videoservice",
"$data_dir\yy\yycomstore\2052\com.yy.vip",
"$data_dir\yy\yycomstore\2052\com.yy.vipfeelings2",
"$data_dir\yy\yycomstore\2052\com.yy.webrunlogin",
"$data_dir\yy\yycomstore\2052\com.yy.yycgame",
"$data_dir\yy\yycomstore\2052\com.yy.yycocos",
"$data_dir\yy\yycomstore\2052\com.yy.yypkshow",
"$data_dir\yy\yycomstore\2052\com.yy.zhongtaisdk"


function yy_replace {
    param (
        $list
    )
    foreach ($item in $list) {
        if (Test-Path $item) {
            $file = Get-Item $item
            $file.Attributes = "Archive"
            Remove-Item $file -Force -Recurse
            New-Item $item
            $file.Attributes = "Readonly"
        }
        else {
            New-Item $item
            $file = Get-Item $item
            $file.Attributes = "Readonly"
        }
    }
}
function yy_remove {
    param (
        $list
    )
    foreach ($item in $list) {
        if (Test-Path $item) {
            $file = Get-Item $item
            $file.Attributes = "Archive"
            Remove-Item $file -Force -Recurse
        }
    }
}
function yy_struct {
    param (
        $list
    )
    foreach ($item in $list) {
        if (!(Test-Path $item)) {
            New-Item $item -ItemType Directory
        }
    }
}

yy_struct $struct | Out-Null
yy_replace $data_replace | Out-Null
yy_remove $app_remove | Out-Null
yy_replace $app_replace | Out-Null

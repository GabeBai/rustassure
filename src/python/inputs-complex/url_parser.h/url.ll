; ModuleID = 'url.c'
source_filename = "url.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._OSUnalignedU16 = type { i16 }
%struct._OSUnalignedU32 = type { i32 }
%struct._OSUnalignedU64 = type { i64 }
%struct.url_key_value = type { i8*, i8* }
%struct.url_data = type { i8*, i8*, i8*, i8*, i8*, i8*, %struct.url_key_value*, i8* }

@char_cat = internal constant <{ [127 x i16], [129 x i16] }> <{ [127 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 216, i16 0, i16 4, i16 216, i16 208, i16 216, i16 216, i16 216, i16 216, i16 216, i16 217, i16 216, i16 211, i16 211, i16 84, i16 511, i16 511, i16 511, i16 511, i16 511, i16 511, i16 511, i16 511, i16 511, i16 511, i16 468, i16 216, i16 0, i16 216, i16 0, i16 68, i16 84, i16 511, i16 511, i16 511, i16 511, i16 511, i16 511, i16 223, i16 223, i16 223, i16 223, i16 223, i16 223, i16 223, i16 223, i16 223, i16 223, i16 223, i16 223, i16 223, i16 223, i16 223, i16 223, i16 223, i16 223, i16 223, i16 223, i16 4, i16 0, i16 4, i16 0, i16 210, i16 0, i16 511, i16 511, i16 511, i16 511, i16 511, i16 511, i16 223, i16 223, i16 223, i16 223, i16 223, i16 223, i16 223, i16 223, i16 223, i16 223, i16 223, i16 223, i16 223, i16 223, i16 223, i16 223, i16 223, i16 223, i16 223, i16 223, i16 0, i16 0, i16 0, i16 210], [129 x i16] zeroinitializer }>, align 2, !dbg !0
@.str = private unnamed_addr constant [4 x i8] c"aaa\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"aaas\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"about\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"acap\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"acct\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"adiumxtra\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"afp\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"afs\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"aim\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"apt\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"attachment\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"aw\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"beshare\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"bitcoin\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"bolo\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"callto\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"cap\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"chrome\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"crome-extension\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"com-evenbrite-attendee\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"cid\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"coap\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"coaps\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"content\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"crid\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"cvs\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"dav\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"dict\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"lna-playsingle\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"dln-playcontainer\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"dns\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"dtn\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"dvb\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"ed2k\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"facetime\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"fax\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"feed\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"finger\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"fish\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"ftp\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"geo\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"gg\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"git\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"gizmoproject\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c"go\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"gopher\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"gtalk\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"h323\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"hcp\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"http\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"https\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"iax\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"icap\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"icon\00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c"im\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"imap\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"ipn\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"ipp\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c"irc\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"irc6\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"ircs\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"iris\00", align 1
@.str.65 = private unnamed_addr constant [10 x i8] c"iris.beep\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"iris.xpc\00", align 1
@.str.67 = private unnamed_addr constant [10 x i8] c"iris.xpcs\00", align 1
@.str.68 = private unnamed_addr constant [9 x i8] c"iris.lws\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"itms\00", align 1
@.str.70 = private unnamed_addr constant [7 x i8] c"jabber\00", align 1
@.str.71 = private unnamed_addr constant [4 x i8] c"jar\00", align 1
@.str.72 = private unnamed_addr constant [4 x i8] c"jms\00", align 1
@.str.73 = private unnamed_addr constant [8 x i8] c"keyparc\00", align 1
@.str.74 = private unnamed_addr constant [7 x i8] c"lastfm\00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c"ldap\00", align 1
@.str.76 = private unnamed_addr constant [6 x i8] c"ldaps\00", align 1
@.str.77 = private unnamed_addr constant [7 x i8] c"magnet\00", align 1
@.str.78 = private unnamed_addr constant [11 x i8] c"mailserver\00", align 1
@.str.79 = private unnamed_addr constant [7 x i8] c"mailto\00", align 1
@.str.80 = private unnamed_addr constant [5 x i8] c"maps\00", align 1
@.str.81 = private unnamed_addr constant [7 x i8] c"market\00", align 1
@.str.82 = private unnamed_addr constant [8 x i8] c"message\00", align 1
@.str.83 = private unnamed_addr constant [4 x i8] c"mid\00", align 1
@.str.84 = private unnamed_addr constant [4 x i8] c"mms\00", align 1
@.str.85 = private unnamed_addr constant [6 x i8] c"modem\00", align 1
@.str.86 = private unnamed_addr constant [8 x i8] c"ms-help\00", align 1
@.str.87 = private unnamed_addr constant [17 x i8] c"mssettings-power\00", align 1
@.str.88 = private unnamed_addr constant [6 x i8] c"msnim\00", align 1
@.str.89 = private unnamed_addr constant [5 x i8] c"msrp\00", align 1
@.str.90 = private unnamed_addr constant [6 x i8] c"msrps\00", align 1
@.str.91 = private unnamed_addr constant [5 x i8] c"mtqp\00", align 1
@.str.92 = private unnamed_addr constant [7 x i8] c"mumble\00", align 1
@.str.93 = private unnamed_addr constant [8 x i8] c"mupdate\00", align 1
@.str.94 = private unnamed_addr constant [4 x i8] c"mvn\00", align 1
@.str.95 = private unnamed_addr constant [5 x i8] c"news\00", align 1
@.str.96 = private unnamed_addr constant [4 x i8] c"nfs\00", align 1
@.str.97 = private unnamed_addr constant [3 x i8] c"ni\00", align 1
@.str.98 = private unnamed_addr constant [4 x i8] c"nih\00", align 1
@.str.99 = private unnamed_addr constant [5 x i8] c"nntp\00", align 1
@.str.100 = private unnamed_addr constant [6 x i8] c"notes\00", align 1
@.str.101 = private unnamed_addr constant [4 x i8] c"oid\00", align 1
@.str.102 = private unnamed_addr constant [15 x i8] c"paquelocktoken\00", align 1
@.str.103 = private unnamed_addr constant [5 x i8] c"pack\00", align 1
@.str.104 = private unnamed_addr constant [5 x i8] c"palm\00", align 1
@.str.105 = private unnamed_addr constant [10 x i8] c"paparazzi\00", align 1
@.str.106 = private unnamed_addr constant [7 x i8] c"pkcs11\00", align 1
@.str.107 = private unnamed_addr constant [9 x i8] c"platform\00", align 1
@.str.108 = private unnamed_addr constant [4 x i8] c"pop\00", align 1
@.str.109 = private unnamed_addr constant [5 x i8] c"pres\00", align 1
@.str.110 = private unnamed_addr constant [9 x i8] c"prospero\00", align 1
@.str.111 = private unnamed_addr constant [6 x i8] c"proxy\00", align 1
@.str.112 = private unnamed_addr constant [5 x i8] c"psyc\00", align 1
@.str.113 = private unnamed_addr constant [6 x i8] c"query\00", align 1
@.str.114 = private unnamed_addr constant [7 x i8] c"reload\00", align 1
@.str.115 = private unnamed_addr constant [4 x i8] c"res\00", align 1
@.str.116 = private unnamed_addr constant [9 x i8] c"resource\00", align 1
@.str.117 = private unnamed_addr constant [4 x i8] c"rmi\00", align 1
@.str.118 = private unnamed_addr constant [6 x i8] c"rsync\00", align 1
@.str.119 = private unnamed_addr constant [5 x i8] c"rtmp\00", align 1
@.str.120 = private unnamed_addr constant [5 x i8] c"rtsp\00", align 1
@.str.121 = private unnamed_addr constant [11 x i8] c"secondlife\00", align 1
@.str.122 = private unnamed_addr constant [8 x i8] c"service\00", align 1
@.str.123 = private unnamed_addr constant [8 x i8] c"session\00", align 1
@.str.124 = private unnamed_addr constant [5 x i8] c"sftp\00", align 1
@.str.125 = private unnamed_addr constant [4 x i8] c"sgn\00", align 1
@.str.126 = private unnamed_addr constant [6 x i8] c"shttp\00", align 1
@.str.127 = private unnamed_addr constant [6 x i8] c"sieve\00", align 1
@.str.128 = private unnamed_addr constant [4 x i8] c"sip\00", align 1
@.str.129 = private unnamed_addr constant [5 x i8] c"sips\00", align 1
@.str.130 = private unnamed_addr constant [6 x i8] c"skype\00", align 1
@.str.131 = private unnamed_addr constant [4 x i8] c"smb\00", align 1
@.str.132 = private unnamed_addr constant [4 x i8] c"sms\00", align 1
@.str.133 = private unnamed_addr constant [6 x i8] c"snews\00", align 1
@.str.134 = private unnamed_addr constant [5 x i8] c"snmp\00", align 1
@.str.135 = private unnamed_addr constant [10 x i8] c"soap.beep\00", align 1
@.str.136 = private unnamed_addr constant [11 x i8] c"soap.beeps\00", align 1
@.str.137 = private unnamed_addr constant [7 x i8] c"soldat\00", align 1
@.str.138 = private unnamed_addr constant [8 x i8] c"spotify\00", align 1
@.str.139 = private unnamed_addr constant [4 x i8] c"ssh\00", align 1
@.str.140 = private unnamed_addr constant [6 x i8] c"steam\00", align 1
@.str.141 = private unnamed_addr constant [4 x i8] c"svn\00", align 1
@.str.142 = private unnamed_addr constant [4 x i8] c"tag\00", align 1
@.str.143 = private unnamed_addr constant [10 x i8] c"teamspeak\00", align 1
@.str.144 = private unnamed_addr constant [4 x i8] c"tel\00", align 1
@.str.145 = private unnamed_addr constant [7 x i8] c"telnet\00", align 1
@.str.146 = private unnamed_addr constant [5 x i8] c"tftp\00", align 1
@.str.147 = private unnamed_addr constant [7 x i8] c"things\00", align 1
@.str.148 = private unnamed_addr constant [12 x i8] c"thismessage\00", align 1
@.str.149 = private unnamed_addr constant [7 x i8] c"tn3270\00", align 1
@.str.150 = private unnamed_addr constant [4 x i8] c"tip\00", align 1
@.str.151 = private unnamed_addr constant [3 x i8] c"tv\00", align 1
@.str.152 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@.str.153 = private unnamed_addr constant [7 x i8] c"unreal\00", align 1
@.str.154 = private unnamed_addr constant [4 x i8] c"urn\00", align 1
@.str.155 = private unnamed_addr constant [7 x i8] c"ut2004\00", align 1
@.str.156 = private unnamed_addr constant [6 x i8] c"vemmi\00", align 1
@.str.157 = private unnamed_addr constant [9 x i8] c"ventrilo\00", align 1
@.str.158 = private unnamed_addr constant [9 x i8] c"videotex\00", align 1
@.str.159 = private unnamed_addr constant [12 x i8] c"view-source\00", align 1
@.str.160 = private unnamed_addr constant [5 x i8] c"wais\00", align 1
@.str.161 = private unnamed_addr constant [7 x i8] c"webcal\00", align 1
@.str.162 = private unnamed_addr constant [3 x i8] c"ws\00", align 1
@.str.163 = private unnamed_addr constant [4 x i8] c"wss\00", align 1
@.str.164 = private unnamed_addr constant [5 x i8] c"wtai\00", align 1
@.str.165 = private unnamed_addr constant [8 x i8] c"wyciwyg\00", align 1
@.str.166 = private unnamed_addr constant [5 x i8] c"xcon\00", align 1
@.str.167 = private unnamed_addr constant [12 x i8] c"xcon-userid\00", align 1
@.str.168 = private unnamed_addr constant [6 x i8] c"xfire\00", align 1
@.str.169 = private unnamed_addr constant [12 x i8] c"xmlrpc.beep\00", align 1
@.str.170 = private unnamed_addr constant [13 x i8] c"xmlrpc.beeps\00", align 1
@.str.171 = private unnamed_addr constant [5 x i8] c"xmpp\00", align 1
@.str.172 = private unnamed_addr constant [4 x i8] c"xri\00", align 1
@.str.173 = private unnamed_addr constant [6 x i8] c"ymsgr\00", align 1
@.str.174 = private unnamed_addr constant [11 x i8] c"javascript\00", align 1
@.str.175 = private unnamed_addr constant [5 x i8] c"jdbc\00", align 1
@.str.176 = private unnamed_addr constant [4 x i8] c"doi\00", align 1
@URL_SCHEMES = internal global [177 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.114, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.116, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.120, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.123, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.126, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.129, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.130, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.131, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.132, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.133, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.134, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.135, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.136, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.137, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.138, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.139, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.140, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.142, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.143, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.144, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.145, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.147, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.148, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.149, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.150, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.151, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.152, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.153, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.154, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.155, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.156, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.157, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.158, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.159, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.160, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.161, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.162, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.163, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.164, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.165, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.166, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.167, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.168, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.169, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.170, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.171, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.172, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.173, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.174, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.175, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.176, i32 0, i32 0)], align 8, !dbg !73
@__stderrp = external global %struct.__sFILE*, align 8
@.str.177 = private unnamed_addr constant [28 x i8] c"ERROR %s Line %u! p=\C2\AB%s\C2\BB\0A\00", align 1
@.str.178 = private unnamed_addr constant [6 x i8] c"url.c\00", align 1
@.str.179 = private unnamed_addr constant [8 x i8] c"%[^://]\00", align 1
@.str.180 = private unnamed_addr constant [9 x i8] c"#url =>\0A\00", align 1
@.str.181 = private unnamed_addr constant [21 x i8] c"    .protocol: \22%s\22\0A\00", align 1
@.str.182 = private unnamed_addr constant [23 x i8] c"    .protocol: (NULL)\0A\00", align 1
@.str.183 = private unnamed_addr constant [17 x i8] c"    .host: \22%s\22\0A\00", align 1
@.str.184 = private unnamed_addr constant [19 x i8] c"    .host: (NULL)\0A\00", align 1
@.str.185 = private unnamed_addr constant [21 x i8] c"    .userinfo: \22%s\22\0A\00", align 1
@.str.186 = private unnamed_addr constant [23 x i8] c"    .userinfo: (NULL)\0A\00", align 1
@.str.187 = private unnamed_addr constant [17 x i8] c"    .port: \22%s\22\0A\00", align 1
@.str.188 = private unnamed_addr constant [19 x i8] c"    .port: (NULL)\0A\00", align 1
@.str.189 = private unnamed_addr constant [17 x i8] c"    .path: \22%s\22\0A\00", align 1
@.str.190 = private unnamed_addr constant [19 x i8] c"    .path: (NULL)\0A\00", align 1
@.str.191 = private unnamed_addr constant [25 x i8] c"    .query[%u]: \22%s\22 -> \00", align 1
@.str.192 = private unnamed_addr constant [6 x i8] c"\22%s\22\0A\00", align 1
@.str.193 = private unnamed_addr constant [8 x i8] c"(NULL)\0A\00", align 1
@.str.194 = private unnamed_addr constant [21 x i8] c"    .fragment: \22%s\22\0A\00", align 1
@.str.195 = private unnamed_addr constant [23 x i8] c"    .fragment: (NULL)\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i16 @_OSSwapInt16(i16 noundef zeroext %_data) #0 !dbg !95 {
entry:
  %_data.addr = alloca i16, align 2
  store i16 %_data, i16* %_data.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %_data.addr, metadata !99, metadata !DIExpression()), !dbg !100
  %0 = load i16, i16* %_data.addr, align 2, !dbg !101
  %conv = zext i16 %0 to i32, !dbg !101
  %shl = shl i32 %conv, 8, !dbg !102
  %1 = load i16, i16* %_data.addr, align 2, !dbg !103
  %conv1 = zext i16 %1 to i32, !dbg !103
  %shr = ashr i32 %conv1, 8, !dbg !104
  %or = or i32 %shl, %shr, !dbg !105
  %conv2 = trunc i32 %or to i16, !dbg !106
  ret i16 %conv2, !dbg !107
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @_OSSwapInt32(i32 noundef %_data) #0 !dbg !108 {
entry:
  %_data.addr = alloca i32, align 4
  store i32 %_data, i32* %_data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %_data.addr, metadata !111, metadata !DIExpression()), !dbg !112
  %0 = load i32, i32* %_data.addr, align 4, !dbg !113
  %1 = call i32 @llvm.bswap.i32(i32 %0), !dbg !114
  store i32 %1, i32* %_data.addr, align 4, !dbg !115
  %2 = load i32, i32* %_data.addr, align 4, !dbg !116
  ret i32 %2, !dbg !117
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i64 @_OSSwapInt64(i64 noundef %_data) #0 !dbg !118 {
entry:
  %_data.addr = alloca i64, align 8
  store i64 %_data, i64* %_data.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %_data.addr, metadata !121, metadata !DIExpression()), !dbg !122
  %0 = load i64, i64* %_data.addr, align 8, !dbg !123
  %1 = call i64 @llvm.bswap.i64(i64 %0), !dbg !124
  ret i64 %1, !dbg !125
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i16 @OSReadSwapInt16(i8* noundef %_base, i64 noundef %_offset) #0 !dbg !126 {
entry:
  %_base.addr = alloca i8*, align 8
  %_offset.addr = alloca i64, align 8
  store i8* %_base, i8** %_base.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_base.addr, metadata !132, metadata !DIExpression()), !dbg !133
  store i64 %_offset, i64* %_offset.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %_offset.addr, metadata !134, metadata !DIExpression()), !dbg !135
  %0 = load i8*, i8** %_base.addr, align 8, !dbg !136
  %1 = ptrtoint i8* %0 to i64, !dbg !137
  %2 = load i64, i64* %_offset.addr, align 8, !dbg !138
  %add = add i64 %1, %2, !dbg !139
  %3 = inttoptr i64 %add to %struct._OSUnalignedU16*, !dbg !140
  %__val = getelementptr inbounds %struct._OSUnalignedU16, %struct._OSUnalignedU16* %3, i32 0, i32 0, !dbg !141
  %4 = load volatile i16, i16* %__val, align 1, !dbg !141
  %call = call zeroext i16 @_OSSwapInt16(i16 noundef zeroext %4), !dbg !142
  ret i16 %call, !dbg !143
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @OSReadSwapInt32(i8* noundef %_base, i64 noundef %_offset) #0 !dbg !144 {
entry:
  %_base.addr = alloca i8*, align 8
  %_offset.addr = alloca i64, align 8
  store i8* %_base, i8** %_base.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_base.addr, metadata !147, metadata !DIExpression()), !dbg !148
  store i64 %_offset, i64* %_offset.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %_offset.addr, metadata !149, metadata !DIExpression()), !dbg !150
  %0 = load i8*, i8** %_base.addr, align 8, !dbg !151
  %1 = ptrtoint i8* %0 to i64, !dbg !152
  %2 = load i64, i64* %_offset.addr, align 8, !dbg !153
  %add = add i64 %1, %2, !dbg !154
  %3 = inttoptr i64 %add to %struct._OSUnalignedU32*, !dbg !155
  %__val = getelementptr inbounds %struct._OSUnalignedU32, %struct._OSUnalignedU32* %3, i32 0, i32 0, !dbg !156
  %4 = load volatile i32, i32* %__val, align 1, !dbg !156
  %call = call i32 @_OSSwapInt32(i32 noundef %4), !dbg !157
  ret i32 %call, !dbg !158
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i64 @OSReadSwapInt64(i8* noundef %_base, i64 noundef %_offset) #0 !dbg !159 {
entry:
  %_base.addr = alloca i8*, align 8
  %_offset.addr = alloca i64, align 8
  store i8* %_base, i8** %_base.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_base.addr, metadata !162, metadata !DIExpression()), !dbg !163
  store i64 %_offset, i64* %_offset.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %_offset.addr, metadata !164, metadata !DIExpression()), !dbg !165
  %0 = load i8*, i8** %_base.addr, align 8, !dbg !166
  %1 = ptrtoint i8* %0 to i64, !dbg !167
  %2 = load i64, i64* %_offset.addr, align 8, !dbg !168
  %add = add i64 %1, %2, !dbg !169
  %3 = inttoptr i64 %add to %struct._OSUnalignedU64*, !dbg !170
  %__val = getelementptr inbounds %struct._OSUnalignedU64, %struct._OSUnalignedU64* %3, i32 0, i32 0, !dbg !171
  %4 = load volatile i64, i64* %__val, align 1, !dbg !171
  %call = call i64 @_OSSwapInt64(i64 noundef %4), !dbg !172
  ret i64 %call, !dbg !173
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @OSWriteSwapInt16(i8* noundef %_base, i64 noundef %_offset, i16 noundef zeroext %_data) #0 !dbg !174 {
entry:
  %_base.addr = alloca i8*, align 8
  %_offset.addr = alloca i64, align 8
  %_data.addr = alloca i16, align 2
  store i8* %_base, i8** %_base.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_base.addr, metadata !178, metadata !DIExpression()), !dbg !179
  store i64 %_offset, i64* %_offset.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %_offset.addr, metadata !180, metadata !DIExpression()), !dbg !181
  store i16 %_data, i16* %_data.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %_data.addr, metadata !182, metadata !DIExpression()), !dbg !183
  %0 = load i16, i16* %_data.addr, align 2, !dbg !184
  %call = call zeroext i16 @_OSSwapInt16(i16 noundef zeroext %0), !dbg !185
  %1 = load i8*, i8** %_base.addr, align 8, !dbg !186
  %2 = ptrtoint i8* %1 to i64, !dbg !187
  %3 = load i64, i64* %_offset.addr, align 8, !dbg !188
  %add = add i64 %2, %3, !dbg !189
  %4 = inttoptr i64 %add to %struct._OSUnalignedU16*, !dbg !190
  %__val = getelementptr inbounds %struct._OSUnalignedU16, %struct._OSUnalignedU16* %4, i32 0, i32 0, !dbg !191
  store volatile i16 %call, i16* %__val, align 1, !dbg !192
  ret void, !dbg !193
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @OSWriteSwapInt32(i8* noundef %_base, i64 noundef %_offset, i32 noundef %_data) #0 !dbg !194 {
entry:
  %_base.addr = alloca i8*, align 8
  %_offset.addr = alloca i64, align 8
  %_data.addr = alloca i32, align 4
  store i8* %_base, i8** %_base.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_base.addr, metadata !197, metadata !DIExpression()), !dbg !198
  store i64 %_offset, i64* %_offset.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %_offset.addr, metadata !199, metadata !DIExpression()), !dbg !200
  store i32 %_data, i32* %_data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %_data.addr, metadata !201, metadata !DIExpression()), !dbg !202
  %0 = load i32, i32* %_data.addr, align 4, !dbg !203
  %call = call i32 @_OSSwapInt32(i32 noundef %0), !dbg !204
  %1 = load i8*, i8** %_base.addr, align 8, !dbg !205
  %2 = ptrtoint i8* %1 to i64, !dbg !206
  %3 = load i64, i64* %_offset.addr, align 8, !dbg !207
  %add = add i64 %2, %3, !dbg !208
  %4 = inttoptr i64 %add to %struct._OSUnalignedU32*, !dbg !209
  %__val = getelementptr inbounds %struct._OSUnalignedU32, %struct._OSUnalignedU32* %4, i32 0, i32 0, !dbg !210
  store volatile i32 %call, i32* %__val, align 1, !dbg !211
  ret void, !dbg !212
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @OSWriteSwapInt64(i8* noundef %_base, i64 noundef %_offset, i64 noundef %_data) #0 !dbg !213 {
entry:
  %_base.addr = alloca i8*, align 8
  %_offset.addr = alloca i64, align 8
  %_data.addr = alloca i64, align 8
  store i8* %_base, i8** %_base.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_base.addr, metadata !216, metadata !DIExpression()), !dbg !217
  store i64 %_offset, i64* %_offset.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %_offset.addr, metadata !218, metadata !DIExpression()), !dbg !219
  store i64 %_data, i64* %_data.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %_data.addr, metadata !220, metadata !DIExpression()), !dbg !221
  %0 = load i64, i64* %_data.addr, align 8, !dbg !222
  %call = call i64 @_OSSwapInt64(i64 noundef %0), !dbg !223
  %1 = load i8*, i8** %_base.addr, align 8, !dbg !224
  %2 = ptrtoint i8* %1 to i64, !dbg !225
  %3 = load i64, i64* %_offset.addr, align 8, !dbg !226
  %add = add i64 %2, %3, !dbg !227
  %4 = inttoptr i64 %add to %struct._OSUnalignedU64*, !dbg !228
  %__val = getelementptr inbounds %struct._OSUnalignedU64, %struct._OSUnalignedU64* %4, i32 0, i32 0, !dbg !229
  store volatile i64 %call, i64* %__val, align 1, !dbg !230
  ret void, !dbg !231
}

declare i32 @__swbuf(i32 noundef, %struct.__sFILE* noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @strdup(i8* noundef %str) #0 !dbg !232 {
entry:
  %str.addr = alloca i8*, align 8
  %n = alloca i32, align 4
  %dup = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %str.addr, metadata !235, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.declare(metadata i32* %n, metadata !237, metadata !DIExpression()), !dbg !240
  %0 = load i8*, i8** %str.addr, align 8, !dbg !241
  %call = call i64 @strlen(i8* noundef %0), !dbg !242
  %add = add i64 %call, 1, !dbg !243
  %conv = trunc i64 %add to i32, !dbg !242
  store i32 %conv, i32* %n, align 4, !dbg !240
  call void @llvm.dbg.declare(metadata i8** %dup, metadata !244, metadata !DIExpression()), !dbg !245
  %1 = load i32, i32* %n, align 4, !dbg !246
  %conv1 = sext i32 %1 to i64, !dbg !246
  %call2 = call i8* @malloc(i64 noundef %conv1) #6, !dbg !247
  store i8* %call2, i8** %dup, align 8, !dbg !245
  %2 = load i8*, i8** %dup, align 8, !dbg !248
  %tobool = icmp ne i8* %2, null, !dbg !248
  br i1 %tobool, label %if.then, label %if.end, !dbg !250

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %dup, align 8, !dbg !251
  %4 = load i8*, i8** %str.addr, align 8, !dbg !251
  %5 = load i8*, i8** %dup, align 8, !dbg !251
  %6 = call i64 @llvm.objectsize.i64.p0i8(i8* %5, i1 false, i1 true, i1 false), !dbg !251
  %call3 = call i8* @__strcpy_chk(i8* noundef %3, i8* noundef %4, i64 noundef %6) #7, !dbg !251
  br label %if.end, !dbg !251

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** %dup, align 8, !dbg !252
  ret i8* %7, !dbg !253
}

declare i64 @strlen(i8* noundef) #2

; Function Attrs: allocsize(0)
declare i8* @malloc(i64 noundef) #3

; Function Attrs: nounwind
declare i8* @__strcpy_chk(i8* noundef, i8* noundef, i64 noundef) #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1 immarg, i1 immarg, i1 immarg) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @unhex(i8* noundef %s) #0 !dbg !254 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !257, metadata !DIExpression()), !dbg !258
  %0 = load i8*, i8** %s.addr, align 8, !dbg !259
  %1 = load i8, i8* %0, align 1, !dbg !261
  %conv = sext i8 %1 to i32, !dbg !261
  %cmp = icmp sge i32 %conv, 48, !dbg !262
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !263

land.lhs.true:                                    ; preds = %entry
  %2 = load i8*, i8** %s.addr, align 8, !dbg !264
  %3 = load i8, i8* %2, align 1, !dbg !265
  %conv2 = sext i8 %3 to i32, !dbg !265
  %cmp3 = icmp sle i32 %conv2, 57, !dbg !266
  br i1 %cmp3, label %if.then, label %if.end, !dbg !267

if.then:                                          ; preds = %land.lhs.true
  %4 = load i8*, i8** %s.addr, align 8, !dbg !268
  %5 = load i8, i8* %4, align 1, !dbg !269
  %conv5 = sext i8 %5 to i32, !dbg !269
  %sub = sub nsw i32 %conv5, 48, !dbg !270
  store i32 %sub, i32* %retval, align 4, !dbg !271
  br label %return, !dbg !271

if.end:                                           ; preds = %land.lhs.true, %entry
  %6 = load i8*, i8** %s.addr, align 8, !dbg !272
  %7 = load i8, i8* %6, align 1, !dbg !274
  %conv6 = sext i8 %7 to i32, !dbg !274
  %cmp7 = icmp sge i32 %conv6, 65, !dbg !275
  br i1 %cmp7, label %land.lhs.true9, label %if.end16, !dbg !276

land.lhs.true9:                                   ; preds = %if.end
  %8 = load i8*, i8** %s.addr, align 8, !dbg !277
  %9 = load i8, i8* %8, align 1, !dbg !278
  %conv10 = sext i8 %9 to i32, !dbg !278
  %cmp11 = icmp sle i32 %conv10, 70, !dbg !279
  br i1 %cmp11, label %if.then13, label %if.end16, !dbg !280

if.then13:                                        ; preds = %land.lhs.true9
  %10 = load i8*, i8** %s.addr, align 8, !dbg !281
  %11 = load i8, i8* %10, align 1, !dbg !282
  %conv14 = sext i8 %11 to i32, !dbg !282
  %sub15 = sub nsw i32 %conv14, 65, !dbg !283
  %add = add nsw i32 %sub15, 10, !dbg !284
  store i32 %add, i32* %retval, align 4, !dbg !285
  br label %return, !dbg !285

if.end16:                                         ; preds = %land.lhs.true9, %if.end
  %12 = load i8*, i8** %s.addr, align 8, !dbg !286
  %13 = load i8, i8* %12, align 1, !dbg !288
  %conv17 = sext i8 %13 to i32, !dbg !288
  %cmp18 = icmp sge i32 %conv17, 97, !dbg !289
  br i1 %cmp18, label %land.lhs.true20, label %if.end28, !dbg !290

land.lhs.true20:                                  ; preds = %if.end16
  %14 = load i8*, i8** %s.addr, align 8, !dbg !291
  %15 = load i8, i8* %14, align 1, !dbg !292
  %conv21 = sext i8 %15 to i32, !dbg !292
  %cmp22 = icmp sle i32 %conv21, 102, !dbg !293
  br i1 %cmp22, label %if.then24, label %if.end28, !dbg !294

if.then24:                                        ; preds = %land.lhs.true20
  %16 = load i8*, i8** %s.addr, align 8, !dbg !295
  %17 = load i8, i8* %16, align 1, !dbg !296
  %conv25 = sext i8 %17 to i32, !dbg !296
  %sub26 = sub nsw i32 %conv25, 97, !dbg !297
  %add27 = add nsw i32 %sub26, 10, !dbg !298
  store i32 %add27, i32* %retval, align 4, !dbg !299
  br label %return, !dbg !299

if.end28:                                         ; preds = %land.lhs.true20, %if.end16
  store i32 -1, i32* %retval, align 4, !dbg !300
  br label %return, !dbg !300

return:                                           ; preds = %if.end28, %if.then24, %if.then13, %if.then
  %18 = load i32, i32* %retval, align 4, !dbg !301
  ret i32 %18, !dbg !301
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @decode_percent(i8* noundef %s) #0 !dbg !302 {
entry:
  %retval = alloca i8*, align 8
  %s.addr = alloca i8*, align 8
  %in = alloca i8*, align 8
  %out = alloca i8*, align 8
  %high = alloca i32, align 4
  %low = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !305, metadata !DIExpression()), !dbg !306
  call void @llvm.dbg.declare(metadata i8** %in, metadata !307, metadata !DIExpression()), !dbg !308
  %0 = load i8*, i8** %s.addr, align 8, !dbg !309
  store i8* %0, i8** %in, align 8, !dbg !308
  call void @llvm.dbg.declare(metadata i8** %out, metadata !310, metadata !DIExpression()), !dbg !311
  %1 = load i8*, i8** %s.addr, align 8, !dbg !312
  store i8* %1, i8** %out, align 8, !dbg !311
  br label %while.cond, !dbg !313

while.cond:                                       ; preds = %if.end23, %entry
  %2 = load i8*, i8** %in, align 8, !dbg !314
  %3 = load i8, i8* %2, align 1, !dbg !315
  %tobool = icmp ne i8 %3, 0, !dbg !313
  br i1 %tobool, label %while.body, label %while.end, !dbg !313

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %in, align 8, !dbg !316
  %5 = load i8, i8* %4, align 1, !dbg !319
  %conv = sext i8 %5 to i32, !dbg !319
  %cmp = icmp eq i32 %conv, 37, !dbg !320
  br i1 %cmp, label %if.then, label %if.else, !dbg !321

if.then:                                          ; preds = %while.body
  call void @llvm.dbg.declare(metadata i32* %high, metadata !322, metadata !DIExpression()), !dbg !324
  %6 = load i8*, i8** %in, align 8, !dbg !325
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1, !dbg !325
  store i8* %incdec.ptr, i8** %in, align 8, !dbg !325
  %call = call i32 @unhex(i8* noundef %incdec.ptr), !dbg !326
  store i32 %call, i32* %high, align 4, !dbg !324
  %7 = load i32, i32* %high, align 4, !dbg !327
  %cmp2 = icmp slt i32 %7, 0, !dbg !329
  br i1 %cmp2, label %if.then7, label %lor.lhs.false, !dbg !330

lor.lhs.false:                                    ; preds = %if.then
  %8 = load i8*, i8** %in, align 8, !dbg !331
  %9 = load i8, i8* %8, align 1, !dbg !332
  %conv4 = sext i8 %9 to i32, !dbg !332
  %cmp5 = icmp eq i32 %conv4, 0, !dbg !333
  br i1 %cmp5, label %if.then7, label %if.end, !dbg !334

if.then7:                                         ; preds = %lor.lhs.false, %if.then
  store i8* null, i8** %retval, align 8, !dbg !335
  br label %return, !dbg !335

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.dbg.declare(metadata i32* %low, metadata !336, metadata !DIExpression()), !dbg !337
  %10 = load i8*, i8** %in, align 8, !dbg !338
  %incdec.ptr8 = getelementptr inbounds i8, i8* %10, i32 1, !dbg !338
  store i8* %incdec.ptr8, i8** %in, align 8, !dbg !338
  %call9 = call i32 @unhex(i8* noundef %incdec.ptr8), !dbg !339
  store i32 %call9, i32* %low, align 4, !dbg !337
  %11 = load i32, i32* %low, align 4, !dbg !340
  %cmp10 = icmp slt i32 %11, 0, !dbg !342
  br i1 %cmp10, label %if.then16, label %lor.lhs.false12, !dbg !343

lor.lhs.false12:                                  ; preds = %if.end
  %12 = load i8*, i8** %in, align 8, !dbg !344
  %13 = load i8, i8* %12, align 1, !dbg !345
  %conv13 = sext i8 %13 to i32, !dbg !345
  %cmp14 = icmp eq i32 %conv13, 0, !dbg !346
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !347

if.then16:                                        ; preds = %lor.lhs.false12, %if.end
  store i8* null, i8** %retval, align 8, !dbg !348
  br label %return, !dbg !348

if.end17:                                         ; preds = %lor.lhs.false12
  %14 = load i32, i32* %high, align 4, !dbg !349
  %mul = mul i32 %14, 16, !dbg !350
  %15 = load i32, i32* %low, align 4, !dbg !351
  %add = add i32 %mul, %15, !dbg !352
  %conv18 = trunc i32 %add to i8, !dbg !353
  %16 = load i8*, i8** %out, align 8, !dbg !354
  store i8 %conv18, i8* %16, align 1, !dbg !355
  %17 = load i8*, i8** %out, align 8, !dbg !356
  %incdec.ptr19 = getelementptr inbounds i8, i8* %17, i32 1, !dbg !356
  store i8* %incdec.ptr19, i8** %out, align 8, !dbg !356
  %18 = load i8*, i8** %in, align 8, !dbg !357
  %incdec.ptr20 = getelementptr inbounds i8, i8* %18, i32 1, !dbg !357
  store i8* %incdec.ptr20, i8** %in, align 8, !dbg !357
  br label %if.end23, !dbg !358

if.else:                                          ; preds = %while.body
  %19 = load i8*, i8** %in, align 8, !dbg !359
  %incdec.ptr21 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !359
  store i8* %incdec.ptr21, i8** %in, align 8, !dbg !359
  %20 = load i8, i8* %19, align 1, !dbg !361
  %21 = load i8*, i8** %out, align 8, !dbg !362
  %incdec.ptr22 = getelementptr inbounds i8, i8* %21, i32 1, !dbg !362
  store i8* %incdec.ptr22, i8** %out, align 8, !dbg !362
  store i8 %20, i8* %21, align 1, !dbg !363
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.end17
  br label %while.cond, !dbg !313, !llvm.loop !364

while.end:                                        ; preds = %while.cond
  %22 = load i8*, i8** %out, align 8, !dbg !366
  store i8 0, i8* %22, align 1, !dbg !367
  %23 = load i8*, i8** %s.addr, align 8, !dbg !368
  store i8* %23, i8** %retval, align 8, !dbg !369
  br label %return, !dbg !369

return:                                           ; preds = %while.end, %if.then16, %if.then7
  %24 = load i8*, i8** %retval, align 8, !dbg !370
  ret i8* %24, !dbg !370
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @scan_part(i8* noundef %start, i32 noundef %category, i8 noundef signext %delimiter1, i8 noundef signext %delimiter2) #0 !dbg !371 {
entry:
  %retval = alloca i8*, align 8
  %start.addr = alloca i8*, align 8
  %category.addr = alloca i32, align 4
  %delimiter1.addr = alloca i8, align 1
  %delimiter2.addr = alloca i8, align 1
  %p = alloca i8*, align 8
  store i8* %start, i8** %start.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %start.addr, metadata !374, metadata !DIExpression()), !dbg !375
  store i32 %category, i32* %category.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %category.addr, metadata !376, metadata !DIExpression()), !dbg !377
  store i8 %delimiter1, i8* %delimiter1.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %delimiter1.addr, metadata !378, metadata !DIExpression()), !dbg !379
  store i8 %delimiter2, i8* %delimiter2.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %delimiter2.addr, metadata !380, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.declare(metadata i8** %p, metadata !382, metadata !DIExpression()), !dbg !383
  %0 = load i8*, i8** %start.addr, align 8, !dbg !384
  store i8* %0, i8** %p, align 8, !dbg !383
  br label %for.cond, !dbg !385

for.cond:                                         ; preds = %if.end13, %entry
  %1 = load i8*, i8** %p, align 8, !dbg !386
  %2 = load i8, i8* %1, align 1, !dbg !391
  %conv = sext i8 %2 to i32, !dbg !391
  %cmp = icmp eq i32 %conv, 0, !dbg !392
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !393

lor.lhs.false:                                    ; preds = %for.cond
  %3 = load i8*, i8** %p, align 8, !dbg !394
  %4 = load i8, i8* %3, align 1, !dbg !395
  %conv2 = sext i8 %4 to i32, !dbg !395
  %5 = load i8, i8* %delimiter1.addr, align 1, !dbg !396
  %conv3 = sext i8 %5 to i32, !dbg !396
  %cmp4 = icmp eq i32 %conv2, %conv3, !dbg !397
  br i1 %cmp4, label %if.then, label %lor.lhs.false6, !dbg !398

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %6 = load i8*, i8** %p, align 8, !dbg !399
  %7 = load i8, i8* %6, align 1, !dbg !400
  %conv7 = sext i8 %7 to i32, !dbg !400
  %8 = load i8, i8* %delimiter2.addr, align 1, !dbg !401
  %conv8 = sext i8 %8 to i32, !dbg !401
  %cmp9 = icmp eq i32 %conv7, %conv8, !dbg !402
  br i1 %cmp9, label %if.then, label %if.end, !dbg !403

if.then:                                          ; preds = %lor.lhs.false6, %lor.lhs.false, %for.cond
  %9 = load i8*, i8** %p, align 8, !dbg !404
  store i8* %9, i8** %retval, align 8, !dbg !405
  br label %return, !dbg !405

if.end:                                           ; preds = %lor.lhs.false6
  %10 = load i8*, i8** %p, align 8, !dbg !406
  %11 = load i8, i8* %10, align 1, !dbg !408
  %idxprom = zext i8 %11 to i64, !dbg !409
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* bitcast (<{ [127 x i16], [129 x i16] }>* @char_cat to [256 x i16]*), i64 0, i64 %idxprom, !dbg !409
  %12 = load i16, i16* %arrayidx, align 2, !dbg !409
  %conv11 = zext i16 %12 to i32, !dbg !409
  %13 = load i32, i32* %category.addr, align 4, !dbg !410
  %and = and i32 %conv11, %13, !dbg !411
  %tobool = icmp ne i32 %and, 0, !dbg !411
  br i1 %tobool, label %if.then12, label %if.else, !dbg !412

if.then12:                                        ; preds = %if.end
  %14 = load i8*, i8** %p, align 8, !dbg !413
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1, !dbg !413
  store i8* %incdec.ptr, i8** %p, align 8, !dbg !413
  br label %if.end13, !dbg !415

if.else:                                          ; preds = %if.end
  store i8* null, i8** %retval, align 8, !dbg !416
  br label %return, !dbg !416

if.end13:                                         ; preds = %if.then12
  br label %for.cond, !dbg !418, !llvm.loop !419

return:                                           ; preds = %if.else, %if.then
  %15 = load i8*, i8** %retval, align 8, !dbg !422
  ret i8* %15, !dbg !422
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @scan_decimal_number(i8* noundef %start) #0 !dbg !423 {
entry:
  %start.addr = alloca i8*, align 8
  %p = alloca i8*, align 8
  store i8* %start, i8** %start.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %start.addr, metadata !424, metadata !DIExpression()), !dbg !425
  call void @llvm.dbg.declare(metadata i8** %p, metadata !426, metadata !DIExpression()), !dbg !427
  %0 = load i8*, i8** %start.addr, align 8, !dbg !428
  store i8* %0, i8** %p, align 8, !dbg !427
  br label %while.cond, !dbg !429

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i8*, i8** %p, align 8, !dbg !430
  %2 = load i8, i8* %1, align 1, !dbg !431
  %conv = sext i8 %2 to i32, !dbg !431
  %cmp = icmp sge i32 %conv, 48, !dbg !432
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !433

land.rhs:                                         ; preds = %while.cond
  %3 = load i8*, i8** %p, align 8, !dbg !434
  %4 = load i8, i8* %3, align 1, !dbg !435
  %conv2 = sext i8 %4 to i32, !dbg !435
  %cmp3 = icmp sle i32 %conv2, 57, !dbg !436
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %cmp3, %land.rhs ], !dbg !437
  br i1 %5, label %while.body, label %while.end, !dbg !429

while.body:                                       ; preds = %land.end
  %6 = load i8*, i8** %p, align 8, !dbg !438
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1, !dbg !438
  store i8* %incdec.ptr, i8** %p, align 8, !dbg !438
  br label %while.cond, !dbg !429, !llvm.loop !440

while.end:                                        ; preds = %land.end
  %7 = load i8*, i8** %p, align 8, !dbg !442
  %8 = load i8*, i8** %start.addr, align 8, !dbg !443
  %cmp5 = icmp ne i8* %7, %8, !dbg !444
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !445

cond.true:                                        ; preds = %while.end
  %9 = load i8*, i8** %p, align 8, !dbg !446
  br label %cond.end, !dbg !445

cond.false:                                       ; preds = %while.end
  br label %cond.end, !dbg !445

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %9, %cond.true ], [ null, %cond.false ], !dbg !445
  ret i8* %cond, !dbg !447
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.url_key_value* @parse_query_string(i8* noundef %begin, i8* noundef %end) #0 !dbg !448 {
entry:
  %retval = alloca %struct.url_key_value*, align 8
  %begin.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %elements = alloca i32, align 4
  %p = alloca i8*, align 8
  %kv = alloca %struct.url_key_value*, align 8
  %p9 = alloca i8*, align 8
  %element = alloca i32, align 4
  %key = alloca i8*, align 8
  %kv_end = alloca i8*, align 8
  %key_end = alloca i8*, align 8
  %has_value = alloca i8, align 1
  %value = alloca i8*, align 8
  store i8* %begin, i8** %begin.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %begin.addr, metadata !452, metadata !DIExpression()), !dbg !453
  store i8* %end, i8** %end.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !454, metadata !DIExpression()), !dbg !455
  call void @llvm.dbg.declare(metadata i32* %elements, metadata !456, metadata !DIExpression()), !dbg !457
  store i32 1, i32* %elements, align 4, !dbg !457
  call void @llvm.dbg.declare(metadata i8** %p, metadata !458, metadata !DIExpression()), !dbg !460
  %0 = load i8*, i8** %begin.addr, align 8, !dbg !461
  store i8* %0, i8** %p, align 8, !dbg !460
  br label %for.cond, !dbg !462

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i8*, i8** %p, align 8, !dbg !463
  %2 = load i8*, i8** %end.addr, align 8, !dbg !465
  %cmp = icmp ne i8* %1, %2, !dbg !466
  br i1 %cmp, label %for.body, label %for.end, !dbg !467

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %p, align 8, !dbg !468
  %4 = load i8, i8* %3, align 1, !dbg !471
  %conv = sext i8 %4 to i32, !dbg !471
  %cmp1 = icmp eq i32 %conv, 38, !dbg !472
  br i1 %cmp1, label %if.then, label %lor.lhs.false, !dbg !473

lor.lhs.false:                                    ; preds = %for.body
  %5 = load i8*, i8** %p, align 8, !dbg !474
  %6 = load i8, i8* %5, align 1, !dbg !475
  %conv3 = sext i8 %6 to i32, !dbg !475
  %cmp4 = icmp eq i32 %conv3, 59, !dbg !476
  br i1 %cmp4, label %if.then, label %if.end, !dbg !477

if.then:                                          ; preds = %lor.lhs.false, %for.body
  %7 = load i32, i32* %elements, align 4, !dbg !478
  %inc = add i32 %7, 1, !dbg !478
  store i32 %inc, i32* %elements, align 4, !dbg !478
  br label %if.end, !dbg !478

if.end:                                           ; preds = %if.then, %lor.lhs.false
  br label %for.inc, !dbg !479

for.inc:                                          ; preds = %if.end
  %8 = load i8*, i8** %p, align 8, !dbg !480
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1, !dbg !480
  store i8* %incdec.ptr, i8** %p, align 8, !dbg !480
  br label %for.cond, !dbg !481, !llvm.loop !482

for.end:                                          ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.url_key_value** %kv, metadata !484, metadata !DIExpression()), !dbg !485
  %9 = load i32, i32* %elements, align 4, !dbg !486
  %add = add i32 %9, 1, !dbg !487
  %conv6 = zext i32 %add to i64, !dbg !486
  %call = call i8* @calloc(i64 noundef %conv6, i64 noundef 16) #8, !dbg !488
  %10 = bitcast i8* %call to %struct.url_key_value*, !dbg !488
  store %struct.url_key_value* %10, %struct.url_key_value** %kv, align 8, !dbg !485
  %11 = load %struct.url_key_value*, %struct.url_key_value** %kv, align 8, !dbg !489
  %tobool = icmp ne %struct.url_key_value* %11, null, !dbg !489
  br i1 %tobool, label %if.end8, label %if.then7, !dbg !491

if.then7:                                         ; preds = %for.end
  store %struct.url_key_value* null, %struct.url_key_value** %retval, align 8, !dbg !492
  br label %return, !dbg !492

if.end8:                                          ; preds = %for.end
  call void @llvm.dbg.declare(metadata i8** %p9, metadata !493, metadata !DIExpression()), !dbg !494
  %12 = load i8*, i8** %begin.addr, align 8, !dbg !495
  store i8* %12, i8** %p9, align 8, !dbg !494
  call void @llvm.dbg.declare(metadata i32* %element, metadata !496, metadata !DIExpression()), !dbg !498
  store i32 0, i32* %element, align 4, !dbg !498
  br label %for.cond10, !dbg !499

for.cond10:                                       ; preds = %for.inc38, %if.end8
  %13 = load i32, i32* %element, align 4, !dbg !500
  %14 = load i32, i32* %elements, align 4, !dbg !502
  %cmp11 = icmp ule i32 %13, %14, !dbg !503
  br i1 %cmp11, label %land.rhs, label %land.end, !dbg !504

land.rhs:                                         ; preds = %for.cond10
  %15 = load i8*, i8** %p9, align 8, !dbg !505
  %16 = load i8*, i8** %end.addr, align 8, !dbg !506
  %cmp13 = icmp ult i8* %15, %16, !dbg !507
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond10
  %17 = phi i1 [ false, %for.cond10 ], [ %cmp13, %land.rhs ], !dbg !508
  br i1 %17, label %for.body15, label %for.end40, !dbg !509

for.body15:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i8** %key, metadata !510, metadata !DIExpression()), !dbg !512
  %18 = load i8*, i8** %p9, align 8, !dbg !513
  store i8* %18, i8** %key, align 8, !dbg !512
  call void @llvm.dbg.declare(metadata i8** %kv_end, metadata !514, metadata !DIExpression()), !dbg !515
  %19 = load i8*, i8** %p9, align 8, !dbg !516
  %call16 = call i8* @scan_part(i8* noundef %19, i32 noundef 64, i8 noundef signext 38, i8 noundef signext 59), !dbg !517
  store i8* %call16, i8** %kv_end, align 8, !dbg !515
  %20 = load i8*, i8** %kv_end, align 8, !dbg !518
  %tobool17 = icmp ne i8* %20, null, !dbg !518
  br i1 %tobool17, label %if.end20, label %if.then18, !dbg !520

if.then18:                                        ; preds = %for.body15
  br label %do.body, !dbg !521

do.body:                                          ; preds = %if.then18
  %21 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !dbg !522
  %22 = load i8*, i8** %p9, align 8, !dbg !522
  %call19 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %21, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.177, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.178, i64 0, i64 0), i32 noundef 153, i8* noundef %22), !dbg !522
  br label %error, !dbg !522

do.end:                                           ; No predecessors!
  br label %if.end20, !dbg !522

if.end20:                                         ; preds = %do.end, %for.body15
  %23 = load i8*, i8** %kv_end, align 8, !dbg !524
  store i8 0, i8* %23, align 1, !dbg !525
  call void @llvm.dbg.declare(metadata i8** %key_end, metadata !526, metadata !DIExpression()), !dbg !527
  %24 = load i8*, i8** %p9, align 8, !dbg !528
  %call21 = call i8* @scan_part(i8* noundef %24, i32 noundef 64, i8 noundef signext 61, i8 noundef signext 0), !dbg !529
  store i8* %call21, i8** %key_end, align 8, !dbg !527
  call void @llvm.dbg.declare(metadata i8* %has_value, metadata !530, metadata !DIExpression()), !dbg !533
  %25 = load i8*, i8** %key_end, align 8, !dbg !534
  %26 = load i8, i8* %25, align 1, !dbg !535
  %conv22 = sext i8 %26 to i32, !dbg !535
  %cmp23 = icmp eq i32 %conv22, 61, !dbg !536
  %frombool = zext i1 %cmp23 to i8, !dbg !533
  store i8 %frombool, i8* %has_value, align 1, !dbg !533
  %27 = load i8*, i8** %key_end, align 8, !dbg !537
  store i8 0, i8* %27, align 1, !dbg !538
  %28 = load i8*, i8** %key, align 8, !dbg !539
  %call25 = call i8* @decode_percent(i8* noundef %28), !dbg !540
  %29 = load %struct.url_key_value*, %struct.url_key_value** %kv, align 8, !dbg !541
  %30 = load i32, i32* %element, align 4, !dbg !542
  %idxprom = zext i32 %30 to i64, !dbg !541
  %arrayidx = getelementptr inbounds %struct.url_key_value, %struct.url_key_value* %29, i64 %idxprom, !dbg !541
  %key26 = getelementptr inbounds %struct.url_key_value, %struct.url_key_value* %arrayidx, i32 0, i32 0, !dbg !543
  store i8* %call25, i8** %key26, align 8, !dbg !544
  %31 = load i8, i8* %has_value, align 1, !dbg !545
  %tobool27 = trunc i8 %31 to i1, !dbg !545
  br i1 %tobool27, label %if.then28, label %if.else, !dbg !547

if.then28:                                        ; preds = %if.end20
  call void @llvm.dbg.declare(metadata i8** %value, metadata !548, metadata !DIExpression()), !dbg !550
  %32 = load i8*, i8** %key_end, align 8, !dbg !551
  %add.ptr = getelementptr inbounds i8, i8* %32, i64 1, !dbg !552
  store i8* %add.ptr, i8** %value, align 8, !dbg !550
  %33 = load i8*, i8** %value, align 8, !dbg !553
  %call29 = call i8* @decode_percent(i8* noundef %33), !dbg !554
  %34 = load %struct.url_key_value*, %struct.url_key_value** %kv, align 8, !dbg !555
  %35 = load i32, i32* %element, align 4, !dbg !556
  %idxprom30 = zext i32 %35 to i64, !dbg !555
  %arrayidx31 = getelementptr inbounds %struct.url_key_value, %struct.url_key_value* %34, i64 %idxprom30, !dbg !555
  %value32 = getelementptr inbounds %struct.url_key_value, %struct.url_key_value* %arrayidx31, i32 0, i32 1, !dbg !557
  store i8* %call29, i8** %value32, align 8, !dbg !558
  br label %if.end36, !dbg !559

if.else:                                          ; preds = %if.end20
  %36 = load i8*, i8** %key_end, align 8, !dbg !560
  %37 = load %struct.url_key_value*, %struct.url_key_value** %kv, align 8, !dbg !562
  %38 = load i32, i32* %element, align 4, !dbg !563
  %idxprom33 = zext i32 %38 to i64, !dbg !562
  %arrayidx34 = getelementptr inbounds %struct.url_key_value, %struct.url_key_value* %37, i64 %idxprom33, !dbg !562
  %value35 = getelementptr inbounds %struct.url_key_value, %struct.url_key_value* %arrayidx34, i32 0, i32 1, !dbg !564
  store i8* %36, i8** %value35, align 8, !dbg !565
  br label %if.end36

if.end36:                                         ; preds = %if.else, %if.then28
  %39 = load i8*, i8** %kv_end, align 8, !dbg !566
  %add.ptr37 = getelementptr inbounds i8, i8* %39, i64 1, !dbg !567
  store i8* %add.ptr37, i8** %p9, align 8, !dbg !568
  br label %for.inc38, !dbg !569

for.inc38:                                        ; preds = %if.end36
  %40 = load i32, i32* %element, align 4, !dbg !570
  %inc39 = add i32 %40, 1, !dbg !570
  store i32 %inc39, i32* %element, align 4, !dbg !570
  br label %for.cond10, !dbg !571, !llvm.loop !572

for.end40:                                        ; preds = %land.end
  %41 = load %struct.url_key_value*, %struct.url_key_value** %kv, align 8, !dbg !574
  store %struct.url_key_value* %41, %struct.url_key_value** %retval, align 8, !dbg !575
  br label %return, !dbg !575

error:                                            ; preds = %do.body
  call void @llvm.dbg.label(metadata !576), !dbg !577
  %42 = load %struct.url_key_value*, %struct.url_key_value** %kv, align 8, !dbg !578
  %43 = bitcast %struct.url_key_value* %42 to i8*, !dbg !578
  call void @free(i8* noundef %43), !dbg !579
  store %struct.url_key_value* null, %struct.url_key_value** %retval, align 8, !dbg !580
  br label %return, !dbg !580

return:                                           ; preds = %error, %for.end40, %if.then7
  %44 = load %struct.url_key_value*, %struct.url_key_value** %retval, align 8, !dbg !581
  ret %struct.url_key_value* %44, !dbg !581
}

; Function Attrs: allocsize(0,1)
declare i8* @calloc(i64 noundef, i64 noundef) #5

declare i32 @fprintf(%struct.__sFILE* noundef, i8* noundef, ...) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.url_data* @url_parse(i8* noundef %url) #0 !dbg !582 {
entry:
  %retval = alloca %struct.url_data*, align 8
  %url.addr = alloca i8*, align 8
  %data = alloca %struct.url_data*, align 8
  %p = alloca i8*, align 8
  %p_end = alloca i8*, align 8
  %protocol_end = alloca i8*, align 8
  %is_ssh = alloca i8, align 1
  %second_slash = alloca i8*, align 8
  %userinfo_end = alloca i8*, align 8
  %hostname_end = alloca i8*, align 8
  %port_end = alloca i8*, align 8
  %port_end111 = alloca i8*, align 8
  %path_end = alloca i8*, align 8
  %has_query = alloca i8, align 1
  %has_fragment = alloca i8, align 1
  %query_end = alloca i8*, align 8
  %has_fragment173 = alloca i8, align 1
  %fragment_end = alloca i8*, align 8
  %fragment_end201 = alloca i8*, align 8
  store i8* %url, i8** %url.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %url.addr, metadata !585, metadata !DIExpression()), !dbg !586
  call void @llvm.dbg.declare(metadata %struct.url_data** %data, metadata !587, metadata !DIExpression()), !dbg !588
  %call = call i8* @calloc(i64 noundef 1, i64 noundef 64) #8, !dbg !589
  %0 = bitcast i8* %call to %struct.url_data*, !dbg !590
  store %struct.url_data* %0, %struct.url_data** %data, align 8, !dbg !588
  %1 = load %struct.url_data*, %struct.url_data** %data, align 8, !dbg !591
  %tobool = icmp ne %struct.url_data* %1, null, !dbg !591
  br i1 %tobool, label %if.end, label %if.then, !dbg !593

if.then:                                          ; preds = %entry
  store %struct.url_data* null, %struct.url_data** %retval, align 8, !dbg !594
  br label %return, !dbg !594

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %p, metadata !595, metadata !DIExpression()), !dbg !596
  %2 = load i8*, i8** %url.addr, align 8, !dbg !597
  %call1 = call i8* @strdup(i8* noundef %2), !dbg !598
  store i8* %call1, i8** %p, align 8, !dbg !596
  %3 = load i8*, i8** %p, align 8, !dbg !599
  %tobool2 = icmp ne i8* %3, null, !dbg !599
  br i1 %tobool2, label %if.end5, label %if.then3, !dbg !601

if.then3:                                         ; preds = %if.end
  br label %do.body, !dbg !602

do.body:                                          ; preds = %if.then3
  %4 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !dbg !603
  %5 = load i8*, i8** %p, align 8, !dbg !603
  %call4 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %4, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.177, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.178, i64 0, i64 0), i32 noundef 190, i8* noundef %5), !dbg !603
  br label %error, !dbg !603

do.end:                                           ; No predecessors!
  br label %if.end5, !dbg !603

if.end5:                                          ; preds = %do.end, %if.end
  %6 = load i8*, i8** %p, align 8, !dbg !605
  %7 = load %struct.url_data*, %struct.url_data** %data, align 8, !dbg !606
  %whole_url = getelementptr inbounds %struct.url_data, %struct.url_data* %7, i32 0, i32 0, !dbg !607
  store i8* %6, i8** %whole_url, align 8, !dbg !608
  call void @llvm.dbg.declare(metadata i8** %p_end, metadata !609, metadata !DIExpression()), !dbg !611
  %8 = load i8*, i8** %p, align 8, !dbg !612
  %9 = load i8*, i8** %p, align 8, !dbg !613
  %call6 = call i64 @strlen(i8* noundef %9), !dbg !614
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %call6, !dbg !615
  store i8* %add.ptr, i8** %p_end, align 8, !dbg !611
  call void @llvm.dbg.declare(metadata i8** %protocol_end, metadata !616, metadata !DIExpression()), !dbg !617
  %10 = load i8*, i8** %p, align 8, !dbg !618
  %call7 = call i8* @scan_part(i8* noundef %10, i32 noundef 1, i8 noundef signext 58, i8 noundef signext 0), !dbg !619
  store i8* %call7, i8** %protocol_end, align 8, !dbg !617
  %11 = load i8*, i8** %protocol_end, align 8, !dbg !620
  %tobool8 = icmp ne i8* %11, null, !dbg !620
  br i1 %tobool8, label %lor.lhs.false, label %if.then10, !dbg !622

lor.lhs.false:                                    ; preds = %if.end5
  %12 = load i8*, i8** %protocol_end, align 8, !dbg !623
  %13 = load i8, i8* %12, align 1, !dbg !624
  %conv = sext i8 %13 to i32, !dbg !624
  %cmp = icmp eq i32 %conv, 0, !dbg !625
  br i1 %cmp, label %if.then10, label %if.end14, !dbg !626

if.then10:                                        ; preds = %lor.lhs.false, %if.end5
  br label %do.body11, !dbg !627

do.body11:                                        ; preds = %if.then10
  %14 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !dbg !628
  %15 = load i8*, i8** %p, align 8, !dbg !628
  %call12 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %14, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.177, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.178, i64 0, i64 0), i32 noundef 197, i8* noundef %15), !dbg !628
  br label %error, !dbg !628

do.end13:                                         ; No predecessors!
  br label %if.end14, !dbg !628

if.end14:                                         ; preds = %do.end13, %lor.lhs.false
  %16 = load i8*, i8** %protocol_end, align 8, !dbg !630
  store i8 0, i8* %16, align 1, !dbg !631
  %17 = load i8*, i8** %p, align 8, !dbg !632
  %18 = load %struct.url_data*, %struct.url_data** %data, align 8, !dbg !633
  %protocol = getelementptr inbounds %struct.url_data, %struct.url_data* %18, i32 0, i32 1, !dbg !634
  store i8* %17, i8** %protocol, align 8, !dbg !635
  call void @llvm.dbg.declare(metadata i8* %is_ssh, metadata !636, metadata !DIExpression()), !dbg !637
  %19 = load %struct.url_data*, %struct.url_data** %data, align 8, !dbg !638
  %protocol15 = getelementptr inbounds %struct.url_data, %struct.url_data* %19, i32 0, i32 1, !dbg !639
  %20 = load i8*, i8** %protocol15, align 8, !dbg !639
  %call16 = call zeroext i1 @url_is_ssh(i8* noundef %20), !dbg !640
  %frombool = zext i1 %call16 to i8, !dbg !637
  store i8 %frombool, i8* %is_ssh, align 1, !dbg !637
  %21 = load i8*, i8** %protocol_end, align 8, !dbg !641
  %add.ptr17 = getelementptr inbounds i8, i8* %21, i64 1, !dbg !642
  store i8* %add.ptr17, i8** %p, align 8, !dbg !643
  %22 = load i8*, i8** %p, align 8, !dbg !644
  %23 = load i8*, i8** %p_end, align 8, !dbg !646
  %cmp18 = icmp uge i8* %22, %23, !dbg !647
  br i1 %cmp18, label %if.then24, label %lor.lhs.false20, !dbg !648

lor.lhs.false20:                                  ; preds = %if.end14
  %24 = load i8*, i8** %p, align 8, !dbg !649
  %25 = load i8, i8* %24, align 1, !dbg !650
  %conv21 = sext i8 %25 to i32, !dbg !650
  %cmp22 = icmp ne i32 %conv21, 47, !dbg !651
  br i1 %cmp22, label %if.then24, label %if.end28, !dbg !652

if.then24:                                        ; preds = %lor.lhs.false20, %if.end14
  br label %do.body25, !dbg !653

do.body25:                                        ; preds = %if.then24
  %26 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !dbg !654
  %27 = load i8*, i8** %p, align 8, !dbg !654
  %call26 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %26, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.177, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.178, i64 0, i64 0), i32 noundef 205, i8* noundef %27), !dbg !654
  br label %error, !dbg !654

do.end27:                                         ; No predecessors!
  br label %if.end28, !dbg !654

if.end28:                                         ; preds = %do.end27, %lor.lhs.false20
  %28 = load i8*, i8** %p, align 8, !dbg !656
  %incdec.ptr = getelementptr inbounds i8, i8* %28, i32 1, !dbg !656
  store i8* %incdec.ptr, i8** %p, align 8, !dbg !656
  %29 = load i8*, i8** %p, align 8, !dbg !657
  %30 = load i8*, i8** %p_end, align 8, !dbg !659
  %cmp29 = icmp uge i8* %29, %30, !dbg !660
  br i1 %cmp29, label %if.then35, label %lor.lhs.false31, !dbg !661

lor.lhs.false31:                                  ; preds = %if.end28
  %31 = load i8*, i8** %p, align 8, !dbg !662
  %32 = load i8, i8* %31, align 1, !dbg !663
  %conv32 = sext i8 %32 to i32, !dbg !663
  %cmp33 = icmp ne i32 %conv32, 47, !dbg !664
  br i1 %cmp33, label %if.then35, label %if.end39, !dbg !665

if.then35:                                        ; preds = %lor.lhs.false31, %if.end28
  br label %do.body36, !dbg !666

do.body36:                                        ; preds = %if.then35
  %33 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !dbg !667
  %34 = load i8*, i8** %p, align 8, !dbg !667
  %call37 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %33, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.177, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.178, i64 0, i64 0), i32 noundef 209, i8* noundef %34), !dbg !667
  br label %error, !dbg !667

do.end38:                                         ; No predecessors!
  br label %if.end39, !dbg !667

if.end39:                                         ; preds = %do.end38, %lor.lhs.false31
  call void @llvm.dbg.declare(metadata i8** %second_slash, metadata !669, metadata !DIExpression()), !dbg !671
  %35 = load i8*, i8** %p, align 8, !dbg !672
  store i8* %35, i8** %second_slash, align 8, !dbg !671
  %36 = load i8*, i8** %p, align 8, !dbg !673
  %incdec.ptr40 = getelementptr inbounds i8, i8* %36, i32 1, !dbg !673
  store i8* %incdec.ptr40, i8** %p, align 8, !dbg !673
  %37 = load i8*, i8** %p, align 8, !dbg !674
  %38 = load i8*, i8** %p_end, align 8, !dbg !676
  %cmp41 = icmp uge i8* %37, %38, !dbg !677
  br i1 %cmp41, label %if.then43, label %if.end47, !dbg !678

if.then43:                                        ; preds = %if.end39
  br label %do.body44, !dbg !679

do.body44:                                        ; preds = %if.then43
  %39 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !dbg !680
  %40 = load i8*, i8** %p, align 8, !dbg !680
  %call45 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %39, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.177, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.178, i64 0, i64 0), i32 noundef 215, i8* noundef %40), !dbg !680
  br label %error, !dbg !680

do.end46:                                         ; No predecessors!
  br label %if.end47, !dbg !680

if.end47:                                         ; preds = %do.end46, %if.end39
  call void @llvm.dbg.declare(metadata i8** %userinfo_end, metadata !682, metadata !DIExpression()), !dbg !683
  %41 = load i8*, i8** %p, align 8, !dbg !684
  %call48 = call i8* @scan_part(i8* noundef %41, i32 noundef 128, i8 noundef signext 64, i8 noundef signext 0), !dbg !685
  store i8* %call48, i8** %userinfo_end, align 8, !dbg !683
  %42 = load i8*, i8** %userinfo_end, align 8, !dbg !686
  %tobool49 = icmp ne i8* %42, null, !dbg !686
  br i1 %tobool49, label %land.lhs.true, label %if.end55, !dbg !688

land.lhs.true:                                    ; preds = %if.end47
  %43 = load i8*, i8** %userinfo_end, align 8, !dbg !689
  %44 = load i8, i8* %43, align 1, !dbg !690
  %conv50 = sext i8 %44 to i32, !dbg !690
  %cmp51 = icmp eq i32 %conv50, 64, !dbg !691
  br i1 %cmp51, label %if.then53, label %if.end55, !dbg !692

if.then53:                                        ; preds = %land.lhs.true
  %45 = load i8*, i8** %userinfo_end, align 8, !dbg !693
  store i8 0, i8* %45, align 1, !dbg !695
  %46 = load i8*, i8** %p, align 8, !dbg !696
  %47 = load %struct.url_data*, %struct.url_data** %data, align 8, !dbg !697
  %userinfo = getelementptr inbounds %struct.url_data, %struct.url_data* %47, i32 0, i32 2, !dbg !698
  store i8* %46, i8** %userinfo, align 8, !dbg !699
  %48 = load i8*, i8** %userinfo_end, align 8, !dbg !700
  %add.ptr54 = getelementptr inbounds i8, i8* %48, i64 1, !dbg !701
  store i8* %add.ptr54, i8** %p, align 8, !dbg !702
  br label %if.end55, !dbg !703

if.end55:                                         ; preds = %if.then53, %land.lhs.true, %if.end47
  %49 = load i8*, i8** %p, align 8, !dbg !704
  %50 = load i8*, i8** %p_end, align 8, !dbg !706
  %cmp56 = icmp uge i8* %49, %50, !dbg !707
  br i1 %cmp56, label %if.then58, label %if.end62, !dbg !708

if.then58:                                        ; preds = %if.end55
  br label %do.body59, !dbg !709

do.body59:                                        ; preds = %if.then58
  %51 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !dbg !710
  %52 = load i8*, i8** %p, align 8, !dbg !710
  %call60 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %51, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.177, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.178, i64 0, i64 0), i32 noundef 225, i8* noundef %52), !dbg !710
  br label %error, !dbg !710

do.end61:                                         ; No predecessors!
  br label %if.end62, !dbg !710

if.end62:                                         ; preds = %do.end61, %if.end55
  call void @llvm.dbg.declare(metadata i8** %hostname_end, metadata !712, metadata !DIExpression()), !dbg !713
  store i8* null, i8** %hostname_end, align 8, !dbg !713
  %53 = load i8*, i8** %p, align 8, !dbg !714
  %54 = load i8, i8* %53, align 1, !dbg !716
  %conv63 = sext i8 %54 to i32, !dbg !716
  %cmp64 = icmp eq i32 %conv63, 91, !dbg !717
  br i1 %cmp64, label %if.then66, label %if.else96, !dbg !718

if.then66:                                        ; preds = %if.end62
  %55 = load i8*, i8** %p, align 8, !dbg !719
  %incdec.ptr67 = getelementptr inbounds i8, i8* %55, i32 1, !dbg !719
  store i8* %incdec.ptr67, i8** %p, align 8, !dbg !719
  %56 = load i8*, i8** %p, align 8, !dbg !721
  %call68 = call i8* @scan_part(i8* noundef %56, i32 noundef 256, i8 noundef signext 93, i8 noundef signext 0), !dbg !722
  store i8* %call68, i8** %hostname_end, align 8, !dbg !723
  %57 = load i8*, i8** %hostname_end, align 8, !dbg !724
  %tobool69 = icmp ne i8* %57, null, !dbg !724
  br i1 %tobool69, label %if.end74, label %if.then70, !dbg !726

if.then70:                                        ; preds = %if.then66
  br label %do.body71, !dbg !727

do.body71:                                        ; preds = %if.then70
  %58 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !dbg !728
  %59 = load i8*, i8** %p, align 8, !dbg !728
  %call72 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %58, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.177, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.178, i64 0, i64 0), i32 noundef 234, i8* noundef %59), !dbg !728
  br label %error, !dbg !728

do.end73:                                         ; No predecessors!
  br label %if.end74, !dbg !728

if.end74:                                         ; preds = %do.end73, %if.then66
  %60 = load i8*, i8** %hostname_end, align 8, !dbg !730
  store i8 0, i8* %60, align 1, !dbg !731
  %61 = load i8*, i8** %p, align 8, !dbg !732
  %62 = load %struct.url_data*, %struct.url_data** %data, align 8, !dbg !733
  %host = getelementptr inbounds %struct.url_data, %struct.url_data* %62, i32 0, i32 3, !dbg !734
  store i8* %61, i8** %host, align 8, !dbg !735
  %63 = load i8*, i8** %hostname_end, align 8, !dbg !736
  %incdec.ptr75 = getelementptr inbounds i8, i8* %63, i32 1, !dbg !736
  store i8* %incdec.ptr75, i8** %hostname_end, align 8, !dbg !736
  %64 = load i8*, i8** %hostname_end, align 8, !dbg !737
  %65 = load i8*, i8** %p_end, align 8, !dbg !739
  %cmp76 = icmp ult i8* %64, %65, !dbg !740
  br i1 %cmp76, label %land.lhs.true78, label %if.else94, !dbg !741

land.lhs.true78:                                  ; preds = %if.end74
  %66 = load i8, i8* %is_ssh, align 1, !dbg !742
  %tobool79 = trunc i8 %66 to i1, !dbg !742
  br i1 %tobool79, label %if.else94, label %land.lhs.true80, !dbg !743

land.lhs.true80:                                  ; preds = %land.lhs.true78
  %67 = load i8*, i8** %hostname_end, align 8, !dbg !744
  %68 = load i8, i8* %67, align 1, !dbg !745
  %conv81 = sext i8 %68 to i32, !dbg !745
  %cmp82 = icmp eq i32 %conv81, 58, !dbg !746
  br i1 %cmp82, label %if.then84, label %if.else94, !dbg !747

if.then84:                                        ; preds = %land.lhs.true80
  call void @llvm.dbg.declare(metadata i8** %port_end, metadata !748, metadata !DIExpression()), !dbg !750
  %69 = load i8*, i8** %hostname_end, align 8, !dbg !751
  %add.ptr85 = getelementptr inbounds i8, i8* %69, i64 1, !dbg !752
  %call86 = call i8* @scan_decimal_number(i8* noundef %add.ptr85), !dbg !753
  store i8* %call86, i8** %port_end, align 8, !dbg !750
  %70 = load i8*, i8** %port_end, align 8, !dbg !754
  %tobool87 = icmp ne i8* %70, null, !dbg !754
  br i1 %tobool87, label %if.then88, label %if.else, !dbg !756

if.then88:                                        ; preds = %if.then84
  %71 = load i8*, i8** %hostname_end, align 8, !dbg !757
  %add.ptr89 = getelementptr inbounds i8, i8* %71, i64 1, !dbg !759
  %72 = load %struct.url_data*, %struct.url_data** %data, align 8, !dbg !760
  %port = getelementptr inbounds %struct.url_data, %struct.url_data* %72, i32 0, i32 4, !dbg !761
  store i8* %add.ptr89, i8** %port, align 8, !dbg !762
  %73 = load i8*, i8** %port_end, align 8, !dbg !763
  store i8* %73, i8** %p, align 8, !dbg !764
  br label %if.end93, !dbg !765

if.else:                                          ; preds = %if.then84
  br label %do.body90, !dbg !766

do.body90:                                        ; preds = %if.else
  %74 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !dbg !768
  %75 = load i8*, i8** %p, align 8, !dbg !768
  %call91 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %74, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.177, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.178, i64 0, i64 0), i32 noundef 247, i8* noundef %75), !dbg !768
  br label %error, !dbg !768

do.end92:                                         ; No predecessors!
  br label %if.end93

if.end93:                                         ; preds = %do.end92, %if.then88
  br label %if.end95, !dbg !770

if.else94:                                        ; preds = %land.lhs.true80, %land.lhs.true78, %if.end74
  %76 = load i8*, i8** %hostname_end, align 8, !dbg !771
  store i8* %76, i8** %p, align 8, !dbg !773
  br label %if.end95

if.end95:                                         ; preds = %if.else94, %if.end93
  br label %if.end125, !dbg !774

if.else96:                                        ; preds = %if.end62
  %77 = load i8*, i8** %p, align 8, !dbg !775
  %call97 = call i8* @scan_part(i8* noundef %77, i32 noundef 10, i8 noundef signext 58, i8 noundef signext 47), !dbg !777
  store i8* %call97, i8** %hostname_end, align 8, !dbg !778
  %78 = load i8*, i8** %hostname_end, align 8, !dbg !779
  %tobool98 = icmp ne i8* %78, null, !dbg !779
  br i1 %tobool98, label %if.end103, label %if.then99, !dbg !781

if.then99:                                        ; preds = %if.else96
  br label %do.body100, !dbg !782

do.body100:                                       ; preds = %if.then99
  %79 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !dbg !783
  %80 = load i8*, i8** %p, align 8, !dbg !783
  %call101 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %79, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.177, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.178, i64 0, i64 0), i32 noundef 255, i8* noundef %80), !dbg !783
  br label %error, !dbg !783

do.end102:                                        ; No predecessors!
  br label %if.end103, !dbg !783

if.end103:                                        ; preds = %do.end102, %if.else96
  %81 = load i8*, i8** %p, align 8, !dbg !785
  %82 = load %struct.url_data*, %struct.url_data** %data, align 8, !dbg !786
  %host104 = getelementptr inbounds %struct.url_data, %struct.url_data* %82, i32 0, i32 3, !dbg !787
  store i8* %81, i8** %host104, align 8, !dbg !788
  %83 = load i8, i8* %is_ssh, align 1, !dbg !789
  %tobool105 = trunc i8 %83 to i1, !dbg !789
  br i1 %tobool105, label %if.else123, label %land.lhs.true106, !dbg !791

land.lhs.true106:                                 ; preds = %if.end103
  %84 = load i8*, i8** %hostname_end, align 8, !dbg !792
  %85 = load i8, i8* %84, align 1, !dbg !793
  %conv107 = sext i8 %85 to i32, !dbg !793
  %cmp108 = icmp eq i32 %conv107, 58, !dbg !794
  br i1 %cmp108, label %if.then110, label %if.else123, !dbg !795

if.then110:                                       ; preds = %land.lhs.true106
  %86 = load i8*, i8** %hostname_end, align 8, !dbg !796
  store i8 0, i8* %86, align 1, !dbg !798
  call void @llvm.dbg.declare(metadata i8** %port_end111, metadata !799, metadata !DIExpression()), !dbg !800
  %87 = load i8*, i8** %hostname_end, align 8, !dbg !801
  %add.ptr112 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !802
  %call113 = call i8* @scan_decimal_number(i8* noundef %add.ptr112), !dbg !803
  store i8* %call113, i8** %port_end111, align 8, !dbg !800
  %88 = load i8*, i8** %port_end111, align 8, !dbg !804
  %tobool114 = icmp ne i8* %88, null, !dbg !804
  br i1 %tobool114, label %if.then115, label %if.else118, !dbg !806

if.then115:                                       ; preds = %if.then110
  %89 = load i8*, i8** %hostname_end, align 8, !dbg !807
  %add.ptr116 = getelementptr inbounds i8, i8* %89, i64 1, !dbg !809
  %90 = load %struct.url_data*, %struct.url_data** %data, align 8, !dbg !810
  %port117 = getelementptr inbounds %struct.url_data, %struct.url_data* %90, i32 0, i32 4, !dbg !811
  store i8* %add.ptr116, i8** %port117, align 8, !dbg !812
  %91 = load i8*, i8** %port_end111, align 8, !dbg !813
  store i8* %91, i8** %p, align 8, !dbg !814
  br label %if.end122, !dbg !815

if.else118:                                       ; preds = %if.then110
  br label %do.body119, !dbg !816

do.body119:                                       ; preds = %if.else118
  %92 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !dbg !818
  %93 = load i8*, i8** %p, align 8, !dbg !818
  %call120 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %92, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.177, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.178, i64 0, i64 0), i32 noundef 267, i8* noundef %93), !dbg !818
  br label %error, !dbg !818

do.end121:                                        ; No predecessors!
  br label %if.end122

if.end122:                                        ; preds = %do.end121, %if.then115
  br label %if.end124, !dbg !820

if.else123:                                       ; preds = %land.lhs.true106, %if.end103
  %94 = load i8*, i8** %hostname_end, align 8, !dbg !821
  store i8* %94, i8** %p, align 8, !dbg !823
  br label %if.end124

if.end124:                                        ; preds = %if.else123, %if.end122
  br label %if.end125

if.end125:                                        ; preds = %if.end124, %if.end95
  %95 = load i8*, i8** %second_slash, align 8, !dbg !824
  %96 = load i8*, i8** %second_slash, align 8, !dbg !824
  %add.ptr126 = getelementptr inbounds i8, i8* %96, i64 1, !dbg !824
  %97 = load i8*, i8** %p, align 8, !dbg !824
  %98 = load i8*, i8** %second_slash, align 8, !dbg !824
  %sub.ptr.lhs.cast = ptrtoint i8* %97 to i64, !dbg !824
  %sub.ptr.rhs.cast = ptrtoint i8* %98 to i64, !dbg !824
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !824
  %99 = load i8*, i8** %second_slash, align 8, !dbg !824
  %100 = call i64 @llvm.objectsize.i64.p0i8(i8* %99, i1 false, i1 true, i1 false), !dbg !824
  %call127 = call i8* @__memmove_chk(i8* noundef %95, i8* noundef %add.ptr126, i64 noundef %sub.ptr.sub, i64 noundef %100) #7, !dbg !824
  %101 = load %struct.url_data*, %struct.url_data** %data, align 8, !dbg !825
  %userinfo128 = getelementptr inbounds %struct.url_data, %struct.url_data* %101, i32 0, i32 2, !dbg !827
  %102 = load i8*, i8** %userinfo128, align 8, !dbg !827
  %tobool129 = icmp ne i8* %102, null, !dbg !825
  br i1 %tobool129, label %if.then130, label %if.end133, !dbg !828

if.then130:                                       ; preds = %if.end125
  %103 = load %struct.url_data*, %struct.url_data** %data, align 8, !dbg !829
  %userinfo131 = getelementptr inbounds %struct.url_data, %struct.url_data* %103, i32 0, i32 2, !dbg !830
  %104 = load i8*, i8** %userinfo131, align 8, !dbg !831
  %incdec.ptr132 = getelementptr inbounds i8, i8* %104, i32 -1, !dbg !831
  store i8* %incdec.ptr132, i8** %userinfo131, align 8, !dbg !831
  br label %if.end133, !dbg !831

if.end133:                                        ; preds = %if.then130, %if.end125
  %105 = load %struct.url_data*, %struct.url_data** %data, align 8, !dbg !832
  %host134 = getelementptr inbounds %struct.url_data, %struct.url_data* %105, i32 0, i32 3, !dbg !833
  %106 = load i8*, i8** %host134, align 8, !dbg !834
  %incdec.ptr135 = getelementptr inbounds i8, i8* %106, i32 -1, !dbg !834
  store i8* %incdec.ptr135, i8** %host134, align 8, !dbg !834
  %107 = load %struct.url_data*, %struct.url_data** %data, align 8, !dbg !835
  %port136 = getelementptr inbounds %struct.url_data, %struct.url_data* %107, i32 0, i32 4, !dbg !837
  %108 = load i8*, i8** %port136, align 8, !dbg !837
  %tobool137 = icmp ne i8* %108, null, !dbg !835
  br i1 %tobool137, label %if.then138, label %if.end141, !dbg !838

if.then138:                                       ; preds = %if.end133
  %109 = load %struct.url_data*, %struct.url_data** %data, align 8, !dbg !839
  %port139 = getelementptr inbounds %struct.url_data, %struct.url_data* %109, i32 0, i32 4, !dbg !840
  %110 = load i8*, i8** %port139, align 8, !dbg !841
  %incdec.ptr140 = getelementptr inbounds i8, i8* %110, i32 -1, !dbg !841
  store i8* %incdec.ptr140, i8** %port139, align 8, !dbg !841
  br label %if.end141, !dbg !841

if.end141:                                        ; preds = %if.then138, %if.end133
  %111 = load i8*, i8** %p, align 8, !dbg !842
  %arrayidx = getelementptr inbounds i8, i8* %111, i64 -1, !dbg !842
  store i8 0, i8* %arrayidx, align 1, !dbg !843
  %112 = load i8, i8* %is_ssh, align 1, !dbg !844
  %tobool142 = trunc i8 %112 to i1, !dbg !844
  br i1 %tobool142, label %land.lhs.true144, label %if.end150, !dbg !846

land.lhs.true144:                                 ; preds = %if.end141
  %113 = load i8*, i8** %p, align 8, !dbg !847
  %114 = load i8, i8* %113, align 1, !dbg !848
  %conv145 = sext i8 %114 to i32, !dbg !848
  %cmp146 = icmp eq i32 %conv145, 58, !dbg !849
  br i1 %cmp146, label %if.then148, label %if.end150, !dbg !850

if.then148:                                       ; preds = %land.lhs.true144
  %115 = load i8*, i8** %p, align 8, !dbg !851
  %incdec.ptr149 = getelementptr inbounds i8, i8* %115, i32 1, !dbg !851
  store i8* %incdec.ptr149, i8** %p, align 8, !dbg !851
  br label %if.end150, !dbg !853

if.end150:                                        ; preds = %if.then148, %land.lhs.true144, %if.end141
  call void @llvm.dbg.declare(metadata i8** %path_end, metadata !854, metadata !DIExpression()), !dbg !855
  %116 = load i8*, i8** %p, align 8, !dbg !856
  %call151 = call i8* @scan_part(i8* noundef %116, i32 noundef 16, i8 noundef signext 63, i8 noundef signext 35), !dbg !857
  store i8* %call151, i8** %path_end, align 8, !dbg !855
  %117 = load i8*, i8** %path_end, align 8, !dbg !858
  %tobool152 = icmp ne i8* %117, null, !dbg !858
  br i1 %tobool152, label %if.end157, label %if.then153, !dbg !860

if.then153:                                       ; preds = %if.end150
  br label %do.body154, !dbg !861

do.body154:                                       ; preds = %if.then153
  %118 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !dbg !862
  %119 = load i8*, i8** %p, align 8, !dbg !862
  %call155 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %118, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.177, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.178, i64 0, i64 0), i32 noundef 295, i8* noundef %119), !dbg !862
  br label %error, !dbg !862

do.end156:                                        ; No predecessors!
  br label %if.end157, !dbg !862

if.end157:                                        ; preds = %do.end156, %if.end150
  call void @llvm.dbg.declare(metadata i8* %has_query, metadata !864, metadata !DIExpression()), !dbg !865
  %120 = load i8*, i8** %path_end, align 8, !dbg !866
  %121 = load i8, i8* %120, align 1, !dbg !867
  %conv158 = sext i8 %121 to i32, !dbg !867
  %cmp159 = icmp eq i32 %conv158, 63, !dbg !868
  %frombool161 = zext i1 %cmp159 to i8, !dbg !865
  store i8 %frombool161, i8* %has_query, align 1, !dbg !865
  call void @llvm.dbg.declare(metadata i8* %has_fragment, metadata !869, metadata !DIExpression()), !dbg !870
  %122 = load i8*, i8** %path_end, align 8, !dbg !871
  %123 = load i8, i8* %122, align 1, !dbg !872
  %conv162 = sext i8 %123 to i32, !dbg !872
  %cmp163 = icmp eq i32 %conv162, 35, !dbg !873
  %frombool165 = zext i1 %cmp163 to i8, !dbg !870
  store i8 %frombool165, i8* %has_fragment, align 1, !dbg !870
  %124 = load i8*, i8** %path_end, align 8, !dbg !874
  store i8 0, i8* %124, align 1, !dbg !875
  %125 = load i8*, i8** %p, align 8, !dbg !876
  %call166 = call i8* @decode_percent(i8* noundef %125), !dbg !877
  %126 = load %struct.url_data*, %struct.url_data** %data, align 8, !dbg !878
  %path = getelementptr inbounds %struct.url_data, %struct.url_data* %126, i32 0, i32 5, !dbg !879
  store i8* %call166, i8** %path, align 8, !dbg !880
  %127 = load i8*, i8** %path_end, align 8, !dbg !881
  %add.ptr167 = getelementptr inbounds i8, i8* %127, i64 1, !dbg !882
  store i8* %add.ptr167, i8** %p, align 8, !dbg !883
  %128 = load i8, i8* %has_query, align 1, !dbg !884
  %tobool168 = trunc i8 %128 to i1, !dbg !884
  br i1 %tobool168, label %if.then169, label %if.else198, !dbg !886

if.then169:                                       ; preds = %if.end157
  call void @llvm.dbg.declare(metadata i8** %query_end, metadata !887, metadata !DIExpression()), !dbg !889
  %129 = load i8*, i8** %p, align 8, !dbg !890
  %call170 = call i8* @scan_part(i8* noundef %129, i32 noundef 64, i8 noundef signext 35, i8 noundef signext 0), !dbg !891
  store i8* %call170, i8** %query_end, align 8, !dbg !889
  %130 = load i8*, i8** %query_end, align 8, !dbg !892
  %tobool171 = icmp ne i8* %130, null, !dbg !892
  br i1 %tobool171, label %if.then172, label %if.else193, !dbg !894

if.then172:                                       ; preds = %if.then169
  call void @llvm.dbg.declare(metadata i8* %has_fragment173, metadata !895, metadata !DIExpression()), !dbg !897
  %131 = load i8*, i8** %query_end, align 8, !dbg !898
  %132 = load i8, i8* %131, align 1, !dbg !899
  %conv174 = sext i8 %132 to i32, !dbg !899
  %cmp175 = icmp eq i32 %conv174, 35, !dbg !900
  %frombool177 = zext i1 %cmp175 to i8, !dbg !897
  store i8 %frombool177, i8* %has_fragment173, align 1, !dbg !897
  %133 = load i8*, i8** %query_end, align 8, !dbg !901
  store i8 0, i8* %133, align 1, !dbg !902
  %134 = load i8*, i8** %p, align 8, !dbg !903
  %135 = load i8*, i8** %query_end, align 8, !dbg !904
  %call178 = call %struct.url_key_value* @parse_query_string(i8* noundef %134, i8* noundef %135), !dbg !905
  %136 = load %struct.url_data*, %struct.url_data** %data, align 8, !dbg !906
  %query = getelementptr inbounds %struct.url_data, %struct.url_data* %136, i32 0, i32 6, !dbg !907
  store %struct.url_key_value* %call178, %struct.url_key_value** %query, align 8, !dbg !908
  %137 = load i8, i8* %has_fragment173, align 1, !dbg !909
  %tobool179 = trunc i8 %137 to i1, !dbg !909
  br i1 %tobool179, label %if.then180, label %if.end192, !dbg !911

if.then180:                                       ; preds = %if.then172
  call void @llvm.dbg.declare(metadata i8** %fragment_end, metadata !912, metadata !DIExpression()), !dbg !914
  %138 = load i8*, i8** %query_end, align 8, !dbg !915
  %add.ptr181 = getelementptr inbounds i8, i8* %138, i64 1, !dbg !916
  %call182 = call i8* @scan_part(i8* noundef %add.ptr181, i32 noundef 64, i8 noundef signext 0, i8 noundef signext 0), !dbg !917
  store i8* %call182, i8** %fragment_end, align 8, !dbg !914
  %139 = load i8*, i8** %fragment_end, align 8, !dbg !918
  %tobool183 = icmp ne i8* %139, null, !dbg !918
  br i1 %tobool183, label %if.then184, label %if.else187, !dbg !920

if.then184:                                       ; preds = %if.then180
  %140 = load i8*, i8** %query_end, align 8, !dbg !921
  %add.ptr185 = getelementptr inbounds i8, i8* %140, i64 1, !dbg !923
  %call186 = call i8* @decode_percent(i8* noundef %add.ptr185), !dbg !924
  %141 = load %struct.url_data*, %struct.url_data** %data, align 8, !dbg !925
  %fragment = getelementptr inbounds %struct.url_data, %struct.url_data* %141, i32 0, i32 7, !dbg !926
  store i8* %call186, i8** %fragment, align 8, !dbg !927
  br label %if.end191, !dbg !928

if.else187:                                       ; preds = %if.then180
  br label %do.body188, !dbg !929

do.body188:                                       ; preds = %if.else187
  %142 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !dbg !931
  %143 = load i8*, i8** %p, align 8, !dbg !931
  %call189 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %142, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.177, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.178, i64 0, i64 0), i32 noundef 319, i8* noundef %143), !dbg !931
  br label %error, !dbg !931

do.end190:                                        ; No predecessors!
  br label %if.end191

if.end191:                                        ; preds = %do.end190, %if.then184
  br label %if.end192, !dbg !933

if.end192:                                        ; preds = %if.end191, %if.then172
  br label %if.end197, !dbg !934

if.else193:                                       ; preds = %if.then169
  br label %do.body194, !dbg !935

do.body194:                                       ; preds = %if.else193
  %144 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !dbg !937
  %145 = load i8*, i8** %p, align 8, !dbg !937
  %call195 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %144, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.177, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.178, i64 0, i64 0), i32 noundef 323, i8* noundef %145), !dbg !937
  br label %error, !dbg !937

do.end196:                                        ; No predecessors!
  br label %if.end197

if.end197:                                        ; preds = %do.end196, %if.end192
  br label %if.end213, !dbg !939

if.else198:                                       ; preds = %if.end157
  %146 = load i8, i8* %has_fragment, align 1, !dbg !940
  %tobool199 = trunc i8 %146 to i1, !dbg !940
  br i1 %tobool199, label %if.then200, label %if.end212, !dbg !942

if.then200:                                       ; preds = %if.else198
  call void @llvm.dbg.declare(metadata i8** %fragment_end201, metadata !943, metadata !DIExpression()), !dbg !945
  %147 = load i8*, i8** %p, align 8, !dbg !946
  %call202 = call i8* @scan_part(i8* noundef %147, i32 noundef 64, i8 noundef signext 0, i8 noundef signext 0), !dbg !947
  store i8* %call202, i8** %fragment_end201, align 8, !dbg !945
  %148 = load i8*, i8** %fragment_end201, align 8, !dbg !948
  %tobool203 = icmp ne i8* %148, null, !dbg !948
  br i1 %tobool203, label %if.then204, label %if.else207, !dbg !950

if.then204:                                       ; preds = %if.then200
  %149 = load i8*, i8** %p, align 8, !dbg !951
  %call205 = call i8* @decode_percent(i8* noundef %149), !dbg !953
  %150 = load %struct.url_data*, %struct.url_data** %data, align 8, !dbg !954
  %fragment206 = getelementptr inbounds %struct.url_data, %struct.url_data* %150, i32 0, i32 7, !dbg !955
  store i8* %call205, i8** %fragment206, align 8, !dbg !956
  br label %if.end211, !dbg !957

if.else207:                                       ; preds = %if.then200
  br label %do.body208, !dbg !958

do.body208:                                       ; preds = %if.else207
  %151 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !dbg !960
  %152 = load i8*, i8** %p, align 8, !dbg !960
  %call209 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %151, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.177, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.178, i64 0, i64 0), i32 noundef 332, i8* noundef %152), !dbg !960
  br label %error, !dbg !960

do.end210:                                        ; No predecessors!
  br label %if.end211

if.end211:                                        ; preds = %do.end210, %if.then204
  br label %if.end212, !dbg !962

if.end212:                                        ; preds = %if.end211, %if.else198
  br label %if.end213

if.end213:                                        ; preds = %if.end212, %if.end197
  %153 = load %struct.url_data*, %struct.url_data** %data, align 8, !dbg !963
  store %struct.url_data* %153, %struct.url_data** %retval, align 8, !dbg !964
  br label %return, !dbg !964

error:                                            ; preds = %do.body208, %do.body194, %do.body188, %do.body154, %do.body119, %do.body100, %do.body90, %do.body71, %do.body59, %do.body44, %do.body36, %do.body25, %do.body11, %do.body
  call void @llvm.dbg.label(metadata !965), !dbg !966
  %154 = load %struct.url_data*, %struct.url_data** %data, align 8, !dbg !967
  call void @url_free(%struct.url_data* noundef %154), !dbg !968
  store %struct.url_data* null, %struct.url_data** %retval, align 8, !dbg !969
  br label %return, !dbg !969

return:                                           ; preds = %error, %if.end213, %if.then
  %155 = load %struct.url_data*, %struct.url_data** %retval, align 8, !dbg !970
  ret %struct.url_data* %155, !dbg !970
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @url_is_ssh(i8* noundef %str) #0 !dbg !971 {
entry:
  %retval = alloca i1, align 1
  %str.addr = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %str.addr, metadata !974, metadata !DIExpression()), !dbg !975
  %0 = load i8*, i8** %str.addr, align 8, !dbg !976
  %call = call i32 @strcmp(i8* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.139, i64 0, i64 0)), !dbg !978
  %cmp = icmp eq i32 0, %call, !dbg !979
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !980

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %str.addr, align 8, !dbg !981
  %call1 = call i32 @strcmp(i8* noundef %1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i64 0, i64 0)), !dbg !982
  %cmp2 = icmp eq i32 0, %call1, !dbg !983
  br i1 %cmp2, label %if.then, label %if.end, !dbg !984

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i1 true, i1* %retval, align 1, !dbg !985
  br label %return, !dbg !985

if.end:                                           ; preds = %lor.lhs.false
  store i1 false, i1* %retval, align 1, !dbg !987
  br label %return, !dbg !987

return:                                           ; preds = %if.end, %if.then
  %2 = load i1, i1* %retval, align 1, !dbg !988
  ret i1 %2, !dbg !988
}

; Function Attrs: nounwind
declare i8* @__memmove_chk(i8* noundef, i8* noundef, i64 noundef, i64 noundef) #4

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @url_free(%struct.url_data* noundef %data) #0 !dbg !989 {
entry:
  %data.addr = alloca %struct.url_data*, align 8
  store %struct.url_data* %data, %struct.url_data** %data.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.url_data** %data.addr, metadata !992, metadata !DIExpression()), !dbg !993
  %0 = load %struct.url_data*, %struct.url_data** %data.addr, align 8, !dbg !994
  %tobool = icmp ne %struct.url_data* %0, null, !dbg !994
  br i1 %tobool, label %if.end, label %if.then, !dbg !996

if.then:                                          ; preds = %entry
  br label %return, !dbg !997

if.end:                                           ; preds = %entry
  %1 = load %struct.url_data*, %struct.url_data** %data.addr, align 8, !dbg !998
  %whole_url = getelementptr inbounds %struct.url_data, %struct.url_data* %1, i32 0, i32 0, !dbg !999
  %2 = load i8*, i8** %whole_url, align 8, !dbg !999
  call void @free(i8* noundef %2), !dbg !1000
  %3 = load %struct.url_data*, %struct.url_data** %data.addr, align 8, !dbg !1001
  %query = getelementptr inbounds %struct.url_data, %struct.url_data* %3, i32 0, i32 6, !dbg !1002
  %4 = load %struct.url_key_value*, %struct.url_key_value** %query, align 8, !dbg !1002
  %5 = bitcast %struct.url_key_value* %4 to i8*, !dbg !1003
  call void @free(i8* noundef %5), !dbg !1004
  %6 = load %struct.url_data*, %struct.url_data** %data.addr, align 8, !dbg !1005
  %7 = bitcast %struct.url_data* %6 to i8*, !dbg !1005
  call void @free(i8* noundef %7), !dbg !1006
  br label %return, !dbg !1007

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !1007
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @url_is_protocol(i8* noundef %str) #0 !dbg !1008 {
entry:
  %retval = alloca i1, align 1
  %str.addr = alloca i8*, align 8
  %count = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %str.addr, metadata !1009, metadata !DIExpression()), !dbg !1010
  call void @llvm.dbg.declare(metadata i32* %count, metadata !1011, metadata !DIExpression()), !dbg !1013
  store i32 177, i32* %count, align 4, !dbg !1013
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1014, metadata !DIExpression()), !dbg !1016
  store i32 0, i32* %i, align 4, !dbg !1016
  br label %for.cond, !dbg !1017

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !1018
  %cmp = icmp ult i32 %0, 177, !dbg !1020
  br i1 %cmp, label %for.body, label %for.end, !dbg !1021

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4, !dbg !1022
  %idxprom = zext i32 %1 to i64, !dbg !1025
  %arrayidx = getelementptr inbounds [177 x i8*], [177 x i8*]* @URL_SCHEMES, i64 0, i64 %idxprom, !dbg !1025
  %2 = load i8*, i8** %arrayidx, align 8, !dbg !1025
  %3 = load i8*, i8** %str.addr, align 8, !dbg !1026
  %call = call i32 @strcmp(i8* noundef %2, i8* noundef %3), !dbg !1027
  %cmp1 = icmp eq i32 0, %call, !dbg !1028
  br i1 %cmp1, label %if.then, label %if.end, !dbg !1029

if.then:                                          ; preds = %for.body
  store i1 true, i1* %retval, align 1, !dbg !1030
  br label %return, !dbg !1030

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !1032

for.inc:                                          ; preds = %if.end
  %4 = load i32, i32* %i, align 4, !dbg !1033
  %inc = add i32 %4, 1, !dbg !1033
  store i32 %inc, i32* %i, align 4, !dbg !1033
  br label %for.cond, !dbg !1034, !llvm.loop !1035

for.end:                                          ; preds = %for.cond
  store i1 false, i1* %retval, align 1, !dbg !1037
  br label %return, !dbg !1037

return:                                           ; preds = %for.end, %if.then
  %5 = load i1, i1* %retval, align 1, !dbg !1038
  ret i1 %5, !dbg !1038
}

declare i32 @strcmp(i8* noundef, i8* noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @url_get_scheme(i8* noundef %url) #0 !dbg !1039 {
entry:
  %retval = alloca i8*, align 8
  %url.addr = alloca i8*, align 8
  %protocol = alloca i8*, align 8
  store i8* %url, i8** %url.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %url.addr, metadata !1040, metadata !DIExpression()), !dbg !1041
  call void @llvm.dbg.declare(metadata i8** %protocol, metadata !1042, metadata !DIExpression()), !dbg !1043
  %call = call i8* @malloc(i64 noundef 32) #6, !dbg !1044
  store i8* %call, i8** %protocol, align 8, !dbg !1043
  %0 = load i8*, i8** %protocol, align 8, !dbg !1045
  %tobool = icmp ne i8* %0, null, !dbg !1045
  br i1 %tobool, label %if.end, label %if.then, !dbg !1047

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8, !dbg !1048
  br label %return, !dbg !1048

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %url.addr, align 8, !dbg !1049
  %2 = load i8*, i8** %protocol, align 8, !dbg !1050
  %call1 = call i32 (i8*, i8*, ...) @sscanf(i8* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.179, i64 0, i64 0), i8* noundef %2), !dbg !1051
  %3 = load i8*, i8** %protocol, align 8, !dbg !1052
  %call2 = call zeroext i1 @url_is_protocol(i8* noundef %3), !dbg !1054
  br i1 %call2, label %if.then3, label %if.end4, !dbg !1055

if.then3:                                         ; preds = %if.end
  %4 = load i8*, i8** %protocol, align 8, !dbg !1056
  store i8* %4, i8** %retval, align 8, !dbg !1057
  br label %return, !dbg !1057

if.end4:                                          ; preds = %if.end
  %5 = load i8*, i8** %protocol, align 8, !dbg !1058
  call void @free(i8* noundef %5), !dbg !1059
  store i8* null, i8** %retval, align 8, !dbg !1060
  br label %return, !dbg !1060

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %6 = load i8*, i8** %retval, align 8, !dbg !1061
  ret i8* %6, !dbg !1061
}

declare i32 @sscanf(i8* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @url_get_userinfo(i8* noundef %url) #0 !dbg !1062 {
entry:
  %url.addr = alloca i8*, align 8
  %data = alloca %struct.url_data*, align 8
  %out = alloca i8*, align 8
  store i8* %url, i8** %url.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %url.addr, metadata !1063, metadata !DIExpression()), !dbg !1064
  br label %do.body, !dbg !1065

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.url_data** %data, metadata !1066, metadata !DIExpression()), !dbg !1068
  %0 = load i8*, i8** %url.addr, align 8, !dbg !1068
  %call = call %struct.url_data* @url_parse(i8* noundef %0), !dbg !1068
  store %struct.url_data* %call, %struct.url_data** %data, align 8, !dbg !1068
  call void @llvm.dbg.declare(metadata i8** %out, metadata !1069, metadata !DIExpression()), !dbg !1068
  %1 = load %struct.url_data*, %struct.url_data** %data, align 8, !dbg !1068
  %tobool = icmp ne %struct.url_data* %1, null, !dbg !1068
  br i1 %tobool, label %land.lhs.true, label %cond.false, !dbg !1068

land.lhs.true:                                    ; preds = %do.body
  %2 = load %struct.url_data*, %struct.url_data** %data, align 8, !dbg !1068
  %userinfo = getelementptr inbounds %struct.url_data, %struct.url_data* %2, i32 0, i32 2, !dbg !1068
  %3 = load i8*, i8** %userinfo, align 8, !dbg !1068
  %tobool1 = icmp ne i8* %3, null, !dbg !1068
  br i1 %tobool1, label %cond.true, label %cond.false, !dbg !1068

cond.true:                                        ; preds = %land.lhs.true
  %4 = load %struct.url_data*, %struct.url_data** %data, align 8, !dbg !1068
  %userinfo2 = getelementptr inbounds %struct.url_data, %struct.url_data* %4, i32 0, i32 2, !dbg !1068
  %5 = load i8*, i8** %userinfo2, align 8, !dbg !1068
  %call3 = call i8* @strdup(i8* noundef %5), !dbg !1068
  br label %cond.end, !dbg !1068

cond.false:                                       ; preds = %land.lhs.true, %do.body
  br label %cond.end, !dbg !1068

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call3, %cond.true ], [ null, %cond.false ], !dbg !1068
  store i8* %cond, i8** %out, align 8, !dbg !1068
  %6 = load %struct.url_data*, %struct.url_data** %data, align 8, !dbg !1068
  call void @url_free(%struct.url_data* noundef %6), !dbg !1068
  %7 = load i8*, i8** %out, align 8, !dbg !1068
  br label %do.end, !dbg !1068

do.end:                                           ; preds = %cond.end
  ret i8* %7, !dbg !1068
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @url_get_hostname(i8* noundef %url) #0 !dbg !1070 {
entry:
  %url.addr = alloca i8*, align 8
  %data = alloca %struct.url_data*, align 8
  %out = alloca i8*, align 8
  store i8* %url, i8** %url.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %url.addr, metadata !1071, metadata !DIExpression()), !dbg !1072
  br label %do.body, !dbg !1073

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.url_data** %data, metadata !1074, metadata !DIExpression()), !dbg !1076
  %0 = load i8*, i8** %url.addr, align 8, !dbg !1076
  %call = call %struct.url_data* @url_parse(i8* noundef %0), !dbg !1076
  store %struct.url_data* %call, %struct.url_data** %data, align 8, !dbg !1076
  call void @llvm.dbg.declare(metadata i8** %out, metadata !1077, metadata !DIExpression()), !dbg !1076
  %1 = load %struct.url_data*, %struct.url_data** %data, align 8, !dbg !1076
  %tobool = icmp ne %struct.url_data* %1, null, !dbg !1076
  br i1 %tobool, label %land.lhs.true, label %cond.false, !dbg !1076

land.lhs.true:                                    ; preds = %do.body
  %2 = load %struct.url_data*, %struct.url_data** %data, align 8, !dbg !1076
  %host = getelementptr inbounds %struct.url_data, %struct.url_data* %2, i32 0, i32 3, !dbg !1076
  %3 = load i8*, i8** %host, align 8, !dbg !1076
  %tobool1 = icmp ne i8* %3, null, !dbg !1076
  br i1 %tobool1, label %cond.true, label %cond.false, !dbg !1076

cond.true:                                        ; preds = %land.lhs.true
  %4 = load %struct.url_data*, %struct.url_data** %data, align 8, !dbg !1076
  %host2 = getelementptr inbounds %struct.url_data, %struct.url_data* %4, i32 0, i32 3, !dbg !1076
  %5 = load i8*, i8** %host2, align 8, !dbg !1076
  %call3 = call i8* @strdup(i8* noundef %5), !dbg !1076
  br label %cond.end, !dbg !1076

cond.false:                                       ; preds = %land.lhs.true, %do.body
  br label %cond.end, !dbg !1076

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call3, %cond.true ], [ null, %cond.false ], !dbg !1076
  store i8* %cond, i8** %out, align 8, !dbg !1076
  %6 = load %struct.url_data*, %struct.url_data** %data, align 8, !dbg !1076
  call void @url_free(%struct.url_data* noundef %6), !dbg !1076
  %7 = load i8*, i8** %out, align 8, !dbg !1076
  br label %do.end, !dbg !1076

do.end:                                           ; preds = %cond.end
  ret i8* %7, !dbg !1076
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @url_get_host(i8* noundef %url) #0 !dbg !1078 {
entry:
  %url.addr = alloca i8*, align 8
  %data = alloca %struct.url_data*, align 8
  %out = alloca i8*, align 8
  store i8* %url, i8** %url.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %url.addr, metadata !1079, metadata !DIExpression()), !dbg !1080
  br label %do.body, !dbg !1081

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.url_data** %data, metadata !1082, metadata !DIExpression()), !dbg !1084
  %0 = load i8*, i8** %url.addr, align 8, !dbg !1084
  %call = call %struct.url_data* @url_parse(i8* noundef %0), !dbg !1084
  store %struct.url_data* %call, %struct.url_data** %data, align 8, !dbg !1084
  call void @llvm.dbg.declare(metadata i8** %out, metadata !1085, metadata !DIExpression()), !dbg !1084
  %1 = load %struct.url_data*, %struct.url_data** %data, align 8, !dbg !1084
  %tobool = icmp ne %struct.url_data* %1, null, !dbg !1084
  br i1 %tobool, label %land.lhs.true, label %cond.false, !dbg !1084

land.lhs.true:                                    ; preds = %do.body
  %2 = load %struct.url_data*, %struct.url_data** %data, align 8, !dbg !1084
  %host = getelementptr inbounds %struct.url_data, %struct.url_data* %2, i32 0, i32 3, !dbg !1084
  %3 = load i8*, i8** %host, align 8, !dbg !1084
  %tobool1 = icmp ne i8* %3, null, !dbg !1084
  br i1 %tobool1, label %cond.true, label %cond.false, !dbg !1084

cond.true:                                        ; preds = %land.lhs.true
  %4 = load %struct.url_data*, %struct.url_data** %data, align 8, !dbg !1084
  %host2 = getelementptr inbounds %struct.url_data, %struct.url_data* %4, i32 0, i32 3, !dbg !1084
  %5 = load i8*, i8** %host2, align 8, !dbg !1084
  %call3 = call i8* @strdup(i8* noundef %5), !dbg !1084
  br label %cond.end, !dbg !1084

cond.false:                                       ; preds = %land.lhs.true, %do.body
  br label %cond.end, !dbg !1084

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call3, %cond.true ], [ null, %cond.false ], !dbg !1084
  store i8* %cond, i8** %out, align 8, !dbg !1084
  %6 = load %struct.url_data*, %struct.url_data** %data, align 8, !dbg !1084
  call void @url_free(%struct.url_data* noundef %6), !dbg !1084
  %7 = load i8*, i8** %out, align 8, !dbg !1084
  br label %do.end, !dbg !1084

do.end:                                           ; preds = %cond.end
  ret i8* %7, !dbg !1084
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @url_get_pathname(i8* noundef %url) #0 !dbg !1086 {
entry:
  %url.addr = alloca i8*, align 8
  %data = alloca %struct.url_data*, align 8
  %out = alloca i8*, align 8
  store i8* %url, i8** %url.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %url.addr, metadata !1087, metadata !DIExpression()), !dbg !1088
  br label %do.body, !dbg !1089

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.url_data** %data, metadata !1090, metadata !DIExpression()), !dbg !1092
  %0 = load i8*, i8** %url.addr, align 8, !dbg !1092
  %call = call %struct.url_data* @url_parse(i8* noundef %0), !dbg !1092
  store %struct.url_data* %call, %struct.url_data** %data, align 8, !dbg !1092
  call void @llvm.dbg.declare(metadata i8** %out, metadata !1093, metadata !DIExpression()), !dbg !1092
  %1 = load %struct.url_data*, %struct.url_data** %data, align 8, !dbg !1092
  %tobool = icmp ne %struct.url_data* %1, null, !dbg !1092
  br i1 %tobool, label %land.lhs.true, label %cond.false, !dbg !1092

land.lhs.true:                                    ; preds = %do.body
  %2 = load %struct.url_data*, %struct.url_data** %data, align 8, !dbg !1092
  %path = getelementptr inbounds %struct.url_data, %struct.url_data* %2, i32 0, i32 5, !dbg !1092
  %3 = load i8*, i8** %path, align 8, !dbg !1092
  %tobool1 = icmp ne i8* %3, null, !dbg !1092
  br i1 %tobool1, label %cond.true, label %cond.false, !dbg !1092

cond.true:                                        ; preds = %land.lhs.true
  %4 = load %struct.url_data*, %struct.url_data** %data, align 8, !dbg !1092
  %path2 = getelementptr inbounds %struct.url_data, %struct.url_data* %4, i32 0, i32 5, !dbg !1092
  %5 = load i8*, i8** %path2, align 8, !dbg !1092
  %call3 = call i8* @strdup(i8* noundef %5), !dbg !1092
  br label %cond.end, !dbg !1092

cond.false:                                       ; preds = %land.lhs.true, %do.body
  br label %cond.end, !dbg !1092

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call3, %cond.true ], [ null, %cond.false ], !dbg !1092
  store i8* %cond, i8** %out, align 8, !dbg !1092
  %6 = load %struct.url_data*, %struct.url_data** %data, align 8, !dbg !1092
  call void @url_free(%struct.url_data* noundef %6), !dbg !1092
  %7 = load i8*, i8** %out, align 8, !dbg !1092
  br label %do.end, !dbg !1092

do.end:                                           ; preds = %cond.end
  ret i8* %7, !dbg !1092
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @url_get_path(i8* noundef %url) #0 !dbg !1094 {
entry:
  %url.addr = alloca i8*, align 8
  %data = alloca %struct.url_data*, align 8
  %out = alloca i8*, align 8
  store i8* %url, i8** %url.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %url.addr, metadata !1095, metadata !DIExpression()), !dbg !1096
  br label %do.body, !dbg !1097

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.url_data** %data, metadata !1098, metadata !DIExpression()), !dbg !1100
  %0 = load i8*, i8** %url.addr, align 8, !dbg !1100
  %call = call %struct.url_data* @url_parse(i8* noundef %0), !dbg !1100
  store %struct.url_data* %call, %struct.url_data** %data, align 8, !dbg !1100
  call void @llvm.dbg.declare(metadata i8** %out, metadata !1101, metadata !DIExpression()), !dbg !1100
  %1 = load %struct.url_data*, %struct.url_data** %data, align 8, !dbg !1100
  %tobool = icmp ne %struct.url_data* %1, null, !dbg !1100
  br i1 %tobool, label %land.lhs.true, label %cond.false, !dbg !1100

land.lhs.true:                                    ; preds = %do.body
  %2 = load %struct.url_data*, %struct.url_data** %data, align 8, !dbg !1100
  %path = getelementptr inbounds %struct.url_data, %struct.url_data* %2, i32 0, i32 5, !dbg !1100
  %3 = load i8*, i8** %path, align 8, !dbg !1100
  %tobool1 = icmp ne i8* %3, null, !dbg !1100
  br i1 %tobool1, label %cond.true, label %cond.false, !dbg !1100

cond.true:                                        ; preds = %land.lhs.true
  %4 = load %struct.url_data*, %struct.url_data** %data, align 8, !dbg !1100
  %path2 = getelementptr inbounds %struct.url_data, %struct.url_data* %4, i32 0, i32 5, !dbg !1100
  %5 = load i8*, i8** %path2, align 8, !dbg !1100
  %call3 = call i8* @strdup(i8* noundef %5), !dbg !1100
  br label %cond.end, !dbg !1100

cond.false:                                       ; preds = %land.lhs.true, %do.body
  br label %cond.end, !dbg !1100

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call3, %cond.true ], [ null, %cond.false ], !dbg !1100
  store i8* %cond, i8** %out, align 8, !dbg !1100
  %6 = load %struct.url_data*, %struct.url_data** %data, align 8, !dbg !1100
  call void @url_free(%struct.url_data* noundef %6), !dbg !1100
  %7 = load i8*, i8** %out, align 8, !dbg !1100
  br label %do.end, !dbg !1100

do.end:                                           ; preds = %cond.end
  ret i8* %7, !dbg !1100
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @url_get_query_value(%struct.url_data* noundef %url, i8* noundef %key) #0 !dbg !1102 {
entry:
  %retval = alloca i8*, align 8
  %url.addr = alloca %struct.url_data*, align 8
  %key.addr = alloca i8*, align 8
  %kv = alloca %struct.url_key_value*, align 8
  store %struct.url_data* %url, %struct.url_data** %url.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.url_data** %url.addr, metadata !1107, metadata !DIExpression()), !dbg !1108
  store i8* %key, i8** %key.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %key.addr, metadata !1109, metadata !DIExpression()), !dbg !1110
  %0 = load %struct.url_data*, %struct.url_data** %url.addr, align 8, !dbg !1111
  %query = getelementptr inbounds %struct.url_data, %struct.url_data* %0, i32 0, i32 6, !dbg !1113
  %1 = load %struct.url_key_value*, %struct.url_key_value** %query, align 8, !dbg !1113
  %cmp = icmp eq %struct.url_key_value* %1, null, !dbg !1114
  br i1 %cmp, label %if.then, label %if.end, !dbg !1115

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8, !dbg !1116
  br label %return, !dbg !1116

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.url_key_value** %kv, metadata !1117, metadata !DIExpression()), !dbg !1119
  %2 = load %struct.url_data*, %struct.url_data** %url.addr, align 8, !dbg !1120
  %query1 = getelementptr inbounds %struct.url_data, %struct.url_data* %2, i32 0, i32 6, !dbg !1121
  %3 = load %struct.url_key_value*, %struct.url_key_value** %query1, align 8, !dbg !1121
  store %struct.url_key_value* %3, %struct.url_key_value** %kv, align 8, !dbg !1119
  br label %for.cond, !dbg !1122

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load %struct.url_key_value*, %struct.url_key_value** %kv, align 8, !dbg !1123
  %key2 = getelementptr inbounds %struct.url_key_value, %struct.url_key_value* %4, i32 0, i32 0, !dbg !1125
  %5 = load i8*, i8** %key2, align 8, !dbg !1125
  %tobool = icmp ne i8* %5, null, !dbg !1126
  br i1 %tobool, label %for.body, label %for.end, !dbg !1126

for.body:                                         ; preds = %for.cond
  %6 = load %struct.url_key_value*, %struct.url_key_value** %kv, align 8, !dbg !1127
  %key3 = getelementptr inbounds %struct.url_key_value, %struct.url_key_value* %6, i32 0, i32 0, !dbg !1130
  %7 = load i8*, i8** %key3, align 8, !dbg !1130
  %8 = load i8*, i8** %key.addr, align 8, !dbg !1131
  %call = call i32 @strcmp(i8* noundef %7, i8* noundef %8), !dbg !1132
  %cmp4 = icmp eq i32 %call, 0, !dbg !1133
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1134

if.then5:                                         ; preds = %for.body
  %9 = load %struct.url_key_value*, %struct.url_key_value** %kv, align 8, !dbg !1135
  %value = getelementptr inbounds %struct.url_key_value, %struct.url_key_value* %9, i32 0, i32 1, !dbg !1136
  %10 = load i8*, i8** %value, align 8, !dbg !1136
  store i8* %10, i8** %retval, align 8, !dbg !1137
  br label %return, !dbg !1137

if.end6:                                          ; preds = %for.body
  br label %for.inc, !dbg !1138

for.inc:                                          ; preds = %if.end6
  %11 = load %struct.url_key_value*, %struct.url_key_value** %kv, align 8, !dbg !1139
  %incdec.ptr = getelementptr inbounds %struct.url_key_value, %struct.url_key_value* %11, i32 1, !dbg !1139
  store %struct.url_key_value* %incdec.ptr, %struct.url_key_value** %kv, align 8, !dbg !1139
  br label %for.cond, !dbg !1140, !llvm.loop !1141

for.end:                                          ; preds = %for.cond
  store i8* null, i8** %retval, align 8, !dbg !1143
  br label %return, !dbg !1143

return:                                           ; preds = %for.end, %if.then5, %if.then
  %12 = load i8*, i8** %retval, align 8, !dbg !1144
  ret i8* %12, !dbg !1144
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @url_get_fragment(i8* noundef %url) #0 !dbg !1145 {
entry:
  %url.addr = alloca i8*, align 8
  %data = alloca %struct.url_data*, align 8
  %out = alloca i8*, align 8
  store i8* %url, i8** %url.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %url.addr, metadata !1146, metadata !DIExpression()), !dbg !1147
  br label %do.body, !dbg !1148

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.url_data** %data, metadata !1149, metadata !DIExpression()), !dbg !1151
  %0 = load i8*, i8** %url.addr, align 8, !dbg !1151
  %call = call %struct.url_data* @url_parse(i8* noundef %0), !dbg !1151
  store %struct.url_data* %call, %struct.url_data** %data, align 8, !dbg !1151
  call void @llvm.dbg.declare(metadata i8** %out, metadata !1152, metadata !DIExpression()), !dbg !1151
  %1 = load %struct.url_data*, %struct.url_data** %data, align 8, !dbg !1151
  %tobool = icmp ne %struct.url_data* %1, null, !dbg !1151
  br i1 %tobool, label %land.lhs.true, label %cond.false, !dbg !1151

land.lhs.true:                                    ; preds = %do.body
  %2 = load %struct.url_data*, %struct.url_data** %data, align 8, !dbg !1151
  %fragment = getelementptr inbounds %struct.url_data, %struct.url_data* %2, i32 0, i32 7, !dbg !1151
  %3 = load i8*, i8** %fragment, align 8, !dbg !1151
  %tobool1 = icmp ne i8* %3, null, !dbg !1151
  br i1 %tobool1, label %cond.true, label %cond.false, !dbg !1151

cond.true:                                        ; preds = %land.lhs.true
  %4 = load %struct.url_data*, %struct.url_data** %data, align 8, !dbg !1151
  %fragment2 = getelementptr inbounds %struct.url_data, %struct.url_data* %4, i32 0, i32 7, !dbg !1151
  %5 = load i8*, i8** %fragment2, align 8, !dbg !1151
  %call3 = call i8* @strdup(i8* noundef %5), !dbg !1151
  br label %cond.end, !dbg !1151

cond.false:                                       ; preds = %land.lhs.true, %do.body
  br label %cond.end, !dbg !1151

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call3, %cond.true ], [ null, %cond.false ], !dbg !1151
  store i8* %cond, i8** %out, align 8, !dbg !1151
  %6 = load %struct.url_data*, %struct.url_data** %data, align 8, !dbg !1151
  call void @url_free(%struct.url_data* noundef %6), !dbg !1151
  %7 = load i8*, i8** %out, align 8, !dbg !1151
  br label %do.end, !dbg !1151

do.end:                                           ; preds = %cond.end
  ret i8* %7, !dbg !1151
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @url_get_port(i8* noundef %url) #0 !dbg !1153 {
entry:
  %url.addr = alloca i8*, align 8
  %data = alloca %struct.url_data*, align 8
  %out = alloca i8*, align 8
  store i8* %url, i8** %url.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %url.addr, metadata !1154, metadata !DIExpression()), !dbg !1155
  br label %do.body, !dbg !1156

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.url_data** %data, metadata !1157, metadata !DIExpression()), !dbg !1159
  %0 = load i8*, i8** %url.addr, align 8, !dbg !1159
  %call = call %struct.url_data* @url_parse(i8* noundef %0), !dbg !1159
  store %struct.url_data* %call, %struct.url_data** %data, align 8, !dbg !1159
  call void @llvm.dbg.declare(metadata i8** %out, metadata !1160, metadata !DIExpression()), !dbg !1159
  %1 = load %struct.url_data*, %struct.url_data** %data, align 8, !dbg !1159
  %tobool = icmp ne %struct.url_data* %1, null, !dbg !1159
  br i1 %tobool, label %land.lhs.true, label %cond.false, !dbg !1159

land.lhs.true:                                    ; preds = %do.body
  %2 = load %struct.url_data*, %struct.url_data** %data, align 8, !dbg !1159
  %port = getelementptr inbounds %struct.url_data, %struct.url_data* %2, i32 0, i32 4, !dbg !1159
  %3 = load i8*, i8** %port, align 8, !dbg !1159
  %tobool1 = icmp ne i8* %3, null, !dbg !1159
  br i1 %tobool1, label %cond.true, label %cond.false, !dbg !1159

cond.true:                                        ; preds = %land.lhs.true
  %4 = load %struct.url_data*, %struct.url_data** %data, align 8, !dbg !1159
  %port2 = getelementptr inbounds %struct.url_data, %struct.url_data* %4, i32 0, i32 4, !dbg !1159
  %5 = load i8*, i8** %port2, align 8, !dbg !1159
  %call3 = call i8* @strdup(i8* noundef %5), !dbg !1159
  br label %cond.end, !dbg !1159

cond.false:                                       ; preds = %land.lhs.true, %do.body
  br label %cond.end, !dbg !1159

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call3, %cond.true ], [ null, %cond.false ], !dbg !1159
  store i8* %cond, i8** %out, align 8, !dbg !1159
  %6 = load %struct.url_data*, %struct.url_data** %data, align 8, !dbg !1159
  call void @url_free(%struct.url_data* noundef %6), !dbg !1159
  %7 = load i8*, i8** %out, align 8, !dbg !1159
  br label %do.end, !dbg !1159

do.end:                                           ; preds = %cond.end
  ret i8* %7, !dbg !1159
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @url_inspect(i8* noundef %url) #0 !dbg !1161 {
entry:
  %url.addr = alloca i8*, align 8
  store i8* %url, i8** %url.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %url.addr, metadata !1164, metadata !DIExpression()), !dbg !1165
  %0 = load i8*, i8** %url.addr, align 8, !dbg !1166
  %call = call %struct.url_data* @url_parse(i8* noundef %0), !dbg !1167
  call void @url_data_inspect(%struct.url_data* noundef %call), !dbg !1168
  ret void, !dbg !1169
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @url_data_inspect(%struct.url_data* noundef %data) #0 !dbg !1170 {
entry:
  %data.addr = alloca %struct.url_data*, align 8
  %nr = alloca i32, align 4
  store %struct.url_data* %data, %struct.url_data** %data.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.url_data** %data.addr, metadata !1173, metadata !DIExpression()), !dbg !1174
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.180, i64 0, i64 0)), !dbg !1175
  br label %do.body, !dbg !1176

do.body:                                          ; preds = %entry
  %0 = load %struct.url_data*, %struct.url_data** %data.addr, align 8, !dbg !1177
  %protocol = getelementptr inbounds %struct.url_data, %struct.url_data* %0, i32 0, i32 1, !dbg !1177
  %1 = load i8*, i8** %protocol, align 8, !dbg !1177
  %tobool = icmp ne i8* %1, null, !dbg !1177
  br i1 %tobool, label %if.then, label %if.else, !dbg !1180

if.then:                                          ; preds = %do.body
  %2 = load %struct.url_data*, %struct.url_data** %data.addr, align 8, !dbg !1177
  %protocol1 = getelementptr inbounds %struct.url_data, %struct.url_data* %2, i32 0, i32 1, !dbg !1177
  %3 = load i8*, i8** %protocol1, align 8, !dbg !1177
  %call2 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.181, i64 0, i64 0), i8* noundef %3), !dbg !1177
  br label %if.end, !dbg !1177

if.else:                                          ; preds = %do.body
  %call3 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.182, i64 0, i64 0)), !dbg !1177
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.end, !dbg !1180

do.end:                                           ; preds = %if.end
  br label %do.body4, !dbg !1181

do.body4:                                         ; preds = %do.end
  %4 = load %struct.url_data*, %struct.url_data** %data.addr, align 8, !dbg !1182
  %host = getelementptr inbounds %struct.url_data, %struct.url_data* %4, i32 0, i32 3, !dbg !1182
  %5 = load i8*, i8** %host, align 8, !dbg !1182
  %tobool5 = icmp ne i8* %5, null, !dbg !1182
  br i1 %tobool5, label %if.then6, label %if.else9, !dbg !1185

if.then6:                                         ; preds = %do.body4
  %6 = load %struct.url_data*, %struct.url_data** %data.addr, align 8, !dbg !1182
  %host7 = getelementptr inbounds %struct.url_data, %struct.url_data* %6, i32 0, i32 3, !dbg !1182
  %7 = load i8*, i8** %host7, align 8, !dbg !1182
  %call8 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.183, i64 0, i64 0), i8* noundef %7), !dbg !1182
  br label %if.end11, !dbg !1182

if.else9:                                         ; preds = %do.body4
  %call10 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.184, i64 0, i64 0)), !dbg !1182
  br label %if.end11

if.end11:                                         ; preds = %if.else9, %if.then6
  br label %do.end12, !dbg !1185

do.end12:                                         ; preds = %if.end11
  br label %do.body13, !dbg !1186

do.body13:                                        ; preds = %do.end12
  %8 = load %struct.url_data*, %struct.url_data** %data.addr, align 8, !dbg !1187
  %userinfo = getelementptr inbounds %struct.url_data, %struct.url_data* %8, i32 0, i32 2, !dbg !1187
  %9 = load i8*, i8** %userinfo, align 8, !dbg !1187
  %tobool14 = icmp ne i8* %9, null, !dbg !1187
  br i1 %tobool14, label %if.then15, label %if.else18, !dbg !1190

if.then15:                                        ; preds = %do.body13
  %10 = load %struct.url_data*, %struct.url_data** %data.addr, align 8, !dbg !1187
  %userinfo16 = getelementptr inbounds %struct.url_data, %struct.url_data* %10, i32 0, i32 2, !dbg !1187
  %11 = load i8*, i8** %userinfo16, align 8, !dbg !1187
  %call17 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.185, i64 0, i64 0), i8* noundef %11), !dbg !1187
  br label %if.end20, !dbg !1187

if.else18:                                        ; preds = %do.body13
  %call19 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.186, i64 0, i64 0)), !dbg !1187
  br label %if.end20

if.end20:                                         ; preds = %if.else18, %if.then15
  br label %do.end21, !dbg !1190

do.end21:                                         ; preds = %if.end20
  br label %do.body22, !dbg !1191

do.body22:                                        ; preds = %do.end21
  %12 = load %struct.url_data*, %struct.url_data** %data.addr, align 8, !dbg !1192
  %host23 = getelementptr inbounds %struct.url_data, %struct.url_data* %12, i32 0, i32 3, !dbg !1192
  %13 = load i8*, i8** %host23, align 8, !dbg !1192
  %tobool24 = icmp ne i8* %13, null, !dbg !1192
  br i1 %tobool24, label %if.then25, label %if.else28, !dbg !1195

if.then25:                                        ; preds = %do.body22
  %14 = load %struct.url_data*, %struct.url_data** %data.addr, align 8, !dbg !1192
  %host26 = getelementptr inbounds %struct.url_data, %struct.url_data* %14, i32 0, i32 3, !dbg !1192
  %15 = load i8*, i8** %host26, align 8, !dbg !1192
  %call27 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.183, i64 0, i64 0), i8* noundef %15), !dbg !1192
  br label %if.end30, !dbg !1192

if.else28:                                        ; preds = %do.body22
  %call29 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.184, i64 0, i64 0)), !dbg !1192
  br label %if.end30

if.end30:                                         ; preds = %if.else28, %if.then25
  br label %do.end31, !dbg !1195

do.end31:                                         ; preds = %if.end30
  br label %do.body32, !dbg !1196

do.body32:                                        ; preds = %do.end31
  %16 = load %struct.url_data*, %struct.url_data** %data.addr, align 8, !dbg !1197
  %port = getelementptr inbounds %struct.url_data, %struct.url_data* %16, i32 0, i32 4, !dbg !1197
  %17 = load i8*, i8** %port, align 8, !dbg !1197
  %tobool33 = icmp ne i8* %17, null, !dbg !1197
  br i1 %tobool33, label %if.then34, label %if.else37, !dbg !1200

if.then34:                                        ; preds = %do.body32
  %18 = load %struct.url_data*, %struct.url_data** %data.addr, align 8, !dbg !1197
  %port35 = getelementptr inbounds %struct.url_data, %struct.url_data* %18, i32 0, i32 4, !dbg !1197
  %19 = load i8*, i8** %port35, align 8, !dbg !1197
  %call36 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.187, i64 0, i64 0), i8* noundef %19), !dbg !1197
  br label %if.end39, !dbg !1197

if.else37:                                        ; preds = %do.body32
  %call38 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.188, i64 0, i64 0)), !dbg !1197
  br label %if.end39

if.end39:                                         ; preds = %if.else37, %if.then34
  br label %do.end40, !dbg !1200

do.end40:                                         ; preds = %if.end39
  br label %do.body41, !dbg !1201

do.body41:                                        ; preds = %do.end40
  %20 = load %struct.url_data*, %struct.url_data** %data.addr, align 8, !dbg !1202
  %path = getelementptr inbounds %struct.url_data, %struct.url_data* %20, i32 0, i32 5, !dbg !1202
  %21 = load i8*, i8** %path, align 8, !dbg !1202
  %tobool42 = icmp ne i8* %21, null, !dbg !1202
  br i1 %tobool42, label %if.then43, label %if.else46, !dbg !1205

if.then43:                                        ; preds = %do.body41
  %22 = load %struct.url_data*, %struct.url_data** %data.addr, align 8, !dbg !1202
  %path44 = getelementptr inbounds %struct.url_data, %struct.url_data* %22, i32 0, i32 5, !dbg !1202
  %23 = load i8*, i8** %path44, align 8, !dbg !1202
  %call45 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.189, i64 0, i64 0), i8* noundef %23), !dbg !1202
  br label %if.end48, !dbg !1202

if.else46:                                        ; preds = %do.body41
  %call47 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.190, i64 0, i64 0)), !dbg !1202
  br label %if.end48

if.end48:                                         ; preds = %if.else46, %if.then43
  br label %do.end49, !dbg !1205

do.end49:                                         ; preds = %if.end48
  %24 = load %struct.url_data*, %struct.url_data** %data.addr, align 8, !dbg !1206
  %query = getelementptr inbounds %struct.url_data, %struct.url_data* %24, i32 0, i32 6, !dbg !1208
  %25 = load %struct.url_key_value*, %struct.url_key_value** %query, align 8, !dbg !1208
  %tobool50 = icmp ne %struct.url_key_value* %25, null, !dbg !1206
  br i1 %tobool50, label %if.then51, label %if.end72, !dbg !1209

if.then51:                                        ; preds = %do.end49
  call void @llvm.dbg.declare(metadata i32* %nr, metadata !1210, metadata !DIExpression()), !dbg !1213
  store i32 0, i32* %nr, align 4, !dbg !1213
  br label %for.cond, !dbg !1214

for.cond:                                         ; preds = %for.inc, %if.then51
  %26 = load %struct.url_data*, %struct.url_data** %data.addr, align 8, !dbg !1215
  %query52 = getelementptr inbounds %struct.url_data, %struct.url_data* %26, i32 0, i32 6, !dbg !1217
  %27 = load %struct.url_key_value*, %struct.url_key_value** %query52, align 8, !dbg !1217
  %28 = load i32, i32* %nr, align 4, !dbg !1218
  %idxprom = zext i32 %28 to i64, !dbg !1215
  %arrayidx = getelementptr inbounds %struct.url_key_value, %struct.url_key_value* %27, i64 %idxprom, !dbg !1215
  %key = getelementptr inbounds %struct.url_key_value, %struct.url_key_value* %arrayidx, i32 0, i32 0, !dbg !1219
  %29 = load i8*, i8** %key, align 8, !dbg !1219
  %tobool53 = icmp ne i8* %29, null, !dbg !1220
  br i1 %tobool53, label %for.body, label %for.end, !dbg !1220

for.body:                                         ; preds = %for.cond
  %30 = load i32, i32* %nr, align 4, !dbg !1221
  %31 = load %struct.url_data*, %struct.url_data** %data.addr, align 8, !dbg !1223
  %query54 = getelementptr inbounds %struct.url_data, %struct.url_data* %31, i32 0, i32 6, !dbg !1224
  %32 = load %struct.url_key_value*, %struct.url_key_value** %query54, align 8, !dbg !1224
  %33 = load i32, i32* %nr, align 4, !dbg !1225
  %idxprom55 = zext i32 %33 to i64, !dbg !1223
  %arrayidx56 = getelementptr inbounds %struct.url_key_value, %struct.url_key_value* %32, i64 %idxprom55, !dbg !1223
  %key57 = getelementptr inbounds %struct.url_key_value, %struct.url_key_value* %arrayidx56, i32 0, i32 0, !dbg !1226
  %34 = load i8*, i8** %key57, align 8, !dbg !1226
  %call58 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.191, i64 0, i64 0), i32 noundef %30, i8* noundef %34), !dbg !1227
  %35 = load %struct.url_data*, %struct.url_data** %data.addr, align 8, !dbg !1228
  %query59 = getelementptr inbounds %struct.url_data, %struct.url_data* %35, i32 0, i32 6, !dbg !1230
  %36 = load %struct.url_key_value*, %struct.url_key_value** %query59, align 8, !dbg !1230
  %37 = load i32, i32* %nr, align 4, !dbg !1231
  %idxprom60 = zext i32 %37 to i64, !dbg !1228
  %arrayidx61 = getelementptr inbounds %struct.url_key_value, %struct.url_key_value* %36, i64 %idxprom60, !dbg !1228
  %value = getelementptr inbounds %struct.url_key_value, %struct.url_key_value* %arrayidx61, i32 0, i32 1, !dbg !1232
  %38 = load i8*, i8** %value, align 8, !dbg !1232
  %tobool62 = icmp ne i8* %38, null, !dbg !1228
  br i1 %tobool62, label %if.then63, label %if.else69, !dbg !1233

if.then63:                                        ; preds = %for.body
  %39 = load %struct.url_data*, %struct.url_data** %data.addr, align 8, !dbg !1234
  %query64 = getelementptr inbounds %struct.url_data, %struct.url_data* %39, i32 0, i32 6, !dbg !1235
  %40 = load %struct.url_key_value*, %struct.url_key_value** %query64, align 8, !dbg !1235
  %41 = load i32, i32* %nr, align 4, !dbg !1236
  %idxprom65 = zext i32 %41 to i64, !dbg !1234
  %arrayidx66 = getelementptr inbounds %struct.url_key_value, %struct.url_key_value* %40, i64 %idxprom65, !dbg !1234
  %value67 = getelementptr inbounds %struct.url_key_value, %struct.url_key_value* %arrayidx66, i32 0, i32 1, !dbg !1237
  %42 = load i8*, i8** %value67, align 8, !dbg !1237
  %call68 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.192, i64 0, i64 0), i8* noundef %42), !dbg !1238
  br label %if.end71, !dbg !1238

if.else69:                                        ; preds = %for.body
  %call70 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.193, i64 0, i64 0)), !dbg !1239
  br label %if.end71

if.end71:                                         ; preds = %if.else69, %if.then63
  br label %for.inc, !dbg !1240

for.inc:                                          ; preds = %if.end71
  %43 = load i32, i32* %nr, align 4, !dbg !1241
  %inc = add i32 %43, 1, !dbg !1241
  store i32 %inc, i32* %nr, align 4, !dbg !1241
  br label %for.cond, !dbg !1242, !llvm.loop !1243

for.end:                                          ; preds = %for.cond
  br label %if.end72, !dbg !1245

if.end72:                                         ; preds = %for.end, %do.end49
  br label %do.body73, !dbg !1246

do.body73:                                        ; preds = %if.end72
  %44 = load %struct.url_data*, %struct.url_data** %data.addr, align 8, !dbg !1247
  %fragment = getelementptr inbounds %struct.url_data, %struct.url_data* %44, i32 0, i32 7, !dbg !1247
  %45 = load i8*, i8** %fragment, align 8, !dbg !1247
  %tobool74 = icmp ne i8* %45, null, !dbg !1247
  br i1 %tobool74, label %if.then75, label %if.else78, !dbg !1250

if.then75:                                        ; preds = %do.body73
  %46 = load %struct.url_data*, %struct.url_data** %data.addr, align 8, !dbg !1247
  %fragment76 = getelementptr inbounds %struct.url_data, %struct.url_data* %46, i32 0, i32 7, !dbg !1247
  %47 = load i8*, i8** %fragment76, align 8, !dbg !1247
  %call77 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.194, i64 0, i64 0), i8* noundef %47), !dbg !1247
  br label %if.end80, !dbg !1247

if.else78:                                        ; preds = %do.body73
  %call79 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.195, i64 0, i64 0)), !dbg !1247
  br label %if.end80

if.end80:                                         ; preds = %if.else78, %if.then75
  br label %do.end81, !dbg !1250

do.end81:                                         ; preds = %if.end80
  ret void, !dbg !1251
}

declare i32 @printf(i8* noundef, ...) #2

declare i8* @url_get_protocol(i8* noundef) #2

declare i8* @url_get_hash(i8* noundef) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #3 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #4 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #5 = { allocsize(0,1) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #6 = { allocsize(0) }
attributes #7 = { nounwind }
attributes #8 = { allocsize(0,1) }

!llvm.module.flags = !{!83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93}
!llvm.dbg.cu = !{!2}
!llvm.ident = !{!94}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "char_cat", scope: !2, file: !78, line: 3, type: !79, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0 (git@github.com:davsec-lab/typedefextractor.git dfb083149f45185bece93228f47a1ca85d4c12a0)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !19, globals: !72, splitDebugInlining: false, nameTableKind: None, sysroot: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk", sdk: "MacOSX.sdk")
!3 = !DIFile(filename: "url.c", directory: "/Users/gab/repo/Rust/rustify-validator/src/python/inputs-complex/url.h")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Category", file: !6, line: 4, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./url_char_category.h", directory: "/Users/gab/repo/Rust/rustify-validator/src/python/inputs-complex/url.h")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18}
!9 = !DIEnumerator(name: "Scheme", value: 1)
!10 = !DIEnumerator(name: "Unreserved", value: 2)
!11 = !DIEnumerator(name: "GenDelim", value: 4)
!12 = !DIEnumerator(name: "SubDelim", value: 8)
!13 = !DIEnumerator(name: "PCharSlash", value: 16)
!14 = !DIEnumerator(name: "HexDigit", value: 32)
!15 = !DIEnumerator(name: "Query", value: 64)
!16 = !DIEnumerator(name: "Fragment", value: 64)
!17 = !DIEnumerator(name: "Userinfo", value: 128)
!18 = !DIEnumerator(name: "IPv6Char", value: 256)
!19 = !{!20, !23, !29, !32, !39, !47, !48, !49, !50, !71}
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !21, line: 31, baseType: !22)
!21 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types/_uint16_t.h", directory: "")
!22 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_OSUnalignedU16", file: !25, line: 64, size: 16, elements: !26)
!25 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/libkern/arm/OSByteOrder.h", directory: "")
!26 = !{!27}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "__val", scope: !24, file: !25, line: 65, baseType: !28, size: 16)
!28 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !20)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !30, line: 34, baseType: !31)
!30 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_uintptr_t.h", directory: "")
!31 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_OSUnalignedU32", file: !25, line: 68, size: 32, elements: !34)
!34 = !{!35}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "__val", scope: !33, file: !25, line: 69, baseType: !36, size: 32)
!36 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !37)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !38, line: 31, baseType: !7)
!38 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types/_uint32_t.h", directory: "")
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_OSUnalignedU64", file: !25, line: 72, size: 64, elements: !41)
!41 = !{!42}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "__val", scope: !40, file: !25, line: 73, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !45, line: 31, baseType: !46)
!45 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types/_uint64_t.h", directory: "")
!46 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!47 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!49 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "url_data_t", file: !52, line: 62, baseType: !53)
!52 = !DIFile(filename: "./url.h", directory: "/Users/gab/repo/Rust/rustify-validator/src/python/inputs-complex/url.h")
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "url_data", file: !52, line: 53, size: 512, elements: !54)
!54 = !{!55, !56, !59, !60, !61, !62, !63, !70}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "whole_url", scope: !53, file: !52, line: 54, baseType: !48, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !53, file: !52, line: 55, baseType: !57, size: 64, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "userinfo", scope: !53, file: !52, line: 56, baseType: !57, size: 64, offset: 128)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !53, file: !52, line: 57, baseType: !57, size: 64, offset: 192)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !53, file: !52, line: 58, baseType: !57, size: 64, offset: 256)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !53, file: !52, line: 59, baseType: !57, size: 64, offset: 320)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "query", scope: !53, file: !52, line: 60, baseType: !64, size: 64, offset: 384)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "url_key_value", file: !3, line: 53, size: 128, elements: !67)
!67 = !{!68, !69}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !66, file: !3, line: 55, baseType: !57, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !66, file: !3, line: 56, baseType: !57, size: 64, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "fragment", scope: !53, file: !52, line: 61, baseType: !57, size: 64, offset: 448)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!72 = !{!0, !73}
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(name: "URL_SCHEMES", scope: !2, file: !3, line: 16, type: !75, isLocal: true, isDefinition: true)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 11328, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 177)
!78 = !DIFile(filename: "./url_char_category_table.h", directory: "/Users/gab/repo/Rust/rustify-validator/src/python/inputs-complex/url.h")
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 4096, elements: !81)
!80 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!81 = !{!82}
!82 = !DISubrange(count: 256)
!83 = !{i32 2, !"SDK Version", [2 x i32] [i32 14, i32 4]}
!84 = !{i32 7, !"Dwarf Version", i32 4}
!85 = !{i32 2, !"Debug Info Version", i32 3}
!86 = !{i32 1, !"wchar_size", i32 4}
!87 = !{i32 1, !"branch-target-enforcement", i32 0}
!88 = !{i32 1, !"sign-return-address", i32 0}
!89 = !{i32 1, !"sign-return-address-all", i32 0}
!90 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!91 = !{i32 7, !"PIC Level", i32 2}
!92 = !{i32 7, !"uwtable", i32 1}
!93 = !{i32 7, !"frame-pointer", i32 1}
!94 = !{!"clang version 14.0.0 (git@github.com:davsec-lab/typedefextractor.git dfb083149f45185bece93228f47a1ca85d4c12a0)"}
!95 = distinct !DISubprogram(name: "_OSSwapInt16", scope: !25, file: !25, line: 15, type: !96, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !98)
!96 = !DISubroutineType(types: !97)
!97 = !{!20, !20}
!98 = !{}
!99 = !DILocalVariable(name: "_data", arg: 1, scope: !95, file: !25, line: 16, type: !20)
!100 = !DILocation(line: 16, column: 18, scope: !95)
!101 = !DILocation(line: 20, column: 20, scope: !95)
!102 = !DILocation(line: 20, column: 26, scope: !95)
!103 = !DILocation(line: 20, column: 33, scope: !95)
!104 = !DILocation(line: 20, column: 39, scope: !95)
!105 = !DILocation(line: 20, column: 31, scope: !95)
!106 = !DILocation(line: 20, column: 9, scope: !95)
!107 = !DILocation(line: 20, column: 2, scope: !95)
!108 = distinct !DISubprogram(name: "_OSSwapInt32", scope: !25, file: !25, line: 25, type: !109, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !98)
!109 = !DISubroutineType(types: !110)
!110 = !{!37, !37}
!111 = !DILocalVariable(name: "_data", arg: 1, scope: !108, file: !25, line: 26, type: !37)
!112 = !DILocation(line: 26, column: 18, scope: !108)
!113 = !DILocation(line: 30, column: 28, scope: !108)
!114 = !DILocation(line: 30, column: 10, scope: !108)
!115 = !DILocation(line: 30, column: 8, scope: !108)
!116 = !DILocation(line: 36, column: 9, scope: !108)
!117 = !DILocation(line: 36, column: 2, scope: !108)
!118 = distinct !DISubprogram(name: "_OSSwapInt64", scope: !25, file: !25, line: 41, type: !119, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !98)
!119 = !DISubroutineType(types: !120)
!120 = !{!44, !44}
!121 = !DILocalVariable(name: "_data", arg: 1, scope: !118, file: !25, line: 42, type: !44)
!122 = !DILocation(line: 42, column: 18, scope: !118)
!123 = !DILocation(line: 46, column: 27, scope: !118)
!124 = !DILocation(line: 46, column: 9, scope: !118)
!125 = !DILocation(line: 46, column: 2, scope: !118)
!126 = distinct !DISubprogram(name: "OSReadSwapInt16", scope: !25, file: !25, line: 89, type: !127, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !98)
!127 = !DISubroutineType(types: !128)
!128 = !{!20, !129, !29}
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!132 = !DILocalVariable(name: "_base", arg: 1, scope: !126, file: !25, line: 90, type: !129)
!133 = !DILocation(line: 90, column: 26, scope: !126)
!134 = !DILocalVariable(name: "_offset", arg: 2, scope: !126, file: !25, line: 91, type: !29)
!135 = !DILocation(line: 91, column: 18, scope: !126)
!136 = !DILocation(line: 94, column: 61, scope: !126)
!137 = !DILocation(line: 94, column: 50, scope: !126)
!138 = !DILocation(line: 94, column: 69, scope: !126)
!139 = !DILocation(line: 94, column: 67, scope: !126)
!140 = !DILocation(line: 94, column: 23, scope: !126)
!141 = !DILocation(line: 94, column: 80, scope: !126)
!142 = !DILocation(line: 94, column: 9, scope: !126)
!143 = !DILocation(line: 94, column: 2, scope: !126)
!144 = distinct !DISubprogram(name: "OSReadSwapInt32", scope: !25, file: !25, line: 111, type: !145, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !98)
!145 = !DISubroutineType(types: !146)
!146 = !{!37, !129, !29}
!147 = !DILocalVariable(name: "_base", arg: 1, scope: !144, file: !25, line: 112, type: !129)
!148 = !DILocation(line: 112, column: 26, scope: !144)
!149 = !DILocalVariable(name: "_offset", arg: 2, scope: !144, file: !25, line: 113, type: !29)
!150 = !DILocation(line: 113, column: 18, scope: !144)
!151 = !DILocation(line: 116, column: 61, scope: !144)
!152 = !DILocation(line: 116, column: 50, scope: !144)
!153 = !DILocation(line: 116, column: 69, scope: !144)
!154 = !DILocation(line: 116, column: 67, scope: !144)
!155 = !DILocation(line: 116, column: 23, scope: !144)
!156 = !DILocation(line: 116, column: 80, scope: !144)
!157 = !DILocation(line: 116, column: 9, scope: !144)
!158 = !DILocation(line: 116, column: 2, scope: !144)
!159 = distinct !DISubprogram(name: "OSReadSwapInt64", scope: !25, file: !25, line: 133, type: !160, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !98)
!160 = !DISubroutineType(types: !161)
!161 = !{!44, !129, !29}
!162 = !DILocalVariable(name: "_base", arg: 1, scope: !159, file: !25, line: 134, type: !129)
!163 = !DILocation(line: 134, column: 26, scope: !159)
!164 = !DILocalVariable(name: "_offset", arg: 2, scope: !159, file: !25, line: 135, type: !29)
!165 = !DILocation(line: 135, column: 18, scope: !159)
!166 = !DILocation(line: 138, column: 61, scope: !159)
!167 = !DILocation(line: 138, column: 50, scope: !159)
!168 = !DILocation(line: 138, column: 69, scope: !159)
!169 = !DILocation(line: 138, column: 67, scope: !159)
!170 = !DILocation(line: 138, column: 23, scope: !159)
!171 = !DILocation(line: 138, column: 80, scope: !159)
!172 = !DILocation(line: 138, column: 9, scope: !159)
!173 = !DILocation(line: 138, column: 2, scope: !159)
!174 = distinct !DISubprogram(name: "OSWriteSwapInt16", scope: !25, file: !25, line: 158, type: !175, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !98)
!175 = !DISubroutineType(types: !176)
!176 = !{null, !177, !29, !20}
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!178 = !DILocalVariable(name: "_base", arg: 1, scope: !174, file: !25, line: 159, type: !177)
!179 = !DILocation(line: 159, column: 20, scope: !174)
!180 = !DILocalVariable(name: "_offset", arg: 2, scope: !174, file: !25, line: 160, type: !29)
!181 = !DILocation(line: 160, column: 18, scope: !174)
!182 = !DILocalVariable(name: "_data", arg: 3, scope: !174, file: !25, line: 161, type: !20)
!183 = !DILocation(line: 161, column: 18, scope: !174)
!184 = !DILocation(line: 164, column: 81, scope: !174)
!185 = !DILocation(line: 164, column: 68, scope: !174)
!186 = !DILocation(line: 164, column: 41, scope: !174)
!187 = !DILocation(line: 164, column: 30, scope: !174)
!188 = !DILocation(line: 164, column: 49, scope: !174)
!189 = !DILocation(line: 164, column: 47, scope: !174)
!190 = !DILocation(line: 164, column: 3, scope: !174)
!191 = !DILocation(line: 164, column: 60, scope: !174)
!192 = !DILocation(line: 164, column: 66, scope: !174)
!193 = !DILocation(line: 165, column: 1, scope: !174)
!194 = distinct !DISubprogram(name: "OSWriteSwapInt32", scope: !25, file: !25, line: 182, type: !195, scopeLine: 187, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !98)
!195 = !DISubroutineType(types: !196)
!196 = !{null, !177, !29, !37}
!197 = !DILocalVariable(name: "_base", arg: 1, scope: !194, file: !25, line: 183, type: !177)
!198 = !DILocation(line: 183, column: 20, scope: !194)
!199 = !DILocalVariable(name: "_offset", arg: 2, scope: !194, file: !25, line: 184, type: !29)
!200 = !DILocation(line: 184, column: 18, scope: !194)
!201 = !DILocalVariable(name: "_data", arg: 3, scope: !194, file: !25, line: 185, type: !37)
!202 = !DILocation(line: 185, column: 18, scope: !194)
!203 = !DILocation(line: 188, column: 81, scope: !194)
!204 = !DILocation(line: 188, column: 68, scope: !194)
!205 = !DILocation(line: 188, column: 41, scope: !194)
!206 = !DILocation(line: 188, column: 30, scope: !194)
!207 = !DILocation(line: 188, column: 49, scope: !194)
!208 = !DILocation(line: 188, column: 47, scope: !194)
!209 = !DILocation(line: 188, column: 3, scope: !194)
!210 = !DILocation(line: 188, column: 60, scope: !194)
!211 = !DILocation(line: 188, column: 66, scope: !194)
!212 = !DILocation(line: 189, column: 1, scope: !194)
!213 = distinct !DISubprogram(name: "OSWriteSwapInt64", scope: !25, file: !25, line: 206, type: !214, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !98)
!214 = !DISubroutineType(types: !215)
!215 = !{null, !177, !29, !44}
!216 = !DILocalVariable(name: "_base", arg: 1, scope: !213, file: !25, line: 207, type: !177)
!217 = !DILocation(line: 207, column: 21, scope: !213)
!218 = !DILocalVariable(name: "_offset", arg: 2, scope: !213, file: !25, line: 208, type: !29)
!219 = !DILocation(line: 208, column: 19, scope: !213)
!220 = !DILocalVariable(name: "_data", arg: 3, scope: !213, file: !25, line: 209, type: !44)
!221 = !DILocation(line: 209, column: 19, scope: !213)
!222 = !DILocation(line: 212, column: 81, scope: !213)
!223 = !DILocation(line: 212, column: 68, scope: !213)
!224 = !DILocation(line: 212, column: 41, scope: !213)
!225 = !DILocation(line: 212, column: 30, scope: !213)
!226 = !DILocation(line: 212, column: 49, scope: !213)
!227 = !DILocation(line: 212, column: 47, scope: !213)
!228 = !DILocation(line: 212, column: 3, scope: !213)
!229 = !DILocation(line: 212, column: 60, scope: !213)
!230 = !DILocation(line: 212, column: 66, scope: !213)
!231 = !DILocation(line: 213, column: 1, scope: !213)
!232 = distinct !DISubprogram(name: "strdup", scope: !3, file: !3, line: 43, type: !233, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !98)
!233 = !DISubroutineType(types: !234)
!234 = !{!48, !57}
!235 = !DILocalVariable(name: "str", arg: 1, scope: !232, file: !3, line: 43, type: !57)
!236 = !DILocation(line: 43, column: 21, scope: !232)
!237 = !DILocalVariable(name: "n", scope: !232, file: !3, line: 44, type: !238)
!238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !239)
!239 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!240 = !DILocation(line: 44, column: 13, scope: !232)
!241 = !DILocation(line: 44, column: 24, scope: !232)
!242 = !DILocation(line: 44, column: 17, scope: !232)
!243 = !DILocation(line: 44, column: 29, scope: !232)
!244 = !DILocalVariable(name: "dup", scope: !232, file: !3, line: 45, type: !48)
!245 = !DILocation(line: 45, column: 9, scope: !232)
!246 = !DILocation(line: 45, column: 31, scope: !232)
!247 = !DILocation(line: 45, column: 24, scope: !232)
!248 = !DILocation(line: 46, column: 7, scope: !249)
!249 = distinct !DILexicalBlock(scope: !232, file: !3, line: 46, column: 7)
!250 = !DILocation(line: 46, column: 7, scope: !232)
!251 = !DILocation(line: 46, column: 12, scope: !249)
!252 = !DILocation(line: 47, column: 10, scope: !232)
!253 = !DILocation(line: 47, column: 3, scope: !232)
!254 = distinct !DISubprogram(name: "unhex", scope: !3, file: !3, line: 61, type: !255, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !98)
!255 = !DISubroutineType(types: !256)
!256 = !{!239, !57}
!257 = !DILocalVariable(name: "s", arg: 1, scope: !254, file: !3, line: 61, type: !57)
!258 = !DILocation(line: 61, column: 23, scope: !254)
!259 = !DILocation(line: 63, column: 7, scope: !260)
!260 = distinct !DILexicalBlock(scope: !254, file: !3, line: 63, column: 6)
!261 = !DILocation(line: 63, column: 6, scope: !260)
!262 = !DILocation(line: 63, column: 8, scope: !260)
!263 = !DILocation(line: 63, column: 14, scope: !260)
!264 = !DILocation(line: 63, column: 18, scope: !260)
!265 = !DILocation(line: 63, column: 17, scope: !260)
!266 = !DILocation(line: 63, column: 19, scope: !260)
!267 = !DILocation(line: 63, column: 6, scope: !254)
!268 = !DILocation(line: 64, column: 13, scope: !260)
!269 = !DILocation(line: 64, column: 12, scope: !260)
!270 = !DILocation(line: 64, column: 15, scope: !260)
!271 = !DILocation(line: 64, column: 5, scope: !260)
!272 = !DILocation(line: 66, column: 7, scope: !273)
!273 = distinct !DILexicalBlock(scope: !254, file: !3, line: 66, column: 6)
!274 = !DILocation(line: 66, column: 6, scope: !273)
!275 = !DILocation(line: 66, column: 8, scope: !273)
!276 = !DILocation(line: 66, column: 14, scope: !273)
!277 = !DILocation(line: 66, column: 18, scope: !273)
!278 = !DILocation(line: 66, column: 17, scope: !273)
!279 = !DILocation(line: 66, column: 19, scope: !273)
!280 = !DILocation(line: 66, column: 6, scope: !254)
!281 = !DILocation(line: 67, column: 13, scope: !273)
!282 = !DILocation(line: 67, column: 12, scope: !273)
!283 = !DILocation(line: 67, column: 15, scope: !273)
!284 = !DILocation(line: 67, column: 21, scope: !273)
!285 = !DILocation(line: 67, column: 5, scope: !273)
!286 = !DILocation(line: 69, column: 7, scope: !287)
!287 = distinct !DILexicalBlock(scope: !254, file: !3, line: 69, column: 6)
!288 = !DILocation(line: 69, column: 6, scope: !287)
!289 = !DILocation(line: 69, column: 8, scope: !287)
!290 = !DILocation(line: 69, column: 14, scope: !287)
!291 = !DILocation(line: 69, column: 18, scope: !287)
!292 = !DILocation(line: 69, column: 17, scope: !287)
!293 = !DILocation(line: 69, column: 19, scope: !287)
!294 = !DILocation(line: 69, column: 6, scope: !254)
!295 = !DILocation(line: 70, column: 13, scope: !287)
!296 = !DILocation(line: 70, column: 12, scope: !287)
!297 = !DILocation(line: 70, column: 15, scope: !287)
!298 = !DILocation(line: 70, column: 21, scope: !287)
!299 = !DILocation(line: 70, column: 5, scope: !287)
!300 = !DILocation(line: 72, column: 3, scope: !254)
!301 = !DILocation(line: 73, column: 1, scope: !254)
!302 = distinct !DISubprogram(name: "decode_percent", scope: !3, file: !3, line: 79, type: !303, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !98)
!303 = !DISubroutineType(types: !304)
!304 = !{!48, !48}
!305 = !DILocalVariable(name: "s", arg: 1, scope: !302, file: !3, line: 79, type: !48)
!306 = !DILocation(line: 79, column: 28, scope: !302)
!307 = !DILocalVariable(name: "in", scope: !302, file: !3, line: 81, type: !48)
!308 = !DILocation(line: 81, column: 9, scope: !302)
!309 = !DILocation(line: 81, column: 15, scope: !302)
!310 = !DILocalVariable(name: "out", scope: !302, file: !3, line: 82, type: !48)
!311 = !DILocation(line: 82, column: 9, scope: !302)
!312 = !DILocation(line: 82, column: 15, scope: !302)
!313 = !DILocation(line: 83, column: 3, scope: !302)
!314 = !DILocation(line: 83, column: 10, scope: !302)
!315 = !DILocation(line: 83, column: 9, scope: !302)
!316 = !DILocation(line: 85, column: 9, scope: !317)
!317 = distinct !DILexicalBlock(scope: !318, file: !3, line: 85, column: 8)
!318 = distinct !DILexicalBlock(scope: !302, file: !3, line: 84, column: 3)
!319 = !DILocation(line: 85, column: 8, scope: !317)
!320 = !DILocation(line: 85, column: 11, scope: !317)
!321 = !DILocation(line: 85, column: 8, scope: !318)
!322 = !DILocalVariable(name: "high", scope: !323, file: !3, line: 87, type: !238)
!323 = distinct !DILexicalBlock(scope: !317, file: !3, line: 86, column: 5)
!324 = !DILocation(line: 87, column: 17, scope: !323)
!325 = !DILocation(line: 87, column: 30, scope: !323)
!326 = !DILocation(line: 87, column: 24, scope: !323)
!327 = !DILocation(line: 87, column: 40, scope: !328)
!328 = distinct !DILexicalBlock(scope: !323, file: !3, line: 87, column: 40)
!329 = !DILocation(line: 87, column: 44, scope: !328)
!330 = !DILocation(line: 87, column: 47, scope: !328)
!331 = !DILocation(line: 87, column: 51, scope: !328)
!332 = !DILocation(line: 87, column: 50, scope: !328)
!333 = !DILocation(line: 87, column: 53, scope: !328)
!334 = !DILocation(line: 87, column: 40, scope: !323)
!335 = !DILocation(line: 87, column: 61, scope: !328)
!336 = !DILocalVariable(name: "low", scope: !323, file: !3, line: 88, type: !238)
!337 = !DILocation(line: 88, column: 17, scope: !323)
!338 = !DILocation(line: 88, column: 30, scope: !323)
!339 = !DILocation(line: 88, column: 24, scope: !323)
!340 = !DILocation(line: 88, column: 40, scope: !341)
!341 = distinct !DILexicalBlock(scope: !323, file: !3, line: 88, column: 40)
!342 = !DILocation(line: 88, column: 44, scope: !341)
!343 = !DILocation(line: 88, column: 47, scope: !341)
!344 = !DILocation(line: 88, column: 51, scope: !341)
!345 = !DILocation(line: 88, column: 50, scope: !341)
!346 = !DILocation(line: 88, column: 53, scope: !341)
!347 = !DILocation(line: 88, column: 40, scope: !323)
!348 = !DILocation(line: 88, column: 61, scope: !341)
!349 = !DILocation(line: 89, column: 21, scope: !323)
!350 = !DILocation(line: 89, column: 25, scope: !323)
!351 = !DILocation(line: 89, column: 32, scope: !323)
!352 = !DILocation(line: 89, column: 30, scope: !323)
!353 = !DILocation(line: 89, column: 14, scope: !323)
!354 = !DILocation(line: 89, column: 8, scope: !323)
!355 = !DILocation(line: 89, column: 12, scope: !323)
!356 = !DILocation(line: 90, column: 7, scope: !323)
!357 = !DILocation(line: 91, column: 7, scope: !323)
!358 = !DILocation(line: 92, column: 5, scope: !323)
!359 = !DILocation(line: 93, column: 19, scope: !360)
!360 = distinct !DILexicalBlock(scope: !317, file: !3, line: 92, column: 10)
!361 = !DILocation(line: 93, column: 16, scope: !360)
!362 = !DILocation(line: 93, column: 11, scope: !360)
!363 = !DILocation(line: 93, column: 14, scope: !360)
!364 = distinct !{!364, !313, !365}
!365 = !DILocation(line: 95, column: 3, scope: !302)
!366 = !DILocation(line: 96, column: 4, scope: !302)
!367 = !DILocation(line: 96, column: 8, scope: !302)
!368 = !DILocation(line: 97, column: 10, scope: !302)
!369 = !DILocation(line: 97, column: 3, scope: !302)
!370 = !DILocation(line: 98, column: 1, scope: !302)
!371 = distinct !DISubprogram(name: "scan_part", scope: !3, file: !3, line: 103, type: !372, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !98)
!372 = !DISubroutineType(types: !373)
!373 = !{!48, !48, !5, !47, !47}
!374 = !DILocalVariable(name: "start", arg: 1, scope: !371, file: !3, line: 103, type: !48)
!375 = !DILocation(line: 103, column: 17, scope: !371)
!376 = !DILocalVariable(name: "category", arg: 2, scope: !371, file: !3, line: 103, type: !5)
!377 = !DILocation(line: 103, column: 38, scope: !371)
!378 = !DILocalVariable(name: "delimiter1", arg: 3, scope: !371, file: !3, line: 103, type: !47)
!379 = !DILocation(line: 103, column: 53, scope: !371)
!380 = !DILocalVariable(name: "delimiter2", arg: 4, scope: !371, file: !3, line: 103, type: !47)
!381 = !DILocation(line: 103, column: 70, scope: !371)
!382 = !DILocalVariable(name: "p", scope: !371, file: !3, line: 104, type: !48)
!383 = !DILocation(line: 104, column: 9, scope: !371)
!384 = !DILocation(line: 104, column: 13, scope: !371)
!385 = !DILocation(line: 105, column: 3, scope: !371)
!386 = !DILocation(line: 107, column: 10, scope: !387)
!387 = distinct !DILexicalBlock(scope: !388, file: !3, line: 107, column: 9)
!388 = distinct !DILexicalBlock(scope: !389, file: !3, line: 106, column: 3)
!389 = distinct !DILexicalBlock(scope: !390, file: !3, line: 105, column: 3)
!390 = distinct !DILexicalBlock(scope: !371, file: !3, line: 105, column: 3)
!391 = !DILocation(line: 107, column: 9, scope: !387)
!392 = !DILocation(line: 107, column: 11, scope: !387)
!393 = !DILocation(line: 107, column: 18, scope: !387)
!394 = !DILocation(line: 107, column: 22, scope: !387)
!395 = !DILocation(line: 107, column: 21, scope: !387)
!396 = !DILocation(line: 107, column: 25, scope: !387)
!397 = !DILocation(line: 107, column: 23, scope: !387)
!398 = !DILocation(line: 107, column: 36, scope: !387)
!399 = !DILocation(line: 107, column: 40, scope: !387)
!400 = !DILocation(line: 107, column: 39, scope: !387)
!401 = !DILocation(line: 107, column: 43, scope: !387)
!402 = !DILocation(line: 107, column: 41, scope: !387)
!403 = !DILocation(line: 107, column: 9, scope: !388)
!404 = !DILocation(line: 108, column: 15, scope: !387)
!405 = !DILocation(line: 108, column: 8, scope: !387)
!406 = !DILocation(line: 110, column: 35, scope: !407)
!407 = distinct !DILexicalBlock(scope: !388, file: !3, line: 110, column: 8)
!408 = !DILocation(line: 110, column: 34, scope: !407)
!409 = !DILocation(line: 110, column: 8, scope: !407)
!410 = !DILocation(line: 110, column: 41, scope: !407)
!411 = !DILocation(line: 110, column: 39, scope: !407)
!412 = !DILocation(line: 110, column: 8, scope: !388)
!413 = !DILocation(line: 111, column: 7, scope: !414)
!414 = distinct !DILexicalBlock(scope: !407, file: !3, line: 110, column: 51)
!415 = !DILocation(line: 112, column: 5, scope: !414)
!416 = !DILocation(line: 113, column: 7, scope: !417)
!417 = distinct !DILexicalBlock(scope: !407, file: !3, line: 112, column: 10)
!418 = !DILocation(line: 105, column: 3, scope: !389)
!419 = distinct !{!419, !420, !421}
!420 = !DILocation(line: 105, column: 3, scope: !390)
!421 = !DILocation(line: 115, column: 3, scope: !390)
!422 = !DILocation(line: 116, column: 1, scope: !371)
!423 = distinct !DISubprogram(name: "scan_decimal_number", scope: !3, file: !3, line: 121, type: !303, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !98)
!424 = !DILocalVariable(name: "start", arg: 1, scope: !423, file: !3, line: 121, type: !48)
!425 = !DILocation(line: 121, column: 27, scope: !423)
!426 = !DILocalVariable(name: "p", scope: !423, file: !3, line: 123, type: !48)
!427 = !DILocation(line: 123, column: 9, scope: !423)
!428 = !DILocation(line: 123, column: 13, scope: !423)
!429 = !DILocation(line: 124, column: 3, scope: !423)
!430 = !DILocation(line: 124, column: 10, scope: !423)
!431 = !DILocation(line: 124, column: 9, scope: !423)
!432 = !DILocation(line: 124, column: 12, scope: !423)
!433 = !DILocation(line: 124, column: 18, scope: !423)
!434 = !DILocation(line: 124, column: 22, scope: !423)
!435 = !DILocation(line: 124, column: 21, scope: !423)
!436 = !DILocation(line: 124, column: 23, scope: !423)
!437 = !DILocation(line: 0, scope: !423)
!438 = !DILocation(line: 126, column: 5, scope: !439)
!439 = distinct !DILexicalBlock(scope: !423, file: !3, line: 125, column: 3)
!440 = distinct !{!440, !429, !441}
!441 = !DILocation(line: 127, column: 3, scope: !423)
!442 = !DILocation(line: 129, column: 11, scope: !423)
!443 = !DILocation(line: 129, column: 14, scope: !423)
!444 = !DILocation(line: 129, column: 12, scope: !423)
!445 = !DILocation(line: 129, column: 10, scope: !423)
!446 = !DILocation(line: 129, column: 23, scope: !423)
!447 = !DILocation(line: 129, column: 3, scope: !423)
!448 = distinct !DISubprogram(name: "parse_query_string", scope: !3, file: !3, line: 134, type: !449, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !98)
!449 = !DISubroutineType(types: !450)
!450 = !{!451, !48, !48}
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!452 = !DILocalVariable(name: "begin", arg: 1, scope: !448, file: !3, line: 134, type: !48)
!453 = !DILocation(line: 134, column: 48, scope: !448)
!454 = !DILocalVariable(name: "end", arg: 2, scope: !448, file: !3, line: 134, type: !48)
!455 = !DILocation(line: 134, column: 61, scope: !448)
!456 = !DILocalVariable(name: "elements", scope: !448, file: !3, line: 136, type: !7)
!457 = !DILocation(line: 136, column: 12, scope: !448)
!458 = !DILocalVariable(name: "p", scope: !459, file: !3, line: 137, type: !57)
!459 = distinct !DILexicalBlock(scope: !448, file: !3, line: 137, column: 3)
!460 = !DILocation(line: 137, column: 19, scope: !459)
!461 = !DILocation(line: 137, column: 23, scope: !459)
!462 = !DILocation(line: 137, column: 7, scope: !459)
!463 = !DILocation(line: 137, column: 30, scope: !464)
!464 = distinct !DILexicalBlock(scope: !459, file: !3, line: 137, column: 3)
!465 = !DILocation(line: 137, column: 33, scope: !464)
!466 = !DILocation(line: 137, column: 31, scope: !464)
!467 = !DILocation(line: 137, column: 3, scope: !459)
!468 = !DILocation(line: 139, column: 9, scope: !469)
!469 = distinct !DILexicalBlock(scope: !470, file: !3, line: 139, column: 8)
!470 = distinct !DILexicalBlock(scope: !464, file: !3, line: 138, column: 3)
!471 = !DILocation(line: 139, column: 8, scope: !469)
!472 = !DILocation(line: 139, column: 10, scope: !469)
!473 = !DILocation(line: 139, column: 16, scope: !469)
!474 = !DILocation(line: 139, column: 20, scope: !469)
!475 = !DILocation(line: 139, column: 19, scope: !469)
!476 = !DILocation(line: 139, column: 21, scope: !469)
!477 = !DILocation(line: 139, column: 8, scope: !470)
!478 = !DILocation(line: 140, column: 7, scope: !469)
!479 = !DILocation(line: 141, column: 3, scope: !470)
!480 = !DILocation(line: 137, column: 38, scope: !464)
!481 = !DILocation(line: 137, column: 3, scope: !464)
!482 = distinct !{!482, !467, !483}
!483 = !DILocation(line: 141, column: 3, scope: !459)
!484 = !DILocalVariable(name: "kv", scope: !448, file: !3, line: 143, type: !451)
!485 = !DILocation(line: 143, column: 25, scope: !448)
!486 = !DILocation(line: 143, column: 37, scope: !448)
!487 = !DILocation(line: 143, column: 45, scope: !448)
!488 = !DILocation(line: 143, column: 30, scope: !448)
!489 = !DILocation(line: 144, column: 7, scope: !490)
!490 = distinct !DILexicalBlock(scope: !448, file: !3, line: 144, column: 6)
!491 = !DILocation(line: 144, column: 6, scope: !448)
!492 = !DILocation(line: 145, column: 5, scope: !490)
!493 = !DILocalVariable(name: "p", scope: !448, file: !3, line: 147, type: !48)
!494 = !DILocation(line: 147, column: 9, scope: !448)
!495 = !DILocation(line: 147, column: 13, scope: !448)
!496 = !DILocalVariable(name: "element", scope: !497, file: !3, line: 148, type: !7)
!497 = distinct !DILexicalBlock(scope: !448, file: !3, line: 148, column: 3)
!498 = !DILocation(line: 148, column: 16, scope: !497)
!499 = !DILocation(line: 148, column: 7, scope: !497)
!500 = !DILocation(line: 148, column: 28, scope: !501)
!501 = distinct !DILexicalBlock(scope: !497, file: !3, line: 148, column: 3)
!502 = !DILocation(line: 148, column: 37, scope: !501)
!503 = !DILocation(line: 148, column: 35, scope: !501)
!504 = !DILocation(line: 148, column: 47, scope: !501)
!505 = !DILocation(line: 148, column: 51, scope: !501)
!506 = !DILocation(line: 148, column: 53, scope: !501)
!507 = !DILocation(line: 148, column: 52, scope: !501)
!508 = !DILocation(line: 0, scope: !501)
!509 = !DILocation(line: 148, column: 3, scope: !497)
!510 = !DILocalVariable(name: "key", scope: !511, file: !3, line: 150, type: !48)
!511 = distinct !DILexicalBlock(scope: !501, file: !3, line: 149, column: 3)
!512 = !DILocation(line: 150, column: 11, scope: !511)
!513 = !DILocation(line: 150, column: 17, scope: !511)
!514 = !DILocalVariable(name: "kv_end", scope: !511, file: !3, line: 151, type: !48)
!515 = !DILocation(line: 151, column: 11, scope: !511)
!516 = !DILocation(line: 151, column: 30, scope: !511)
!517 = !DILocation(line: 151, column: 20, scope: !511)
!518 = !DILocation(line: 152, column: 9, scope: !519)
!519 = distinct !DILexicalBlock(scope: !511, file: !3, line: 152, column: 8)
!520 = !DILocation(line: 152, column: 8, scope: !511)
!521 = !DILocation(line: 153, column: 7, scope: !519)
!522 = !DILocation(line: 153, column: 7, scope: !523)
!523 = distinct !DILexicalBlock(scope: !519, file: !3, line: 153, column: 7)
!524 = !DILocation(line: 155, column: 6, scope: !511)
!525 = !DILocation(line: 155, column: 13, scope: !511)
!526 = !DILocalVariable(name: "key_end", scope: !511, file: !3, line: 157, type: !48)
!527 = !DILocation(line: 157, column: 11, scope: !511)
!528 = !DILocation(line: 157, column: 31, scope: !511)
!529 = !DILocation(line: 157, column: 21, scope: !511)
!530 = !DILocalVariable(name: "has_value", scope: !511, file: !3, line: 159, type: !531)
!531 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !532)
!532 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!533 = !DILocation(line: 159, column: 16, scope: !511)
!534 = !DILocation(line: 159, column: 30, scope: !511)
!535 = !DILocation(line: 159, column: 29, scope: !511)
!536 = !DILocation(line: 159, column: 38, scope: !511)
!537 = !DILocation(line: 160, column: 6, scope: !511)
!538 = !DILocation(line: 160, column: 14, scope: !511)
!539 = !DILocation(line: 162, column: 38, scope: !511)
!540 = !DILocation(line: 162, column: 23, scope: !511)
!541 = !DILocation(line: 162, column: 5, scope: !511)
!542 = !DILocation(line: 162, column: 8, scope: !511)
!543 = !DILocation(line: 162, column: 17, scope: !511)
!544 = !DILocation(line: 162, column: 21, scope: !511)
!545 = !DILocation(line: 163, column: 8, scope: !546)
!546 = distinct !DILexicalBlock(scope: !511, file: !3, line: 163, column: 8)
!547 = !DILocation(line: 163, column: 8, scope: !511)
!548 = !DILocalVariable(name: "value", scope: !549, file: !3, line: 165, type: !48)
!549 = distinct !DILexicalBlock(scope: !546, file: !3, line: 164, column: 5)
!550 = !DILocation(line: 165, column: 13, scope: !549)
!551 = !DILocation(line: 165, column: 21, scope: !549)
!552 = !DILocation(line: 165, column: 28, scope: !549)
!553 = !DILocation(line: 166, column: 42, scope: !549)
!554 = !DILocation(line: 166, column: 27, scope: !549)
!555 = !DILocation(line: 166, column: 7, scope: !549)
!556 = !DILocation(line: 166, column: 10, scope: !549)
!557 = !DILocation(line: 166, column: 19, scope: !549)
!558 = !DILocation(line: 166, column: 25, scope: !549)
!559 = !DILocation(line: 167, column: 5, scope: !549)
!560 = !DILocation(line: 168, column: 27, scope: !561)
!561 = distinct !DILexicalBlock(scope: !546, file: !3, line: 167, column: 10)
!562 = !DILocation(line: 168, column: 7, scope: !561)
!563 = !DILocation(line: 168, column: 10, scope: !561)
!564 = !DILocation(line: 168, column: 19, scope: !561)
!565 = !DILocation(line: 168, column: 25, scope: !561)
!566 = !DILocation(line: 171, column: 9, scope: !511)
!567 = !DILocation(line: 171, column: 15, scope: !511)
!568 = !DILocation(line: 171, column: 7, scope: !511)
!569 = !DILocation(line: 173, column: 3, scope: !511)
!570 = !DILocation(line: 148, column: 59, scope: !501)
!571 = !DILocation(line: 148, column: 3, scope: !501)
!572 = distinct !{!572, !509, !573}
!573 = !DILocation(line: 173, column: 3, scope: !497)
!574 = !DILocation(line: 175, column: 10, scope: !448)
!575 = !DILocation(line: 175, column: 3, scope: !448)
!576 = !DILabel(scope: !448, name: "error", file: !3, line: 177)
!577 = !DILocation(line: 177, column: 1, scope: !448)
!578 = !DILocation(line: 178, column: 8, scope: !448)
!579 = !DILocation(line: 178, column: 3, scope: !448)
!580 = !DILocation(line: 179, column: 3, scope: !448)
!581 = !DILocation(line: 180, column: 1, scope: !448)
!582 = distinct !DISubprogram(name: "url_parse", scope: !3, file: !3, line: 184, type: !583, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !98)
!583 = !DISubroutineType(types: !584)
!584 = !{!50, !57}
!585 = !DILocalVariable(name: "url", arg: 1, scope: !582, file: !3, line: 184, type: !57)
!586 = !DILocation(line: 184, column: 24, scope: !582)
!587 = !DILocalVariable(name: "data", scope: !582, file: !3, line: 185, type: !50)
!588 = !DILocation(line: 185, column: 15, scope: !582)
!589 = !DILocation(line: 185, column: 37, scope: !582)
!590 = !DILocation(line: 185, column: 22, scope: !582)
!591 = !DILocation(line: 186, column: 8, scope: !592)
!592 = distinct !DILexicalBlock(scope: !582, file: !3, line: 186, column: 7)
!593 = !DILocation(line: 186, column: 7, scope: !582)
!594 = !DILocation(line: 186, column: 14, scope: !592)
!595 = !DILocalVariable(name: "p", scope: !582, file: !3, line: 188, type: !48)
!596 = !DILocation(line: 188, column: 9, scope: !582)
!597 = !DILocation(line: 188, column: 20, scope: !582)
!598 = !DILocation(line: 188, column: 13, scope: !582)
!599 = !DILocation(line: 189, column: 7, scope: !600)
!600 = distinct !DILexicalBlock(scope: !582, file: !3, line: 189, column: 6)
!601 = !DILocation(line: 189, column: 6, scope: !582)
!602 = !DILocation(line: 190, column: 5, scope: !600)
!603 = !DILocation(line: 190, column: 5, scope: !604)
!604 = distinct !DILexicalBlock(scope: !600, file: !3, line: 190, column: 5)
!605 = !DILocation(line: 192, column: 21, scope: !582)
!606 = !DILocation(line: 192, column: 3, scope: !582)
!607 = !DILocation(line: 192, column: 9, scope: !582)
!608 = !DILocation(line: 192, column: 19, scope: !582)
!609 = !DILocalVariable(name: "p_end", scope: !582, file: !3, line: 193, type: !610)
!610 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!611 = !DILocation(line: 193, column: 21, scope: !582)
!612 = !DILocation(line: 193, column: 29, scope: !582)
!613 = !DILocation(line: 193, column: 40, scope: !582)
!614 = !DILocation(line: 193, column: 33, scope: !582)
!615 = !DILocation(line: 193, column: 31, scope: !582)
!616 = !DILocalVariable(name: "protocol_end", scope: !582, file: !3, line: 195, type: !48)
!617 = !DILocation(line: 195, column: 9, scope: !582)
!618 = !DILocation(line: 195, column: 34, scope: !582)
!619 = !DILocation(line: 195, column: 24, scope: !582)
!620 = !DILocation(line: 196, column: 8, scope: !621)
!621 = distinct !DILexicalBlock(scope: !582, file: !3, line: 196, column: 7)
!622 = !DILocation(line: 196, column: 21, scope: !621)
!623 = !DILocation(line: 196, column: 25, scope: !621)
!624 = !DILocation(line: 196, column: 24, scope: !621)
!625 = !DILocation(line: 196, column: 37, scope: !621)
!626 = !DILocation(line: 196, column: 7, scope: !582)
!627 = !DILocation(line: 197, column: 5, scope: !621)
!628 = !DILocation(line: 197, column: 5, scope: !629)
!629 = distinct !DILexicalBlock(scope: !621, file: !3, line: 197, column: 5)
!630 = !DILocation(line: 199, column: 4, scope: !582)
!631 = !DILocation(line: 199, column: 17, scope: !582)
!632 = !DILocation(line: 200, column: 20, scope: !582)
!633 = !DILocation(line: 200, column: 3, scope: !582)
!634 = !DILocation(line: 200, column: 9, scope: !582)
!635 = !DILocation(line: 200, column: 18, scope: !582)
!636 = !DILocalVariable(name: "is_ssh", scope: !582, file: !3, line: 201, type: !531)
!637 = !DILocation(line: 201, column: 14, scope: !582)
!638 = !DILocation(line: 201, column: 34, scope: !582)
!639 = !DILocation(line: 201, column: 40, scope: !582)
!640 = !DILocation(line: 201, column: 23, scope: !582)
!641 = !DILocation(line: 203, column: 7, scope: !582)
!642 = !DILocation(line: 203, column: 20, scope: !582)
!643 = !DILocation(line: 203, column: 5, scope: !582)
!644 = !DILocation(line: 204, column: 6, scope: !645)
!645 = distinct !DILexicalBlock(scope: !582, file: !3, line: 204, column: 6)
!646 = !DILocation(line: 204, column: 9, scope: !645)
!647 = !DILocation(line: 204, column: 7, scope: !645)
!648 = !DILocation(line: 204, column: 15, scope: !645)
!649 = !DILocation(line: 204, column: 19, scope: !645)
!650 = !DILocation(line: 204, column: 18, scope: !645)
!651 = !DILocation(line: 204, column: 21, scope: !645)
!652 = !DILocation(line: 204, column: 6, scope: !582)
!653 = !DILocation(line: 205, column: 5, scope: !645)
!654 = !DILocation(line: 205, column: 5, scope: !655)
!655 = distinct !DILexicalBlock(scope: !645, file: !3, line: 205, column: 5)
!656 = !DILocation(line: 207, column: 3, scope: !582)
!657 = !DILocation(line: 208, column: 6, scope: !658)
!658 = distinct !DILexicalBlock(scope: !582, file: !3, line: 208, column: 6)
!659 = !DILocation(line: 208, column: 9, scope: !658)
!660 = !DILocation(line: 208, column: 7, scope: !658)
!661 = !DILocation(line: 208, column: 15, scope: !658)
!662 = !DILocation(line: 208, column: 19, scope: !658)
!663 = !DILocation(line: 208, column: 18, scope: !658)
!664 = !DILocation(line: 208, column: 21, scope: !658)
!665 = !DILocation(line: 208, column: 6, scope: !582)
!666 = !DILocation(line: 209, column: 5, scope: !658)
!667 = !DILocation(line: 209, column: 5, scope: !668)
!668 = distinct !DILexicalBlock(scope: !658, file: !3, line: 209, column: 5)
!669 = !DILocalVariable(name: "second_slash", scope: !582, file: !3, line: 211, type: !670)
!670 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!671 = !DILocation(line: 211, column: 15, scope: !582)
!672 = !DILocation(line: 211, column: 30, scope: !582)
!673 = !DILocation(line: 213, column: 3, scope: !582)
!674 = !DILocation(line: 214, column: 6, scope: !675)
!675 = distinct !DILexicalBlock(scope: !582, file: !3, line: 214, column: 6)
!676 = !DILocation(line: 214, column: 9, scope: !675)
!677 = !DILocation(line: 214, column: 7, scope: !675)
!678 = !DILocation(line: 214, column: 6, scope: !582)
!679 = !DILocation(line: 215, column: 5, scope: !675)
!680 = !DILocation(line: 215, column: 5, scope: !681)
!681 = distinct !DILexicalBlock(scope: !675, file: !3, line: 215, column: 5)
!682 = !DILocalVariable(name: "userinfo_end", scope: !582, file: !3, line: 217, type: !48)
!683 = !DILocation(line: 217, column: 9, scope: !582)
!684 = !DILocation(line: 217, column: 34, scope: !582)
!685 = !DILocation(line: 217, column: 24, scope: !582)
!686 = !DILocation(line: 218, column: 6, scope: !687)
!687 = distinct !DILexicalBlock(scope: !582, file: !3, line: 218, column: 6)
!688 = !DILocation(line: 218, column: 19, scope: !687)
!689 = !DILocation(line: 218, column: 23, scope: !687)
!690 = !DILocation(line: 218, column: 22, scope: !687)
!691 = !DILocation(line: 218, column: 36, scope: !687)
!692 = !DILocation(line: 218, column: 6, scope: !582)
!693 = !DILocation(line: 219, column: 6, scope: !694)
!694 = distinct !DILexicalBlock(scope: !687, file: !3, line: 218, column: 44)
!695 = !DILocation(line: 219, column: 19, scope: !694)
!696 = !DILocation(line: 220, column: 22, scope: !694)
!697 = !DILocation(line: 220, column: 5, scope: !694)
!698 = !DILocation(line: 220, column: 11, scope: !694)
!699 = !DILocation(line: 220, column: 20, scope: !694)
!700 = !DILocation(line: 221, column: 9, scope: !694)
!701 = !DILocation(line: 221, column: 22, scope: !694)
!702 = !DILocation(line: 221, column: 7, scope: !694)
!703 = !DILocation(line: 222, column: 3, scope: !694)
!704 = !DILocation(line: 224, column: 6, scope: !705)
!705 = distinct !DILexicalBlock(scope: !582, file: !3, line: 224, column: 6)
!706 = !DILocation(line: 224, column: 9, scope: !705)
!707 = !DILocation(line: 224, column: 7, scope: !705)
!708 = !DILocation(line: 224, column: 6, scope: !582)
!709 = !DILocation(line: 225, column: 5, scope: !705)
!710 = !DILocation(line: 225, column: 5, scope: !711)
!711 = distinct !DILexicalBlock(scope: !705, file: !3, line: 225, column: 5)
!712 = !DILocalVariable(name: "hostname_end", scope: !582, file: !3, line: 227, type: !48)
!713 = !DILocation(line: 227, column: 9, scope: !582)
!714 = !DILocation(line: 229, column: 7, scope: !715)
!715 = distinct !DILexicalBlock(scope: !582, file: !3, line: 229, column: 6)
!716 = !DILocation(line: 229, column: 6, scope: !715)
!717 = !DILocation(line: 229, column: 9, scope: !715)
!718 = !DILocation(line: 229, column: 6, scope: !582)
!719 = !DILocation(line: 231, column: 5, scope: !720)
!720 = distinct !DILexicalBlock(scope: !715, file: !3, line: 230, column: 3)
!721 = !DILocation(line: 232, column: 31, scope: !720)
!722 = !DILocation(line: 232, column: 20, scope: !720)
!723 = !DILocation(line: 232, column: 18, scope: !720)
!724 = !DILocation(line: 233, column: 9, scope: !725)
!725 = distinct !DILexicalBlock(scope: !720, file: !3, line: 233, column: 8)
!726 = !DILocation(line: 233, column: 8, scope: !720)
!727 = !DILocation(line: 234, column: 7, scope: !725)
!728 = !DILocation(line: 234, column: 7, scope: !729)
!729 = distinct !DILexicalBlock(scope: !725, file: !3, line: 234, column: 7)
!730 = !DILocation(line: 236, column: 6, scope: !720)
!731 = !DILocation(line: 236, column: 19, scope: !720)
!732 = !DILocation(line: 237, column: 18, scope: !720)
!733 = !DILocation(line: 237, column: 5, scope: !720)
!734 = !DILocation(line: 237, column: 11, scope: !720)
!735 = !DILocation(line: 237, column: 16, scope: !720)
!736 = !DILocation(line: 238, column: 5, scope: !720)
!737 = !DILocation(line: 239, column: 8, scope: !738)
!738 = distinct !DILexicalBlock(scope: !720, file: !3, line: 239, column: 8)
!739 = !DILocation(line: 239, column: 23, scope: !738)
!740 = !DILocation(line: 239, column: 21, scope: !738)
!741 = !DILocation(line: 239, column: 29, scope: !738)
!742 = !DILocation(line: 239, column: 33, scope: !738)
!743 = !DILocation(line: 239, column: 40, scope: !738)
!744 = !DILocation(line: 239, column: 44, scope: !738)
!745 = !DILocation(line: 239, column: 43, scope: !738)
!746 = !DILocation(line: 239, column: 56, scope: !738)
!747 = !DILocation(line: 239, column: 8, scope: !720)
!748 = !DILocalVariable(name: "port_end", scope: !749, file: !3, line: 241, type: !48)
!749 = distinct !DILexicalBlock(scope: !738, file: !3, line: 240, column: 5)
!750 = !DILocation(line: 241, column: 13, scope: !749)
!751 = !DILocation(line: 241, column: 45, scope: !749)
!752 = !DILocation(line: 241, column: 57, scope: !749)
!753 = !DILocation(line: 241, column: 24, scope: !749)
!754 = !DILocation(line: 242, column: 10, scope: !755)
!755 = distinct !DILexicalBlock(scope: !749, file: !3, line: 242, column: 10)
!756 = !DILocation(line: 242, column: 10, scope: !749)
!757 = !DILocation(line: 244, column: 22, scope: !758)
!758 = distinct !DILexicalBlock(scope: !755, file: !3, line: 243, column: 7)
!759 = !DILocation(line: 244, column: 34, scope: !758)
!760 = !DILocation(line: 244, column: 9, scope: !758)
!761 = !DILocation(line: 244, column: 15, scope: !758)
!762 = !DILocation(line: 244, column: 20, scope: !758)
!763 = !DILocation(line: 245, column: 13, scope: !758)
!764 = !DILocation(line: 245, column: 11, scope: !758)
!765 = !DILocation(line: 246, column: 7, scope: !758)
!766 = !DILocation(line: 247, column: 9, scope: !767)
!767 = distinct !DILexicalBlock(scope: !755, file: !3, line: 246, column: 12)
!768 = !DILocation(line: 247, column: 9, scope: !769)
!769 = distinct !DILexicalBlock(scope: !767, file: !3, line: 247, column: 9)
!770 = !DILocation(line: 249, column: 5, scope: !749)
!771 = !DILocation(line: 250, column: 11, scope: !772)
!772 = distinct !DILexicalBlock(scope: !738, file: !3, line: 249, column: 10)
!773 = !DILocation(line: 250, column: 9, scope: !772)
!774 = !DILocation(line: 252, column: 3, scope: !720)
!775 = !DILocation(line: 253, column: 31, scope: !776)
!776 = distinct !DILexicalBlock(scope: !715, file: !3, line: 252, column: 8)
!777 = !DILocation(line: 253, column: 20, scope: !776)
!778 = !DILocation(line: 253, column: 18, scope: !776)
!779 = !DILocation(line: 254, column: 10, scope: !780)
!780 = distinct !DILexicalBlock(scope: !776, file: !3, line: 254, column: 9)
!781 = !DILocation(line: 254, column: 9, scope: !776)
!782 = !DILocation(line: 255, column: 7, scope: !780)
!783 = !DILocation(line: 255, column: 7, scope: !784)
!784 = distinct !DILexicalBlock(scope: !780, file: !3, line: 255, column: 7)
!785 = !DILocation(line: 257, column: 18, scope: !776)
!786 = !DILocation(line: 257, column: 5, scope: !776)
!787 = !DILocation(line: 257, column: 11, scope: !776)
!788 = !DILocation(line: 257, column: 16, scope: !776)
!789 = !DILocation(line: 258, column: 9, scope: !790)
!790 = distinct !DILexicalBlock(scope: !776, file: !3, line: 258, column: 8)
!791 = !DILocation(line: 258, column: 16, scope: !790)
!792 = !DILocation(line: 258, column: 20, scope: !790)
!793 = !DILocation(line: 258, column: 19, scope: !790)
!794 = !DILocation(line: 258, column: 32, scope: !790)
!795 = !DILocation(line: 258, column: 8, scope: !776)
!796 = !DILocation(line: 260, column: 8, scope: !797)
!797 = distinct !DILexicalBlock(scope: !790, file: !3, line: 259, column: 5)
!798 = !DILocation(line: 260, column: 21, scope: !797)
!799 = !DILocalVariable(name: "port_end", scope: !797, file: !3, line: 261, type: !48)
!800 = !DILocation(line: 261, column: 13, scope: !797)
!801 = !DILocation(line: 261, column: 45, scope: !797)
!802 = !DILocation(line: 261, column: 57, scope: !797)
!803 = !DILocation(line: 261, column: 24, scope: !797)
!804 = !DILocation(line: 262, column: 10, scope: !805)
!805 = distinct !DILexicalBlock(scope: !797, file: !3, line: 262, column: 10)
!806 = !DILocation(line: 262, column: 10, scope: !797)
!807 = !DILocation(line: 264, column: 22, scope: !808)
!808 = distinct !DILexicalBlock(scope: !805, file: !3, line: 263, column: 7)
!809 = !DILocation(line: 264, column: 34, scope: !808)
!810 = !DILocation(line: 264, column: 9, scope: !808)
!811 = !DILocation(line: 264, column: 15, scope: !808)
!812 = !DILocation(line: 264, column: 20, scope: !808)
!813 = !DILocation(line: 265, column: 13, scope: !808)
!814 = !DILocation(line: 265, column: 11, scope: !808)
!815 = !DILocation(line: 266, column: 7, scope: !808)
!816 = !DILocation(line: 267, column: 9, scope: !817)
!817 = distinct !DILexicalBlock(scope: !805, file: !3, line: 266, column: 12)
!818 = !DILocation(line: 267, column: 9, scope: !819)
!819 = distinct !DILexicalBlock(scope: !817, file: !3, line: 267, column: 9)
!820 = !DILocation(line: 269, column: 5, scope: !797)
!821 = !DILocation(line: 270, column: 11, scope: !822)
!822 = distinct !DILexicalBlock(scope: !790, file: !3, line: 269, column: 10)
!823 = !DILocation(line: 270, column: 9, scope: !822)
!824 = !DILocation(line: 275, column: 3, scope: !582)
!825 = !DILocation(line: 276, column: 6, scope: !826)
!826 = distinct !DILexicalBlock(scope: !582, file: !3, line: 276, column: 6)
!827 = !DILocation(line: 276, column: 12, scope: !826)
!828 = !DILocation(line: 276, column: 6, scope: !582)
!829 = !DILocation(line: 277, column: 8, scope: !826)
!830 = !DILocation(line: 277, column: 14, scope: !826)
!831 = !DILocation(line: 277, column: 5, scope: !826)
!832 = !DILocation(line: 279, column: 6, scope: !582)
!833 = !DILocation(line: 279, column: 12, scope: !582)
!834 = !DILocation(line: 279, column: 3, scope: !582)
!835 = !DILocation(line: 281, column: 6, scope: !836)
!836 = distinct !DILexicalBlock(scope: !582, file: !3, line: 281, column: 6)
!837 = !DILocation(line: 281, column: 12, scope: !836)
!838 = !DILocation(line: 281, column: 6, scope: !582)
!839 = !DILocation(line: 282, column: 8, scope: !836)
!840 = !DILocation(line: 282, column: 14, scope: !836)
!841 = !DILocation(line: 282, column: 5, scope: !836)
!842 = !DILocation(line: 284, column: 3, scope: !582)
!843 = !DILocation(line: 284, column: 9, scope: !582)
!844 = !DILocation(line: 287, column: 6, scope: !845)
!845 = distinct !DILexicalBlock(scope: !582, file: !3, line: 287, column: 6)
!846 = !DILocation(line: 287, column: 13, scope: !845)
!847 = !DILocation(line: 287, column: 17, scope: !845)
!848 = !DILocation(line: 287, column: 16, scope: !845)
!849 = !DILocation(line: 287, column: 19, scope: !845)
!850 = !DILocation(line: 287, column: 6, scope: !582)
!851 = !DILocation(line: 289, column: 5, scope: !852)
!852 = distinct !DILexicalBlock(scope: !845, file: !3, line: 288, column: 3)
!853 = !DILocation(line: 290, column: 3, scope: !852)
!854 = !DILocalVariable(name: "path_end", scope: !582, file: !3, line: 293, type: !48)
!855 = !DILocation(line: 293, column: 9, scope: !582)
!856 = !DILocation(line: 293, column: 31, scope: !582)
!857 = !DILocation(line: 293, column: 20, scope: !582)
!858 = !DILocation(line: 294, column: 7, scope: !859)
!859 = distinct !DILexicalBlock(scope: !582, file: !3, line: 294, column: 6)
!860 = !DILocation(line: 294, column: 6, scope: !582)
!861 = !DILocation(line: 295, column: 5, scope: !859)
!862 = !DILocation(line: 295, column: 5, scope: !863)
!863 = distinct !DILexicalBlock(scope: !859, file: !3, line: 295, column: 5)
!864 = !DILocalVariable(name: "has_query", scope: !582, file: !3, line: 297, type: !531)
!865 = !DILocation(line: 297, column: 14, scope: !582)
!866 = !DILocation(line: 297, column: 28, scope: !582)
!867 = !DILocation(line: 297, column: 27, scope: !582)
!868 = !DILocation(line: 297, column: 37, scope: !582)
!869 = !DILocalVariable(name: "has_fragment", scope: !582, file: !3, line: 298, type: !531)
!870 = !DILocation(line: 298, column: 14, scope: !582)
!871 = !DILocation(line: 298, column: 31, scope: !582)
!872 = !DILocation(line: 298, column: 30, scope: !582)
!873 = !DILocation(line: 298, column: 40, scope: !582)
!874 = !DILocation(line: 299, column: 4, scope: !582)
!875 = !DILocation(line: 299, column: 13, scope: !582)
!876 = !DILocation(line: 301, column: 31, scope: !582)
!877 = !DILocation(line: 301, column: 16, scope: !582)
!878 = !DILocation(line: 301, column: 3, scope: !582)
!879 = !DILocation(line: 301, column: 9, scope: !582)
!880 = !DILocation(line: 301, column: 14, scope: !582)
!881 = !DILocation(line: 302, column: 7, scope: !582)
!882 = !DILocation(line: 302, column: 16, scope: !582)
!883 = !DILocation(line: 302, column: 5, scope: !582)
!884 = !DILocation(line: 303, column: 6, scope: !885)
!885 = distinct !DILexicalBlock(scope: !582, file: !3, line: 303, column: 6)
!886 = !DILocation(line: 303, column: 6, scope: !582)
!887 = !DILocalVariable(name: "query_end", scope: !888, file: !3, line: 305, type: !48)
!888 = distinct !DILexicalBlock(scope: !885, file: !3, line: 304, column: 3)
!889 = !DILocation(line: 305, column: 11, scope: !888)
!890 = !DILocation(line: 305, column: 34, scope: !888)
!891 = !DILocation(line: 305, column: 23, scope: !888)
!892 = !DILocation(line: 306, column: 8, scope: !893)
!893 = distinct !DILexicalBlock(scope: !888, file: !3, line: 306, column: 8)
!894 = !DILocation(line: 306, column: 8, scope: !888)
!895 = !DILocalVariable(name: "has_fragment", scope: !896, file: !3, line: 308, type: !531)
!896 = distinct !DILexicalBlock(scope: !893, file: !3, line: 307, column: 5)
!897 = !DILocation(line: 308, column: 18, scope: !896)
!898 = !DILocation(line: 308, column: 35, scope: !896)
!899 = !DILocation(line: 308, column: 34, scope: !896)
!900 = !DILocation(line: 308, column: 45, scope: !896)
!901 = !DILocation(line: 309, column: 8, scope: !896)
!902 = !DILocation(line: 309, column: 18, scope: !896)
!903 = !DILocation(line: 311, column: 40, scope: !896)
!904 = !DILocation(line: 311, column: 43, scope: !896)
!905 = !DILocation(line: 311, column: 21, scope: !896)
!906 = !DILocation(line: 311, column: 7, scope: !896)
!907 = !DILocation(line: 311, column: 13, scope: !896)
!908 = !DILocation(line: 311, column: 19, scope: !896)
!909 = !DILocation(line: 312, column: 10, scope: !910)
!910 = distinct !DILexicalBlock(scope: !896, file: !3, line: 312, column: 10)
!911 = !DILocation(line: 312, column: 10, scope: !896)
!912 = !DILocalVariable(name: "fragment_end", scope: !913, file: !3, line: 314, type: !48)
!913 = distinct !DILexicalBlock(scope: !910, file: !3, line: 313, column: 7)
!914 = !DILocation(line: 314, column: 15, scope: !913)
!915 = !DILocation(line: 314, column: 41, scope: !913)
!916 = !DILocation(line: 314, column: 50, scope: !913)
!917 = !DILocation(line: 314, column: 30, scope: !913)
!918 = !DILocation(line: 315, column: 12, scope: !919)
!919 = distinct !DILexicalBlock(scope: !913, file: !3, line: 315, column: 12)
!920 = !DILocation(line: 315, column: 12, scope: !913)
!921 = !DILocation(line: 317, column: 43, scope: !922)
!922 = distinct !DILexicalBlock(scope: !919, file: !3, line: 316, column: 9)
!923 = !DILocation(line: 317, column: 52, scope: !922)
!924 = !DILocation(line: 317, column: 28, scope: !922)
!925 = !DILocation(line: 317, column: 11, scope: !922)
!926 = !DILocation(line: 317, column: 17, scope: !922)
!927 = !DILocation(line: 317, column: 26, scope: !922)
!928 = !DILocation(line: 318, column: 9, scope: !922)
!929 = !DILocation(line: 319, column: 11, scope: !930)
!930 = distinct !DILexicalBlock(scope: !919, file: !3, line: 318, column: 14)
!931 = !DILocation(line: 319, column: 11, scope: !932)
!932 = distinct !DILexicalBlock(scope: !930, file: !3, line: 319, column: 11)
!933 = !DILocation(line: 321, column: 7, scope: !913)
!934 = !DILocation(line: 322, column: 5, scope: !896)
!935 = !DILocation(line: 323, column: 7, scope: !936)
!936 = distinct !DILexicalBlock(scope: !893, file: !3, line: 322, column: 10)
!937 = !DILocation(line: 323, column: 7, scope: !938)
!938 = distinct !DILexicalBlock(scope: !936, file: !3, line: 323, column: 7)
!939 = !DILocation(line: 325, column: 3, scope: !888)
!940 = !DILocation(line: 325, column: 12, scope: !941)
!941 = distinct !DILexicalBlock(scope: !885, file: !3, line: 325, column: 12)
!942 = !DILocation(line: 325, column: 12, scope: !885)
!943 = !DILocalVariable(name: "fragment_end", scope: !944, file: !3, line: 327, type: !48)
!944 = distinct !DILexicalBlock(scope: !941, file: !3, line: 326, column: 3)
!945 = !DILocation(line: 327, column: 15, scope: !944)
!946 = !DILocation(line: 327, column: 41, scope: !944)
!947 = !DILocation(line: 327, column: 30, scope: !944)
!948 = !DILocation(line: 328, column: 12, scope: !949)
!949 = distinct !DILexicalBlock(scope: !944, file: !3, line: 328, column: 12)
!950 = !DILocation(line: 328, column: 12, scope: !944)
!951 = !DILocation(line: 330, column: 43, scope: !952)
!952 = distinct !DILexicalBlock(scope: !949, file: !3, line: 329, column: 9)
!953 = !DILocation(line: 330, column: 28, scope: !952)
!954 = !DILocation(line: 330, column: 11, scope: !952)
!955 = !DILocation(line: 330, column: 17, scope: !952)
!956 = !DILocation(line: 330, column: 26, scope: !952)
!957 = !DILocation(line: 331, column: 9, scope: !952)
!958 = !DILocation(line: 332, column: 11, scope: !959)
!959 = distinct !DILexicalBlock(scope: !949, file: !3, line: 331, column: 14)
!960 = !DILocation(line: 332, column: 11, scope: !961)
!961 = distinct !DILexicalBlock(scope: !959, file: !3, line: 332, column: 11)
!962 = !DILocation(line: 334, column: 3, scope: !944)
!963 = !DILocation(line: 338, column: 10, scope: !582)
!964 = !DILocation(line: 338, column: 3, scope: !582)
!965 = !DILabel(scope: !582, name: "error", file: !3, line: 340)
!966 = !DILocation(line: 340, column: 1, scope: !582)
!967 = !DILocation(line: 341, column: 12, scope: !582)
!968 = !DILocation(line: 341, column: 3, scope: !582)
!969 = !DILocation(line: 342, column: 3, scope: !582)
!970 = !DILocation(line: 343, column: 1, scope: !582)
!971 = distinct !DISubprogram(name: "url_is_ssh", scope: !3, file: !3, line: 360, type: !972, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !98)
!972 = !DISubroutineType(types: !973)
!973 = !{!532, !57}
!974 = !DILocalVariable(name: "str", arg: 1, scope: !971, file: !3, line: 360, type: !57)
!975 = !DILocation(line: 360, column: 25, scope: !971)
!976 = !DILocation(line: 361, column: 19, scope: !977)
!977 = distinct !DILexicalBlock(scope: !971, file: !3, line: 361, column: 7)
!978 = !DILocation(line: 361, column: 12, scope: !977)
!979 = !DILocation(line: 361, column: 9, scope: !977)
!980 = !DILocation(line: 361, column: 31, scope: !977)
!981 = !DILocation(line: 361, column: 46, scope: !977)
!982 = !DILocation(line: 361, column: 39, scope: !977)
!983 = !DILocation(line: 361, column: 36, scope: !977)
!984 = !DILocation(line: 361, column: 7, scope: !971)
!985 = !DILocation(line: 362, column: 5, scope: !986)
!986 = distinct !DILexicalBlock(scope: !977, file: !3, line: 361, column: 59)
!987 = !DILocation(line: 364, column: 3, scope: !971)
!988 = !DILocation(line: 365, column: 1, scope: !971)
!989 = distinct !DISubprogram(name: "url_free", scope: !3, file: !3, line: 476, type: !990, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !98)
!990 = !DISubroutineType(types: !991)
!991 = !{null, !50}
!992 = !DILocalVariable(name: "data", arg: 1, scope: !989, file: !3, line: 476, type: !50)
!993 = !DILocation(line: 476, column: 23, scope: !989)
!994 = !DILocation(line: 477, column: 8, scope: !995)
!995 = distinct !DILexicalBlock(scope: !989, file: !3, line: 477, column: 7)
!996 = !DILocation(line: 477, column: 7, scope: !989)
!997 = !DILocation(line: 477, column: 14, scope: !995)
!998 = !DILocation(line: 478, column: 8, scope: !989)
!999 = !DILocation(line: 478, column: 14, scope: !989)
!1000 = !DILocation(line: 478, column: 3, scope: !989)
!1001 = !DILocation(line: 479, column: 15, scope: !989)
!1002 = !DILocation(line: 479, column: 21, scope: !989)
!1003 = !DILocation(line: 479, column: 8, scope: !989)
!1004 = !DILocation(line: 479, column: 3, scope: !989)
!1005 = !DILocation(line: 480, column: 8, scope: !989)
!1006 = !DILocation(line: 480, column: 3, scope: !989)
!1007 = !DILocation(line: 481, column: 1, scope: !989)
!1008 = distinct !DISubprogram(name: "url_is_protocol", scope: !3, file: !3, line: 347, type: !972, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !98)
!1009 = !DILocalVariable(name: "str", arg: 1, scope: !1008, file: !3, line: 347, type: !57)
!1010 = !DILocation(line: 347, column: 30, scope: !1008)
!1011 = !DILocalVariable(name: "count", scope: !1008, file: !3, line: 348, type: !1012)
!1012 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1013 = !DILocation(line: 348, column: 18, scope: !1008)
!1014 = !DILocalVariable(name: "i", scope: !1015, file: !3, line: 350, type: !7)
!1015 = distinct !DILexicalBlock(scope: !1008, file: !3, line: 350, column: 3)
!1016 = !DILocation(line: 350, column: 17, scope: !1015)
!1017 = !DILocation(line: 350, column: 8, scope: !1015)
!1018 = !DILocation(line: 350, column: 24, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1015, file: !3, line: 350, column: 3)
!1020 = !DILocation(line: 350, column: 26, scope: !1019)
!1021 = !DILocation(line: 350, column: 3, scope: !1015)
!1022 = !DILocation(line: 351, column: 33, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1024, file: !3, line: 351, column: 9)
!1024 = distinct !DILexicalBlock(scope: !1019, file: !3, line: 350, column: 40)
!1025 = !DILocation(line: 351, column: 21, scope: !1023)
!1026 = !DILocation(line: 351, column: 37, scope: !1023)
!1027 = !DILocation(line: 351, column: 14, scope: !1023)
!1028 = !DILocation(line: 351, column: 11, scope: !1023)
!1029 = !DILocation(line: 351, column: 9, scope: !1024)
!1030 = !DILocation(line: 352, column: 7, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1023, file: !3, line: 351, column: 43)
!1032 = !DILocation(line: 354, column: 3, scope: !1024)
!1033 = !DILocation(line: 350, column: 35, scope: !1019)
!1034 = !DILocation(line: 350, column: 3, scope: !1019)
!1035 = distinct !{!1035, !1021, !1036}
!1036 = !DILocation(line: 354, column: 3, scope: !1015)
!1037 = !DILocation(line: 356, column: 3, scope: !1008)
!1038 = !DILocation(line: 357, column: 1, scope: !1008)
!1039 = distinct !DISubprogram(name: "url_get_scheme", scope: !3, file: !3, line: 368, type: !233, scopeLine: 368, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !98)
!1040 = !DILocalVariable(name: "url", arg: 1, scope: !1039, file: !3, line: 368, type: !57)
!1041 = !DILocation(line: 368, column: 29, scope: !1039)
!1042 = !DILocalVariable(name: "protocol", scope: !1039, file: !3, line: 369, type: !48)
!1043 = !DILocation(line: 369, column: 9, scope: !1039)
!1044 = !DILocation(line: 369, column: 29, scope: !1039)
!1045 = !DILocation(line: 370, column: 8, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1039, file: !3, line: 370, column: 7)
!1047 = !DILocation(line: 370, column: 7, scope: !1039)
!1048 = !DILocation(line: 370, column: 18, scope: !1046)
!1049 = !DILocation(line: 372, column: 10, scope: !1039)
!1050 = !DILocation(line: 372, column: 26, scope: !1039)
!1051 = !DILocation(line: 372, column: 3, scope: !1039)
!1052 = !DILocation(line: 373, column: 23, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1039, file: !3, line: 373, column: 7)
!1054 = !DILocation(line: 373, column: 7, scope: !1053)
!1055 = !DILocation(line: 373, column: 7, scope: !1039)
!1056 = !DILocation(line: 373, column: 41, scope: !1053)
!1057 = !DILocation(line: 373, column: 34, scope: !1053)
!1058 = !DILocation(line: 375, column: 8, scope: !1039)
!1059 = !DILocation(line: 375, column: 3, scope: !1039)
!1060 = !DILocation(line: 376, column: 3, scope: !1039)
!1061 = !DILocation(line: 377, column: 1, scope: !1039)
!1062 = distinct !DISubprogram(name: "url_get_userinfo", scope: !3, file: !3, line: 389, type: !233, scopeLine: 389, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !98)
!1063 = !DILocalVariable(name: "url", arg: 1, scope: !1062, file: !3, line: 389, type: !57)
!1064 = !DILocation(line: 389, column: 31, scope: !1062)
!1065 = !DILocation(line: 390, column: 3, scope: !1062)
!1066 = !DILocalVariable(name: "data", scope: !1067, file: !3, line: 390, type: !50)
!1067 = distinct !DILexicalBlock(scope: !1062, file: !3, line: 390, column: 3)
!1068 = !DILocation(line: 390, column: 3, scope: !1067)
!1069 = !DILocalVariable(name: "out", scope: !1067, file: !3, line: 390, type: !48)
!1070 = distinct !DISubprogram(name: "url_get_hostname", scope: !3, file: !3, line: 394, type: !233, scopeLine: 394, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !98)
!1071 = !DILocalVariable(name: "url", arg: 1, scope: !1070, file: !3, line: 394, type: !57)
!1072 = !DILocation(line: 394, column: 31, scope: !1070)
!1073 = !DILocation(line: 395, column: 3, scope: !1070)
!1074 = !DILocalVariable(name: "data", scope: !1075, file: !3, line: 395, type: !50)
!1075 = distinct !DILexicalBlock(scope: !1070, file: !3, line: 395, column: 3)
!1076 = !DILocation(line: 395, column: 3, scope: !1075)
!1077 = !DILocalVariable(name: "out", scope: !1075, file: !3, line: 395, type: !48)
!1078 = distinct !DISubprogram(name: "url_get_host", scope: !3, file: !3, line: 399, type: !233, scopeLine: 399, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !98)
!1079 = !DILocalVariable(name: "url", arg: 1, scope: !1078, file: !3, line: 399, type: !57)
!1080 = !DILocation(line: 399, column: 27, scope: !1078)
!1081 = !DILocation(line: 400, column: 3, scope: !1078)
!1082 = !DILocalVariable(name: "data", scope: !1083, file: !3, line: 400, type: !50)
!1083 = distinct !DILexicalBlock(scope: !1078, file: !3, line: 400, column: 3)
!1084 = !DILocation(line: 400, column: 3, scope: !1083)
!1085 = !DILocalVariable(name: "out", scope: !1083, file: !3, line: 400, type: !48)
!1086 = distinct !DISubprogram(name: "url_get_pathname", scope: !3, file: !3, line: 404, type: !233, scopeLine: 404, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !98)
!1087 = !DILocalVariable(name: "url", arg: 1, scope: !1086, file: !3, line: 404, type: !57)
!1088 = !DILocation(line: 404, column: 31, scope: !1086)
!1089 = !DILocation(line: 405, column: 3, scope: !1086)
!1090 = !DILocalVariable(name: "data", scope: !1091, file: !3, line: 405, type: !50)
!1091 = distinct !DILexicalBlock(scope: !1086, file: !3, line: 405, column: 3)
!1092 = !DILocation(line: 405, column: 3, scope: !1091)
!1093 = !DILocalVariable(name: "out", scope: !1091, file: !3, line: 405, type: !48)
!1094 = distinct !DISubprogram(name: "url_get_path", scope: !3, file: !3, line: 409, type: !233, scopeLine: 409, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !98)
!1095 = !DILocalVariable(name: "url", arg: 1, scope: !1094, file: !3, line: 409, type: !57)
!1096 = !DILocation(line: 409, column: 27, scope: !1094)
!1097 = !DILocation(line: 410, column: 3, scope: !1094)
!1098 = !DILocalVariable(name: "data", scope: !1099, file: !3, line: 410, type: !50)
!1099 = distinct !DILexicalBlock(scope: !1094, file: !3, line: 410, column: 3)
!1100 = !DILocation(line: 410, column: 3, scope: !1099)
!1101 = !DILocalVariable(name: "out", scope: !1099, file: !3, line: 410, type: !48)
!1102 = distinct !DISubprogram(name: "url_get_query_value", scope: !3, file: !3, line: 415, type: !1103, scopeLine: 416, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !98)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{!57, !1105, !57}
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!1107 = !DILocalVariable(name: "url", arg: 1, scope: !1102, file: !3, line: 415, type: !1105)
!1108 = !DILocation(line: 415, column: 40, scope: !1102)
!1109 = !DILocalVariable(name: "key", arg: 2, scope: !1102, file: !3, line: 415, type: !57)
!1110 = !DILocation(line: 415, column: 57, scope: !1102)
!1111 = !DILocation(line: 417, column: 6, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 417, column: 6)
!1113 = !DILocation(line: 417, column: 11, scope: !1112)
!1114 = !DILocation(line: 417, column: 17, scope: !1112)
!1115 = !DILocation(line: 417, column: 6, scope: !1102)
!1116 = !DILocation(line: 418, column: 5, scope: !1112)
!1117 = !DILocalVariable(name: "kv", scope: !1118, file: !3, line: 420, type: !64)
!1118 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 420, column: 3)
!1119 = !DILocation(line: 420, column: 36, scope: !1118)
!1120 = !DILocation(line: 420, column: 41, scope: !1118)
!1121 = !DILocation(line: 420, column: 46, scope: !1118)
!1122 = !DILocation(line: 420, column: 8, scope: !1118)
!1123 = !DILocation(line: 420, column: 53, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1118, file: !3, line: 420, column: 3)
!1125 = !DILocation(line: 420, column: 57, scope: !1124)
!1126 = !DILocation(line: 420, column: 3, scope: !1118)
!1127 = !DILocation(line: 422, column: 16, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1129, file: !3, line: 422, column: 9)
!1129 = distinct !DILexicalBlock(scope: !1124, file: !3, line: 421, column: 3)
!1130 = !DILocation(line: 422, column: 20, scope: !1128)
!1131 = !DILocation(line: 422, column: 25, scope: !1128)
!1132 = !DILocation(line: 422, column: 9, scope: !1128)
!1133 = !DILocation(line: 422, column: 30, scope: !1128)
!1134 = !DILocation(line: 422, column: 9, scope: !1129)
!1135 = !DILocation(line: 423, column: 15, scope: !1128)
!1136 = !DILocation(line: 423, column: 19, scope: !1128)
!1137 = !DILocation(line: 423, column: 8, scope: !1128)
!1138 = !DILocation(line: 424, column: 3, scope: !1129)
!1139 = !DILocation(line: 420, column: 62, scope: !1124)
!1140 = !DILocation(line: 420, column: 3, scope: !1124)
!1141 = distinct !{!1141, !1126, !1142}
!1142 = !DILocation(line: 424, column: 3, scope: !1118)
!1143 = !DILocation(line: 425, column: 3, scope: !1102)
!1144 = !DILocation(line: 426, column: 1, scope: !1102)
!1145 = distinct !DISubprogram(name: "url_get_fragment", scope: !3, file: !3, line: 430, type: !233, scopeLine: 430, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !98)
!1146 = !DILocalVariable(name: "url", arg: 1, scope: !1145, file: !3, line: 430, type: !57)
!1147 = !DILocation(line: 430, column: 31, scope: !1145)
!1148 = !DILocation(line: 431, column: 3, scope: !1145)
!1149 = !DILocalVariable(name: "data", scope: !1150, file: !3, line: 431, type: !50)
!1150 = distinct !DILexicalBlock(scope: !1145, file: !3, line: 431, column: 3)
!1151 = !DILocation(line: 431, column: 3, scope: !1150)
!1152 = !DILocalVariable(name: "out", scope: !1150, file: !3, line: 431, type: !48)
!1153 = distinct !DISubprogram(name: "url_get_port", scope: !3, file: !3, line: 435, type: !233, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !98)
!1154 = !DILocalVariable(name: "url", arg: 1, scope: !1153, file: !3, line: 435, type: !57)
!1155 = !DILocation(line: 435, column: 27, scope: !1153)
!1156 = !DILocation(line: 436, column: 3, scope: !1153)
!1157 = !DILocalVariable(name: "data", scope: !1158, file: !3, line: 436, type: !50)
!1158 = distinct !DILexicalBlock(scope: !1153, file: !3, line: 436, column: 3)
!1159 = !DILocation(line: 436, column: 3, scope: !1158)
!1160 = !DILocalVariable(name: "out", scope: !1158, file: !3, line: 436, type: !48)
!1161 = distinct !DISubprogram(name: "url_inspect", scope: !3, file: !3, line: 440, type: !1162, scopeLine: 440, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !98)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{null, !57}
!1164 = !DILocalVariable(name: "url", arg: 1, scope: !1161, file: !3, line: 440, type: !57)
!1165 = !DILocation(line: 440, column: 26, scope: !1161)
!1166 = !DILocation(line: 441, column: 30, scope: !1161)
!1167 = !DILocation(line: 441, column: 20, scope: !1161)
!1168 = !DILocation(line: 441, column: 3, scope: !1161)
!1169 = !DILocation(line: 442, column: 1, scope: !1161)
!1170 = distinct !DISubprogram(name: "url_data_inspect", scope: !3, file: !3, line: 453, type: !1171, scopeLine: 453, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !98)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{null, !1105}
!1173 = !DILocalVariable(name: "data", arg: 1, scope: !1170, file: !3, line: 453, type: !1105)
!1174 = !DILocation(line: 453, column: 37, scope: !1170)
!1175 = !DILocation(line: 454, column: 3, scope: !1170)
!1176 = !DILocation(line: 455, column: 3, scope: !1170)
!1177 = !DILocation(line: 455, column: 3, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 455, column: 3)
!1179 = distinct !DILexicalBlock(scope: !1170, file: !3, line: 455, column: 3)
!1180 = !DILocation(line: 455, column: 3, scope: !1179)
!1181 = !DILocation(line: 456, column: 3, scope: !1170)
!1182 = !DILocation(line: 456, column: 3, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1184, file: !3, line: 456, column: 3)
!1184 = distinct !DILexicalBlock(scope: !1170, file: !3, line: 456, column: 3)
!1185 = !DILocation(line: 456, column: 3, scope: !1184)
!1186 = !DILocation(line: 457, column: 3, scope: !1170)
!1187 = !DILocation(line: 457, column: 3, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1189, file: !3, line: 457, column: 3)
!1189 = distinct !DILexicalBlock(scope: !1170, file: !3, line: 457, column: 3)
!1190 = !DILocation(line: 457, column: 3, scope: !1189)
!1191 = !DILocation(line: 458, column: 3, scope: !1170)
!1192 = !DILocation(line: 458, column: 3, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1194, file: !3, line: 458, column: 3)
!1194 = distinct !DILexicalBlock(scope: !1170, file: !3, line: 458, column: 3)
!1195 = !DILocation(line: 458, column: 3, scope: !1194)
!1196 = !DILocation(line: 459, column: 3, scope: !1170)
!1197 = !DILocation(line: 459, column: 3, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1199, file: !3, line: 459, column: 3)
!1199 = distinct !DILexicalBlock(scope: !1170, file: !3, line: 459, column: 3)
!1200 = !DILocation(line: 459, column: 3, scope: !1199)
!1201 = !DILocation(line: 460, column: 3, scope: !1170)
!1202 = !DILocation(line: 460, column: 3, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1204, file: !3, line: 460, column: 3)
!1204 = distinct !DILexicalBlock(scope: !1170, file: !3, line: 460, column: 3)
!1205 = !DILocation(line: 460, column: 3, scope: !1204)
!1206 = !DILocation(line: 461, column: 6, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1170, file: !3, line: 461, column: 6)
!1208 = !DILocation(line: 461, column: 12, scope: !1207)
!1209 = !DILocation(line: 461, column: 6, scope: !1170)
!1210 = !DILocalVariable(name: "nr", scope: !1211, file: !3, line: 463, type: !7)
!1211 = distinct !DILexicalBlock(scope: !1212, file: !3, line: 463, column: 6)
!1212 = distinct !DILexicalBlock(scope: !1207, file: !3, line: 462, column: 3)
!1213 = !DILocation(line: 463, column: 19, scope: !1211)
!1214 = !DILocation(line: 463, column: 10, scope: !1211)
!1215 = !DILocation(line: 463, column: 25, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1211, file: !3, line: 463, column: 6)
!1217 = !DILocation(line: 463, column: 31, scope: !1216)
!1218 = !DILocation(line: 463, column: 37, scope: !1216)
!1219 = !DILocation(line: 463, column: 41, scope: !1216)
!1220 = !DILocation(line: 463, column: 6, scope: !1211)
!1221 = !DILocation(line: 465, column: 46, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 464, column: 6)
!1223 = !DILocation(line: 465, column: 50, scope: !1222)
!1224 = !DILocation(line: 465, column: 56, scope: !1222)
!1225 = !DILocation(line: 465, column: 62, scope: !1222)
!1226 = !DILocation(line: 465, column: 66, scope: !1222)
!1227 = !DILocation(line: 465, column: 9, scope: !1222)
!1228 = !DILocation(line: 466, column: 12, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 466, column: 12)
!1230 = !DILocation(line: 466, column: 18, scope: !1229)
!1231 = !DILocation(line: 466, column: 24, scope: !1229)
!1232 = !DILocation(line: 466, column: 28, scope: !1229)
!1233 = !DILocation(line: 466, column: 12, scope: !1222)
!1234 = !DILocation(line: 467, column: 30, scope: !1229)
!1235 = !DILocation(line: 467, column: 36, scope: !1229)
!1236 = !DILocation(line: 467, column: 42, scope: !1229)
!1237 = !DILocation(line: 467, column: 46, scope: !1229)
!1238 = !DILocation(line: 467, column: 11, scope: !1229)
!1239 = !DILocation(line: 469, column: 11, scope: !1229)
!1240 = !DILocation(line: 470, column: 6, scope: !1222)
!1241 = !DILocation(line: 463, column: 46, scope: !1216)
!1242 = !DILocation(line: 463, column: 6, scope: !1216)
!1243 = distinct !{!1243, !1220, !1244}
!1244 = !DILocation(line: 470, column: 6, scope: !1211)
!1245 = !DILocation(line: 471, column: 3, scope: !1212)
!1246 = !DILocation(line: 472, column: 3, scope: !1170)
!1247 = !DILocation(line: 472, column: 3, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 472, column: 3)
!1249 = distinct !DILexicalBlock(scope: !1170, file: !3, line: 472, column: 3)
!1250 = !DILocation(line: 472, column: 3, scope: !1249)
!1251 = !DILocation(line: 473, column: 1, scope: !1170)

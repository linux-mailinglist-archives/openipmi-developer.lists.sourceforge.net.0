Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A79D97B4523
	for <lists+openipmi-developer@lfdr.de>; Sun,  1 Oct 2023 06:04:05 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qmngW-0000t2-92;
	Sun, 01 Oct 2023 04:03:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=5638d045b8=chu11@llnl.gov>) id 1qmngU-0000sw-0V
 for openipmi-developer@lists.sourceforge.net;
 Sun, 01 Oct 2023 04:03:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:To:Subject:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=C5TW1gGFEe7+pFRgGkMlqUR+2Ckf43DiPEbYUuInuVk=; b=Mp050fZ1bRyRtBObqGulYBsE3+
 uGwYc1kRSVSAkn1FGlW63tfMuM4hZFFq9kzLL0L7UKYcgukIrG+rKPDa7jmWMb1GyqP4NdxeAGt45
 uEHReDv9DnYAQYc9kig7Rx7W3nL2U4n1cL1aJApBm8aksTsWbnphFTqOnwWAcuu/tNqA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:To:Subject:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=C5TW1gGFEe7+pFRgGkMlqUR+2Ckf43DiPEbYUuInuVk=; b=ZFnDjIiW8lW3Zg+U5cJqTDnWgL
 mdE66KECQiW3oD+c9rbYXog3wQka1B+tKfCUOBMMFimE117JU7Ahp8Oi7E9bjCafin/9J0bxhB6SG
 W7EdubQQiZ6yn1WOY43R+UNe9PdIP6ysnHsNVPxSDtHWdfkX7X2gUvOwyj2xAQHwjwNc=;
Received: from mx0e-00379502.gpphosted.com ([67.231.147.129])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qmngG-0006ce-BS for openipmi-developer@lists.sourceforge.net;
 Sun, 01 Oct 2023 04:03:56 +0000
Received: from pps.filterd (m0218361.ppops.net [127.0.0.1])
 by mx0f-00379502.gpphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 3912qEbD032027
 for <openipmi-developer@lists.sourceforge.net>; Sat, 30 Sep 2023 20:29:23 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=llnl.gov;
 h=message-id : date :
 subject : to : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=02022021-podllnl;
 bh=C5TW1gGFEe7+pFRgGkMlqUR+2Ckf43DiPEbYUuInuVk=;
 b=a2c5HSu7QK27BQvW/AWfO7c9ygk6VniQGAbTdkifVf7YtEX/wffXX1hYviQVvsjOJEyR
 2S69q1DUTV25fAqSu18Vml3Z5JNpHNOqrs67/5MJNSd5l0VT6kwP10gy/mXRUsk7ZPQ5
 1iTpJgftwxR9GuVVU/+5AvZvRTb2RPHq053AaFAwOhbsonXDjQjYGFmEBZwmBQDkDX9S
 yPUzZFXIFygBewxfZmkn2hO3ItSDhjhpL+J7mgER8IEe1ikUTHb/fFadXfDDJld+c3u6
 FBUf0GFIG1iFBUn3/SWe6VHpwvUoM6/9Y763J2jpEohyOtRbl+8USgHhS9peS8nkEwrS 3w== 
Received: from gcc02-dm3-obe.outbound.protection.outlook.com
 (mail-dm3gcc02lp2101.outbound.protection.outlook.com [104.47.65.101])
 by mx0f-00379502.gpphosted.com (PPS) with ESMTPS id 3tegc5hkha-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <openipmi-developer@lists.sourceforge.net>; Sat, 30 Sep 2023 20:29:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IoPU10TO2SUcvFK353cIYf+rsy2kDL26YXfEOrPQVosHn1FLPIR3MIlSF3uvqgT4EZpSRxwRPInhwCkO69oSfONNfDeerQeRJ66ilC+YwSpX2OnWar3orRg5zHM3h/XUt/ZXE/fPLITI1o57kOcT9IECzePSZNSl+HpORbjsmAdabXf+6Y8dt0WoA4ZrIxhjWLhd+rxt66zELxPYNIGVz2G2Ia02goVfXloqcfjwAGlPyPtodZq0KXsLuOZZcH9Mvr7tReda70kwNfUzSFCvtbtfvYLoLkW43er7r7WAJL1JlwRed7ApuPL2N0KMiHLrqTQAHcvJkxcJq6N6bakCBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C5TW1gGFEe7+pFRgGkMlqUR+2Ckf43DiPEbYUuInuVk=;
 b=TJiFUL/RvAm7vLvfth0NW0blgM502oIe1kSlUD6hGQjkdzNSJBbrAZK8m9pz+Cg6puoRrgv8JSjs/tFOy+R0Fbxh7yQQPwZK9vZ9FRIdZPdY/l04IXoEl7wqBe2qXgBrQpkKo9FgGbNBZ8G6GeesLbVCIkSYzeSjZ0v9EWc5lhoRgk6HNLMJnsf/7wSe2IxbyQDDYCfTH1zLx1/jJcfAXr8y+UrbSbXDOikb65UH9tTlSm6kUtWBOIKdv/ECsMVS9XAR6kN0pRptod/D8SzeNsyvKT03vAVQJ8ciOzS981mtdnsai7U/u0DvH+J+KfE9g38gP/sgDyytvrxeDKpFUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=llnl.gov; dmarc=pass action=none header.from=llnl.gov;
 dkim=pass header.d=llnl.gov; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=doellnl.onmicrosoft.com; s=selector1-doellnl-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=C5TW1gGFEe7+pFRgGkMlqUR+2Ckf43DiPEbYUuInuVk=;
 b=T40BoUY38/ufx2ySE4kaKJJGGKVkNzhkpNr1nvwFVKiJEaSPDWg3I2Tr68dcE5RAWP1FzlToS8/25KrfyV7VJgxbQt1X4z3PGAphIBhiI3XXknVouH/r/0UeeMc0cnEALmKEx7XaGj26ewqm6Lt+Q5nKCjCeuDg/L9EsmFdc9uo=
Received: from BY3PR09MB8833.namprd09.prod.outlook.com (2603:10b6:a03:34f::15)
 by SA1PR09MB10652.namprd09.prod.outlook.com (2603:10b6:806:372::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.25; Sun, 1 Oct
 2023 03:29:19 +0000
Received: from BY3PR09MB8833.namprd09.prod.outlook.com
 ([fe80::15c9:9506:4e42:6506]) by BY3PR09MB8833.namprd09.prod.outlook.com
 ([fe80::15c9:9506:4e42:6506%4]) with mapi id 15.20.6838.027; Sun, 1 Oct 2023
 03:29:19 +0000
Message-ID: <60f7da12-8e68-8933-c3f0-b6c83ec45bd1@llnl.gov>
Date: Sat, 30 Sep 2023 20:29:17 -0700
User-Agent: Mozilla
To: openipmi-developer@lists.sourceforge.net
References: <8F8B8A18-6426-4C46-BAFF-F2CD626BA0A5@flyingcircus.io>
Content-Language: en-US
In-Reply-To: <8F8B8A18-6426-4C46-BAFF-F2CD626BA0A5@flyingcircus.io>
X-ClientProxiedBy: BY3PR03CA0023.namprd03.prod.outlook.com
 (2603:10b6:a03:39a::28) To BY3PR09MB8833.namprd09.prod.outlook.com
 (2603:10b6:a03:34f::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY3PR09MB8833:EE_|SA1PR09MB10652:EE_
X-MS-Office365-Filtering-Correlation-Id: 861963f5-4a09-4a92-650f-08dbc22e98ec
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: iqIWhpfz/oRA5Up2RNwaoTEpEmjLh7fNTxMBTRIIdwgj8UrSIvPg+0HubPW1zIQ51ayw93WBYOOx49yzBM9U+FXmfIbTUCIwKgTStcPzaDI3q1TaEbxoJ3NvpnFv8oM8qmSNysvKtJwwqVorsb8KppHswMEzJVG2P4taw1o4WpDkuMfN7/iMZVBkXdP7g6rrokARrAqNeNwrHlAhrv3heWnWnJlrvikq0XkoGEcfmmZCI2GGV8qItcn1wLpSc91U/ib5lhH6iFKfJoiZI4Og0obY/dGcT2uzTrk0Bn9VZp/qoEvNgFXNfbpg373bqJRGXApjcnmi0Txho5aOtrdyB6BONPYSOsIEtIi8BGsW8Gde4d43yfg3FLNa4HK4w2W33rd99YF2yJbEPBr3uoIMrO89jjKbBGIDCb8Jt6gdSD5Mos+InlBo+TP+Eg5uqgD1oACuFlPT+oDH8dFPJ5siYNcQ6g3YmXUjmZmdd95rmIyAsEaK1GI6doj/BD9egpfhcRS//0GOr/Ag7j2KyR40Ps/j6aZo5PJN5eQvjY1CqBQtLBgYdwXCQ2DbvQLSlMivtcHw1q+Z1YM5oSp81RnMxAbEAIK36c43Y4VFX1Ov7djVwfOl1tRfUdAC/4hIcKtaFTxU/muMQ2X1ddUJ0LMWog==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY3PR09MB8833.namprd09.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(230922051799003)(1800799009)(451199024)(186009)(31686004)(53546011)(2906002)(8676002)(8936002)(36756003)(5660300002)(31696002)(498600001)(6512007)(66946007)(6506007)(86362001)(6486002)(2616005)(38100700002)(26005)(66556008)(66476007)(82960400001)(6916009)(83380400001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NWtUNmtib1FTM2g1U2ZFeXV5MDBaTzM5aDlQcTA0OTB2c3A4NVlpT0VDTW85?=
 =?utf-8?B?UGdDQ2gxblBDRDNpMitWaHpRbzM1dzBMNHdXQXdZeTUwVzA0dVZydEU2Y1FD?=
 =?utf-8?B?c0ZlUHJUdEhXR0Npam1lM1J6Yzh3RHJvbm02RFkybGdiKzNubkRYSHh3WHRH?=
 =?utf-8?B?ckR3WkdwTVlkUC81OXRocktJelRiWDdYM2VzTCtoNjdKRi9FTmFXTDlBU3VW?=
 =?utf-8?B?QkZRVkk0eEt6T0w0VlNldnF1aDRFaGloNm5CZHdyelpibS95YjRpalhHcUth?=
 =?utf-8?B?SVE3NUVSOGRmZFNDK01TNysvZ2NOeFR3OW0xY0xOWXo0N0pBckxZQmpuWW9s?=
 =?utf-8?B?M2x4ZEViSEc1RlpyeEFGMjJWUkxMNmhGVVhZZW9NUkFvak1Nc1FLbHNLNTVq?=
 =?utf-8?B?aElqd1haSWhFOFdLdFFOTlZyNzJLOUtmbWNMRXZ6bWlXUHFpcU1zT1YxV21w?=
 =?utf-8?B?TFpEZlRvKzlCeVZJTTBvODkvY0V6ZWd3aktyUFhCMU02TGNIbnBSQkdPSnFY?=
 =?utf-8?B?VkJ2ZlpPQ2ppMHJvOEtKQk9MaXRYc0p3N21YWFBHOXY5d214RmNzN0d5a2hn?=
 =?utf-8?B?Uzg1QmZCVkk2bG9WelQ0VTZFbzNOSU9sMFUzdHgzU3FUQ3RTNzgrZUdNb3Fz?=
 =?utf-8?B?cEJSbXRoR0t5QXJCN3B3SlNIRER0TjJnZGZnc21DN3lqdm1raFpxMzlZbDZs?=
 =?utf-8?B?aFJmdmllV1pzTkpiNVczMUJHd0NPdTVNTnRCcEdueDFpaGxrN2JlaXczelcz?=
 =?utf-8?B?S2ZrQnV2S0s4a1RMbGc2bmZ3WjFndFI3RngrR1RsS1lRUVdiVXVsd2o0MDMw?=
 =?utf-8?B?ZW1JOFJ1T2hJN01VQ0lmL1pubGVpajI1a0VCV0dsVnVuTDBwTzN3R3hSYSs0?=
 =?utf-8?B?ZVp1VGVwelg2am1ySkxSQVg4TFpBbXRONkM1dHpwY2k3enJ2N01TWTg1WnhX?=
 =?utf-8?B?YnZaMUxDK0R0SzBtQmhqTUprUEhTR2JnUzl3VWdrRE1WTGlGNkVQbFRjWHRl?=
 =?utf-8?B?QUh6TUM0V1h4aGNPak1CeVh5dUZzSTV4WkZ1S3BzQkFrZSt3aUkyWWhzRlkw?=
 =?utf-8?B?eStwLzZtb2hzcGk1THFZT3duVUs3V0ZWOVFWbkNoODdpcm44RlBPVnZ4RVZ4?=
 =?utf-8?B?cUdPWlVWWW1mMUVnY3I1Qkk5UG9zOFlmT2JYU1ZsNUdZTDhIekpKakYvTTRy?=
 =?utf-8?B?T3oyQS9mcXJWc2sxemxEZndlcGFtdDdrbnJGMlJJN01rSDI1UlhEK1Z1U2V1?=
 =?utf-8?B?NjVUaUZFeFhaTy9FbFpGZVo0a09IZm5pWFhwemRUUVNuV0VUemthSnVZL082?=
 =?utf-8?B?S3h2S0kwUTF4RHFRMDFZSStrWWwxWVJ1U3VmdlBsUi9pSzhpNFBRRUozdmVI?=
 =?utf-8?B?NVJ1R05wdXJtMzY0SGVUVVFROTBOL09XdXB2bWR5NndvVldMM05NY0dzWkdU?=
 =?utf-8?B?aTVscTZmQnlaOTl5SmYwWkJ1c3dnanR2ZlpnSUFKVnZJM2hQQlBncldxNTQ0?=
 =?utf-8?B?R0xuMHBEb3AzUGlxMW1HeW01UFhvSk1QeWkwN2tMVHJJT0pWV1RJK2hOcDlL?=
 =?utf-8?B?RGN6ckx0WWgyTEY1djlvRTJOSks1Q2tsSWorV3B6NFpPa1Z5c2hjamlIN2Fj?=
 =?utf-8?B?SUYraHJxQWQzbHhBVytiK3htRVUvV1BvaUlHK3JHUTZOdG93V0VxcVEvdG9k?=
 =?utf-8?B?RjZjb0ZnWUtIMmJRREZOTWcyZmhyYklwSkcyVXY3Y3hweUg1WHBHWlpEZkdL?=
 =?utf-8?B?VFpQeGJXQm9YSGZnRjFxdzRyVmMwdkhydHZqald4dUxORklRQno3UEcvakNi?=
 =?utf-8?B?Nk9HaUZIb3FwZUZtbmxxZW1vNCtCMUdhK20vVDMzeFVlcjhDV1Q3UGRPQ1dt?=
 =?utf-8?B?ZjhJNzg1T0dVaXVsdXlyRi9KTGNqVFZzUEU5MlRFZk8wMTVsekpxYU9FNEly?=
 =?utf-8?B?WHFqcWtCU0J2TUtqNmxVRzIxaUdTbVE1QnEyeERSeXpXWWNhOGRLZkQvSk1L?=
 =?utf-8?B?aXZ5L1plWjNuaEtEWHJxU2FJV1dkbzlPUmtzYVBpSktjNitoRUN6czNyRzVL?=
 =?utf-8?B?ZGp4MTZhaWdmcHlvTytSOFMycXR4M21EY0hnS093WGJrMU9pRzY2SHRnQmJv?=
 =?utf-8?Q?4wKA=3D?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: N5+u1uaezurO6GY/UlG9fbJhOd13A/pE4o+5DJJE55dP4zr/VJKPv5E5OR71q5v+ANHzFRJX6V1T+v4CcV/leceDeAl4qTMUTwDWyZuScpYmZwkIDYRlKvIXDsP/a/37TKQ3+5DRzthX033ZDaRSyLJwyC8iyGoyGEx5tabBuJWp/jitTilHlChV1/IYfj+tPYKTfl4+hZfY/OqqlvSpWsJwZFzVmUGtCKXXQ74VAIJGnuNOQgrDIIykqgam8skbdY97pj/dmdc8i975kYDdxa54F5SDpAz5xy6ivdM0nzQezGjDB/ua1bDcALC/hSj7ONojbp9sOLJmG+6k3Kwni/eVHIy+qMkndoN1nut4Aszth6uUac5HPpc9onFtfdKxFfzM2nNitF/YpdX1rx661upxI6r/U+dp+hQ034iaB2fY8/mXMoSlEj5Y1ooeIYQK7TewBKiLRLtv85Ixx7rosFDkCIVrPa+a2iZX0qywDj/Hh0uqodJiFyTfch4tjvQsK7OlWk3uFvZgYFuylAzG+DeqVHWFeSys4BALCoPK39+xpsvad6IZUN6MZVZPf8F/iGTJpZNy5nb0WFa+lFEq8swThkUHKjh30lwe4ox2j9Sf5FFt4mPmmNcqGcsMYvpGvr1ukYtOWOgV76+YNf22+K5nBsoIpqIhz4i+cjT0mYjcPKYW1rCNb8R1SmdA4IFDFImNVa2pV1SaI34QpTvdwAnm8XKzL+E6lUKBwsjUC+SfujlpEzjmOTGvvRPEwLmICJ5ShDTRNX8GXP+ZswM3AGg4xnk2EZytKMVKUDNyGJ0w5JcAUZWvC1IPMNbRHMdO
X-OriginatorOrg: llnl.gov
X-MS-Exchange-CrossTenant-Network-Message-Id: 861963f5-4a09-4a92-650f-08dbc22e98ec
X-MS-Exchange-CrossTenant-AuthSource: BY3PR09MB8833.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Oct 2023 03:29:19.4496 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: a722dec9-ae4e-4ae3-9d75-fd66e2680a63
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR09MB10652
X-Proofpoint-ORIG-GUID: 9mvCbLKGHOTZXavo-eqscw2FnwNMGHA4
X-Proofpoint-GUID: 9mvCbLKGHOTZXavo-eqscw2FnwNMGHA4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-09-30_22,2023-09-28_03,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 phishscore=0
 lowpriorityscore=0 suspectscore=0 spamscore=0 clxscore=1011 malwarescore=0
 mlxlogscore=999 priorityscore=1501 adultscore=0 bulkscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2309180000 definitions=main-2310010027
X-Spam-Score: -1.7 (-)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  > Otherwise we’d need to set up a central host with passwords
    for dozens of hosts to pull the SOL for logging and that doesn’t feel right
    either … -__ There are several software projects that log serial output
    from many servers and support IPMI. So I think the practice is quite common.
    Naturally, security concerns can vary widely given the environme [...] 
 
 Content analysis details:   (-1.7 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
                             low trust
                             [67.231.147.129 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.8 FROM_GOV_DKIM_AU       From Government address and DKIM signed
X-Headers-End: 1qmngG-0006ce-BS
Subject: Re: [Openipmi-developer] SOL via syslog?
X-BeenThere: openipmi-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Developer list of OpenIPMI library and Linux driver
 <openipmi-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=openipmi-developer>
List-Post: <mailto:openipmi-developer@lists.sourceforge.net>
List-Help: <mailto:openipmi-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=subscribe>
From: Al Chu via Openipmi-developer <openipmi-developer@lists.sourceforge.net>
Reply-To: Al Chu <chu11@llnl.gov>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

PiBPdGhlcndpc2Ugd2XigJlkIG5lZWQgdG8gc2V0IHVwIGEgY2VudHJhbCBob3N0IHdpdGggcGFz
c3dvcmRzIGZvciBkb3plbnMgb2YgaG9zdHMgdG8gcHVsbCB0aGUgU09MIGZvciBsb2dnaW5nIGFu
ZCB0aGF0IGRvZXNu4oCZdCBmZWVsIHJpZ2h0IGVpdGhlciDigKYgLV9fCgpUaGVyZSBhcmUgc2V2
ZXJhbCBzb2Z0d2FyZSBwcm9qZWN0cyB0aGF0IGxvZyBzZXJpYWwgb3V0cHV0IGZyb20gbWFueSBz
ZXJ2ZXJzIGFuZCBzdXBwb3J0IElQTUkuICBTbyBJIHRoaW5rIHRoZSBwcmFjdGljZSBpcyBxdWl0
ZSBjb21tb24uICBOYXR1cmFsbHksIHNlY3VyaXR5IGNvbmNlcm5zIGNhbiB2YXJ5IHdpZGVseSBn
aXZlbiB0aGUgZW52aXJvbm1lbnQgYW5kIGhvdyB0aGluZ3MgYXJlIHNldHVwLgoKVGhlIHR3byBJ
J20gbW9zdCBmYW1pbGlhciB3aXRoIGFyZSBDb25tYW4gYW5kIENvbnNlcnZlciwgYWx0aG91Z2gg
SSdtIHN1cmUgdGhlcmUgYXJlIG90aGVyIHByb2plY3RzLgoKQWwKCk9uIDkvMzAvMjMgMTQ6MTQs
IENocmlzdGlhbiBUaGV1bmUgdmlhIE9wZW5pcG1pLWRldmVsb3BlciB3cm90ZToKPiBIaSwKPgo+
IHNvcnJ5IGlmIHRoaXMgaXNu4oCZdCBkaXJlY3RseSBhIGRldmVsb3BlcnMgcXVlc3Rpb24sIGJ1
dCBJ4oCZdmUgcnVuIG91dCBvZiBhdmVudWVzIGFmdGVyIGdvb2dsaW5nIGFuZCBsb29raW5nIGFy
b3VuZOKApgo+Cj4gV2XigJlyZSBleHBlcmllbmNpbmcgd2VpcmQgc3lzdGVtIHN0YWJpbGl0eSBp
c3N1ZSB3aGVyZSB0aGUg4oCcbG9nIHRvIFNFTOKAnSBkb2VzbuKAmXQgY3V0IGl0OiB3ZSBzZWUg
d2F0Y2hkb2cgcmVib290cyBidXQgbm8ga2VybmVsIG91dHB1dCB3aGF0c29ldmVyIGVuZGluZyB1
cCBpbiB0aGUgU0VMLiAoSeKAmXZlIGRlYnVnZ2VkIHRoaXMgd2l0aCBDb3JleSBiZWZvcmUgYW5k
IHdlIGZvdW5kIHNvbWV0aGluZyB0byBmaXggYnV0IHRoZSB3YXRjaGRvZyBldmVudHMgd2XigJly
ZSBleHBlcmllbmNpbmcgc3RpbGwgZG9u4oCZdCBnZXQgbG9nZ2VkIGluIG1vcmUgZGV0YWlsLikK
Pgo+IEnigJltIHdvbmRlcmluZzogZG9lcyBhbnlvbmUga25vdyBvZiBhIOKAnHB1c2jigJ0gc29s
dXRpb24gdG8gaW5zdHJ1Y3QgdGhlIEJNQyAobW9zdGx5IFN1cGVybWljcm8gaW4gb3VyIGNhc2Up
IHRvIHB1c2ggU09MIG91dHB1dCBwcm9hY3RpdmVseSB0aHJvdWdoIHNvbWUgcHJvdG9jb2wgbGlr
ZSBzeXNsb2c/Cj4KPiBPdGhlcndpc2Ugd2XigJlkIG5lZWQgdG8gc2V0IHVwIGEgY2VudHJhbCBo
b3N0IHdpdGggcGFzc3dvcmRzIGZvciBkb3plbnMgb2YgaG9zdHMgdG8gcHVsbCB0aGUgU09MIGZv
ciBsb2dnaW5nIGFuZCB0aGF0IGRvZXNu4oCZdCBmZWVsIHJpZ2h0IGVpdGhlciDigKYgLV9fCj4K
PiBHcmF0ZWZ1bCBmb3IgYW55IGlkZWFzIOKApgo+IENocmlzdGlhbgo+Ci0tIApBbCBDaHUKTGl2
ZXJtb3JlIENvbXB1dGluZwpMYXdyZW5jZSBMaXZlcm1vcmUgTmF0aW9uYWwgTGFib3JhdG9yeQoK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpPcGVuaXBt
aS1kZXZlbG9wZXIgbWFpbGluZyBsaXN0Ck9wZW5pcG1pLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vm
b3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vb3Bl
bmlwbWktZGV2ZWxvcGVyCg==

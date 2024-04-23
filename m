Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 867DC8AEB03
	for <lists+openipmi-developer@lfdr.de>; Tue, 23 Apr 2024 17:28:05 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1rzI3k-0002FZ-5z;
	Tue, 23 Apr 2024 15:27:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <peda@axentia.se>) id 1rzI3h-0002FP-Ov
 for openipmi-developer@lists.sourceforge.net;
 Tue, 23 Apr 2024 15:27:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+aqDDPtLW+03CjmA273kXqCvoB6TThtpLzHqTpQoWRU=; b=YmT/VortyQ3DyQzelSKk3gkY4t
 zgBbwqiI1E6Iv/oGvL9qer4SYN3SgWaXi76kDGiMrVGbAUxDPchlDmsXrtsKaS0w2ji6527OD5Ait
 ZY+NJFFBgRGn4Wt0u0crP7p51clzA9w2e3lbhfbV68Mh9ZeTEdm6DWg6uWOhnNVc8x7A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+aqDDPtLW+03CjmA273kXqCvoB6TThtpLzHqTpQoWRU=; b=BQRWC3NkoW8udBdaUuz4Zu/10m
 HUkmkBrshkIkloo1LYVZnBLMItN69qx3J5PihiqY0b7Wy5Z4zfkBirjFb8jOMgAZ5LL8lNXfjOxde
 77MswG7/seICE4aFCtgPZCntFhiXcKUMSMLFdqgyPvyrVkp6AAetzL4lEDVd1jQxV51Y=;
Received: from mail-am7eur03on2123.outbound.protection.outlook.com
 ([40.107.105.123] helo=EUR03-AM7-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rzI3f-0008Ct-L1 for openipmi-developer@lists.sourceforge.net;
 Tue, 23 Apr 2024 15:27:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gCwZEyLVxM2AYGFhcmhFknKl5LYVlGDOQ5IHcNRjA6AqAZBeVt1w4LcH2x5mHPxKf8jF0xSEJseFTGLJZsZ6MiWsi12b90y8N26e6pJoQX1jSZCVYj0Q9Yrn/Pr0wzX4J7FX6mijsTO3hht9NUPSvMaiNAg2CslLB7t1QukIUsL/L8uKDOxzzSCeInRY/Lw0KHaENIuiZhWeBSbFcTx781sZrPeeMj2KGnNeXQntZJvdvem1iurOx8WElFmGbstVb9NjsqGQi09AwBKJ8lDCld47yRg6FfMpbjQznFjHIxh7wWs9Ewd5De2k+OrJCKCA03+P9tj5KwSFQe8nOyrB/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+aqDDPtLW+03CjmA273kXqCvoB6TThtpLzHqTpQoWRU=;
 b=KoZVnLUK4Cy+fupKJnosHdAlgma5S3JHZnH6b5kX8qnZp406IPKzX3sHMO+2SueDAVylef9awF+G80+Gq5kpyb8OEMd9V5B04dtcsGN5L3GoMYWmewy8hUiyuhmLY85HyUVyfXsj34vJqIH9mVkJ61R0LWr4QIqU44CAiJLqDc/1exUM8z5rk4yMQmRFdIFPblHs2YaRimPKTCsJUvHrbE0QRouXJG/fxDOoCyRRQ/vrLFVP24KzcVnZ8zYGYsQJz2XpdGhHfI2Z9M3aF25YtNMk6+P3+K3Up/NVELi3FnocssFL5GHwEQ0X7M0JLFO9NEZc0KAoU9Ia3BUAmK6W2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=axentia.se; dmarc=pass action=none header.from=axentia.se;
 dkim=pass header.d=axentia.se; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axentia.se;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+aqDDPtLW+03CjmA273kXqCvoB6TThtpLzHqTpQoWRU=;
 b=d60iubmrv8d39FFfuF4XItfndt6V9JvIfCVFYUZBzJn4MdxLFmt4VGBngpDPdnkZWUCJdeAHckHBtu0X/ntBKct3fov8IscqFoq9GbsKs5Cc7dCmLPfzZ3Y3JFHfITfQMERVL7A5NCrHbx+sjPDI3mJ5v459mhceWNsltdcz+so=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=axentia.se;
Received: from DU0PR02MB8500.eurprd02.prod.outlook.com (2603:10a6:10:3e3::8)
 by DBAPR02MB6326.eurprd02.prod.outlook.com (2603:10a6:10:19a::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.46; Tue, 23 Apr
 2024 09:52:58 +0000
Received: from DU0PR02MB8500.eurprd02.prod.outlook.com
 ([fe80::aff4:cbc7:ff18:b827]) by DU0PR02MB8500.eurprd02.prod.outlook.com
 ([fe80::aff4:cbc7:ff18:b827%4]) with mapi id 15.20.7472.044; Tue, 23 Apr 2024
 09:52:58 +0000
Message-ID: <3f095b5d-ced2-1c8a-9bd2-2ff2a9480fa1@axentia.se>
Date: Tue, 23 Apr 2024 11:52:52 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Content-Language: sv-SE
To: Arnd Bergmann <arnd@kernel.org>, linux-kernel@vger.kernel.org,
 Corey Minyard <minyard@acm.org>, Peter Huewe <peterhuewe@gmx.de>,
 Jarkko Sakkinen <jarkko@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Moritz Fischer <mdf@kernel.org>, Wu Hao <hao.wu@intel.com>,
 Xu Yilun <yilun.xu@intel.com>, Jiri Kosina <jikos@kernel.org>,
 Benjamin Tissoires <benjamin.tissoires@redhat.com>,
 Michael Hennerich <michael.hennerich@analog.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Iyappan Subramanian <iyappan@os.amperecomputing.com>,
 Keyur Chudgar <keyur@os.amperecomputing.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Yisen Zhuang <yisen.zhuang@huawei.com>, Salil Mehta
 <salil.mehta@huawei.com>, Tony Lindgren <tony@atomide.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Xiang Chen <chenxiang66@hisilicon.com>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Russell King <linux@armlinux.org.uk>, Jiri Slaby <jirislaby@kernel.org>,
 Jacky Huang <ychuang3@nuvoton.com>, Shan-Chun Hung <schung@nuvoton.com>
References: <20240403080702.3509288-1-arnd@kernel.org>
 <20240403080702.3509288-34-arnd@kernel.org>
From: Peter Rosin <peda@axentia.se>
In-Reply-To: <20240403080702.3509288-34-arnd@kernel.org>
X-ClientProxiedBy: GV3P280CA0033.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:9::26) To DU0PR02MB8500.eurprd02.prod.outlook.com
 (2603:10a6:10:3e3::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR02MB8500:EE_|DBAPR02MB6326:EE_
X-MS-Office365-Filtering-Correlation-Id: a390de60-815c-4b1e-f305-08dc637b27d1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cmR0M09JeVB4b0NBeW1lNThHUlBNUDhlRC9QaURhNjhKTlFTeHZnK1F2TnNW?=
 =?utf-8?B?c09Gd3BrakZXcVZsNzVXTVpkOWFwTUdoWmgyaU5iYTZhVGYvNkErc1hTbnpS?=
 =?utf-8?B?b2pxSkFSektuS2JaUm44Z1VscldFTHgvUzB6RUFGTk1ycmJLL1FhY2wwQ2FB?=
 =?utf-8?B?UEpBQUNodWQ2NE9rVDZjM2dpM0dDdXQ3TkhjdEtveTBBKzlqSS9uLzhVK1Fj?=
 =?utf-8?B?QW5CZm0rMXFROW5VODkxZHlLTjYrUlpxdU15SUhEV1ozQjEzOUY2ZmtnREt5?=
 =?utf-8?B?SjNlY2R4cnhhcUs3dzFkUWpkWWRaTzhiMlExSGxNL0Z2ZFc2aG1SOHh6TWgz?=
 =?utf-8?B?aFA5dUpmcHVsTFFSd0hGNmoveFNPZ2I5bW10TEMzcVp2TzF0R2tQV0tjZ2ZM?=
 =?utf-8?B?QWNUejQ3bFJJQk5HTndPUHBUNHFLVUw4R0wxRno2T0pjaVJkMUNlV3E4NHlN?=
 =?utf-8?B?RFl2Y01reHg3eHBiYUthOWw1ZXI5UHE3YndyaU1FbEljenBIbkRaQUlWWXh6?=
 =?utf-8?B?UGhuOE93ajFzZ3Y0bThtNitlZU5MczJkdk5SVCtTckw5b0pibzEydlZjV0Np?=
 =?utf-8?B?eFRLWGhqOVlLUTh2VTVxRmx6THJoRnY3dUgzZFRmVGxQVlVxWmlYTjlVckVa?=
 =?utf-8?B?N2g1SUQxbTNuenZ2aWFhU01PZUlzYkFMTUdhN2J2a3UwZHhJcElqdURtTlVw?=
 =?utf-8?B?N2M2RDZaQldWRjhSamF3RnZmZjR0eWJERnhVZDB1ZGE1S3kybmFxbEtmZjk5?=
 =?utf-8?B?NXdWZFRaRnR6OWNoaWovb3B6V0o2MTdtbWVDd1pQcThjQWx6Z2VmcXNlZnhP?=
 =?utf-8?B?RWZvb1NJQ0FabUxacUVkT01uTDNKZkFrSkpORFBGWVZRVmxMaTdEdEVQYm9K?=
 =?utf-8?B?WEtJVEtzUkZLMmNhYU1RdXRqaGcwVzlQQUZQVm9OSjZHd0FvMVFKZUxEckRF?=
 =?utf-8?B?Y1piZWhEUUkzam1sUExZbDY0RlNGbTVBNlNMS2piS3g2WFZLaGJPVklsWkYr?=
 =?utf-8?B?Uk92RkNqc0JlUm5sVzNiTzZpYU5aUE15Zi9waS9iM2FLb24zVWRYNXBuT0Vu?=
 =?utf-8?B?UHEwb2J4c3o4K0dSaVM5UzRVU21vWjc2dVd4eW5sd0VFTnl0NnRCM2IwdFhP?=
 =?utf-8?B?aHErNVRYUm9QNko0OFJISzJrK2Q4LzkzWHhBai9GQzV5dU9uOEU0b21iRWpr?=
 =?utf-8?B?cGpjbGtoVzFRMjh4QmFjNmlwTU5qZTNQbUtQVk1TdkhVdklYVEpDUnZVU056?=
 =?utf-8?B?MHlaNzNSL21UZkRsREM2cmU1MXF0T2VNcTljL1ROR2hiSngzb3BpWWFWOXFs?=
 =?utf-8?B?NzlxQWpQYnV1bGNpM0hLVFF6NzBnM1RaRXh3US9VSFVQVDZiaEgzY2kxUEdW?=
 =?utf-8?B?dnQ2ZWt5TXVDcjZzUlgzYTJyNlY1cHhsbVFhK0FPSXdpaW5aMTJsU3ZrcEVs?=
 =?utf-8?B?UStrckx2N1dGekpOeWZKUEc5UnFSWFNvZ21tVjk1RktHenp2S2UvL2ppSTlX?=
 =?utf-8?B?Yi9VdFFIRXBSWE1weWwrNkxaYk1CTEc5WGFhc3l6TWxQZ0NyQm9Yc2RhOU5l?=
 =?utf-8?B?dzl4dmtHbUV5R1lmb0VvVTFHT1dpdUx2Qml2Q3lUZ3F3UytJYS9UR01oNEdI?=
 =?utf-8?B?OU8xM24reGYwK3M0Q0t3TUlCMlQwMnhLVTk4blNGQUJ5YjNpZjN0em9PREhL?=
 =?utf-8?B?OHdPZkhVZi85c2UvL0dmQzA3cURKeHprQVQ3bDMyV0RuVnhyRnYrU21YMFo4?=
 =?utf-8?Q?T1MEmaG+ZFywJAjhH4mhA8Lvv2Kq+TD+89znL7w?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DU0PR02MB8500.eurprd02.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015)(7416005)(921011); DIR:OUT; SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Unl1SEZCa28wWjJZUmFETU95a3FnVG4yYWMrSjJBZXpCcCtKRURDU3RxK0cz?=
 =?utf-8?B?cmlBN2tzdml5ZlUvRE9xcEZXRG5ncXFhM3YwQ2NoVi9oY0ViRHJBR2RHVjlH?=
 =?utf-8?B?RWZLaDNvUHdPRFBKc3lmaXk3aGVBRDUrVXlwV3VvOGNnM2RIQWJtNG1Ta3Jz?=
 =?utf-8?B?U3MzYWZiM2hkVTl2L3F0c0trdTh3RzV5R0xoSVpyQld5czI0WGlHL2NCazJF?=
 =?utf-8?B?YzNQT1JsYnNCUXhKS2hDZnFXZmNPV3NQMlg5cTk1ZmpGRUhNWk1jeE1HL0xT?=
 =?utf-8?B?djhiSmcrT2tENnEzR1VTbk9kdVRSNlZ6bTBOcW1MK2x6dGJGZFJkUDVodDg3?=
 =?utf-8?B?WnZ0UGVEMkYwK0Eyc29tamJpN1ZqMVU1VmR4S0VKbndlQ05QbmtCWXRuRURo?=
 =?utf-8?B?S1BzZFc3ditKZThpSjdGZ2hlcjQ1aVNtWm9ycU9jMFc4UkljVFpmMmYzdk40?=
 =?utf-8?B?WXBzMHk0SDFpcUVIR1hZM2t2MXlMc1YrcW1DekNBVzFld0gveUZZVEdaTnN0?=
 =?utf-8?B?QjBWbzFXWHk1RzBBM3BrdU5ycnlmRWJoYm4xaU1nT2ZNOG5IYkExeUVYaEtJ?=
 =?utf-8?B?NjZtczBwVVNVdXhzVHIvSXRMVGRjNy9Ud1JERWQvRFJSMFRpZ0J0REZ2bEJ1?=
 =?utf-8?B?eDNGT0JLZmhHZHJmQUxOYTJ2aUhQaHZrUzkwa215MU41TjhJRzc1c0x1dGNt?=
 =?utf-8?B?OGpUWjVVRWkvZnp4bjNUTDNBcjRCajV6OTZqZTZ6TjJ3bWdVcjRheDY0N2xH?=
 =?utf-8?B?eUQyQ1pJWFFwM2NhbzA3Qko3NDhJb0c3M1Erd3dQN2dIdklLSjg2NEdDWDZL?=
 =?utf-8?B?TFlXVThkWitnYVRoU29ZamZkWmYrajQ5NFdwbGJoRm9VdVFTYlU1WU01YXVj?=
 =?utf-8?B?ZXJQKytJbW44WThSNGdHWGNES3dVNzNQWnNjRzBET2hRVHhiem9NUnIyWmM0?=
 =?utf-8?B?ZzdkZ25XZFVrUmd3NVk4S2JVajBoMEhlZ0l0Mm9mQ29pajR4YmZ2RDVNN3dI?=
 =?utf-8?B?Y3F1cG8wUS9BbmFBeU9mMktKZStVT0Z4c05oMVQvY1E1Q1dIRnloUHd1dURr?=
 =?utf-8?B?amY5ZmdXUlQxZWpKeUtwM1orMk8rdFByLzVaWVZ0RGtxU240VVFqVmhhejh0?=
 =?utf-8?B?Y3pQOEhIUjY4WENJRmd5RUFJMkRTd3ZyaTFlWUFIU1lEUFd2SmhFcXBGZDgy?=
 =?utf-8?B?RHpKcEtSdndkMHV5R1lNR2N3SDY4QzRBYjg2R3FXTXRJOFl2SGtSLzkvTjVa?=
 =?utf-8?B?RXBQazI2WXhTaWEweFhoVVZoN3dtN2RKUlliK011R3NkM2NKVVd1dEhxU2ZW?=
 =?utf-8?B?VjJlT2Z4blFXNGVMLzh4YTRaeDVBRVE3bXBCK01GNytXYU5TNzZtQkxWZCsr?=
 =?utf-8?B?WDYwT0hZSzFBNk9IR0NGWExhTkVld1VsQXVaalpHVm53UWlPbEY1MER5azdZ?=
 =?utf-8?B?eTliWXFMVnU0RUtRQ3QzZmM5dXJBd2xXakpiTVVVK1NOZitrcVZROXlDNEU3?=
 =?utf-8?B?UmlBRVg1NjVrZUNSY2NwVFlGMGo2VUc4dVdPZVlya3BOa3RVeUg4ZVl3VVBo?=
 =?utf-8?B?RXQrQi9sbEdDaVp6T3FPRzlGSjJaRDJIa1M5U25zQjJTQmlDTC81OEVnTCtp?=
 =?utf-8?B?MHNwSnlDN0xKcklMQklqOHBUVFdCM3ZZVVZOZWI2azM1MjdYZ0lXMkpsUVJi?=
 =?utf-8?B?RGMxVEhORUo1cXJWU3kwcUVPdHFlN2JaZGdNTVBiaWhvekhQSU5MRnZoczhO?=
 =?utf-8?B?bElXak9VRksrdE5tZW5aRVpySWZxNXdVbWFnRFR1QzZoK25JS2ltWlZXVmJj?=
 =?utf-8?B?YUpXSzRjeVlZSWo5TEVvb2xSMFh0dm9UVExpdVhqeUVlOFRZcjg4Qm9ZeUY2?=
 =?utf-8?B?VlJpT0VzWk1WQ2cvb2RTOVRNNlRuWXAyME1hSzg5ekNmbmxWMkRUTlFvS1J2?=
 =?utf-8?B?ZnZVaUhzd1IyWmMyaVNHU0h0TEdxVEVKWExadWlhYnVtVXg3dVl1MlJiM1c2?=
 =?utf-8?B?aWRaNCtNeHdXM2NabU9XVGZyM2Q2RUh0K2toOWtJaTA2cmhIa2UrL1lqbS8v?=
 =?utf-8?B?R2JkVTFvZWRQVURlWWUxcDI3U0NLWk1va2psdGh5anNnalJka0VXRkNJODFZ?=
 =?utf-8?Q?MeJcXB9SQvBhJipuMfESL3T51?=
X-OriginatorOrg: axentia.se
X-MS-Exchange-CrossTenant-Network-Message-Id: a390de60-815c-4b1e-f305-08dc637b27d1
X-MS-Exchange-CrossTenant-AuthSource: DU0PR02MB8500.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Apr 2024 09:52:58.2071 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4ee68585-03e1-4785-942a-df9c1871a234
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Pn1dpT9Y/3FlbsQdjJFMm1KIT6sGNi3KXACwth7VbQVikRHLkJV+FX8vIwXA5ynp
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBAPR02MB6326
X-Spam-Score: -3.0 (---)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi! 2024-04-03 at 10:06, Arnd Bergmann wrote: > From: Arnd
 Bergmann <arnd@arndb.de> > > When building with CONFIG_OF and/or CONFIG_ACPI
 disabled but W=1 extra > warnings enabled, a lot of driver cause a w [...]
 Content analysis details:   (-3.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: axentia.se]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.105.123 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -2.8 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1rzI3f-0008Ct-L1
Subject: Re: [Openipmi-developer] [PATCH 33/34] drivers: remove incorrect
 of_match_ptr/ACPI_PTR annotations
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
Cc: linux-rtc@vger.kernel.org, Rob Herring <robh@kernel.org>,
 linux-staging@lists.linux.dev, linux-scsi@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, Tom Rix <trix@redhat.com>,
 Linus Walleij <linus.walleij@linaro.org>, Randy Dunlap <rdunlap@infradead.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, linux-fpga@vger.kernel.org,
 netdev@vger.kernel.org, linux-i2c@vger.kernel.org,
 linux-serial@vger.kernel.org,
 =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 dmaengine@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 linux-omap@vger.kernel.org, linux-input@vger.kernel.org,
 linux-integrity@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Hi!

2024-04-03 at 10:06, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> When building with CONFIG_OF and/or CONFIG_ACPI disabled but W=1 extra
> warnings enabled, a lot of driver cause a warning about an unused
> ID table:
> 
> drivers/char/tpm/tpm_ftpm_tee.c:356:34: error: unused variable 'of_ftpm_tee_ids' [-Werror,-Wunused-const-variable]
> drivers/dma/img-mdc-dma.c:863:34: error: unused variable 'mdc_dma_of_match' [-Werror,-Wunused-const-variable]
> drivers/fpga/versal-fpga.c:62:34: error: unused variable 'versal_fpga_of_match' [-Werror,-Wunused-const-variable]
> drivers/i2c/muxes/i2c-mux-ltc4306.c:200:34: error: unused variable 'ltc4306_of_match' [-Werror,-Wunused-const-variable]
> drivers/i2c/muxes/i2c-mux-reg.c:242:34: error: unused variable 'i2c_mux_reg_of_match' [-Werror,-Wunused-const-variable]
> drivers/memory/pl353-smc.c:62:34: error: unused variable 'pl353_smc_supported_children' [-Werror,-Wunused-const-variable]
> drivers/regulator/pbias-regulator.c:136:34: error: unused variable 'pbias_of_match' [-Werror,-Wunused-const-variable]
> drivers/regulator/twl-regulator.c:552:34: error: unused variable 'twl_of_match' [-Werror,-Wunused-const-variable]
> drivers/regulator/twl6030-regulator.c:645:34: error: unused variable 'twl_of_match' [-Werror,-Wunused-const-variable]
> drivers/scsi/hisi_sas/hisi_sas_v2_hw.c:3635:36: error: unused variable 'sas_v2_acpi_match' [-Werror,-Wunused-const-variable]
> drivers/staging/pi433/pi433_if.c:1359:34: error: unused variable 'pi433_dt_ids' [-Werror,-Wunused-const-variable]
> drivers/tty/serial/amba-pl011.c:2945:34: error: unused variable 'sbsa_uart_of_match' [-Werror,-Wunused-const-variable]
> 
> The fix is always to just remove the of_match_ptr() and ACPI_PTR() wrappers
> that remove the reference, rather than adding another #ifdef just for build
> testing for a configuration that doesn't matter in practice.
> 
> I considered splitting up the large patch into per subsystem patches, but since
> it's really just the same thing everywhere it feels better to do it all at once.
> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  drivers/char/ipmi/ipmb_dev_int.c          | 2 +-
>  drivers/char/tpm/tpm_ftpm_tee.c           | 2 +-
>  drivers/dma/img-mdc-dma.c                 | 2 +-
>  drivers/fpga/versal-fpga.c                | 2 +-
>  drivers/hid/hid-google-hammer.c           | 6 ++----
>  drivers/i2c/muxes/i2c-mux-ltc4306.c       | 2 +-
>  drivers/i2c/muxes/i2c-mux-reg.c           | 2 +-
>  drivers/input/touchscreen/wdt87xx_i2c.c   | 2 +-
>  drivers/mux/adg792a.c                     | 2 +-
>  drivers/net/ethernet/apm/xgene-v2/main.c  | 2 +-
>  drivers/net/ethernet/hisilicon/hns_mdio.c | 2 +-
>  drivers/regulator/pbias-regulator.c       | 2 +-
>  drivers/regulator/twl-regulator.c         | 2 +-
>  drivers/regulator/twl6030-regulator.c     | 2 +-
>  drivers/rtc/rtc-fsl-ftm-alarm.c           | 2 +-
>  drivers/scsi/hisi_sas/hisi_sas_v1_hw.c    | 2 +-
>  drivers/scsi/hisi_sas/hisi_sas_v2_hw.c    | 2 +-
>  drivers/staging/pi433/pi433_if.c          | 2 +-
>  drivers/tty/serial/amba-pl011.c           | 6 +++---
>  drivers/tty/serial/ma35d1_serial.c        | 2 +-
>  20 files changed, 23 insertions(+), 25 deletions(-)

As far as I can tell, this triggers unconditional use of the
.of_match_table, and the compiler will have a harder time dropping
that data. However, the wasted data is negligible for the parts
touching "my" drivers:

drivers/i2c/muxes/i2c-mux-ltc4306.c
drivers/i2c/muxes/i2c-mux-reg.c
drivers/mux/adg729a.c

Acked-by: Peter Rosin <peda@axentia.se>

Cheers,
Peter


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

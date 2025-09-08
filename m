Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FEC1B556ED
	for <lists+openipmi-developer@lfdr.de>; Fri, 12 Sep 2025 21:34:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:In-Reply-To:Date:Message-ID:From:References:To:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=T3CmrnNbp/C3RX9SbxjvSvxPqPtzI30y062MSphgnbg=; b=laDpCbtrXjsQNHqOqaXRAq3HYI
	oey0xYehS6YtTCxREVTJiWuDJ6iEqIgPHeZedGdbm8w7PDH0a13wGtoW26+NGQmV4NMdUD5BkUGT5
	w+9woGcBxYlw7qeggUJKmNk3Y1tqW7uSKD73Dhy7ZwXw4o8fHB1lNhzNyTv0ka60u/Kc=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1ux9X4-0003E6-W4;
	Fri, 12 Sep 2025 19:34:07 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <Gilles.Buloz@kontron.com>) id 1uvdVo-0008OL-I6
 for openipmi-developer@lists.sourceforge.net;
 Mon, 08 Sep 2025 15:10:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=t5cBq6oihgnCWr0Z0X718mqFBbGvCHFQ85soH1F4ESI=; b=Wkco9tggHMm00X2f3TxortNsju
 vJVWHNHpjB0fNRGDZEXwnKk0glqMmKprKdAEm2fDW2tHlmJcOLwGploqhoiqM1XyGdWo1T20x18vU
 E2kso86uAsWvu2NBZ3t+rmiAFfp9bX/BzsAUQsj9re3xoY+fDwLehQQ7nadrwt/XMlR0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=t5cBq6oihgnCWr0Z0X718mqFBbGvCHFQ85soH1F4ESI=; b=YLV1miv1hSp1bwvx5ul7bmDd8v
 FFMWr6LVWhVenH2jVz5RKy2XCyUyAKnDLvfUefbG2mEPMf6ZoL+5kBO1/1RwLc5ewG2ho1AEgzodH
 X/y9SUGRjDCBTxIogP05BojREk38jOrTDhFjv5PZdQdbO8UaVwpkPVyDXLIzHqzzAiX8=;
Received: from mail-westeuropeazon11021109.outbound.protection.outlook.com
 ([52.101.70.109] helo=AS8PR04CU009.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uvdVn-0004lF-Ux for openipmi-developer@lists.sourceforge.net;
 Mon, 08 Sep 2025 15:10:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vXn4ilNi8f3GT5WnfIK529mczL2YVbW2Y/ciuDo80V7qArfQr299Hj8U9fEihJRzy73lr3mychYLhU7LZcuVKWUB0/cA02PoxzkJlkasGsw1m6t5Z86Cf5S7mZZWmdZVpSkY+3ozegcrv+M/TJgoQaVXGxbqBXlKAhRMIlPRKFuTGEwd9+JnkLGyBiuw2EauU6ZnbopFGJ8VYO6yKAixzNoUZdqAFOwdc0KuF7o7f/Isf9yBl/Bq3OeELb58KCSN6Sswk8Zp1GUyLSpUUAMb8XIfI3bx9pB8gVchg5HL27euXsZXmWZQt+SqMKLiYWPW7FWRZEXjJSH9Ml5/LKAXHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t5cBq6oihgnCWr0Z0X718mqFBbGvCHFQ85soH1F4ESI=;
 b=d2qwPx4pglRNGTOf33YHY1iTYzGcXLB4bZ4QEk2Tccqu6kM+VkmmUUFyTdhIvzSOhz0E6v5ZI37cyv5sOIYxizyF9cDG/42pDDQi10xZwRtpj3vJ7QraMacXp+Rde60TpXgAoQpkelchRZ3E27WbiiheB00n4U1I7PKbLACGzFAalKbAc37DK3dy8pDc19MT5UEgGjn7+JorMGi7PVgvXAgZjofk9plm/lIHHO63UEFI4wJLJ0EDdlFBXaeK68VH1FUHUpbyol5Uvx39SEgZAB4MaIj+ztoH/ZZK0OxWZWg8JVhMUxamEWNA8Ja/gtf9Nn9NC4C/0zThoWkYV80U2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kontron.com; dmarc=pass action=none header.from=kontron.com;
 dkim=pass header.d=kontron.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mysnt.onmicrosoft.com; 
 s=selector2-mysnt-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=t5cBq6oihgnCWr0Z0X718mqFBbGvCHFQ85soH1F4ESI=;
 b=arVWVPurJvDU4VBUpmA5PlgUbFsAxDOy1Spq8hOtrt4b+B2Bgtj8VbdqorBdEmmkFwIuiAw69wMXmde1aVd2wTGjw4m0Vke6YziB7ffUOSZxDy3kkexbV6J3Tt7CkzkHHwVMHmXv4lGlNGYArZvHwDOWxqCKj1WABnLAUpQ9hVM=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kontron.com;
Received: from AMBPR10MB9319.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:6af::10)
 by GV1PR10MB5988.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:150:5f::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9073.21; Mon, 8 Sep
 2025 14:54:51 +0000
Received: from AMBPR10MB9319.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::e931:a4ae:91cc:ea1c]) by AMBPR10MB9319.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::e931:a4ae:91cc:ea1c%7]) with mapi id 15.20.9094.021; Mon, 8 Sep 2025
 14:54:51 +0000
To: corey@minyard.net
References: <5cc48305-d88d-ac15-ce0d-55306a60a0dd@kontron.com>
 <aLrPbzfho1d2kMsn@mail.minyard.net> <aLrRlQZdeToIgPBG@mail.minyard.net>
 <c3c0cba1-a45d-8619-06c0-64046d8ecd76@kontron.com>
 <f14bd1ca-c47a-13b3-fd5f-5f5ad0c89fad@kontron.com>
 <aLsw6G0GyqfpKs2S@mail.minyard.net>
From: Gilles BULOZ <gilles.buloz@kontron.com>
Organization: Kontron Modular Computers SA
Message-ID: <5c0d8998-6cb2-5ce5-e3a5-67237a51049f@kontron.com>
Date: Mon, 8 Sep 2025 16:54:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
In-Reply-To: <aLsw6G0GyqfpKs2S@mail.minyard.net>
Content-Language: en-US
X-ClientProxiedBy: PA7P264CA0017.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:2df::20) To AMBPR10MB9319.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:20b:6af::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AMBPR10MB9319:EE_|GV1PR10MB5988:EE_
X-MS-Office365-Filtering-Correlation-Id: 945bd7e6-386b-461e-21be-08ddeee7aa03
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZVh1MmRUOXN6eEtsSDV2cS9PN3Vna011cWp4eWJDais5am43blUyd0ozTVJQ?=
 =?utf-8?B?b0ptWlZkalpheWg4MHNvbityMWJDYkZoaXRwR1k2djV6VUQ4dWZCWnlwMUdG?=
 =?utf-8?B?TC9TeU8xQVVOREZrcnVpbmNiTjA5SjZ5Y2ZWM2g3R0tXd3kxazI4bE14N0du?=
 =?utf-8?B?WHFVc3htdEZGM2FwcGgzenEyZ1RMTDFGTUc1a3FCenRDdSt0ODQyNWUvODBm?=
 =?utf-8?B?T1NlU1NSQWgrL0RwY3Z2OGdnZ3lYVWxFMWxLSUJ2MkhpbUlSVFIyS3FjSk5Y?=
 =?utf-8?B?UlVRS05qWkluUXlkNTJIY2Q2RzNoL2ZxUC80UURkc3lnZTNaTnNVZTNCYXVj?=
 =?utf-8?B?dU0vZWpnSEp1VzFyTng2Mkt6UXBTSWU5dEtvcjJCcXNZa20zQ3RuSFZqRUVo?=
 =?utf-8?B?SGdhaUNGY0ljUHZrNlZKR04xODFEZy9XenlMb0JBNnJsazlaNzZNamV1THAx?=
 =?utf-8?B?eVJUR1p1d0txT3d4ZXhudWQxTi9HN1NraEVTSEMwQjBiTXBDU1lmellGbE9k?=
 =?utf-8?B?MzRVbmhRM2I2N01OOS9lb1h0SVVWRjZjbGZzbzJ3cWhKQSt6SUcxOHVqQ3J4?=
 =?utf-8?B?YUJpQ2pLc1BadHIwWEgwOTRRaElCRUQ0bzNwekpRQlBWM0JrWTAzN3ZYbFNI?=
 =?utf-8?B?UlFJL203RjFLWDMwSCtIWVh3a2p6UThJVFFLTDVwRnhqK0kweGRXZjgvbzVR?=
 =?utf-8?B?SnRWL1k2dTF3UlA0ZGhud2tnMXhLZDFFQ09LMklpY0RoelBiei9GbW9BWmJ0?=
 =?utf-8?B?NVhER041OGhtTEJWMW5vbXFXSEIzL2Q2Q09PMG84cFI2czcyQnYwZ3M5eWNw?=
 =?utf-8?B?NHRKWjE0bjMrbk51WkhVTEdVWVpKOUlKK0RsVXdUaVVwankyT2VtV1ZIcVNp?=
 =?utf-8?B?RW14d2Z3akZrWFBCN2VXMGUxOXlPRlVreEgvL0pXcks3UTQvNlo3ckdpZFBG?=
 =?utf-8?B?cVpRUDlaTDRYenlPTW5WTTRONGZQcHBtcDdWdGh5TC9Fa2dYcGwwbXozeDF1?=
 =?utf-8?B?L2V4NFN3NmthdlVBdlJ2V2grTUJOK2VjMExHZCtYWFZnRWp5d1hpbm5pSXkx?=
 =?utf-8?B?WVI1d0Zsc0lMaHo4YmZZOFNpSUc5VG12YThoRWZHT1ZOL0Zod2RUakxuOFpE?=
 =?utf-8?B?WC82Y2toRlFYVHB2TW1SaWxsTUdvelduQmRWZ0ZTTEZ4R1ZqUVcyY25BckxM?=
 =?utf-8?B?aEpQTldlOEpWejRZeFZCZHRCbGF0TnhZcFdkKzVqQTNnYlNlY0o0WVB0dzFs?=
 =?utf-8?B?TyttVE90ZVVlWng4OGNoaytETGFwbFQvWnVnTFovM3oxYU1mdkxWV3pkbjdx?=
 =?utf-8?B?UStEMktxSlJxVUxwT1dHTUNsSi9DYVRwcCtaQzAzTlFkeXhkU3cxY3grb1c1?=
 =?utf-8?B?aWdjbHo5bFVEby9JY3VFSmdSOWhBTGF5S1FsdGgyNTRHWUZsUFIwUndna1Rk?=
 =?utf-8?B?UEVDUUdGOThnTVgvd0xySzFlM0QyVWdoNmhJTGdJNWlyN2lWQ2FuTnZTV0FM?=
 =?utf-8?B?NG9SZmlmaGVXVVhFa0JuUFd4U1drWk5xVXVhMjZWd0VWeUZxcU12SDFCYW1Q?=
 =?utf-8?B?aklkaE1Sc3dQY1FOaEF4RzE0MWo2Lzk5elhIOG1zRjdXTVVMQkV1Mm16SVpK?=
 =?utf-8?B?eENobjdod1J1c0ZHVG8yUmZZcmNnNW5BRld0L0dZeGtmeEwxaTdrY1dERFNr?=
 =?utf-8?B?L0drNGw5bXg2TXZqU2N3SmM0M3V5Nk5LaDJhTGFOcExGdkE5alJ6ZDNHWERQ?=
 =?utf-8?B?akhXcHQ4d0hLY0JZdmg2NUpTMFg5SGcwWjl2bXZHZXA0TUZ1azdvek8vUkNm?=
 =?utf-8?B?b0VqdTZSdG5uTkNjbHBmQXlnQ0ZPazMvRDRnZjNxTUVYZlJNdlFNWm93eEJR?=
 =?utf-8?B?ZVdCakJVYnhuS3RKZUlta0cxUVFDNUlYbTZLZldhVnkzd2dMRG1NdjdGdDRL?=
 =?utf-8?Q?RXnKI0uAfRk=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AMBPR10MB9319.EURPRD10.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a3pqL0lHOHNOQjFSVFlvNEczWGwwalVId3ZreU9Sd0JpM3Nnb0t3RSsvZXRs?=
 =?utf-8?B?WUVBalorRnhIb3RsN0dHeWJOV0p5dkI2b0RPTW00cGx2MU9WVFk2N1VJL2I5?=
 =?utf-8?B?S0ZqdEU4Rjh5WkhOTHQvM0RUZ3g1WnN1bmhPMWdraW04Z25wUDJ5QnhFV050?=
 =?utf-8?B?d1hQcWdESXZUK3VIVDRRaGltNjVKcGRaaVJ2VE5rSGVFQmpGcDlkQlN3d1pU?=
 =?utf-8?B?bHQ5SnVJREhNM1FMRjRGUXZibW1OdGtZZWUxdUFhTHY1cHAwdHFON0VDbi9u?=
 =?utf-8?B?b1lRaCtyQTJjK1puQlNCMlBpQ20zdFplNEswa2NvWlQ4elRTU3pxS2pVbldL?=
 =?utf-8?B?N3V5MHExKzFHU3E5d1FRdkNDVFFhUG9QWml3WndWYzI0THc2MlNKQ2lHU0Iy?=
 =?utf-8?B?aU5QenMvWnFNU09TSURuTG8yR0ZGSVVCclBwWGs3UXE0YXh4dnRhWVdiakRk?=
 =?utf-8?B?V0ZHT2ttZWZ3M095VnhZWjlGblJjQVUvNnp0U3IzMHNjLzhwOFJJc1Q3OXZ1?=
 =?utf-8?B?a2o0YllueTRCNmFoUS9Oc2FoMDlNL2JITmt3b3dLV2k4L0RHd3JaUVhNNU9D?=
 =?utf-8?B?U0Z5aHEzYmVkeldjWlBLMXAvZUhUd2duUUxBNWJDRXMxQzVtTTI5anp6cERq?=
 =?utf-8?B?RTZtNjdod0RiUzVGOW9KZVlvVVR4cWVPb3Y2Y2FZVENGbHd5aTd2eityY0o4?=
 =?utf-8?B?SkZwTzBRQ2lTYXlJNmE3OXBxUS9vUmJ1MlAybE9qQ0ErOTkzbVlpSVh6OTA5?=
 =?utf-8?B?SDlycWwyNzFES05ibXV4b0FDZlBLdmR3VjE3ZGd3eXZLdEJlbHljaG44Z1lx?=
 =?utf-8?B?RE9JUEY5dkFMZU1SeEJ1LzZoTks1TE5xNVRGUjVwRUF4TlhRd1l6bXhCWTBu?=
 =?utf-8?B?bXIzSml2M3BLakpOOWZDVm81Z01Ua0dyaHU2dkJRbmZqZFRYaWhtZVpQNWgr?=
 =?utf-8?B?dDMyUEhOa2lwZFY1d1NLTFByRndhbXhjNGZJOTFSRmV0UHY0QjZJbHFWT21p?=
 =?utf-8?B?WjFpaVZrV2FsUHd1ME1HeWtHVmp5amtWbDNQeTlCOW1zdnhRMVpSTkpWU1FM?=
 =?utf-8?B?UFhQcGkwcEEvb0JsL1FrRENsdTBjMGM3V1hROVpHd0FqMGhQV2JESzJoUkdj?=
 =?utf-8?B?akczOEVTZHU5MlFkaks4cTJKUHZTY2xSTWNKZTJUekV0QUY3M1ZLbVNBWjda?=
 =?utf-8?B?T200M2hVWDBYVm5YSkkyU2tMbVA1aE9XL2YycEdRTCtVMVAyZUVTK0FzRFE4?=
 =?utf-8?B?dWJHZklJMWdHS1lpZDhCank3NWQ0NklLM0czN2pTVzFqWlBKOEhnYk1aVmdF?=
 =?utf-8?B?anNFcWZ2Z1FvWkxiYnEvSkJFalJZZ1dSY0JDR1J6VEN5djQvVXZhOFRWMEU4?=
 =?utf-8?B?WUhrY3N4T0ZSN0dhZW5nMW04aDZmekNsNGVhZExqYjR6Z2RhclpvaFFwc3ZM?=
 =?utf-8?B?QUdVdXQrRER1czBoYnpJeU5kZWc4U2pBalA5OXBhWXBXK1dQcHN4V1RIdjBR?=
 =?utf-8?B?VVNEdmdIUUQvUlZlNFhHcTk1UFJmeE53ZGFzR013ZnRucVllTnVKaWNYbWtH?=
 =?utf-8?B?ZnBqaTN4WWd0ZS9mb3dqdGpNWURUcDA5RmdEY3l6dkxyNnhuQ2NLUUpJK2Uz?=
 =?utf-8?B?ZzFiTi8ybmpMYU5BbDJDSWNYNmxkemZtSEptMUxPd3Fqam5yMEtVZ0tKV3BZ?=
 =?utf-8?B?eFUxcDk1bTdCRk51bUR4ZEtOMHRBQ0k5RlFDUkRON0lUZTV6Y2ovbkJXQkhY?=
 =?utf-8?B?K21vNFV3WVY1bzhWdjBkOGt5QkZLSW9CU0dFZG1HVkZQaHgwWnIxRi9SRlAr?=
 =?utf-8?B?Qnd2TmxnekVhTGFzWStWMjZ5N05HNVpnQnhBRGp5Q21aTFZqKyt4TlNhSzBO?=
 =?utf-8?B?YzRsbFJ6R003TGhobmUwVG9kWTUyalc3QnF6VGFZVkNJUC8wRStrUUlwUnAv?=
 =?utf-8?B?KzRYd21MK1haSUgzeFN1OG1CMzBYVWduY2dXclYvR1ZWbWhubHNNcWc0YWd2?=
 =?utf-8?B?cm9meDA0THFlZDNMZU5YNTNLMTRhYmVUcVdzbkIycDh6RGtmTkRlN2I4Q0lH?=
 =?utf-8?B?V2lRdEtsdi9FZEIrSEowRWRLd0txdGdJQTdTWEQwbDdHY3IrNlRLRTZlTW81?=
 =?utf-8?B?aG0rb3d6Rmo1YXI0S3ZhL09uQU1LSEJyY1lhMGVsaTF1ZUNyMVpzVGcrbkc4?=
 =?utf-8?B?MkE9PQ==?=
X-OriginatorOrg: kontron.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 945bd7e6-386b-461e-21be-08ddeee7aa03
X-MS-Exchange-CrossTenant-AuthSource: AMBPR10MB9319.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Sep 2025 14:54:51.4563 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8c9d3c97-3fd9-41c8-a2b1-646f3942daf1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Hf1PRt3AjPBrRDMvFinUjYSKzs6yaSCMJ6DWFhIsm28aLDISjol9dTfFBIiOUUy25z1U2LLQoxhKeX7DDQvIZEp7XnjEHxej66LhFBdvvAI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR10MB5988
X-Spam-Score: -1.2 (-)
X-Spam-Report: Spam detection software, running on the system "sfi-spamd-1.hosts.colo.sdot.me",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Le 05/09/2025 à 20:50, Corey Minyard a écrit : > I'm adding
    the OpenIPMI mailing list and the LKML. > > On Fri, Sep 05, 2025 at 05:04:28PM
    +0200, Gilles BULOZ wrote: >> Le 05/09/2025 à 15:15, Gille [...] 
 
 Content analysis details:   (-1.2 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 ARC_VALID              Message has a valid ARC signature
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.0 ARC_SIGNED             Message has a ARC signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
  0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [52.101.70.109 listed in wl.mailspike.net]
 -1.2 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1uvdVn-0004lF-Ux
X-Mailman-Approved-At: Fri, 12 Sep 2025 19:34:07 +0000
Subject: Re: [Openipmi-developer] user->nr_msgs going negative in
 ipmi_msghandler.c
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
Cc: OpenIPMI Developers <openipmi-developer@lists.sourceforge.net>,
 Linux Kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

TGUgMDUvMDkvMjAyNSDDoCAyMDo1MCwgQ29yZXkgTWlueWFyZCBhIMOpY3JpdMKgOgo+IEknbSBh
ZGRpbmcgdGhlIE9wZW5JUE1JIG1haWxpbmcgbGlzdCBhbmQgdGhlIExLTUwuCj4KPiBPbiBGcmks
IFNlcCAwNSwgMjAyNSBhdCAwNTowNDoyOFBNICswMjAwLCBHaWxsZXMgQlVMT1ogd3JvdGU6Cj4+
IExlIDA1LzA5LzIwMjUgw6AgMTU6MTUsIEdpbGxlcyBCVUxPWiBhIMOpY3JpdMKgOgo+Pj4gTGUg
MDUvMDkvMjAyNSDDoCAxNDowMywgQ29yZXkgTWlueWFyZCBhIMOpY3JpdMKgOgo+Pj4+IE9uIEZy
aSwgU2VwIDA1LCAyMDI1IGF0IDA2OjU0OjIzQU0gLTA1MDAsIENvcmV5IE1pbnlhcmQgd3JvdGU6
Cj4+Pj4+IE9uIEZyaSwgU2VwIDA1LCAyMDI1IGF0IDEwOjE2OjE5QU0gKzAyMDAsIEdpbGxlcyBC
VUxPWiB3cm90ZToKPj4+Pj4+IEhpIENvcmV5LAo+Pj4+Pj4KPj4+Pj4+IEknbSBIVy9TVyBkZXZl
bG9wZXIgYXQgS29udHJvbiAoY29tcHV0ZXIgbWFudWZhY3R1cmVyKSBhbmQgZG9uJ3Qga25vdyB3
aGF0IHRvCj4+Pj4+PiB0aGluayBhYm91dCBhbiBpc3N1ZSB3aXRoIHVzZXItPm5yX21zZ3MgZ29p
bmcgbmVnYXRpdmUgaW4gaXBtaV9tc2doYW5kbGVyLmMuCj4+Pj4+PiBOb3Qgc3VyZSBpZiBpdCdz
IGEgd2Vha25lc3MgaW4gaXBtaV9tc2doYW5kbGVyLmMgb3IgYSBidWcgaW4gdGhlIElQTUMgc29m
dHdhcmUKPj4+Pj4+IG9mIG91ciBjb21wdXRlciBib2FyZCAoc2F0ZWxsaXRlKSB3aXRoIGV2ZW50
IG1lc3NhZ2VzLgo+Pj4+PiBJIHdvcmtlZCB3aXRoIHBlb3BsZSBmcm9tIEtvbnRyb24gYSBsb25n
IHRpbWUgYWdvLiAgVGhvc2Ugd2VyZSBnb29kCj4+Pj4+IHRpbWVzIDopLgo+Pj4+Pgo+Pj4+Pj4g
SSBzZWUgdGhpcyB3aGVuIEkgcnVuIGlwbWl0b29sIG9uIHRoaXMgYm9hcmQgd2hpbGUgc29tZSBl
dmVudCBtZXNzYWdlcyBhbHJlYWR5Cj4+Pj4+PiBhdmFpbGFibGUuIEluIHRoaXMgY2FzZSBkZWxp
dmVyX3Jlc3BvbnNlKCkgaXMgcHJvY2Vzc2luZyB0aGUgbWVzc2FnZXMgYW5kIGlzCj4+Pj4+PiBk
ZWNyZWFzaW5nIHVzZXItPm5yX21zZ3MgYmVsb3cgMC4gVGhlbiB3aGVuIGlwbWl0b29sIGNhbGxz
Cj4+Pj4+PiBpb2N0bChJUE1JQ1RMX1NFTkRfQ09NTUFORCkgaXQgZ2V0cyBhbiBlcnJvciB3aXRo
IGVycm5vPUVCVVNZIGJlY2F1c2UgaW4KPj4+Pj4+IGlfaXBtaV9yZXF1ZXN0KCkgdXNlci0+bnJf
bXNncyBpcyBpbmNyZW1lbnRlZCBidXQgc3RpbGwgbmVnYXRpdmUsIGNhc3RlZCB0bwo+Pj4+Pj4g
dW5zaWduZWQgaW50IHNvIGJlY29tZXMgaHVnZSwgYW5kIGZvdW5kIGdyZWF0ZXIgdGhhbiBtYXhf
bXNnc19wZXJfdXNlciAoMTAwKS4KPj4+Pj4gVGhhbmtzIGZvciB0aGUgZGV0YWlsZWQgZGVzY3Jp
cHRpb24uICBUaGUgZml4IGZvciB0aGUgYnVnIGlzOgo+Pj4+Pgo+Pj4+PiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9jaGFyL2lwbWkvaXBtaV9tc2doYW5kbGVyLmMgYi9kcml2ZXJzL2NoYXIvaXBtaS9p
cG1pX21zZ2hhbmRsZXIuYwo+Pj4+PiBpbmRleCBlMTJiNTMxZjVjMmYuLmJhMzMwNzA2MjJiMSAx
MDA2NDQKPj4+Pj4gLS0tIGEvZHJpdmVycy9jaGFyL2lwbWkvaXBtaV9tc2doYW5kbGVyLmMKPj4+
Pj4gKysrIGIvZHJpdmVycy9jaGFyL2lwbWkvaXBtaV9tc2doYW5kbGVyLmMKPj4+Pj4gQEAgLTE2
MzQsNiArMTYzNCw3IEBAIGludCBpcG1pX3NldF9nZXRzX2V2ZW50cyhzdHJ1Y3QgaXBtaV91c2Vy
ICp1c2VyLCBib29sIHZhbCkKPj4+Pj4KPj4+Pj4gICAgICAgICAgICAgICAgIGxpc3RfZm9yX2Vh
Y2hfZW50cnlfc2FmZShtc2csIG1zZzIsICZtc2dzLCBsaW5rKSB7Cj4+Pj4+ICAgICAgICAgICAg
ICAgICAgICAgICAgIG1zZy0+dXNlciA9IHVzZXI7Cj4+Pj4+ICsgICAgICAgICAgICAgICAgICAg
ICAgIGF0b21pY19hZGQoMSwgJnVzci0+bnJfbXNncyk7Cj4+Pj4gU29ycnksIHRoYXQgc2hvdWxk
IG9idmlvdXNseSBiZSB1c2VyLT5ucl9tc2dzCj4+PiBUaGFua3MgdmVyeSBtdWNoICEKPj4+IEkn
dmUgdHJpZWQgaXQgd2l0aCBrZXJuZWwgNi4xMS44IGFuZCBpdCdzIGJldHRlciBidXQgc3RpbGwg
bm90IGVub3VnaC4KPj4+IFJ1bm5pbmcgImlwbWl0b29sIHNlbnNvciIgd2l0aCBzb21lIGRlYnVn
IGluIGlwbWlfbXNnaGFuZGxlci5jIHNob3dzIHRoYXQgSSBhbHdheXMgaGF2ZSBucl9tc2dzPTEg
cmlnaHQgYWZ0ZXIgdGhlIGF0b21pY19hZGQgKGNhbGxlZAo+Pj4gOSB0aW1lcyksIHRoZW4gd2hl
biBpbiBpX2lwbWlfcmVxdWVzdCgpIEkgcmVhY2ggbGluZSAicnYgPSAtRUJVU1k7IiB3aXRoIG5y
X21zZ3M9LTIgKHR3aWNlKS4KPj4gTXkgdW5kZXJzdGFuZGluZyBpcyB0aGF0IGlwbWl0b29sIGNh
bGxzIGlvY3RsKElQTUlDVExfU0VUX0dFVFNfRVZFTlRTX0NNRCkgY2FsbGluZyBpcG1pX3NldF9n
ZXRzX2V2ZW50cygpIGFuZCB0aGFua3MgdG8geW91ciBwYXRjaAo+PiBmb3IgZWFjaCBldmVudCBh
dmFpbGFibGUgdGhlIG5yX21zZ3MgaXMgaW5jcmVtZW50ZWQgaGVyZSBhbmQgZGVjcmVtZW50ZWQg
aW4gZGVsaXZlcl9yZXNwb25zZSgpLiBTbyB5b3VyIHBhdGNoIGlzIE9LIGZvciB0aGF0Lgo+PiBC
dXQgYWZ0ZXIgdGhhdCBpZiBvdGhlciBldmVudHMgYXJlIGNvbWluZywgZGVsaXZlcl9yZXNwb25z
ZSgpIGlzIGNhbGxlZCBhbmQgbnJfbXNncyBnZXRzIGRlY3JlbWVudGVkLiBTbyB3aGVuIGlwbWl0
b29sIGNhbGxzCj4+IGlvY3RsKElQTUlDVExfU0VORF9DT01NQU5EKSwgdGhpcyBjYWxscyBpX2lw
bWlfcmVxdWVzdCgpIHdpdGggbnJfbXNncyA8IDAgYW5kIHRoYXQgcmV0dXJucyAtRUJVU1kKPgo+
IFllYWgsIGFmdGVyIEkgc2VudCBteSBlbWFpbCBJIHN0YXJ0ZWQgbG9va2luZyB0aHJvdWdoIHRo
ZSBkcml2ZXIgZm9yCj4gb3RoZXIgaXNzdWVzIGFyb3VuZCB0aGlzLCBhbmQgdGhlcmUgd2VyZSBz
ZXZlcmFsLiAgVGhhdCBjaGFuZ2Ugd2Fzbid0Cj4gd2VsbCB0aG91Z2h0IHRocm91Z2guCj4KPiBT
bywgSSd2ZSBhZGRlZCBzb21lIHRlc3RzIGFyb3VuZCB0aGlzIGluIG15IHRlc3Qgc3VpdGUsIGFu
ZCBJJ3ZlCj4gcmV3b3JrZWQgdGhpcyB0byBiZSBhIG11Y2ggYmV0dGVyIGltcGxlbWVudGF0aW9u
IHRoYXQncyBoYXJkZXIgdG8gZ2V0Cj4gd3JvbmcuCj4KPiBJJ20gZ29pbmcgdG8gc2VuZCB0aGUg
Zml4IGluIGEgc2VwYXJhdGUgZW1haWwuCj4KPiBUaGFua3MsCj4KPiAtY29yZXkKPgpUaGFua3Mg
Q29yZXkKSSBjb25maXJtIHlvdXIgZml4IChzZXBhcmF0ZSBlbWFpbCkgaXMgd29ya2luZyBmb3Ig
bWUuIEFwcGxpZWQgb24ga2VybmVsIDYuMTctcmM1IHNvdXJjZXMsIHdpdGggZmV3IGNoYW5nZXMg
dW5kZXIgZHJpdmVycy9jaGFyL2lwbWkvCnRvIGJ1aWxkIHRoZSBrZXJuZWwgbW9kdWxlcyB0aGVy
ZSBmb3Iga2VybmVsIDYuMTEuOCwgYW5kIHRoZW4gdXNpbmcgdGhlc2UgbW9kdWxlcy4KQW5vdGhl
ciBzaW1wbGUgZml4IHRoYXQgd29ya2VkIGZvciBtZSBvbiA2LjExLjggd2FzIHRvIHJlcGxhY2Ug
YXRvbWljX2RlYygpIHdpdGggYXRvbWljX2RlY19pZl9wb3NpdGl2ZSgpIGluIGRlbGl2ZXJfcmVz
cG9uc2UpLCBpbgphZGRpdGlvbiB0byB5b3VyIHN1Z2dlc3RlZCBjaGFuZ2UgdG8gYWRkIGFuIGF0
b21pY19hZGQoKSB0byBpcG1pX3NldF9nZXRzX2V2ZW50cygpLgo+Pj4+PiAgICAgICAgICAgICAg
ICAgICAgICAgICBrcmVmX2dldCgmdXNlci0+cmVmY291bnQpOwo+Pj4+PiAgICAgICAgICAgICAg
ICAgICAgICAgICBkZWxpdmVyX2xvY2FsX3Jlc3BvbnNlKGludGYsIG1zZyk7Cj4+Pj4+ICAgICAg
ICAgICAgICAgICB9Cj4+Pj4+Cj4+Pj4+Cj4+Pj4+IENhbiB5b3UgdHJ5IHRoYXQgb3V0Pwo+Pj4+
Pgo+Pj4+PiBJJ2xsIGZvcndhcmQgcG9ydCB0aGlzIHRvIGN1cnJlbnQga2VybmVsIChpZiBhcHBy
b3ByaWF0ZSwgdGhpcyBoYXMgYWxsCj4+Pj4+IGJlZW4gcmV3cml0dGVuKSBhbmQgcmVxdWlyZWQg
YSBiYWNrcG9ydC4KPj4+Pj4KPj4+Pj4gVGhhbmtzLAo+Pj4+Pgo+Pj4+PiAtY29yZXkKPj4+Pj4K
Pj4+Pj4+IEFzIHdvcmthcm91bmQgSSBzZXQgbW9kdWxlIHBhcmFtZXRlciBtYXhfbXNnc19wZXJf
dXNlciB0byAweGZmZmZmZmZmIHNvIHRoYXQKPj4+Pj4+IHVzZXItPm5yX21zZ3MgaXMgbmV2ZXIg
Z3JlYXRlciB0aGFuIHRoaXMgdmFsdWUuCj4+Pj4+PiBJIHdhcyB1c2luZyBrZXJuZWwgNi4xMS44
IGJ1dCB1cGRhdGVkIHRvIDYuMTYuMyBhbmQgZ2V0IHRoZSBzYW1lIGlzc3VlLgo+Pj4+Pj4gSSdt
IGFsc28gbm90IHN1cmUgaWYgb3VyIGJvYXJkIGlzIHN1cHBvc2VkIHRvIHJlY2VpdmUgc3VjaCBl
dmVudCBtZXNzYWdlcyBhcwo+Pj4+Pj4gaXQgaXMgbm90IFNoZWxmIE1hbmFnZXIsIGV2ZW4gaWYg
dGhlc2UgZXZlbnRzIGNvbWUgZnJvbSB0aGUgbG9jYWwgc2Vuc29ycyBvZgo+Pj4+Pj4gdGhlIGJv
YXJkLgo+Pj4+Pj4KPj4+Pj4+IEJlc3QgcmVnYXJkcwo+Pj4+Pj4KPj4+Pj4+IEdpbGxlcyBCdWxv
ego+Pj4+Pj4gS29udHJvbiBNb2R1bGFyIENvbXB1dGVycyBGcmFuY2UKPj4+Pj4+IFImRCBTVy9I
VyBzZW5pb3IgZGV2ZWxvcGVyCj4+Pj4+Pgo+Pj4+IC4KPiAuCgoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCk9wZW5pcG1pLWRldmVsb3BlciBtYWlsaW5n
IGxpc3QKT3BlbmlwbWktZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xp
c3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9vcGVuaXBtaS1kZXZlbG9wZXIK

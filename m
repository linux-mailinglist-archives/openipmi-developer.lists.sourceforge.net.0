Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B5326A05A4B
	for <lists+openipmi-developer@lfdr.de>; Wed,  8 Jan 2025 12:48:03 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tVUXV-0004Uo-Pf;
	Wed, 08 Jan 2025 11:47:58 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jacky_chou@aspeedtech.com>) id 1tVObb-0003kN-6S
 for openipmi-developer@lists.sourceforge.net;
 Wed, 08 Jan 2025 05:27:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7locB7kTTS5ue/pMZrZwxf7UQWbXjlpMksmNz3YQyPY=; b=HxjDj9hH+bxMoSrJ7WA/5zhpvL
 ZKY632gwxU/EH3mE1ZOLFQHSfhcbWdgBFQm2MJHaK1YSf+2TfF9bzmXJeE5hcwHieJXXn9jWlQCR3
 Fczv5a9rBJXZbyEhMEMxTrZBR+qztivUn82HgfeGXeq30nzewJV6ty8VeQXq1xX5W3eM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:Message-ID:Date:
 Subject:CC:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=7locB7kTTS5ue/pMZrZwxf7UQWbXjlpMksmNz3YQyPY=; b=j
 jf1SfE1RMwjWWE7ZtWgcJRjPR1d29dFBmyse/6xZG5K3LvjrOdbFjuk3RuN1cOhOzrbpHT1I2a3ws
 jfcs9Rg/kn+VwU0HUIUPgL/iJZOfTUS31vFDZ+qdMphOH0Gxk/LXljU6b4Y0a9pCB2BAHlU34W3Th
 ABA7TGbf8Fx9EWeQ=;
Received: from mail-psaapc01on2105.outbound.protection.outlook.com
 ([40.107.255.105] helo=APC01-PSA-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tVObZ-00052i-1t for openipmi-developer@lists.sourceforge.net;
 Wed, 08 Jan 2025 05:27:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=W5cNdvI+RJdBDjGuDJEDwEbk7yWJ0xX5adUD/uHudiXUPMzUYfy4Ti+VWKBTtdMFB+6+0L3QwMuHWx1G3ZnX795kW798dFeUtbn3zAaCNSeN2i4AF315t/HoQffH+01K+d2iXoBT/ZfbBSLL/kw6z+uKiZqhTGAnFvmwkYaomUaa7pNsKXqrI5XY7Sx72ngf/q32ROnPZIuykxqSRdky7FKhPnS4C3w8JIiCU51LkeVQPH+B2+QR9X2MeLkL+8hJ/2D3YsRzuX8EDseOgzndl/sJtFy33dknSOqb1ek3WnbLRLptG5C6Fg2DhzNA4UGc7KD7Jo/KBOL6WCNc6dQ80g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7locB7kTTS5ue/pMZrZwxf7UQWbXjlpMksmNz3YQyPY=;
 b=zGWnD6wZLlsXqvMdIX4hU0V0Hon8Ro2uV2zPpkAkNi6ErAG1jEAo1rTzivx93H1S2IVATR9Uo5zA7VIytkhPbUUl0GLaDkJxwsVGhsm0606coUwz4KYC2SuQeupRVPjft2AaqiGJgVH2ooubGTJe4YpNbx30kvqfFg+yVAsXmSgMGftrhE28oUa4iGGoka5XXloU6oLeA3F22SAjUeo1CkLjEiuzCZtOXiENGy7mx8S57s6EHkIwSW6dW5Os3GHgiibqkCEOWiO6wghSYqO/l5yo32UsDRL0G7edU8blmvT4IXZIqDjMypP3HiW6w74IMflCcCcfDMRl+fK9/L1nVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aspeedtech.com; dmarc=pass action=none
 header.from=aspeedtech.com; dkim=pass header.d=aspeedtech.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aspeedtech.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7locB7kTTS5ue/pMZrZwxf7UQWbXjlpMksmNz3YQyPY=;
 b=cd9+rlENoiC9NUWAAFRr645cQFoISV0HEPzi6SRodSkvzBJ2ygEiQEqnZgO15y2b8m8p7g4jNoUsFB38wXE9DjHhw8ffA0pGeLSh3jhYzyIZ+rBru+g0B4rFp+eGPKUKpkFAaRevcT85w76YcKh6cJqOYiAiaKHN85aWrtpC0yDyKUCjOeXO/CdWUfHqMxzmB5295AfPLn/eM+eaErcsZU5mgG1H8F9FiHQpAc6R+HX2rcBu1064F2LZEwMQN2Yvjj0YxnHxaC0vDceoL1n3/a46J/lOY9Krn0+ZFdgc2NzNs/KNf4uUF5TsRT2vccg+MrOB4ur3q3CkQ5xe/WPaSQ==
Received: from SEYPR06MB5134.apcprd06.prod.outlook.com (2603:1096:101:5a::12)
 by KL1PR06MB6446.apcprd06.prod.outlook.com (2603:1096:820:f0::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.11; Wed, 8 Jan
 2025 03:54:30 +0000
Received: from SEYPR06MB5134.apcprd06.prod.outlook.com
 ([fe80::6b58:6014:be6e:2f28]) by SEYPR06MB5134.apcprd06.prod.outlook.com
 ([fe80::6b58:6014:be6e:2f28%5]) with mapi id 15.20.8335.007; Wed, 8 Jan 2025
 03:54:29 +0000
To: "andrew@lunn.ch" <andrew@lunn.ch>
Thread-Topic: [PATCH v2 05/10] ARM: dts: aspeed: system1: Add RGMII support
Thread-Index: AQHbYX4ZqwUnoFUOykuCVX4SkD1z2w==
Date: Wed, 8 Jan 2025 03:54:29 +0000
Message-ID: <SEYPR06MB5134CC0EBA73420A4B394A009D122@SEYPR06MB5134.apcprd06.prod.outlook.com>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=aspeedtech.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SEYPR06MB5134:EE_|KL1PR06MB6446:EE_
x-ms-office365-filtering-correlation-id: f5eb09c9-ed7d-4f7a-8c34-08dd2f982712
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|7416014|366016|38070700018; 
x-microsoft-antispam-message-info: =?big5?B?MjJRaHZ5RFgvUjJDZW5RMm9mRzUreUhucW5Lb0N6UUNqeW5mSmdOcERWbUFscVc4?=
 =?big5?B?eTJiRGs2c0QxWTNEQkg5VktGeWhaY3MzdFhRZWlqaHJLMFdmbm9OL0ZNUjBvS1Br?=
 =?big5?B?UHJqNHFCVm1JRjc3ZzNBcmNRcHN0RkFNTWo3bHRHdmlJODlMWm5pYzNOLy9ERXpn?=
 =?big5?B?N2dsZEFuNGFTbXFwb0t6cGNrM0xLK0VDalYzS2M0V0NqcHFmWTB1aUJsSm5YMEFI?=
 =?big5?B?OHlsZDI1bmw3YzB1dDdINnlmaXFBcXZTYW5yZzdOYzJVcE5DMG9jMW9nYi9aNEJD?=
 =?big5?B?elRqQUFpbWlsbG5YVC9LTjhFT2JPQVhDdXl6S1h1eUluUldKZmNycTN6MW9zRUhO?=
 =?big5?B?YjRXeUd4Q1htV3Myclcrbnh3NzBtaUdTaDRuZmFCcmxVT0dpYlgvZU5sZ2pmRHBP?=
 =?big5?B?UFBwcW9aMDFFT3psQVUwQTRweWZaQ25CdFlYRTdqektkaDRNWFBsbG42Y25sbnlZ?=
 =?big5?B?K3JqcnJ6TzRub25rUVN0cHJPNFEyK280WVNYWlgyc3ZoNWpUTk5mUTJyM2JjSmhi?=
 =?big5?B?SU4rYU1MREIyNTBwMGhjalg2dDYxbG1uMGdTMGROSmludldkeU04aWtpbUJEejBa?=
 =?big5?B?bWIrdlA1L3FCcVhnSVg2VVNET2ZETU42Zm9zN2dUWTgrV1ZVZmJ6eW9UTUhNSFds?=
 =?big5?B?My9MN0VHejIwOHBrVUhSRlhuNWNhdjhvS3ArTmZHc2F5VEhVdFZWMVFOYmpTV0U0?=
 =?big5?B?eHRwK1c4RHpybXhIS2wvZjdJc0hCUjdySUc0aVhJditaaWtQcGQ2eXIyTDRXdFkw?=
 =?big5?B?WWpxbUxYV1dyaTdTOU00SHVlTEJXd2hSTHh5RS9EbHdYQlc4VjBkVEtVcHN6R2ZL?=
 =?big5?B?TkxsL2pid2dXLzJYbEZZdEszRWlHVGxlVHYvaFNTMDVEK09xV2hrK08wQktpVURx?=
 =?big5?B?NUMzT0d2TkwxOE5IRVk2bzJOend4N0tXeFJlK3MxSDNldjJDK1A2MVBsQmVENDJG?=
 =?big5?B?clJqNlVuRE5jaXR1UGJyTy9VdmZ6Z3BPSHFSVExzTW9ValJOWlo4N1R1NHozRmo1?=
 =?big5?B?RllGVjUzclFtTlJydmh3Zi9OUFhDU2dpZWpXWkRDZmU0Z1VpN3g2Q3lBVDh2T3JH?=
 =?big5?B?UktsSTNnMnEya0lwVXVzQ3JwcndHc0RneUo2TVRoU1JKcWlhK0kzdDNqYko3S1B0?=
 =?big5?B?VFEzRm45K2VzY3k4di9QWWxoQlFSZlhJbCt5UHpWOFZBMWI2NXlkaTdxcW1hTzVB?=
 =?big5?B?eElUY3NzMVBpZ05tRFZTSWI3ZEFuRS9lZTk2RDJqYmExcDBCbE5EYUFKME9xU2xX?=
 =?big5?B?WmhjbDFldmhEY0YwSUNyRWZITjNqRTFUR2d5NnNpbEM3dVRYNzk0SFpDZWpjWmYr?=
 =?big5?B?RUV6dTlWQnJxRWRuWnhUUTRYcFArVWsvOFNiellDMjJhc2trc0ltajVBZmdPSkUy?=
 =?big5?B?N0l0NkNVTldYRld1SDl0Y3RBdEZQN3YzdE1ZM2ZyajRCTkZtWG51ektRZEhnck8y?=
 =?big5?B?cFF0ZnppNWlmV0FXMjZVSy9VaUJNTHBpSkl0Wm1hOHF2R1VDa25NaUZTU1RtMVN6?=
 =?big5?B?a3h1U0MyU0tXbTV0dlRlVmVKS0VmQlU3SGkrcXFwYlVzSU5CWEFKL0RNMGNFaUJ4?=
 =?big5?B?Nmd3NHFNcDVzNWNneHcwMVpxTjhYc2VLSFc2UFBheFVUMzJuY2krWTVBZGdZOG1o?=
 =?big5?B?R0F1OGtiVVpMTGJxeXNneFV5VlVYUEh1dVk4YXJaNGpvaVArUUZ5L2VRNEdubnNU?=
 =?big5?B?UndmMFRJNnN6TmlHa3luNjJUQ0U4RWpOM2paUHpPOUFVNTBUOTdjRFM2aDZWL3Ez?=
 =?big5?B?cktNTXhvNzU3LzlWK01iUk9YRDM4TjBROENXUmZnQkZSQTlXWGZ4NWFGZGhRUzlt?=
 =?big5?Q?uuAGxpSmUBivGmuzhetW4Zt/CGDE/nVu?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:zh-tw; SCL:1;
 SRV:; IPV:NLI; SFV:NSPM; H:SEYPR06MB5134.apcprd06.prod.outlook.com; PTR:;
 CAT:NONE; SFS:(13230040)(1800799024)(376014)(7416014)(366016)(38070700018);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?big5?B?RDI0VG52QTF0NnNxbVFFK3lpd1F4UURYYVJMbHpHVENDbkI2Yll2ZDJFV3VycUpQ?=
 =?big5?B?eTBpSEFYSXNUemJCSDBsb1ZuQ2NMSnRhS1ZtYk1vRDVhU2tFY05HbGFNNk5saHlk?=
 =?big5?B?engvM04vdWpzbWVIbHRvVllkOEoyeHl5YjdxV1d4cC9KTFBXbWlDcTdJc2NEZkdr?=
 =?big5?B?VDEvaSt0YlBQMG5JL29RTXpVZmUyb0VrakthR2w3QWpydjI2aTRzNVpxMDZzK1NG?=
 =?big5?B?c1Nhc3drZEpucmlDL0hob2FFTUxQeHM1eGFkZ2pjMWxiRktxMURGZWNITGtYNVZW?=
 =?big5?B?NzdFaFJlbFIrZ3ZEZ3hMVSszZzR6NHNxTW1kSUpoZHFyNDkyL0hrbHNtWFRMcGl3?=
 =?big5?B?M1lURnVCZ253dHRhcnNFSk95SFI4UFZua0h5U1lnaU1LZ3NWMk8wd2pYSWc5WDV4?=
 =?big5?B?TjYxMTNHWk45aTl5aE8xRXZZMmxxOGFwZjBDVk1WUHZXcVZuQktEazhMSFZGUTkx?=
 =?big5?B?dENtSENhdEpYL2d6alBWVDRnQWZBQW9EZVJpeUwrdFNhMmdJL2FBb2p6cklPOTNK?=
 =?big5?B?R3JpSmFyVFZJR25yTVhQTDBmVjZCMGI4dzlpcG0xeGQwUGZpWHRLWGU3UjAyMnJG?=
 =?big5?B?MCtFNHo4S05WVWIwZytzbzQ1ZFVEbUd3czRQQWlsYjVxeHRpelVUUnJBN3J6N2tW?=
 =?big5?B?d2FJNVk5VFJLODB6ZktkeXRDazE5MTh4NG5kaHRTT0lEUHp1c1JmWXVaVWJoVVRZ?=
 =?big5?B?cE5rTGpCK01NTU1idWpCdDZwRTIwbW13ckFqU0MyaVM2QVl2WE5JbXRoVTdYN0Uw?=
 =?big5?B?RFBHYmordVZ6cG1wbmlSRXJ2bitLTkxsekw0VU1FMmlobW5ZVXlUdlNZQXlYRkhq?=
 =?big5?B?L084TG00OFFxcEJDVHpCQkdjY1RiOUk1SmxXSldNM3J4QU9xSHNPdk5NRXZOeFVu?=
 =?big5?B?VHk3a1UwVm16bU01RG11NFc1eHJqUXNmb0ZBNXhtVVdSWWxpQVc1bDRFL3U1Rmhi?=
 =?big5?B?MmVaMTRJYVR1TDMwN1NOcU50VXVJT0IrTTBmdmUxMHMyQ2s0MGc3TEFGTWpiQks3?=
 =?big5?B?M2xHU2RaTkNlWTdNeUh6Tkk3KzJLY3J3VHhydllMUDlrY1JITXE4eEU3d1hZb1Z2?=
 =?big5?B?eVpxdEtLdlliazBqa212MytGN1czZVplN0FHRUJOSHk4Sjh1dlJ1ZWlYZHlIaWJr?=
 =?big5?B?enVCVmtmd0l3YmxucE1pVEpybHhHNEtBWkdYSHRwcWxUQTA2Q3FtMlVReWtQK05H?=
 =?big5?B?aS9rOElKMmJpR1MzTGF0Sm9sWE1CVjBoTHJBVDlTNFo4MDVWTjRuT090K1FSNFNM?=
 =?big5?B?T3E4OGNCWmd5Z1hZQ3ZJdkNVaTVYb216RjRScU44S3AwQ0l2cWhORTE2NU8weEJP?=
 =?big5?B?SWR6ZHl5M05hV3U0YUVzUUJyQi82azAzYi9sdDFJZzRqVVc3QUlQQW1JR2xmTDdk?=
 =?big5?B?Rmk1SVVBcGwrbUFtQ1FZbHYxaW53TFBlL0IwQ21NUmFJZC9SNTdGa000Q0hialVm?=
 =?big5?B?L0lzWmlKaHFyeDlVc3J4L0oyTURaa3Y4ZEZFaWRMUG1XTVV5VUJKZzkwbGY3di9J?=
 =?big5?B?VkNubHQ4R2NNRHpMd2EvOWZhVHNCRURWQkZ2OXBJUUdZNktFeWowd0FqcndQVXBw?=
 =?big5?B?aUpRVXdXSVpyUE5BYWN6ZElKNFZKTWNLVy84NWgrdTRUL0pSZkRkZjJubm0wM1gr?=
 =?big5?B?QngwYTBTc241TlA4Ky9mQm5RYlFaU0dtRThKSUJKa1hiR1BDWWt0UTJKZXBZQ01O?=
 =?big5?B?YTkrdmZSUUFqZEVXNEJ1eDZvV2xIcS9PY3Fld0E4Y1N2UHNRVWJPZHNCb1UzOWRr?=
 =?big5?B?ak82Sko3bzRvVGRkT3QvWHJtOE9BR0tmaTZNNUtyTGdqZGEzL0RxMS9kTzF4WGdO?=
 =?big5?B?czNsVmlYaGJabG5tbFUvdTU1dEg0OVZVK0RiSkFBZHJvcXMrUDNKRVVwbk1mSmhn?=
 =?big5?B?MzFtQUZDWVhPcExyYjQ0L04vaWJleVR3TjNWNDhZcWxpUVRMRXlxZWdqbEx5dnNE?=
 =?big5?B?cW9sVUhoRGEzVUNkMC9WQ1Boek1aRHdGQ2xucVNjTTk5cGNtUy82NkxWb1A2V1Vp?=
 =?big5?Q?ijlZKKKS5WFQz3LI?=
MIME-Version: 1.0
X-OriginatorOrg: aspeedtech.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SEYPR06MB5134.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f5eb09c9-ed7d-4f7a-8c34-08dd2f982712
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jan 2025 03:54:29.3254 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 43d4aa98-e35b-4575-8939-080e90d5a249
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0KvN6oQWtDYp3mzeQns96wBiiXsB7OpirKFlcFZBDEbRk0TvjXpzekGa/zAoA4Q4MiCwWrnS701HJFM7y/4Qqi1dWoDNc9aom4y34s7Cvjs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: KL1PR06MB6446
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Andrew, I am ASPEED team. >> system1 has 2 transceiver
 connected through the RGMII interfaces. Added >> device tree entry to enable
 RGMII support. >> >> ASPEED AST2600 documentation recommends using
 'rgmii-rxid' as a >> 'phy-m [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [40.107.255.105 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [40.107.255.105 listed in bl.score.senderscore.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.255.105 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1tVObZ-00052i-1t
X-Mailman-Approved-At: Wed, 08 Jan 2025 11:47:55 +0000
Subject: [Openipmi-developer] [PATCH v2 05/10] ARM: dts: aspeed: system1:
 Add RGMII support
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
From: Jacky Chou via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Jacky Chou <jacky_chou@aspeedtech.com>
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>, "minyard@acm.org" <minyard@acm.org>,
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 "robh@kernel.org" <robh@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "eajames@linux.ibm.com" <eajames@linux.ibm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "ninad@linux.ibm.com" <ninad@linux.ibm.com>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>,
 "edumazet@google.com" <edumazet@google.com>,
 "ratbert@faraday-tech.com" <ratbert@faraday-tech.com>,
 "kuba@kernel.org" <kuba@kernel.org>, "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
 "openipmi-developer@lists.sourceforge.net"
 <openipmi-developer@lists.sourceforge.net>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Hi Andrew,

I am ASPEED team.

>> system1 has 2 transceiver connected through the RGMII interfaces. Added
>> device tree entry to enable RGMII support.
>> 
>> ASPEED AST2600 documentation recommends using 'rgmii-rxid' as a
>> 'phy-mode' for mac0 and mac1 to enable the RX interface delay from the
>> PHY chip.
>
>Why?
>
>Does the mac0 TX clock have an extra long clock line on the PCB?
>
>Does the mac1 TX and RX clocks have extra long clock lines on the PCB?
>
>Anything but rgmii-id is in most cases wrong, so you need a really
>good explanation why you need to use something else. Something that
>shows you understand what is going on, and why what you have is
>correct.

Here I'll add some explanation.

In our design, we hope the TX and RX RGMII delay are configured by our MAC side.
We can control the TX/RX RGMII delay on MAC step by step, it is not a setting to delay to 2 ns.
We are not sure the all target PHYs are support for RX internal delay.

But ast2600 MAC1/2 delay cell cannot cover range to 2 ns, MAC 3/4 can do that.
Therefore, when using ast2600 MAC1/2, please enable the RX internal delay on the PHY side 
to make up for the part we cannot cover.

Summarize our design and we recommend.
AST2600 MAC1/2: rgmii-rxid
(RGMII with internal RX delay provided by the PHY, the MAC should not add an RX delay in this 
case)
AST2600 MAC3/4: rgmii
(RX and TX delays are added by the MAC when required)

rgmii and rgmii-rxid are referred from ethernet-controller.yaml file.

Thanks,
Jacky
_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

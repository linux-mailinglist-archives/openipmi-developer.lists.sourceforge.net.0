Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6801AA0734A
	for <lists+openipmi-developer@lfdr.de>; Thu,  9 Jan 2025 11:33:51 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tVprB-0005VH-H6;
	Thu, 09 Jan 2025 10:33:40 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jacky_chou@aspeedtech.com>) id 1tVpr9-0005V9-6O
 for openipmi-developer@lists.sourceforge.net;
 Thu, 09 Jan 2025 10:33:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HYEeul6B3x4Jxe1kWbtwZ7O0+30C2HHCpUEyvi8rZd0=; b=a8zUD/RDlrOBE6JBcN06RBjfzc
 Mnjeqnp1Ng5XbpQ4P0lZDkhuOizt8MtbpYMTdWycyf5kGP77coy+TsIRz+B2mbchaSPxxrcmC6djO
 Cz1XecuAeMpMaNVAmrSYz9+EZJ7WDZ55knVKjKZOP4qzK2yaX2/KSgy7/CXWkP8R0L7w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HYEeul6B3x4Jxe1kWbtwZ7O0+30C2HHCpUEyvi8rZd0=; b=idUb0r+OceZPRawqcfalQcyENh
 bKr/PhkKlmmN+jHYGo6s0rEVayqG7E0NbEkQhImwSxyIFiQY73Ob+p8gWoF6k4psRoNkjAp2n8fSb
 hIsWp5oMqVurHEh1RBwLc2/GIlVYW6GSf5qEtzKb81bLs8lsSwhOu57V96HcWywOtj2c=;
Received: from mail-psaapc01on2124.outbound.protection.outlook.com
 ([40.107.255.124] helo=APC01-PSA-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tVpr5-0002JE-33 for openipmi-developer@lists.sourceforge.net;
 Thu, 09 Jan 2025 10:33:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vj8Q79cHRTYmrDzy7uzbsCUQOJN37nNciuy6ZlIKSffrkR83gx/8xg4/QHO8XpKA+nwG7W63ss0Ypp1WY+sz6fxMoXaDxW0pIuGp2RjfNDVVuWev8cFpJPF2Ocv3675rJhEGw1T735reZKM3LLJlxkPAnIHuTBPhZRlrb/R9mOa6/PHyKJiZBdt+6QOe1hy5nNwYDYu2X/9ILPlbIsuuaC3TNfktEpkUJDubN8iX9351V3aJfj05YrdYClsYrJfsI5i6BME2bM9Y8OyX300HNNNZZ85xk4arCq8VK+MsZ+OzUPyvxcACV4XkAcukuS2R4G2t+HAUpQMl5ZxzHOY1HQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HYEeul6B3x4Jxe1kWbtwZ7O0+30C2HHCpUEyvi8rZd0=;
 b=Cmk6uLwiATgr5vEDLKLOnjXjCSNCBX6ZzuzoRkdzZHCHrTgzZARdMReikmx4wFM58NfH3W7Y4YQwsJN/OKR5s3F1nZJ9FB0i0WjBpZAvyTvT8KsjCSEPlkuyPa+JFvkT6rIEo5kHXcrGa5kHLpexd5eJsVNOtSGXpU32Z/TjW21pddOgLv3xxGnaNpnAB8lqsZ+QncNY9PPuSmnhmEMiqQLQLb/oJtrBLdAmQviTb7jaKwHlNknV3w5X2zWP3FZczqUYY1NLewy1ZFPHkIjhqB1uY+/afo5HZcEkbhAENrVaEP+HCdc1Gved/rQGHt744nrex7l1/nVgiXREE5tqqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aspeedtech.com; dmarc=pass action=none
 header.from=aspeedtech.com; dkim=pass header.d=aspeedtech.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aspeedtech.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HYEeul6B3x4Jxe1kWbtwZ7O0+30C2HHCpUEyvi8rZd0=;
 b=PMuDI3frYscH1jqoRRthh1EsmTsASwSgwAeJQ2f2WeaV3XCWD9g44K33sPdsDIxsXQg0RZw6gZNxqWsDIyfPB7Y6I8L1wasFuS0LcZqjvu0u/J26T7nmUGQe/7U4dJ7mrStRx1UGormHge0y36NqfKuZ/iegnFFgtEwIu0NQn0ZFaxeGLDaAdpJSbc3xwqUeZ0R+NF/oU3ZjSuSSXQ94YIWBbjMFsWkNOEgdh3Bt6xrjr3AHKK/w5UTiiOQewb/vj/GmZrmzP39D47PTLSeHJc/4/Xw7MmAh9uyzk1sQQA0aqVynYW8SmATlnULxP1AoRTSql9xdR1kjd/Cfn3L3ag==
Received: from SEYPR06MB5134.apcprd06.prod.outlook.com (2603:1096:101:5a::12)
 by TYZPR06MB6513.apcprd06.prod.outlook.com (2603:1096:400:452::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.9; Thu, 9 Jan
 2025 10:33:20 +0000
Received: from SEYPR06MB5134.apcprd06.prod.outlook.com
 ([fe80::6b58:6014:be6e:2f28]) by SEYPR06MB5134.apcprd06.prod.outlook.com
 ([fe80::6b58:6014:be6e:2f28%5]) with mapi id 15.20.8335.007; Thu, 9 Jan 2025
 10:33:20 +0000
To: Andrew Lunn <andrew@lunn.ch>, Ninad Palsule <ninad@linux.ibm.com>
Thread-Topic: [PATCH v2 05/10] ARM: dts: aspeed: system1: Add RGMII support
Thread-Index: AQHbYX4ZqwUnoFUOykuCVX4SkD1z27MNKUAAgABN4QCAAApFgIAAvO3A
Date: Thu, 9 Jan 2025 10:33:20 +0000
Message-ID: <SEYPR06MB51344BA59830265A083469489D132@SEYPR06MB5134.apcprd06.prod.outlook.com>
References: <SEYPR06MB5134CC0EBA73420A4B394A009D122@SEYPR06MB5134.apcprd06.prod.outlook.com>
 <0c42bbd8-c09d-407b-8400-d69a82f7b248@lunn.ch>
 <b2aec97b-63bc-44ed-9f6b-5052896bf350@linux.ibm.com>
 <59116067-0caa-4666-b8dc-9b3125a37e6f@lunn.ch>
In-Reply-To: <59116067-0caa-4666-b8dc-9b3125a37e6f@lunn.ch>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=aspeedtech.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SEYPR06MB5134:EE_|TYZPR06MB6513:EE_
x-ms-office365-filtering-correlation-id: 8da9f795-a645-4473-a854-08dd309909b1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|7416014|1800799024|366016|38070700018; 
x-microsoft-antispam-message-info: =?big5?B?S3RWaWlrdmxhWXNabzVRUTNWZTdvUkFIQVdqTjMzVHJZdDJRWFEzYVRydjZpMG5m?=
 =?big5?B?bXZMbDltSkRLSTB4V3RMYWt2a3RPTVZTSFlzMU1VbStBbEJEbjlDMHorL2ZYTDVJ?=
 =?big5?B?R1dHQmMwUUo5SmFuclBvY2FDMmNHTUVqZkhyNk5tVUVQTGNYM1Fac1hyN1JuYjND?=
 =?big5?B?dHFsUHNBenRUUSswK2k2L1Foc042SllwT1d0L3U4cTFBSlRuaTZhKzE4bVlFS0xl?=
 =?big5?B?eE81eWpMdkI1cWRPWmJaN3kvbWJYZkxKU0VHNzRwdklBQ2Nid0RMUCtMeGNTZkY1?=
 =?big5?B?ZjdmMW9ZQ0NTcnJtVm45cVo3ZTR0dzU0bkZZV0tTVXduZWltUkQ1WHVNcGNBUTMy?=
 =?big5?B?SmNXbDJBanJhWGx0MDBJTWJDOFVGTFBOTTQ4RnZlTWJXQ0lIaWlSZ2tUOXljU3lQ?=
 =?big5?B?TUhWS1R1SVpOcVBmWHVxaGNsaHVGRFh4WmF4ZC90OU10KzAwcnhDSVRoNjdEQ1k5?=
 =?big5?B?ZThNeEFWaGRPYnFIekd3WTNpeU1PaURRdmNxbmJTTUk0eWpNcE9xQmdrUTNybGZq?=
 =?big5?B?YmhkZWtlWEVJblNmNWU4eHdiR3dLcEhJNFhzVzh0VUszZUdzWVNtZjM3WlRlNUt0?=
 =?big5?B?ai9wTUIzL1lONlMvVUxnVk1JRTh1ZUFMUHdrUHpReTVMUXo0NGJQUTR3Q2o3WXVQ?=
 =?big5?B?K2hLTnBseEZ4Q0o3bjdRdFkyd1JidWlrc2lNbVBNZ3Zsb0V6V2UwZjVQRkpra2Jw?=
 =?big5?B?SzVtWVFZMElleFZ3bVIwVWlFUWo1eW5xckk3dWl3Z3k3UjFFb21teEZzRktyUzlk?=
 =?big5?B?Wkc5d1d1OUxFUS80RjFiOWtpMDVURm5VQ3U1YUVLQUUxNU5DR1RLRnNkME8ySkk3?=
 =?big5?B?V3FJRVVVNEE5Ymx4K0lTOEdnVHgzUVArdVhidW1tUG5mQXV2UUM4ZmFhOEtQby9I?=
 =?big5?B?RjNlUVJ1eWw4TWtCSEkzQldzZzlWRmJ3NmdXaDBmYUR6Y3ZpVXpydnpjek5FOWZn?=
 =?big5?B?WXQ1Ti9ZZ1BPQzFZMlhncVFTUlRhRGdsUGpudDQxTW0vVnNzTkx6dDA1aEFOV2hW?=
 =?big5?B?cENtQ1hFek9EOWlnZzNxUENCWUt4RVpWWEg3bzJVNHNRUG56STlvZ094OVhZZnRO?=
 =?big5?B?em1SdEF4b0ZPS2J5V1RCYytkMDdSQ3FLWDhwSU9EWUx2TUlya0Y2ZTBGQWc1ZTlS?=
 =?big5?B?MWQxZjJZYkNrWWY5M1FJM3E1SWpYU21EcmpFQ0FKVGxGbjlHUFErS3JQYTRmbXFJ?=
 =?big5?B?K2xlTzlmY1ZNNkV1NTh5YVlzSmdKdWI2d3diYnFTeCtqaExaZktDSmt1RW9DOHBP?=
 =?big5?B?Qnhpek1xOWVTbXlKa3dWOTBmWm1oWmdncEFTcFhFR3BrVEtSRTFyK21pSkJBWU1C?=
 =?big5?B?STAwNmNkVTBtQURFUU5jYUorajNSVmE4aGJ2ZWhveGtqRkhxT3U3QVBLdTE4WkhS?=
 =?big5?B?d0ZyUStjUmRpeUJpN0NPdVllZkhzeDZDZHYraVVNT1YwWGs4SHpRWUNXdmxDbjZa?=
 =?big5?B?UWF0Szh4d3pFQ3dISDVRc08reDNCYWJwZzFaUjVRRVlXdTlUOUtUTHZneDFJL21K?=
 =?big5?B?dmZXZHRDa2I1UFNVU0MwRlFHWEhJQ2J4T1hKcUFrSzRrbUZRSVdLbW5Yd1M4Uzl2?=
 =?big5?B?NU1ES2NNVnhjTzhVaW91a2tYQTdKa1VVakZWc1ZIMzBPN05Ud2RUUDVUQ2l3aDh0?=
 =?big5?B?K0RaSzdzVjQrRzl0R1FwN2l6bzA2OVdTSnJFOWw0UVFqdlZwN251MmRwekdJZlUx?=
 =?big5?B?b2V2RlQyOTFVcTZCODdhYXJNVllKSTB2bWpjMUlSbk1WbUdEZFhjSmlHMnR3STMw?=
 =?big5?Q?aI5T6DDBm4vz1VeE?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:zh-tw; SCL:1;
 SRV:; IPV:NLI; SFV:NSPM; H:SEYPR06MB5134.apcprd06.prod.outlook.com; PTR:;
 CAT:NONE; SFS:(13230040)(376014)(7416014)(1800799024)(366016)(38070700018);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?big5?B?ODBYUWJxTlVuakJIVHgwaXErbUJuUFJsSFJqbE92WTkrSU5PMmJ2aU83c3I4dWd4?=
 =?big5?B?M0pHdk9QVXVkUEwvQzBKVnpqM1o4MEs4aElwTzJWbkxLVEdIbjRKVTZBNC9DcHo2?=
 =?big5?B?QUN5cVhpZUNRZHlWN1Y3R2tyT2Q5NHR0TDZNQ2FzTk9lOFlVTzFaUk5aL202MWFz?=
 =?big5?B?M3EwWE9TcFgyL01XZVc3cG9HK2dYYVA1WlRyMFJRYWg1azM1aWNHK3FiMEtVSWdu?=
 =?big5?B?d1czZjhaN29PZGN2L3QrVkt0VmtJbUtJbmlzNmxSRDJzYnhlU3JKYTJ1TlkxQ1BI?=
 =?big5?B?NEtFcUVJSGNqYmVHMi9XdnkwN1JpR3Y2V2k3dHBzUkRabnhZYWxROUlQN1U0dVI0?=
 =?big5?B?Qy9YR0o0ZFdYdUwwM0dOYm5zR2NhWU5TTFk2WjVuU2tId09Gb3l6VlU5SndFWUVt?=
 =?big5?B?ZFdzdk01TWNEem1ITnBkYjhGZXIxNXR4NDF0eVg1ZVlhQU44eGlWdHVaU25Vb0V5?=
 =?big5?B?QVJ0WkQ1NVNoQVJzMTM2TW5jZ2M2QjBWOWtpTTY5Y2Y4TUd1dVhWblI1YWpxdGUw?=
 =?big5?B?YjByQzRzM0tFSldxelNhUjR1N3lrcjBxcnp6UzJIZTVXaTVSeGdLcEJUYUwxTlVY?=
 =?big5?B?Yzl1ZVhHekt5aHBJQ3N6RDhkZkdWNCtoVndleGZoTVF4TzUwdEYrcWR2YzBYcC9w?=
 =?big5?B?YXZzMHVqblZObVV5bXowZTJaekdaWklmdDBlS3F0SXo3blJ2Z1BmaEsvT3lNMmp4?=
 =?big5?B?WmtZRWFRRkJoQVpJL3d4QWUxWVg2YTZ6TmlGdDVDbnVCN25BOEE5eU8wbWtLa291?=
 =?big5?B?R3pXdXpFZFE1MDZHU3FmeUo2ZmNjcFJBbnR4SlQ2UXBGQ2d6N0VUOHRuK2U5cDJn?=
 =?big5?B?blNVK2w3NTdJakR5WS9FZjJ4Q1diaTJzckdTZVQvazQrTlFvbWFEVXhlU2d6clR1?=
 =?big5?B?SHhmcnF1bW5mL1pCQjBzc2duVGR1NzZmWEgxQi9zYjFKVDZRSEJRUmFCYmtwOHVW?=
 =?big5?B?OFNoTHE4Um9UNWVoR2ZreFRuWVB4VTMvWVBRQk5CR3VRTmtNcXRhdHZmVkdBTWt1?=
 =?big5?B?K29meGVPMG51bUNucDBBRGhYUllUSUVjd3AyZDVGa09uNFhVWElkUXNTNFhra1Zu?=
 =?big5?B?cXpVbXpFSG1aV25oYWFTbHgwb055Njc1cGZRWVkyS3ZBcVpLd2hWQ1dVTVFCRFBU?=
 =?big5?B?RmFOYTFkdzNicFZFbGhucFVhTWJkak43TWRwZTF5aXhMSkdWYnU0YlYzQnlzRUU1?=
 =?big5?B?N2pzRnp0UkhKcHhpcFlIS3FDVmRRZk5HMEhsdiswRHRSTFFNL1JJbmtndzNBb0ls?=
 =?big5?B?THdaL3owTDdlb3NRVmJlV2prSDNzSlUvVWU5cmM2ejgwb3JPOU5tRXZaZjlFSVpl?=
 =?big5?B?STRveXhiS0U0dXZkZmVaU21VUW83MGgvWm1uekpGYk5INENrczI3VFQwVVdQVFNq?=
 =?big5?B?TTFGeVlnVEQzTGdBSVVBOXZUcDNkK0VUeXhsbEJ0VG1kWUM3Z1c1QUFrdEMrdXBR?=
 =?big5?B?TmsvKzhHRFpuVE8vL1JuNlRQekFiM0dpR25YS0VzRVB0TllXc3l0YjMyWXpYbjJm?=
 =?big5?B?djhlV0RFZlRmU3RrZGNtWlNsejcvaVlSS25tTktNVGx0empCdnlDU1QrbWU5Nlhl?=
 =?big5?B?TWhIdWE3bURySkNrSUhUeTRWMkR2NGdoWHZzSWNPTVhoc05PaVhmeWREYXEwR2hn?=
 =?big5?B?V1B6OGI0UEtjSFZsQmdCdFg1SE9GUFpLem1tR0d1VWQ4Wks5Wm4xUWhCc2dHWUR6?=
 =?big5?B?WlgwSDBLVVIzb3hkUGljbGd4enRiaEhramdjdUNlb0F5SzQ2eENBZkNBYnBDSVhV?=
 =?big5?B?UUxidVI2L2lnMWJNMlpmSnUydE5IbjFlYk9YNjdKMmNNV2xHenVJbEZ3dm9FRGdC?=
 =?big5?B?ZWk0cFZNcll5cVlMYmRjY0FUTTV6TEk1eWhneXdqb0RLdjRUeFNQRkR5K2s5YXZn?=
 =?big5?B?d3ptcnBZdE5JOXVNRklFS3d0b0FtK0J4bU5NdUMrbzJ4a2EyS2c4bDRWTzZGT1kz?=
 =?big5?B?V2xVNTNid2w0ZWhRN21wM1RxSVlPVWNveGRZcnlSdFB2ZTA1c2wzNGRjeWNZamFP?=
 =?big5?Q?KM6L1A1c0NxNPVPd?=
MIME-Version: 1.0
X-OriginatorOrg: aspeedtech.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SEYPR06MB5134.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8da9f795-a645-4473-a854-08dd309909b1
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jan 2025 10:33:20.6823 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 43d4aa98-e35b-4575-8939-080e90d5a249
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QthDJUDpsDu7sk0aTARdlic7koCE3uk5ICezUFFsDfjS1//p5EmXsK9sG3kd5jr+aeoXmJkQ+ogdRcm4NZLV7M2l6HA7eWrCX3wPG4cRNF8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYZPR06MB6513
X-Spam-Score: 4.8 (++++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Andrew, > > There are around 11 boards in Aspeed SOC with
 phy-mode set to "rgmii" > > (some of them are mac0&1 and others are mac2&3).
 "rgmii-rxid" is only > mine. > > > > No one in aspeed SOC using "rgmii-id
 [...] Content analysis details:   (4.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.255.124 listed in list.dnswl.org]
 5.0 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in
 bl.spamcop.net
 [Blocked - see <https://www.spamcop.net/bl.shtml?40.107.255.124>]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [40.107.255.124 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [40.107.255.124 listed in sa-trusted.bondedsender.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.255.124 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1tVpr5-0002JE-33
Subject: [Openipmi-developer] =?big5?b?pl7C0DogW1BBVENIIHYyIDA1LzEwXSBB?=
 =?big5?b?Uk06IGR0czogYXNwZWVkOiBzeXN0ZW0xOiBBZGQgUkdNSUkgc3VwcG9ydA==?=
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

> > There are around 11 boards in Aspeed SOC with phy-mode set to "rgmii"
> > (some of them are mac0&1 and others are mac2&3). "rgmii-rxid" is only
> mine.
> >
> > No one in aspeed SOC using "rgmii-id".
> 
> O.K, so we have to be careful how we fix this. But the fact they are all equally
> broken might help here.
> 
> > > Humm, interesting. Looking at ftgmac100.c, i don't see where you
> > > configure the RGMII delays in the MAC?
> 
> This is going to be important. How are delays configured if they are not in the
> MAC driver?

The RGMII delay is adjusted on clk-ast2600 driver. Please refer to the following link.
https://github.com/AspeedTech-BMC/linux/blob/f52a0cf7c475dc576482db46759e2d854c1f36e4/drivers/clk/clk-ast2600.c#L1008

We recently plan to upstream to mainline this part about the RGMII delay configuration.
All MAC RGMII delay of ast2600 are configured on the SCU register.
As mentioned before, we would like to configure the RGMII TX/RX delay on BMC side.
Therefore, we use the "rgmii" and "rgmii-rxid" as the recommendation for our design.

Thanks,
Jacky

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

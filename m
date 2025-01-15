Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 79720A1189D
	for <lists+openipmi-developer@lfdr.de>; Wed, 15 Jan 2025 05:56:46 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tXvSI-0007Pv-HW;
	Wed, 15 Jan 2025 04:56:38 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jacky_chou@aspeedtech.com>) id 1tXvSG-0007Pn-UZ
 for openipmi-developer@lists.sourceforge.net;
 Wed, 15 Jan 2025 04:56:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KRpkm/OisHnyUp1QJCYTRRsVMyfyR1aSPP3zAmhuH98=; b=g9XrGo5u1hfz477271yB4DEtmH
 Dp7VOHwHoeqHx7aRZEavlAQ5DjWRnpenfbRVPJJyjI7m7B2iVCv+LCDZJVU/m/qhy3wgWMnyEpezG
 vLlsvXiECHISO7J5AnWXkMrnJNKxQV4NZ/PQqxkBaFBa9GJ8WRw/2A0gY674ydjQuTIM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KRpkm/OisHnyUp1QJCYTRRsVMyfyR1aSPP3zAmhuH98=; b=YI8jUTyf0yjUFzY8YV53GH152J
 0JEVmnSy2tdUn+wZMYdNlvuJny1wTOOxv/WG4AvTzeVs5ix0BiuXGpbA6cp5HX+Lkhjsdz9MVQw/B
 6gMYixNgWogw11GVowg5Fg9LB72G2FmBF231jdNtf2rZyNAve9S9WL1Pr6dVtYImRkWo=;
Received: from mail-tyzapc01on2097.outbound.protection.outlook.com
 ([40.107.117.97] helo=APC01-TYZ-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tXvSE-00063i-EA for openipmi-developer@lists.sourceforge.net;
 Wed, 15 Jan 2025 04:56:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bVEY0fIJ1xKiqtbS0lDFN/ppoj9zN3Pm9mriPQqH/lfM4xDQOwaZnM6QkATh70h6oy8XRu+tw8nlmhuzc4UuJy1z4CGCDejBl6fjDgOELhRRbmfBX0SFiW+1WqpGNJJWUzEmgVVcDt8rVDZCMgj0F7iDRROJoLlowWG5t/njOk0WGdgZKKftv0MchvsZzf7kGIds/7TAh/rGwLnkeOxqJM9DwZernbT2fa7hHeLIlLc/9iTAMxP4LCg7uwXB6w0ihPqTFJrQyCTLtO5LHh8LBGTVTq1fyOuViX040G7NKy9cQI3WX/KMNhxDtZWGEuEODe51yj2kD9wIdRQlo5jk6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KRpkm/OisHnyUp1QJCYTRRsVMyfyR1aSPP3zAmhuH98=;
 b=m5x2R3P2x71KLmHBtymm9AX+gxlWQ3HuPkJpUeFLqFhQXZ9QGoCP2LjYKOqj9j56SY8y90oxlxaXwep3unwj7VHR2mk6W5ubZP8rQhesSqJGDM1en80yNCKUaQuBB9hrSc8gshAkRgVAVMKJb1altg9tvb8tmDXy5xiG2SgAZtT2JWSPFhNy0e9mKQkN34L42bgvklCg6My2qXLhMAV6Fi15Z2J1Ik8Jf9vt0y0vtKA+U6TDrpvfxmEMheuBavzZrJz/HHbKrihHPVLhIk4WiGUHHUx3uDrmAfvm1dQ08YKrPh+I6PnPJmzYeKb9kB/ROxvaws6QEmcu3tgqSeqjKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aspeedtech.com; dmarc=pass action=none
 header.from=aspeedtech.com; dkim=pass header.d=aspeedtech.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aspeedtech.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KRpkm/OisHnyUp1QJCYTRRsVMyfyR1aSPP3zAmhuH98=;
 b=Zzb7SdjSo8I9BTZ4HROCQkyH07OcoGbS2G99KIutQifTcfuteLIu2/tuIYHr8ULsi6JFWLqpPl3tqDqv4c4aSknsNmxYtRD/m5MkZsG0LIBGrNQjUgBL9/xhUSKgOE3lj8mKZjPplPK9KYz0t9/eYIEOYuvMevst4oDh6tFE+oMVI2uhdS+ALHTD39dvwSYaRj1Esh0s0VF2uGAwcv20dW3hdhKdh2br33B82QOSx5Vd2A+EFOzuB03zmf9jKnTlknn45t+ZZ7sFdCqiBN/nIela97RZRUDZ5jLUX4LWwsAaNrChqGJT4iO+zQAlcW4KcsHPIpLS0nwV3KWMHYVePA==
Received: from SEYPR06MB5134.apcprd06.prod.outlook.com (2603:1096:101:5a::12)
 by JH0PR06MB6602.apcprd06.prod.outlook.com (2603:1096:990:2f::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.12; Wed, 15 Jan
 2025 04:22:17 +0000
Received: from SEYPR06MB5134.apcprd06.prod.outlook.com
 ([fe80::6b58:6014:be6e:2f28]) by SEYPR06MB5134.apcprd06.prod.outlook.com
 ([fe80::6b58:6014:be6e:2f28%6]) with mapi id 15.20.8356.010; Wed, 15 Jan 2025
 04:22:16 +0000
To: Andrew Lunn <andrew@lunn.ch>
Thread-Topic: =?big5?B?pl7C0Dogpl7C0Dogpl7C0Dogpl7C0DogW1BBVENIIHYyIDA1LzEwXSBBUk06IGR0?=
 =?big5?Q?s:_aspeed:_system1:_Add_RGMII_support?=
Thread-Index: AQHbYX4ZqwUnoFUOykuCVX4SkD1z27MNKUAAgABN4QCAAApFgIAAvO3AgAAxcoCAABHnAIAAB/+AgAEsnXCAAFgBAIAENTRQgACHsgCAAAOEgIACXbCwgAAFSQCAAAD+YA==
Date: Wed, 15 Jan 2025 04:22:16 +0000
Message-ID: <SEYPR06MB513402FD4735C602C5531F499D192@SEYPR06MB5134.apcprd06.prod.outlook.com>
References: <SEYPR06MB51344BA59830265A083469489D132@SEYPR06MB5134.apcprd06.prod.outlook.com>
 <8042c67c-04d3-41c0-9e88-8ce99839f70b@lunn.ch>
 <c0b653ea-3fe0-4bdb-9681-bf4e3ef1364a@linux.ibm.com>
 <c05c0476-c8bd-42f4-81da-7fe96e8e503b@lunn.ch>
 <SEYPR06MB5134A63DBE28AA1305967A0C9D1C2@SEYPR06MB5134.apcprd06.prod.outlook.com>
 <d80f5916-4918-4849-bf4e-2ef608ece09d@linux.ibm.com>
 <SEYPR06MB51340579A53502150F67ADEC9D1F2@SEYPR06MB5134.apcprd06.prod.outlook.com>
 <bcebe5ed-6080-4642-b6a5-5007d97fac71@linux.ibm.com>
 <26dec4b7-0c6d-4e8e-9df6-d644191e767f@lunn.ch>
 <SEYPR06MB5134DD6F514225EA8607DC979D192@SEYPR06MB5134.apcprd06.prod.outlook.com>
 <e5178acd-0b6f-4580-9892-0cca48b6898a@lunn.ch>
In-Reply-To: <e5178acd-0b6f-4580-9892-0cca48b6898a@lunn.ch>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=aspeedtech.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SEYPR06MB5134:EE_|JH0PR06MB6602:EE_
x-ms-office365-filtering-correlation-id: 8e20ceca-949a-42d7-83b2-08dd351c3196
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|7416014|376014|38070700018; 
x-microsoft-antispam-message-info: =?big5?B?QzIyL25GcGFzN1k1SlRsOTFUL0dCbGlrcjNQTjBJS3pOV2lUVGdMaytWWGw0WlJh?=
 =?big5?B?aFBRZ0RsN0k5N3lsQmhHUFlpa0plNWZ1WEVJQTZjeXlaQXRTM3lYZlZtZU50bVNM?=
 =?big5?B?SjhvUlJOa3pPZ3RRSTJjSnkwWFZqTFlZVHJqbEpwRjAvaVEvQ0hDTVpKQUVIejBI?=
 =?big5?B?MVcwMGowQklqaDJzdXowWFBFdzFINnhLWXpYZ1AwczQxSjBaN1BiZXpka09kbDRz?=
 =?big5?B?MGRmRzlDMHk4M3g4SytPREI0aGp3NGY4OFY4WTBGUmtrYldTMHFiM1ZqcEYyTXVD?=
 =?big5?B?WjN5bWpCZ3luYW1IekkwUVprNWlaMEJYeVBKZ0svQUlsV2tmZXNTemVYNEdmZVg3?=
 =?big5?B?UHdpYkRyVVFweDZhUGltOGoxTWRmemhhWHFuNnptTUd3WDFJd2lQRFNqR2ZMY2tX?=
 =?big5?B?NWlNSW9MTGJQTWl5S3RRVjZqN09rSUhwUS9nUWNWS25udXdrK0w1ZjlUOGRnL2hr?=
 =?big5?B?RCtuSk83UEJ2am1HdVExNTNvb09tbFBUSHhjd0dJWDZTRUphcWgwY3BOMDJ5WGFY?=
 =?big5?B?OWtWS1pwS3RlZTVJYlV0cXBmTUFabWhtOFVVVHVjdHNyR0JzVTRCK2p0b05mWXNL?=
 =?big5?B?UEl2NXI3a3FXaXVSUWpuaDZMU0xydHNwbWpyTkNvUGpsaHMvU2hTcTRXZEl4QW9j?=
 =?big5?B?aEJhUm85WGxuYzFiaWlQTGxCNlg2cm5xbjV3WityeW03WERMZVlUQ1YrRmQzMHdF?=
 =?big5?B?T0s3aHRrTjJNOXh6K25mYmFkLzMyd3FUaTNjTktKZk5MWVEvdGQvTHpjM2g0OHVW?=
 =?big5?B?OGlSRUNzOUtyZnNBRjFGTmp2cHVCblJ4WDlNNzdLRU1EVEpGQ1k0NlhESFpOTEky?=
 =?big5?B?Y1d3UW1tVThHV1R4dGlJUVh1UzJRWk5KQ0I3cnprcG9zRy9qOUlsSVM3ZkJkZVNV?=
 =?big5?B?a3hUcUlYTzg5L1ZCZWJ1dTJ3eEZvbWxZRWY5eTlESE1zb1pPVGFnY3RETDMyNG1q?=
 =?big5?B?VjRORHpYLzJmdW1lZ1I0T1VyME14NlR6OGxYK2pDbGpobEUyZnozKzBSOVBmaEJh?=
 =?big5?B?WEowU0JLbnorSCtvZ3VFSHlKZVc2Y2hVWW5NeE14K1Z1Tnl2Q3FqL1lSMmhqSUVh?=
 =?big5?B?S2N3cU1WLzZ5ZDRTR0czQm9jSy9NZWgzc1U2VmlJNmFPSVkyRWtCakprUnhid2Qr?=
 =?big5?B?N3VDTWNVYjhsM21meTVtZ2hwWW9tMXRMYW43Z0FwR1FYOUN2Z2QxdEdxZVJIWXlm?=
 =?big5?B?OGRlRTl3allVdlBkVmo2QmlSZ0htL3p6M2dBeVd6NkhVYllnY1k0WjNlUHdXdE9V?=
 =?big5?B?VTJqSk45cjlHODBYalBaRFcvSlordmdib3FXQ3h6NHpBR2R3NG5iVG5mMktMUmti?=
 =?big5?B?SmpNR2pRUDFWWEEvSHF5dWNlaWRUODhyNFRnZTdzMldRUW5qVFBUOW8vbFpkaitO?=
 =?big5?B?L1RTSlkxaWh2R3BYUVFYUi9vcG5SV05kSDY1Rzd6aWJneGtKR2VHamZUdzk5cEZR?=
 =?big5?B?dkozK2EzaXFBdnFaQnhSZVJ2b2gwOG9yWHpLdGluVjdlVVJvRFVmYi9IRjlyOGM2?=
 =?big5?B?L2hMUCtEK3dwVW9XUm94VDRXYlNGR2U1QXNLUGhoT3F1eEoydVd0Y1pqVkxkTzRH?=
 =?big5?B?TFZodjdjS21pTGc2WEd4YkFDWkczUzBwZW5OSlBFRWdNOUp5WVE5dlp1eE9jejRy?=
 =?big5?B?Zkc2K3J2WUJ5OHFicFJ6QnEvZ2ZsQjVDYU9tckpMOUhCTzJ6T1oyY25iRm05elhM?=
 =?big5?B?OTE5MHJoK3FUcHk5cXJTMkdNa2YrNG9uZWdGTktjM2EvTzFHeGdWYVZUL0EzalE2?=
 =?big5?B?SUd0c25rMXZlUVVZNXp3d3U5a0JUVTZhdUd2NzQ0RU1kWGN6dndYd0orRXpaQVZV?=
 =?big5?Q?rxqsXPM4BQ3aKKBLeMRYV2DNqoDdtu68?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:zh-tw; SCL:1;
 SRV:; IPV:NLI; SFV:NSPM; H:SEYPR06MB5134.apcprd06.prod.outlook.com; PTR:;
 CAT:NONE; SFS:(13230040)(366016)(1800799024)(7416014)(376014)(38070700018);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?big5?B?R2xZcm9HeGVub2I4SkRuQ1h4d3hWSGJITExSUGdJSlcrb2djaUVBQlU1ZHlqRUJu?=
 =?big5?B?UENVZ0EyY3duNjN6a241OUliR1RrZTR2QXJuMWZFcHZSYm55QmFHVHoyVGxCbm5D?=
 =?big5?B?MW1vUDNKUmlrY3c0VHNzanRBTjAxQzVzZStmc3hMcStTR1ZYekFUSm5leXBDTGxH?=
 =?big5?B?R25SZTVNSVU5dG9MM3d1VUd6RHJlVGpoZUNYMEwveTlFRzBUTVViRExPRUo0Wk1I?=
 =?big5?B?T3l3c2grOFphRkJjV3JBOG5pRGYycmxCdXlUb1ExSjVXQW1raDNaei96V0xlc1B6?=
 =?big5?B?UGUvS3IrTTVMZ1ZCMVVnTHdFRmMrYURzSkZBVC9sQnBqamNqd3dVdTF6cmpZYWR6?=
 =?big5?B?R056cDlwYlVISTVSTFcrZEtqZnpOQTFQQkh2N3N3ZENTQllrbm9LeEQzRnd6WWNS?=
 =?big5?B?NDd1ZUNJNkJKL25mM0ZhNWhEeCt0S0pQR2NUSW91OXplRkxBcDF3WkE0cTJiUnpB?=
 =?big5?B?MzRNcHQ5aU42emxRZElRTFpFTmdhSGJ0ZTJnL0lUK3FkcENPdlFKQlpDRVpZSEVn?=
 =?big5?B?ZXdldkFHYzZnVGVJQkNyTXFrbVNuYWlkSjJweDY3ejVoMiswekdVcHloOFUzUXZp?=
 =?big5?B?bGk0UU5XeUlta00zd2RVdEtWMktqdmVaSnRReWh0ZzJ5UU81djR0c3A1b1pPS1ZK?=
 =?big5?B?bWc1YzRmREtTVkFxUFBvd21pYWZxNVpmRGtjYU5lMDFqSWltbVkzOXdyNmpxakM5?=
 =?big5?B?TGR2emNXQ3JhM2N4T2JjQjY2RENXQkRuazNRZllGU1ZZeUF4R05yaTd4TXJSNVJD?=
 =?big5?B?cElJSHowb0poQjRVYUVlcTdJVzFDVzVMV0lHdXM2Nmp3UzQreVdaR3BtUU1wQTFR?=
 =?big5?B?VmVya21ZS3JFTzJBekdQMEFSbGxUZHg4TmxQWmpnU2JrS2JlVVJCemlYNDhmajNC?=
 =?big5?B?YUQyZEZKYUdqUjFIQzNjd09KdEVnYkxENlRwUy96VlJzV2dVM2FDYjVOaUg3VEE1?=
 =?big5?B?UnNEVnlxaUFVOWRMTWx5c29mNnFkWWw4MG9XYytLMXNsVmZrY2JrWG9HZ0czTEZi?=
 =?big5?B?YkhZVEtpNCtPSEQzc0lObEd6MTR4azFtZm1OYUpMRUhuZjlqckF5citob2JoMkxV?=
 =?big5?B?OXBnWnNhTEdoSmFyZmVNcitKL3NXRkZpK1REa0ROQmd5WC9aS0E3c05FZWtkV1A0?=
 =?big5?B?aVpRODFSdGtjb1lvQTdJT3J0YUhoUktSdmIzU25jRGdVK3E1NEhJMWIvMjh3Sjha?=
 =?big5?B?RExnT0VzSTk4b1lVUDh4T2VHV0lyK3NiUDJhM1lSeE9DSlpyNWlZY25NeDdaT3V5?=
 =?big5?B?eGlIdVNoK1JXSW9tR2haemtPUTNUK3dzeGt6dGpqc3BkVmVCU0ZiY2l0UXkxR0xG?=
 =?big5?B?NktnTUVTUDFQUU1Jak1vZHNnNnE3NkUyT1lsTnErelVhQTFiVW9VYkM4endQc0tz?=
 =?big5?B?elFUUXpDSzJKRU4wb3hlRDhQMzhRY0ZjaytmeURZa3Rxd0dDUEs5ckFwZ2xOUWZv?=
 =?big5?B?czVERnpmQXJmUkNEVFlOL2JhcmxYTnlnaDFMTHZsclAyOXpURDEyRG5UREQzcmxT?=
 =?big5?B?c2l4UmhiNWFJNnB4NnNrVW9ncG13eW51UUQwaXEvcXZhR0NOaXJaMHNLMUJZeUNq?=
 =?big5?B?WnIxM05WY0xUejRrMzlBK0RpVzhkRjVWZHpHTExqeGNnNnM1VkJORy83ZVo3OFJW?=
 =?big5?B?L2dqcGJML2VhenlERHZKMTJPUWdUWmE5Ynh5SUpjRXFiQi9URHpkbVo4Ykd6MFk0?=
 =?big5?B?Vkh6cFc3d0hGeDB2VDZ0enFKNStCLzYrUkVPaVhVa3cwSFgxcDRCdVEyTzQxT2Fp?=
 =?big5?B?QUR5a0dOV2U2U1NkbGdCdEZUeTlyNkRhZmljVWtJVVVHNW8xTmgzRG4rZk5sMmFl?=
 =?big5?B?US92QXY3am00eTFWdjRneVluRUY5bWVPamp4N3ZXMk4xSnpyVnBsWlgwRThoUlRp?=
 =?big5?B?VGlTM2VGM2tBSGlKK0ROREJJVkd3c2ZvKzI4YXlBOGIva09lSkZYZzdYQmF6MTR0?=
 =?big5?B?eEtqeDd1bFRhckhza0JLbDVMaDg2UEVvNmRDOWNxV3hoZUk1Q1RrVzA5K0xaN2Rh?=
 =?big5?Q?09fDappBkvwfCY6Y?=
MIME-Version: 1.0
X-OriginatorOrg: aspeedtech.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SEYPR06MB5134.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8e20ceca-949a-42d7-83b2-08dd351c3196
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jan 2025 04:22:16.3423 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 43d4aa98-e35b-4575-8939-080e90d5a249
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vKTu6znj+boVCyQdDoABqJvVd5HG+Qm1kotqWI9G2g5F417AfR8BgCj3z9YXiJVWyRsqzu040EMm6w+LcZB2/1L7sWOsFMfyL/zjWUsodKM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: JH0PR06MB6602
X-Spam-Score: -2.0 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Hi Andrew > > > > Perhaps we will keep using "rgmii" > > No.
 It is wrong. > > > The reason is we cannot be sure all PHYs have support
 for phy-mode > property. > > We will refer to the other MACs and PHYs driver
 [...] Content analysis details:   (-2.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [40.107.117.97 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [40.107.117.97 listed in sa-accredit.habeas.com]
 -1.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.117.97 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1tXvSE-00063i-EA
Subject: [Openipmi-developer] =?big5?b?pl7C0Dogpl7C0Dogpl7C0Dogpl7C0Dog?=
 =?big5?b?pl7C0DogW1BBVENIIHYyIDA1LzEwXSBBUk06IGR0czogYXNwZWVkOiBzeXN0ZW0x?=
 =?big5?b?OiBBZGQgUkdNSUkgc3VwcG9ydA==?=
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
 Ninad Palsule <ninad@linux.ibm.com>,
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

Hi Andrew

> >
> > Perhaps we will keep using "rgmii"
> 
> No. It is wrong.
> 
> > The reason is we cannot be sure all PHYs have support for phy-mode
> property.
> > We will refer to the other MACs and PHYs driver about phy-mode and
> > rx/tx-internal-delay-ps properties how they implement.
> >
> > Currently, we will plan to implement RGMII delay in ftgmac100 driver
> > based on ethernet-controller.yaml.
> >
> > At same time, we will think how to configure these phy-mode "rgmii-rxid",
> "rgmii-txid"
> > and "rgmii-id in MAC driver.
> 
> I already explain how this works once. Please read this thread again.... The
> MAC can apply the delays, but it must mask the phy-mode it passes to the PHY.

Yes. I have read these mails.

I understand what you mean.
"rgmii": delay on PCB, not MAC or PHY.
"rgmii-id": delay on MAC or PHY, not PCB.

ftgmac100 driver gets phy driver handle from of_phy_get_and_connect(), it will pass the phy-mode to
phy driver from the node of mac dts.
Therefore, I use "rgmii-id" and the phy will enable tx/rx internal delay.
If I use "rgmii-id" and configure the RGMII delay in ftgmac100 driver, I cannot pass the phy-mode to 
phy driver.
May I be correct?

Based on ethernel-controller.yaml, maybe need to adjust the description about phy-mode in this file first?

Thanks,
Jacky


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

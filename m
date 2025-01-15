Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 56DE3A1178A
	for <lists+openipmi-developer@lfdr.de>; Wed, 15 Jan 2025 03:57:38 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tXtb3-00039r-Dz;
	Wed, 15 Jan 2025 02:57:33 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jacky_chou@aspeedtech.com>) id 1tXtat-00039e-Ge
 for openipmi-developer@lists.sourceforge.net;
 Wed, 15 Jan 2025 02:57:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eQmB2DTezgUTlD40DXM56m5LY5vNOVFMPSg2+1BZUcQ=; b=AKwYKAafZw+2RYp/K1JtNhh036
 RXz1e4NBJNOJBTvtFBDl+dp7wo6RjCuDSMrtA7jnC5K/NwFqEmIYwQZ7eu1R4Ah/G4mXIakfF/4Mo
 y+Pm4u3dnx7huqwHXrE90kTpGEixSUIgwYyGJaJrr9FoQoU3vHrQ3vbGgHHBlhJr9+NQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=eQmB2DTezgUTlD40DXM56m5LY5vNOVFMPSg2+1BZUcQ=; b=hqA9VEmYiWkMejQy9QyWqIUm1P
 lUByBmORvldoK1JY+D1Ay0FtRdWXxcrOavxEZDYHFn93Xs96BPNZ/k4gyVIgrQ+xjeZhxmCnrFdXS
 aaSyVEiIsg4DdVbi5agrkD+M4X+njNbEY4VHDuta/icbaZCjEIEpCQUQKovwyXxau1i4=;
Received: from mail-eastasiaazon11020143.outbound.protection.outlook.com
 ([52.101.128.143] helo=HK2PR02CU002.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tXtaq-00087A-Qy for openipmi-developer@lists.sourceforge.net;
 Wed, 15 Jan 2025 02:57:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Fc6J16jpqBQ3Cuf+0yv6s9hd4jujpoUQ6IWH+SgOUx+F7mJiBvm7SF5MMkvSYDI3y5eSM1Y9atgPgPthx7/si8GNSm9peLlpFy/ijTg2LHcpovix9SFC9/bLrAlJnneCZfjbaXCQyBnQMWwIM/PEbt6M9v2ARMgVZ+Xg+6H/6okO9pB/og+7GQKBXfUmab54l4Y974TkatSKVW79qjqKFk+vfW2lz+iIJaBeOhPm/KVbq1dg7z7pIBr1MLf47S15PWY+2U61hSp6rg14SluYlPFWQboztZFEUjMoMlxzPnPpETx2xpmDrLKLChjk5JO89ZWjNKccz9w4OKuX1dHLpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eQmB2DTezgUTlD40DXM56m5LY5vNOVFMPSg2+1BZUcQ=;
 b=dBmc9n2UmPwPiRVlF+yjnKSvYv4UpIPs8KnsA2qW29Rn7F4h46KFaF9j6C5fwXEAeYNK5qwUTfnzkLx13GxlbCHLApnpz/E3/PGphARL2W1rZx/gxITADmOZghzXISiVTg1iKBZgyf+n+Jm9qZnnmPuqysn4ki/dxE5nE5AVfyryv0GWgGDOX0wM0CDQR/0zO728no2zGUz3yuCKPLwYgqvERc6FZXbt2Ht+AIBVGvSmBF9R+Uv7xdrNq+sUeowuhGS5ssXL8pfNH1BIJb66FHQKgrRq0dWsZhixeCNmDlloaOAAjbxFGcxBJwJRlQBPbDt+jqpUR3h2B4uud9164g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aspeedtech.com; dmarc=pass action=none
 header.from=aspeedtech.com; dkim=pass header.d=aspeedtech.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aspeedtech.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eQmB2DTezgUTlD40DXM56m5LY5vNOVFMPSg2+1BZUcQ=;
 b=kiXcoUsGI7A15q78i1VqLRcbFVu2zNWG2AvV0+7Eqx2gUvyaDSNlRK+uy7kpGY8S7ACn6Rfjy08NbFV0J4bta62HnooYSX3rdfpcNEgQ1fckAInBANCwY2WwY2dQ7dGIsnN7DCpcG8DPc1f037MUILfOUN1/t1GbxjjpopQLCGUX04uvfnFiUeEo/5ukK5J5K0NxtznP6KD8D0f0NVG9+jZ8SIdYtmoQ4tyC7/nK8gs/8LoWAP+Yi5WDkV30qTnK3UyNSXGhlQfPLCd0RvSRhkfh9R7Ab0KC4P0F1x+/zC2qUyepXm+YpAKPKjly7CiRbZ5u9BQ8LLB8XLHLah9XaQ==
Received: from SEYPR06MB5134.apcprd06.prod.outlook.com (2603:1096:101:5a::12)
 by TY0PR06MB5332.apcprd06.prod.outlook.com (2603:1096:400:215::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.11; Wed, 15 Jan
 2025 02:57:05 +0000
Received: from SEYPR06MB5134.apcprd06.prod.outlook.com
 ([fe80::6b58:6014:be6e:2f28]) by SEYPR06MB5134.apcprd06.prod.outlook.com
 ([fe80::6b58:6014:be6e:2f28%6]) with mapi id 15.20.8356.010; Wed, 15 Jan 2025
 02:57:05 +0000
From: Jacky Chou <jacky_chou@aspeedtech.com>
To: Andrew Lunn <andrew@lunn.ch>, Ninad Palsule <ninad@linux.ibm.com>
Thread-Topic: =?big5?B?pl7C0Dogpl7C0Dogpl7C0DogW1BBVENIIHYyIDA1LzEwXSBBUk06IGR0czogYXNw?=
 =?big5?Q?eed:_system1:_Add_RGMII_support?=
Thread-Index: AQHbYX4ZqwUnoFUOykuCVX4SkD1z27MNKUAAgABN4QCAAApFgIAAvO3AgAAxcoCAABHnAIAAB/+AgAEsnXCAAFgBAIAENTRQgACHsgCAAAOEgIACXbCw
Date: Wed, 15 Jan 2025 02:57:04 +0000
Message-ID: <SEYPR06MB5134DD6F514225EA8607DC979D192@SEYPR06MB5134.apcprd06.prod.outlook.com>
References: <b2aec97b-63bc-44ed-9f6b-5052896bf350@linux.ibm.com>
 <59116067-0caa-4666-b8dc-9b3125a37e6f@lunn.ch>
 <SEYPR06MB51344BA59830265A083469489D132@SEYPR06MB5134.apcprd06.prod.outlook.com>
 <8042c67c-04d3-41c0-9e88-8ce99839f70b@lunn.ch>
 <c0b653ea-3fe0-4bdb-9681-bf4e3ef1364a@linux.ibm.com>
 <c05c0476-c8bd-42f4-81da-7fe96e8e503b@lunn.ch>
 <SEYPR06MB5134A63DBE28AA1305967A0C9D1C2@SEYPR06MB5134.apcprd06.prod.outlook.com>
 <d80f5916-4918-4849-bf4e-2ef608ece09d@linux.ibm.com>
 <SEYPR06MB51340579A53502150F67ADEC9D1F2@SEYPR06MB5134.apcprd06.prod.outlook.com>
 <bcebe5ed-6080-4642-b6a5-5007d97fac71@linux.ibm.com>
 <26dec4b7-0c6d-4e8e-9df6-d644191e767f@lunn.ch>
In-Reply-To: <26dec4b7-0c6d-4e8e-9df6-d644191e767f@lunn.ch>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=aspeedtech.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SEYPR06MB5134:EE_|TY0PR06MB5332:EE_
x-ms-office365-filtering-correlation-id: 92da8928-5b7d-40b6-921f-08dd35104b31
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|7416014|366016|38070700018; 
x-microsoft-antispam-message-info: =?big5?B?RUI2ME43RGVlcEFxcVJmWHJmMkE2bkx1eURtZkFtSnVpejZLZ3RSbWZabldJZEJC?=
 =?big5?B?ZVk3WUw3NzIxdS9mUFVnOUtqbS9JYStKNmVnUU8vcjAxVHV2WWg4Y0hReVo3M0V5?=
 =?big5?B?a3JiWms5L2FUYW1yOGswNnd6S1VUa1VKSk9Ncm1hL0QvSGx2dUo5RHIrSS9rQ200?=
 =?big5?B?NGlqTGNhajlBc3RmeFFnYzdvNEF5SHRYYmZDa2xqUSs1RGQrSDRGdTJrb3dybUw4?=
 =?big5?B?Q0hJZ3dqYlJoUG83L1c4QkYxZWNPV0oyWFB1SW45SEkyMGZlbkVSNFprRlM5eDlh?=
 =?big5?B?dTBkMld4YjVKREVaeXBHWWlwZmJNUmcxSDhmTk1sa3JmblROUklTOXdvQzV4QjEy?=
 =?big5?B?OE1XNE8wTHROZlVmcnJMT0FXQkJwMlM1T2pUQUVWNUZhdkZUdFEwb2FJWUcwWWNK?=
 =?big5?B?SDdya3o2Mm8wRWFNRVQvcUVpblVMQVZxWkZlY0VMTG5tcldJR20rMXQ3bFQ2U0M1?=
 =?big5?B?ZHFQRk1McEtEWFBwd0pYdkthdUdqbi9yclIwUERrWjhHNENGYVlTdGx5RU96cjJB?=
 =?big5?B?d2pSeldsWVhwelNaaEVpdCsxazl3N2g2SE5ISUlCOFpiZDhHOEd5cENudjZKdEJU?=
 =?big5?B?a0gxTHR3MCtQYnFYS0VKSGppMUgvNkZZRWc1dW9QczdKRHp5RmFhVzVJcXEwMVVP?=
 =?big5?B?d3dyMVlwa3NIRzlBTUwzQmVLVStnYURUUDNPZnVRUHp4RkxrUk5sVG5TT1AzTzlW?=
 =?big5?B?WWhEZ3FrVUJuWHJkZllmbTFQNXVBVlpJNmp3VGdCakovWWtQMVArVlozNmg1VUV5?=
 =?big5?B?YzBBREpkRHhEdEVvdEFOOS9nelBrWXhhUHFRRTZCUVR6N0VFMmNaOWVRV1lrOXdN?=
 =?big5?B?TllVTTBUUDFQcnZiTXc1VUNNNE5WYTliaGlMSC9uSEM2TnpUby9ZdXpFcW1DdXQr?=
 =?big5?B?NWhhc3NXbTJ0N3BCL2RIL1ZpRjNISStMT2dwRmg4R1F5dDM2R2FzVXNJbXlXZTBT?=
 =?big5?B?WHJKSUZ2NXdjbzB4Tm9BKzYrK2JNZ3E5eWtNaXMrSzFlcnBEMW93L1EvUnlXMVl5?=
 =?big5?B?RVZrcVN5U1lTbzFCQWVnRzA5ZFRxWWNvU3o4NFAwdXFaZXFwcUhFR0xUQTd3VmVJ?=
 =?big5?B?M2JlWFNyQW42ZnFYRVVHL3JiN0tnLzF5WVhTY0REK2FsaXIzYWpmam1YdTJoZlp3?=
 =?big5?B?YVU1RG9WbEtITjAyNkFIWERNY2RQanBKalFaWlpSank1OWtDQWhZcFBhcTZweW5a?=
 =?big5?B?cUJtaE5kVERGcHBBcEx6SkFCc2tnR3Q5TzdpVW82RlJHblJ2SXljd21hbWlwL2Z3?=
 =?big5?B?M2lyN1QvRkNiL3FPdS9OWEFYNjBFbDROakVRRFBRSTR5UGRDeTg3Vm5mVk9yVi8v?=
 =?big5?B?REY4aTNUcEk4SVZzQ0krbEdLZzkyRnhIcU92TUQ4c29tM1RDaU9qcmZRWW9sR056?=
 =?big5?B?TDR0eUxXVFVWR2krdmd5Ti9wVFpHOVhxdEllT2xXRWd1TkZid3pWVDRjMWNEUUMx?=
 =?big5?B?aE5iaHpvVVNwWnl5b3lVczJCcUVNNmx1azlxdmR1djV6aG8wQkdPK1UzQklqSFRh?=
 =?big5?B?SkphNjEwdm9LTnpDdFB0UDVTVXpIN2VWY2F5MnR6ZmFqU1o4VzZtaGVla1lOWTZ6?=
 =?big5?B?aCtacE5UNnlnWkJkQVVZWDZEWXo5Q0xDUmdPQ1ZETytLdEwvTkV6MTM1QVAwNDJK?=
 =?big5?B?Mys3aVdOWWZRV2hRdXRqVUs1Mm1XUDB5L0NkdEJDSWlLWmdZZ1lhMm9xMWtqZXdk?=
 =?big5?B?dk0wOWxkNllQNTlLcCswcFV4QW90bldKcHRmRE0vaEE2UFQrUDEvSVJ6ZSs4Q0sv?=
 =?big5?B?eWQvUUtOeFhvWTUrdTJGQ010MmMxNHRuaE9YZEFMQUJmdTZ2Rll0QXNVYVhKSnc2?=
 =?big5?Q?Byiqz6ys1z4=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:zh-tw; SCL:1;
 SRV:; IPV:NLI; SFV:NSPM; H:SEYPR06MB5134.apcprd06.prod.outlook.com; PTR:;
 CAT:NONE; SFS:(13230040)(1800799024)(376014)(7416014)(366016)(38070700018);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?big5?B?RVVSYW1KL0VIQlBtU1RycS9jR01ZalBHRXpNcFRXZklwOXFnZDNORDJRVFA0dXNV?=
 =?big5?B?MTZXcWtmNkxRclNrL1k2b0laV1VEU0JiNUJaY2lncXBBcWVNcFJKcDZCUFNRNHRl?=
 =?big5?B?WnpvZFNld0NFb0VmN1YrODQ0eDYyenM2ZHZ2L0kvZjJoMFY3VzlaL1cvWm9wQUpD?=
 =?big5?B?TjVVQ0R6MFp2a0hlU3l3QXpYYVhzRm9tQ3Z1ZGYxTFhES0Z5TG1Vc0NhNkgzY2RI?=
 =?big5?B?VnpYdHhQNDZzQnhqRko5RHFlZHI4eVpxcXNLU1VmRWIxdG9Od3FVWU53MlVhQTZy?=
 =?big5?B?VjhmNnVzc0Q5a1FwL1VZRU9LSE0rTW14V0Uza0x1bWNjU0pzODNDTktCaytHdmpn?=
 =?big5?B?R0k1Q3JHcGUzeE51dnFpSFNYdTFRNHQ2cXdScFE0RXpiZlMxTHdQZktiYVB6REJV?=
 =?big5?B?RzA0MVFQSTQrOHVCZnJ2Z1R6MWsrbVZJamdjZ0xhZHBtRmc1U1B0NXFudXdiTm04?=
 =?big5?B?TEtTQUpLUm81WmpZM09LaU93aXpKejUvbDVpcldGbHl0dUtIb01SMmp0c29NVStr?=
 =?big5?B?d3RyWis5Rnl6R29sYmludlE4cmw0MkRFV2tEMCtiV2dqeUJXM2tiY1c5L29qck81?=
 =?big5?B?OFV2L1EwRitsVTVhU2dMOStBY0VvOXVtdlA1L2hnRFU4SkwrUXBtTUx3RUZobGlX?=
 =?big5?B?Nzh3MkM3bnh2M3Z4NE1ydVM0dXFzVzR0NjRQR1UzeUNXbmt4SFpXL3ZTUkpOeUpj?=
 =?big5?B?U3VCVFhNenloQ2RaS09rZVNsa3dpbEhKQ20vU3pqNERiNEhDZU10eHRDTHhkbDU0?=
 =?big5?B?TXNPQUYvYjZKTUdnSm1rbzNnTS9Dc1hBUkJnMHlKUjZ4d2hRTmhqRzRmYmdZMUNE?=
 =?big5?B?UGlMSnVUTVhqS1NmRWFybkVmZFB0NzJURyt5aFU4MUhWcTQycFdBclR2UTJIMXdO?=
 =?big5?B?N2VybFhaUGRUdHFrUlMzUUNWa25NWFdaTnBOVXJxZWQ2S1pFOURFZkRNTHR1RWJL?=
 =?big5?B?ekxpcmtvcTBkS0tSbk1HVVpRempLL1QwaGJNSit5eWFncUQ1RFFCTE9iOHRXOVJv?=
 =?big5?B?RDdoaVFGOHIydFZYdjRQTFhMdEZZc1ppZmFqczM2T21XTVE1WW5oTTBLd0d2OWdL?=
 =?big5?B?U1NGcTZ0OVIxNzhxRU9NbkZ3bVVJKzM4UDBReGZoT2VIVkh5VU5XVDRDalBqRXRP?=
 =?big5?B?c1E0MEEwTGkweDF0aHBlQmxwQm9HWnhxNTMrZk1WTDRWZGNnY2J6U1Y2bm1CS3I1?=
 =?big5?B?b2NOd1duWTVNejNYTUl6alNMQWlZaWhqN3N4UXo3Vm1xM2NWdWJ4ZzRlWC9VdzVk?=
 =?big5?B?L09iR2RsMFh2eHVHZlJlUURvQzFsUTIxazJac1ljT01mQUtVMXBFbFN2WmlZcVdH?=
 =?big5?B?R2NmN09RakMxM2tHYTlZcVhlUW9PNzh4YmhLZWY5T1JEKzJTVnNySUtCQTErMy9T?=
 =?big5?B?VVdZSlM4Z1JQelFkcjNhYjBmODBWM3FCUjhySzc5a3cwdzJsNVo4azVhaVowSEhT?=
 =?big5?B?bjI4SFhHbjRUdEtQOE9LclRFSG5BL3pjYkgvVU45elVseHVwYzlyRkRPSit5THor?=
 =?big5?B?Skc5WmQyczhRSkZvOGhsS0VUcGxMTlRwZ3JLQk0wN1E0TWtiZ1hlaXJmMDg2Ny9F?=
 =?big5?B?YUxhK3VEcSsvWmRWVmFMcTZoR0pQcGJEb2tiZnpYWVU1VHZlczZHN09icEpOS0xH?=
 =?big5?B?dWMyREkzcVByUnlMWGdOaDJCOUNZSFVpY241TEFQTTZkaytYdExCNmQwNmIyVXVh?=
 =?big5?B?T1dDMHBhb1NRamZxT1ZuanNDVjRXYzNucVV3d1dORGcwbTI4OFp4b1prSDJVL1BL?=
 =?big5?B?NERmUTB2aXV0b1pPZ2x3VHdpN2ZmMmU5cElFTE9DZ3ZuTzkxWSsyR1dNYkpNVTRy?=
 =?big5?B?TnU3U3pDbFIrOVp5ZHhEUzk1c1RkSjBiVXZQUDJsYysyaWl3YUtWOGRZV0pMVnlG?=
 =?big5?B?Ymt4YnFQWHlJK2NiTWRweVdOdDlTK0VwdHMxNm05Nlllc0JqK3J6d1kvSkhaZ0t6?=
 =?big5?B?VGxQZEIyWEovcEJQcm1hMkQ2Z3VQV20zaGZrTW1IcEZnOEVFUk5mMCtnT1JDVERX?=
 =?big5?Q?k7Ug7UCqzJnYloEp?=
MIME-Version: 1.0
X-OriginatorOrg: aspeedtech.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SEYPR06MB5134.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 92da8928-5b7d-40b6-921f-08dd35104b31
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jan 2025 02:57:04.9156 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 43d4aa98-e35b-4575-8939-080e90d5a249
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zsrfS+pS2o3uHWUiAWiX6c/+IfUd0Hijn2JHJfn9/1uh2o/EWmbFlpk8M/MGFF/SbnFVySnG24F/8PPyZWH9Eyn+j+W0rbpw+dT8SBHs3VM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY0PR06MB5332
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Andrew and Ninad,
 > > > > Thanks. What will be the "phy-mode"
 value after you make these changes? > > > > Will it be "rgmii-id" for MAC1..4?
 > > It should be. Perhaps we will keep using "rgmii", still add RGMII delay
 configure on MAC side. The reason is we cannot be sure all PHYs have support
 for phy-mode property. We will refer to the other MACs and PHYs d [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [52.101.128.143 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [52.101.128.143 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [52.101.128.143 listed in bl.score.senderscore.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1tXtaq-00087A-Qy
Subject: [Openipmi-developer] =?big5?b?pl7C0Dogpl7C0Dogpl7C0Dogpl7C0Dog?=
 =?big5?b?W1BBVENIIHYyIDA1LzEwXSBBUk06IGR0czogYXNwZWVkOiBzeXN0ZW0xOiBBZGQg?=
 =?big5?b?UkdNSUkgc3VwcG9ydA==?=
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

Hi Andrew and Ninad,

> >
> > Thanks. What will be the "phy-mode" value after you make these changes?
> >
> > Will it be "rgmii-id" for MAC1..4?
> 
> It should be.

Perhaps we will keep using "rgmii", still add RGMII delay configure on MAC side.
The reason is we cannot be sure all PHYs have support for phy-mode property.
We will refer to the other MACs and PHYs driver about phy-mode and 
rx/tx-internal-delay-ps properties how they implement.

Currently, we will plan to implement RGMII delay in ftgmac100 driver based on
ethernet-controller.yaml.

At same time, we will think how to configure these phy-mode "rgmii-rxid", "rgmii-txid" 
and "rgmii-id in MAC driver.

> 
> > If that is the case then I can test it with current configuration
> > which may add extra delays in the RX from PHY side.
> 
> I would then expect traffic will not flow correctly, and your see CRC errors,
> because of double delays. It is however a useful test, because if it does
> somehow work, it probably means the PHY driver is also broken with its
> handling of delays. I don't know what PHY driver you are using, but those in
> mainline should be correct, it is something i try to review carefully.

We will submit a series patch of RGMII delay in ftgmac100 driver to mainline.

Thanks,
Jacky

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

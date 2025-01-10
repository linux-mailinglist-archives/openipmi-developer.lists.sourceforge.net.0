Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 65AB3A08C08
	for <lists+openipmi-developer@lfdr.de>; Fri, 10 Jan 2025 10:31:18 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tWBMH-0007aY-4a;
	Fri, 10 Jan 2025 09:31:13 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jacky_chou@aspeedtech.com>) id 1tWBMD-0007aL-Qf
 for openipmi-developer@lists.sourceforge.net;
 Fri, 10 Jan 2025 09:31:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=t1qkVstBRUb/jmzKNTV7K5GZPOBxmkRLMxqfvfYtoAw=; b=fft21UqsJGyEET8oCFImNP68l2
 zZE/hUTIisQagJDQ0l6iVFXhp61OJLFwaoq9dT4oGClc4pgs5m+X6jYO+hoGm5Y4cXdpOtDPThK1V
 lB9eoTZyErNkaD5XKCZA48sXoHfHO9ifwlr0WjRnUNFoqR59R5ZBaxtEeH+X3nfiEUDw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=t1qkVstBRUb/jmzKNTV7K5GZPOBxmkRLMxqfvfYtoAw=; b=AIZ1+UURj/i/9wSsEj4Cj/EhrS
 AOEszeLUA5yOcp+XW/6thw7sApy2DmP0NTRQmYX50DKULTaNBwhXl5rn5N8/R0Sj7wf9G7mcC7r6T
 Ke1RK23myfTdSIKkmXSlz97SSsnV9GJuBNvyDal6QHAh6JSm5ZGGEnkWRC6tiaXTetOg=;
Received: from mail-psaapc01on2102.outbound.protection.outlook.com
 ([40.107.255.102] helo=APC01-PSA-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tWBM9-0000mw-Le for openipmi-developer@lists.sourceforge.net;
 Fri, 10 Jan 2025 09:31:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wxM4u/YkbIpGGr3q3tuleMqh5VHE8R0o44E9vf1x2N8tVirlMXnjL15qmeEFiDRSNsLykWEMEEbx9debT4AQZTWj0o7bLO55XjdthDbB3/svrUTTGzQhthjrFyH0hvQYoTrXhGslOXrgM048wtUCNQKZcr9vLGw1mHMXPOye1VBwvykW5bPTyRWLFD7XgXhxFJtRu+/9da0Ru4hmm/1H81POSEQFJw2WwKQ7DeU6wxnlTLIBtGjyBnx1LnP7NdRU5ZeZTpa7/LPRkiFYTNpG3KVaV83R7XYWGdNT2/V+8QTbQ0OUZgFKiJQA1Ri4Elt+M16g8jWw5/iE3wOoltKlvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t1qkVstBRUb/jmzKNTV7K5GZPOBxmkRLMxqfvfYtoAw=;
 b=l8x8LAqZ6xwkVRW2scrRQ3EBJBlPo9vGv1VzsAn3qRWx8OC2l004xMQrc+2XxMX0j+aQYDFreeZNp00pJW7EeICzdRYqagHFsPUuaiqr8RUpRSrva8ASDfnpTFA1f7/gRH9ieT1K14Zk29FJUiDcK1SWQfWo4f3NGJwTHviOqhQwZPBOhsuHYsjpYCHm7w5kTc2rkS2ViJhOfE1lXOCJg0Q2mQqbh7HYiU0v0MIz3Vf3UsLFLDmwa+FkisJXK/g+Iut+e9c2QdBbeyTeVaBWixd+aBMK9JirKZtL6X7BhJ5FrteW+tEzmwz1jc9+AFVkJlCx7N3JZkw1kULbY4pwYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aspeedtech.com; dmarc=pass action=none
 header.from=aspeedtech.com; dkim=pass header.d=aspeedtech.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aspeedtech.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=t1qkVstBRUb/jmzKNTV7K5GZPOBxmkRLMxqfvfYtoAw=;
 b=fsuI5Cvz+hLzPhcruoyksrgEbs5j/An9r1GXTgSv2S7khka84+gbsHHhCYfYDPQajVtSB/6/2YpJNVHc7qWCCLg/KuYt05C50g4mNcdpMXt3jHSEnVw4Jk+ksXBLBKHrtW7OUDLkS9jvyKtKiuAaDmX1K6K/x2g3ykEZYUMyK/1RX0ryX7pySxkIzXnncVjItIc0y7lMBPL8cWXBvLEZFhnbRwqiGjquG4GghTZKSCPDQJ5Jz1Uip0VVtNseZqC+xYpRY7N9JGZZDbOM729tpmTGfWIUWR3BTu0L8lyzw8kZN8O6A0D6C0kn4qrf6xXw9dPKgO7UJ0HCPmv3Q/DTOw==
Received: from SEYPR06MB5134.apcprd06.prod.outlook.com (2603:1096:101:5a::12)
 by SEZPR06MB5070.apcprd06.prod.outlook.com (2603:1096:101:3a::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.11; Fri, 10 Jan
 2025 09:15:17 +0000
Received: from SEYPR06MB5134.apcprd06.prod.outlook.com
 ([fe80::6b58:6014:be6e:2f28]) by SEYPR06MB5134.apcprd06.prod.outlook.com
 ([fe80::6b58:6014:be6e:2f28%6]) with mapi id 15.20.8356.003; Fri, 10 Jan 2025
 09:15:16 +0000
To: Andrew Lunn <andrew@lunn.ch>, Ninad Palsule <ninad@linux.ibm.com>
Thread-Topic: =?big5?B?pl7C0DogW1BBVENIIHYyIDA1LzEwXSBBUk06IGR0czogYXNwZWVkOiBzeXN0ZW0x?=
 =?big5?Q?:_Add_RGMII_support?=
Thread-Index: AQHbYX4ZqwUnoFUOykuCVX4SkD1z27MNKUAAgABN4QCAAApFgIAAvO3AgAAxcoCAABHnAIAAB/+AgAEsnXA=
Date: Fri, 10 Jan 2025 09:15:16 +0000
Message-ID: <SEYPR06MB5134A63DBE28AA1305967A0C9D1C2@SEYPR06MB5134.apcprd06.prod.outlook.com>
References: <SEYPR06MB5134CC0EBA73420A4B394A009D122@SEYPR06MB5134.apcprd06.prod.outlook.com>
 <0c42bbd8-c09d-407b-8400-d69a82f7b248@lunn.ch>
 <b2aec97b-63bc-44ed-9f6b-5052896bf350@linux.ibm.com>
 <59116067-0caa-4666-b8dc-9b3125a37e6f@lunn.ch>
 <SEYPR06MB51344BA59830265A083469489D132@SEYPR06MB5134.apcprd06.prod.outlook.com>
 <8042c67c-04d3-41c0-9e88-8ce99839f70b@lunn.ch>
 <c0b653ea-3fe0-4bdb-9681-bf4e3ef1364a@linux.ibm.com>
 <c05c0476-c8bd-42f4-81da-7fe96e8e503b@lunn.ch>
In-Reply-To: <c05c0476-c8bd-42f4-81da-7fe96e8e503b@lunn.ch>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=aspeedtech.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SEYPR06MB5134:EE_|SEZPR06MB5070:EE_
x-ms-office365-filtering-correlation-id: ab8cd4fc-3d89-492e-760f-08dd31574c40
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|7416014|366016|38070700018; 
x-microsoft-antispam-message-info: =?big5?B?R2xsMjJzelNRQm9uNkJaeTVTZ0ZWQnNPS1dML0liUjZPaUVoLzdKTDZsYTRwUW00?=
 =?big5?B?MFN1NkxIOE1RS3krQVNYc21HbmRQSElxU25wQnhsaDY3S0RXSVdBZ2t2Z3VOdnM0?=
 =?big5?B?WjdXN3FGM1JEZVVid25XNWoyY3hjZzBlQ2FqNGZUdXdneUxUcXRySGNWN0lQSXNJ?=
 =?big5?B?K2JzV1dNdnplRzdzYXpsaWxBMmp6MUxxRkJOeWZDMnAva0xYVUduTDFGa1RkMUNn?=
 =?big5?B?b1UyV0c4cCtDMHFFa1FQQmpTU1BjTVUyc2ZNZGFMZHBrZ3NyRVJEemJvT0ZlUUNL?=
 =?big5?B?dW5TVkFxT1QvWGxwb1MwWWxhZDJOMkdYaTQrYmp3R1VMWUt0YXBwOTQ1Q2dicnli?=
 =?big5?B?VXhSdUhVNXcrSHU5M2I1S0dmSU5NY1BOMzZJaVFDZFlOSUNocldGNlBjRnVRQmYx?=
 =?big5?B?eXp1VERDdkhabXhjZjNYOVUveG12a1g1QXhzQ0haTGhsU0t1MFhkbm1GUmsvYWJt?=
 =?big5?B?cmt0WjE3YjNVNVZJL3NkVXdtK2dhUVRrdWpSNWZ6Kyt4SGptd01KaldvbkxET21O?=
 =?big5?B?dGF1V3FTWU8rQVR2aERIRmxDNnRKcFFJeVE0emREa0kyeUcxZnNCRG9hOUppd3lP?=
 =?big5?B?c0hpcENkRDNqellJakpjK3VJSEJjT3A4NTZPeW5VSTgvYkZGOEpGRHZKaUpoa0NU?=
 =?big5?B?L3JmajJoYnUxRHMrSUIvZDBDMC96REpVNUxkcndXRS9HVUV6QnkvS0N0SGFJU1JY?=
 =?big5?B?VUd5c3NKMjFCaldaei83bVdFVVE0V0VOcTJMYVEyQkhzS3VrNHhaYzNkQUVuUVg1?=
 =?big5?B?MTVpcWlhbmRUMGhxSVc5dEpXVTVnL1NNVC9NdTI3clFrc01VdmZ4WkdBT1h6ODhk?=
 =?big5?B?ZGtMRUYzdG9URmpuc2VkcEJ3L05qNzNwR0ZQb1hlZ2IzR2V1dGlHRzd4SVUwVTlW?=
 =?big5?B?VzdZOVN3OVpYanF3ZG05bml1Wk9EeU96VW0rTnI1QzRsazFQSGdUNGpuWFhNOVo2?=
 =?big5?B?MUxNT1J1TlIwcWgwRnNUd1FwR0dsTnhZangzbmJXdjBMWFRndC9Pall3RzFRL0Jw?=
 =?big5?B?ZFA4MExNZ21IVTFrd3BnQ3hzNEF1VHpIVjdacTRYM0M5TFZyVElGaUpRdG5TWFRZ?=
 =?big5?B?bDlWVHBqbVBvbEV4dUlLbU9tcW1Edm1yZHJZMzRSVTJhaFNTY2lYMWUySWlyTTN3?=
 =?big5?B?QTJKL05sRE55TkxCL2FEQWtQYlV2UExwWGlsbHpUQ1JtZ29ZRDlqd3QrTmFXNXg0?=
 =?big5?B?NHM5RlNIQit6b3Q0aDQ2QTJoekJmcGRxdElzd1VPcGRreTl3dG84OVpQY3dUdTF6?=
 =?big5?B?aFFWR21HSVNZVWk1bGxsUjlaaFhCMVBUMldhZzVzaUVmci92bmpGSXNTYW9KbHVl?=
 =?big5?B?L3AyWEM1MjlVYmVZZk9jQ0RhU2ljdmUxVG1vdURWVjdyeExEUXZ0RjdLSWhsNzJr?=
 =?big5?B?SHZKMnIyV3RuQVlwa25sZEl5L25IV00wSW5mSEpnNEVWdzZBaEFDZnN3eGlORjla?=
 =?big5?B?ZGlqdjdFUGJPcXVQM09nUTNnNGJQTVFTemlYbXN6ZGp3SWNvcmhPVEpJSTN4ZmE0?=
 =?big5?B?dTEzZHZ5Rk9NM2NETU51OElEUXc5a3ljNEZsdFZjZGptZS8yMmtEV0dRTkQyRTUy?=
 =?big5?B?MEthakhZVnJXeWRPS2x3MEgvaWV2eVdKaGJwaDkrWTRyb3BRT2ppTkN2SGM5VGtl?=
 =?big5?B?R0JNSkYxSVVqRFlUd09ENkc4ZGFTRjNlSnJIQzZvWlZ4ZjVXN05ZNHBPdktnTmc2?=
 =?big5?B?VWFTbXh6dHAwQ1VPM01kMnlkbE5CQ2dMVEgrRkVnTGpGVXI2OE5uSGkzN2VLYlhW?=
 =?big5?B?Vjhva0tmRlNaZEpaT0lLVjJVUXYwWS9TcGEzd3dtMktWclA0dWc9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:zh-tw; SCL:1;
 SRV:; IPV:NLI; SFV:NSPM; H:SEYPR06MB5134.apcprd06.prod.outlook.com; PTR:;
 CAT:NONE; SFS:(13230040)(1800799024)(376014)(7416014)(366016)(38070700018);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?big5?B?UVRwV3FnN2NTSVlaWTVPQmp1MGYzVzEvUXI4K0QwWmt2VHFWNU96NGU2V3FLWXJB?=
 =?big5?B?RDA3RFEwclQraFdIL1IreEYvUk9ORVNCai85Rml3d05QU1BTdWwrTUlqd1hlQXhs?=
 =?big5?B?clJOVWxzZTc1WTg3VkIyY0xodWhBamJKNnNUcEpMU2EzeHdDa1FKUEY4MHFVNGxk?=
 =?big5?B?ZEtHb2pHc1B0RGhKY1Z0YmN6TWpVZ2RFdko5c3ZzU2V0ODRzVUNrQnNmRjBXekYy?=
 =?big5?B?MzhhNmFmaDArcStMcGR6b0VEM3h4Q0tGUjNYWWFRRk5oRWt2cFRzWHUwUWN5RXlj?=
 =?big5?B?aFpraXZnUEIzOWNjNVVLdkNiSjNuZCtqMkZHZ0kvYlFPTEF2NkJ2Mm5DQXRpZFJ1?=
 =?big5?B?UFlLbUtYSVdGdnd4M045bWpIMDU5WjY3MW9ic2lqYTZ6OHpXdTBaRk1Ic0FvaTNW?=
 =?big5?B?YS93MjZDVkd2L2x5TlV1WXRQYmRIR014ckZROTBvNU1XdFAvVUFqYUR3V1hRWVUr?=
 =?big5?B?NkdKR0FyZGYyaytjSHY0SkFGQk8vN3NKYmQzUGhKbDc4bE1RVFd1Y3N5dTFCOFdR?=
 =?big5?B?aTJmRTRHWXNuQy9MWERxR2drSHVkc3ZhN1hmK3oyZ2NHS01KME9Mbkp2b1g0UDls?=
 =?big5?B?dFJ0N1NzQnpsREh4K0ozeURCOHBxVEowNzBLdFpyU2VtSVppUlNVV3hCYVNGY015?=
 =?big5?B?R3NsM1VGbEd3Y1duVGZKQVdYTWdEbTNaNGM3QVFPQTdRdGNSTkowbkdOeHYwNFNu?=
 =?big5?B?czFpaGpObkd3YkNiZVFmMnlic29LdUczWWU2Q3FBUk9kWnJxOWhWemZyMWJpbWJa?=
 =?big5?B?NVpLUlhOS2I3ck0wVG0zSXFGb2lOQ3hHNTZPMUZ3cFc3MVQycUQvY25aUGFjeko4?=
 =?big5?B?UVcrS3YwOSs2VjlyWEU5akpLVS9ZQWFhVGJseGJyYmxZWVVtS0t2bUc2dmZReFZD?=
 =?big5?B?czJ2M2FuWWMvK1RVQkpUc0tacW1TcFRSYlEzUWJGV3dTeUszUU56SXh5cUhNK2J3?=
 =?big5?B?RUl3Vm1aZXIveVdqY0l4dXFWY3BsamlRQSswODZsM1QzSG81ZlBubm1LRnlPbTl6?=
 =?big5?B?RDVnMVNHNE1henJjZ3hiRDZ5R3FQODJmSjZlaDQwbkNlL0NBc3BHSWFQVVcwK29x?=
 =?big5?B?R2kxQjNNVWRaUmZ1Sk9SZ1J4TDdGRisxS0hLcEtWMFlqUVJMR1JDL0lXK1B1WDY4?=
 =?big5?B?ZThqVXZzQXorZU4rMjlvRng3OEcwMHo2d29seUdrR1RlQWFvNC83YWdDdkdZTzJN?=
 =?big5?B?OVVIa0xmQUUwMXBCV0JqeDVvcFFHZGdMN1pQanZ1ZDAyWXMzY0d3a3QzNnZrcHVa?=
 =?big5?B?YnpVV0xKMVZhNVpsUWtqc0JXVUtRWWZyM2dSbVhlWmJOSUFvR3JZcEZ5QU9nOGRu?=
 =?big5?B?dmV5bHBqMGdteUM0Vyt0YmxTazRvT2ZTQ1hrRzF1SWpSNVN6ZmlZVGU3U2dNTlY0?=
 =?big5?B?KzhBbnFBQzZ3VTlsZVFVaE8wa1JYeWduci9ZN1AvUUdjOG5vc2crNjFTVUlSRlFQ?=
 =?big5?B?WStMc1NjTmYxdXF4MXZsOGFiMDFRYlFKVjErQ0FTN3JqMnRBanYwZlhGcE0xYnpH?=
 =?big5?B?VlErVkpnZ1FUWEk0VmFrQ083bWx6eDVad1RsTnlWMWRvK29rQk5DL2hUb0t6Z1Vs?=
 =?big5?B?S2hOQjAvanVDa2dtZnEyUXlFRllKWUZHOGEveVRBdEE5N2VIakpKcDBjWFBRNll0?=
 =?big5?B?aWlOZDhzVklrMC9CTlBYM3drSit1eU5acFl2dWlBUis1cys1alNKMTI1K0VxaUZt?=
 =?big5?B?MEJZeDUrZXFoeHdOc0RYVVJQVUxzQ0QrUUpKRjlXakxmdjd2WW1IRjdhSDJ5Nmlp?=
 =?big5?B?a3FSLzBqVlF0NDB6UzJRMUhpekRSd01vQW5JYzBiQk9rak1nRTh4QmpQQ1hnd1RP?=
 =?big5?B?WXIyVGsyc1BtdER1ZTR0Sm85MTV6aUptNzdXWktvc095dkZIaFArN1lPdEZiQ3g5?=
 =?big5?B?VytWNjVxYW9lZk9PeTVPSHg1b1Y4ajBpMGpBYVREbGpPTHZNUmsxbE01RjBldE9M?=
 =?big5?B?Z1RJSjFHYkNGZ0dLTk1xckZmOEJ1YW1ub3Fnc2VoM1FEWTkrZnRFZTloVlFxNy9y?=
 =?big5?Q?0W9kh+hV6ufPG65e?=
MIME-Version: 1.0
X-OriginatorOrg: aspeedtech.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SEYPR06MB5134.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ab8cd4fc-3d89-492e-760f-08dd31574c40
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jan 2025 09:15:16.7278 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 43d4aa98-e35b-4575-8939-080e90d5a249
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: F8BXask49Gd9Wj5zKMHeJF6xckVrWlQ3nqOznT75T0ODbKK+39BvhIJd6SECAD1DVj0YsOblC3BLXrxk7lqmLl/LUB+Z/W15qiXvtgGI+Tk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEZPR06MB5070
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Andrew, Thank you for your reply. > > > > I think the code
 already exist in the mainline: > >
 https://github.com/torvalds/linux/blob/master/drivers/clk/clk-ast2600.
 > > c#L595 > > > > It is configuring SCU register in the ast2600 SOC [...]
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [40.107.255.102 listed in sa-trusted.bondedsender.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.255.102 listed in wl.mailspike.net]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [40.107.255.102 listed in bl.score.senderscore.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1tWBM9-0000mw-Le
Subject: [Openipmi-developer] =?big5?b?pl7C0Dogpl7C0DogW1BBVENIIHYyIDA1?=
 =?big5?b?LzEwXSBBUk06IGR0czogYXNwZWVkOiBzeXN0ZW0xOiBBZGQgUkdNSUkgc3VwcG9y?=
 =?big5?b?dA==?=
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

Thank you for your reply.

> >
> > I think the code already exist in the mainline:
> > https://github.com/torvalds/linux/blob/master/drivers/clk/clk-ast2600.
> > c#L595
> >
> > It is configuring SCU register in the ast2600 SOC to introduce delays.
> > The mac is part of the SOC.
> 
> I could be reading this wrong, but that appears to create a gated clock.
> 
> hw = clk_hw_register_gate(dev, "mac1rclk", "mac12rclk", 0,
> 	       		scu_g6_base + ASPEED_MAC12_CLK_DLY, 29, 0,
> 			&aspeed_g6_clk_lock);
> 
> /**
>  * clk_hw_register_gate - register a gate clock with the clock framework
>  * @dev: device that is registering this clock
>  * @name: name of this clock
>  * @parent_name: name of this clock's parent
>  * @flags: framework-specific flags for this clock
>  * @reg: register address to control gating of this clock
>  * @bit_idx: which bit in the register controls gating of this clock
>  * @clk_gate_flags: gate-specific flags for this clock
>  * @lock: shared register lock for this clock  */
> 
> There is nothing here about writing a value into @reg at creation time to give
> it a default value. If you look at the vendor code, it has extra writes, but i don't
> see anything like that in mainline.

Agree. You are right. This part is used to create a gated clock.
We will configure these RGMII delay in bootloader like U-boot.
Therefore, here does not configure delay again.

Currently, the delay of RGMII is configured in SCU region not in ftgma100 region.
And I studied ethernet-controller.yaml file, as you said, it has defined about rgmii 
delay property for MAC side to set.
My plan is that I will move this delay setting to ftgmac100 driver from SCU.
Add a SCU syscon property for ftgmac100 driver configures the RGMII delay.

// aspeed-g6.dtsi
mac0: ethernet@1e660000 {
			compatible = "aspeed,ast2600-mac", "faraday,ftgmac100";
			reg = <0x1e660000 0x180>;
			interrupts = <GIC_SPI 2 IRQ_TYPE_LEVEL_HIGH>;
			clocks = <&syscon ASPEED_CLK_GATE_MAC1CLK>;
			aspeed,scu = <&syscon>;    ------> add
			status = "disabled";
		};

Because AST2600 MAC1/2 RGMII delay setting in scu region is combined to one 32-bit register, 
MAC3/4 is also. I will also use 'aliase' to get MAC index to set delay in scu.

// aspeed-g6.dtsi
aliases {
		..........
		mac0 = &mac0;
		mac1 = &mac1;
		mac2 = &mac2;
		mac4 = &mac3;
	};

Then, we can use rx-internal-delay-ps and tx-internal-delay-ps property to configure delay
In ftgmac100 driver.

If you have any questions, please let me know. Thank you.

Thanks,
Jacky

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

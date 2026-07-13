Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id gwHJMaySVGq1ngMAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Mon, 13 Jul 2026 09:24:28 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B8F35748194
	for <lists+openipmi-developer@lfdr.de>; Mon, 13 Jul 2026 09:24:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lists.sourceforge.net header.s=beta header.b=P3Vstx8R;
	dkim=fail ("body hash did not verify") header.d=sourceforge.net header.s=x header.b=T84Wf7md;
	dkim=fail ("body hash did not verify") header.d=sf.net header.s=x header.b=QfYRVoKo;
	dkim=fail ("body hash did not verify") header.d=aspeedtech.com header.s=selector1 header.b=diK4D0Vo;
	dmarc=pass (policy=none) header.from=lists.sourceforge.net;
	spf=pass (mail.lfdr.de: domain of openipmi-developer-bounces@lists.sourceforge.net designates 216.105.38.7 as permitted sender) smtp.mailfrom=openipmi-developer-bounces@lists.sourceforge.net;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=V2DNWfQh5YFJSvlOtAaO7H9y0OMXfTHaUaWmsc046DY=; b=P3Vstx8RBqeS2e85hYB3lVok0R
	ihCQOt2o1m2fcZn9iZL+WLe71RdddS7Ir6OZQ5Wdk/ToVFyMP7EFTtOPsIFPb333bQjgSCSc+3VV6
	J+1kAA0N42v5BieNHrtYUnQqdPshFVooTXRe3+03HJbH4pjCeQG+6bKYXYlYs4fWh3hI=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wjB1c-0007YC-4n;
	Mon, 13 Jul 2026 07:24:21 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <yc_hsieh@aspeedtech.com>) id 1wjB1a-0007Y5-4Z
 for openipmi-developer@lists.sourceforge.net;
 Mon, 13 Jul 2026 07:24:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=j8zqGlLSBUjVuasN+OM06JdfC2joRIDI0Cw8I1JSC80=; b=T84Wf7mdGjp6yiOEmLdiQEA5GC
 XHGOp/HGZlZYfXWW3Ad8UEJaf/xvzPZGuQ3+Y+BIUK2PfsjRxgrlZKt5XtqHlJlqxpZvvaqerTiuk
 tHmDYX+Zrz4KtlhLQyDb8OZ2qDB+cY3Mgyzg+3bO93PvSPuKyDasjl6zTUkUo2KubeL8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=j8zqGlLSBUjVuasN+OM06JdfC2joRIDI0Cw8I1JSC80=; b=QfYRVoKo6Uv/7HlnQ8v71mGtnZ
 dbHUQQY605gH9/j9d6Lsr9ORM1dgven7pF1PPJNrqFI/SXlgdMTVPuZDNBr/DcaN6OahEIuUaliwd
 lfsA8ZXidELCX6ME1iJgExRqUmqylGuMO/t91XFv3TurlUJ5ps1oJwfmYRqjXKQPxZhc=;
Received: from mail-koreacentralazon11023076.outbound.protection.outlook.com
 ([40.107.44.76] helo=SEYPR02CU001.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1wjB1V-0003Bx-Pm for openipmi-developer@lists.sourceforge.net;
 Mon, 13 Jul 2026 07:24:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=b9XCc1+Jpd8PltD9tY7LlSAqu7usjt5WK8pI4AkIbRyhJTIzDM3Z7nvzpFAbhDOTbYBJC3h35DRs1uZqkHFxZLJJ6O+FdzlzzEfl+7cqcawp7Vx21V/yDZfGq7vJpGbMNH6dPWn+IKxU1uGqpV8R6HOvydb0to2esu1tNwFV7411gPpkEx4GOTSkf1MHzrVfYGEyLa2GbsSNh8x6Ae54WPisPFqDeKPOfL5QVrmWSNoTQMiS6SN+rmis1lugGs8QdyKlZnXio0pGj01WDz7ctPFGAN1+1VmtLocl7w/KLRndKH7irtEvk9tt09U7WVcOfHAT6X+3C/zPiZeEedxh9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=j8zqGlLSBUjVuasN+OM06JdfC2joRIDI0Cw8I1JSC80=;
 b=i9eSQqltc4AR5s/biqdigEu5KJ5y5rivQE5LkN9olq/8vygVTSO6xtwYtnEcrJy5wLL6zIGToLTV0VW9J4LUONiaKmtx9HLTyhw6Jd6cotkrvzg5D1Eqrgds7qqmxuCmpW9zauSClPF7Wikaz/7cDS8iukqzJdwg0B97WsCUzL5h/qAvrDSx04bu2raJpXUDcWFmgLkNiKwyFhM5OYzjVyz7quZ0YY+MLz1hJFjJKRjtx0swvhUske2UzWO8C2hoQs0iMQTavUhEitnxl7pOgftysYXaa8DvrPYsra1Esd/UpCHM9EeS46eoO+6sXOmoLpbOENVa2jRZvGeCUpPuow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aspeedtech.com; dmarc=pass action=none
 header.from=aspeedtech.com; dkim=pass header.d=aspeedtech.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aspeedtech.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=j8zqGlLSBUjVuasN+OM06JdfC2joRIDI0Cw8I1JSC80=;
 b=diK4D0VonKhZEMYCMjgmbaQtjfsK3OywjKaxy2hcyH0fKq46JqR2eI/4N/vN9pWI2ECdtFTreNChVgRlXakwSFeGq/o8eW/2pm402DqB83VVwg4vQ6S7F9XS+IkIVrHd1RJcwXlortWaQtxeY0N2P0WG75DonyCR/2Qf95DJxEhm5GFrtaoIxIXTvnGOWiJiPzlfNzR5vL6jTf3Fv9jCaXbC3vdS+NTFa0bSR9jD9D2V3LYfp6l9nL90xJ/Vu/JegnRDhvwmFBguvbJG3AG8/rkRvpRO+VYmjxQSjDS9NsmvyAZoAacZFB2P6jo5aHvB/EYI/PmPP5AgMae1ZCqMAw==
Received: from TY0PR06MB6855.apcprd06.prod.outlook.com (2603:1096:405:13::10)
 by JH0PR06MB7198.apcprd06.prod.outlook.com (2603:1096:990:98::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.23; Mon, 13 Jul
 2026 07:09:01 +0000
Received: from TY0PR06MB6855.apcprd06.prod.outlook.com
 ([fe80::9405:99c0:aadd:7e05]) by TY0PR06MB6855.apcprd06.prod.outlook.com
 ([fe80::9405:99c0:aadd:7e05%6]) with mapi id 15.21.0181.017; Mon, 13 Jul 2026
 07:09:01 +0000
To: Krzysztof Kozlowski <krzk@kernel.org>, Corey Minyard <corey@minyard.net>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, Andrew
 Jeffery <andrew@codeconstruct.com.au>
Thread-Topic: =?big5?B?pl7C0DogW1BBVENIIDMvNF0gZHQtYmluZGluZ3M6IGlwbWk6IEFkZCBvcHRpb25h?=
 =?big5?Q?l_LPC_properties_to_ASPEED_BT_devices?=
Thread-Index: AQHdB5N07GOCG0yUdU+n8UrPxJS92rZWn3MAgBRgtcCAAAlHAIAAEoW7
Date: Mon, 13 Jul 2026 07:09:01 +0000
Message-ID: <TY0PR06MB68558AD7FBBCEBB09DFAFCF593FA2@TY0PR06MB6855.apcprd06.prod.outlook.com>
References: <20260629-aspeed-bt-bmc-multichannel-v1-0-fc23ee337f7a@aspeedtech.com>
 <20260629-aspeed-bt-bmc-multichannel-v1-3-fc23ee337f7a@aspeedtech.com>
 <35a8e3b3-7725-4d1b-8667-84e6fa24b2ca@kernel.org>
 <TY0PR06MB6855F4F499246CD5C44DB23893FA2@TY0PR06MB6855.apcprd06.prod.outlook.com>
 <31df2c13-9c31-4a78-975f-b0152ad3356d@kernel.org>
In-Reply-To: <31df2c13-9c31-4a78-975f-b0152ad3356d@kernel.org>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TY0PR06MB6855:EE_|JH0PR06MB7198:EE_
x-ms-office365-filtering-correlation-id: 898386bc-aac8-4f18-ed6d-08dee0ad9d9c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|23010399003|1800799024|376014|7416014|18002099003|22082099003|38070700021|56012099006|6133799003|4143699003|3023799007;
x-microsoft-antispam-message-info: co75iRvIRF/oTJjNvj5uxoBNkwYZhSvzu5PgOd1y/L7jLoZa2TOF63+JDwQIWCWDBRV5Y17xTQ8/x6iESSbbbUfZuB6zIO0WtQuB3Z8mW9qYZDxSkzSnxFytIKjMJOq0JjLU3WECummhWwNjsbN414Ac7ch67McpNuBewlGyRMX33ENajDWOa9BEyD9/pU+qA/UxK7WLGq1kIYIAE3gwsK7GS3U9g5mcx0EP8HaLF9WQUsyTU1nogrD28XStVzjpaJECZrmyFE8UyCQS1Nq97grAC129BcdJZEkIfGWzBqqr3hhGPkZcNhCjMabD0GkyMymDdrq+iQLGKSh0L0KwsL/vEMUn5UK0yJCHMK02UCWrGXCctn5dRX1jFX7ylqmy4qhniWcpAilaQxsXjKtP2x7TluxQJEI4cYZVfzf3/xnnbeucJ7ZnY2cMdoYN+9U9FwhcxsZT+RBVSTPMI2QXzkUs+faFXfe67iCpxfsjmeh37sjQ80VvpEFGYoTSFb/BSN9dwv1QwGZ8DUFLX0nPrzXt4B8SQqQ5Zh/P660v4B/sdNhb2kpdbTGXPNVZlY5bcSjaewalkOF3eOq5VZKZ9EUd5+XZly8KHwZWaEl6L/savAD511VKV5T0nuZclSvxainfsO7amIUdjarDH6+xvWE9CvuJW9fFbpsgZ4ah7+LWwY296S22MfyA6miL9RuM8QmI1SLD9eZ4DWY4I5o6Lovsn/BK+raiUQ7ohIKEo+A=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:zh-tw; SCL:1;
 SRV:; IPV:NLI; SFV:NSPM; H:TY0PR06MB6855.apcprd06.prod.outlook.com; PTR:;
 CAT:NONE;
 SFS:(13230040)(366016)(23010399003)(1800799024)(376014)(7416014)(18002099003)(22082099003)(38070700021)(56012099006)(6133799003)(4143699003)(3023799007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?big5?B?c09oanpOK29JVGI4ajlrMVkvYmsrSVR1Z1M1cGNxeUhsNFdCNVQ3UUg1bUJJUnBO?=
 =?big5?B?QmRsUjRTVS9aL0dsLzBVaHVMS1E4aFJFTUJ5RmJDT2xzbVJJVko2TEtwTjVYam5o?=
 =?big5?B?RzRuNE5EbVNsb1AyejFRc2ZvV3JWeFdZMkY4bGlvU09TaFVHeWxrUUxKdmlvaVY1?=
 =?big5?B?R2JDendxU2R5YytGbmVMWnd4OWdTR1hoQmxpS3V4Q1o4UTdWNEpKY1NldjlWcXgv?=
 =?big5?B?YjE4SmVsanY1OTcrV0F0djZucWQxY2l1M0FpR3IxZFpqR0lTSFNyT1FReVFTVmw0?=
 =?big5?B?TVZwNzRVbVJtd2NtQTZFMUJ3cFNLSmlGLzJteEF6cDFMTDF1ZkI3eGpycExlYnIv?=
 =?big5?B?S0pWM2VtWldUOHJPRnhydzhjN085ZkMyWHpFQnpIZWhxTzZadEhkTk0vWGFnK0Zz?=
 =?big5?B?cjlGcjJGRVJxRFNvNjBKZHdlSDcrSjdHeVE3T3BFQ3RKemtINjdTKy84eFZlYmZq?=
 =?big5?B?SGE5ektUak1mWEg4V1lwM216cE0zemN3eXJtZmFPRWJFRU8wcHBvWmRVcUdTN1Rz?=
 =?big5?B?ajhWbFAzV2VSSnlSUVJRTWt1cWRVTzJweXpnb3R3VjU0WHBDaVNxbVpiMCt0bTkz?=
 =?big5?B?dFhuZFdmaTNCVjdHbEdYeFdNU0xOZmNUaW9vRXh6MkdQczkvSlpsMlhGMkxrclhl?=
 =?big5?B?RXdObDdxbUo3cnJSQ1g1SGZBSXFTMjg0b2Jvc1pnczRMZHozeUJRNklDUm1BUjdy?=
 =?big5?B?RkwvSFJlUFFiRjhOS2dmdlJGbjdhMXdiRVNCUkhYdnVmWmJmczNmTm4ralZQeEtn?=
 =?big5?B?V2R2OXZSNWhvWGxhMlhRZVhtcHJwY2ZEMVBIZFdoVW50eXNCUU44S25FcGdZaXRw?=
 =?big5?B?MmU1YnQ3ai9IOFY5cEZDREgyRmROT0pRRjhtWklmRmJ0YkNIdEVWVmRIYmVIR3Ja?=
 =?big5?B?K3FwaUZaZVlQdEV1YkZJdXJhK2V1SGJhR2dTY1ZUcmdReWwvaktWcm1meVFxd2NL?=
 =?big5?B?SHRBc2RQOEVWRktxakZySjhkbmhnbmgxOG5UT1lOb2drL0g5azBzUFBGYmh0MWg5?=
 =?big5?B?NTFuSTRERnNlMXV5TXBEZ09mamUrczMzckN2NGZ4dnRBTStWRnQ2VVdBakw3TzVL?=
 =?big5?B?WXU1MmxtMkFBYzdpSU9aMjAxNjU4a21FK04wdFQ1T0NJMnZ0RkRGQ29oMERYd3pT?=
 =?big5?B?WnV2aWNKVDJFWWtXMUZTSW5jaFJjc3hlbi9Sb3RaWm5icGNRc1BIYlZjSnRnR3ha?=
 =?big5?B?bHJ6YUNKR3loVU1XT1UwYUdwbFlIVjJ5dUtYTXJtNm9hSjZaU2d1NE5KeHBMNHYr?=
 =?big5?B?Y3dNVzJYZ3pQYUpUN0VYVUh1dFl0RlJYYU9MUDhYMVg4Y0ZWOW5aQm92cEJBdi9G?=
 =?big5?B?OGFMazQ2cEZ6dVlXbGFoSFMwcThWTXNpeStJM0Z2SFZQZHE0VUJBVEI3cU1GT2M0?=
 =?big5?B?TnVIdzhSRzB4b2VKaG5uK0xYeGVWT3hLV2d1M2pjZldtcm16UHZGV3Z1cHJGUHU4?=
 =?big5?B?bVpTR29uQlN5ZnllSDFJak54RU1aUzNORzN3a1l1NFduN3dXdFNCZkxLSUpHalBZ?=
 =?big5?B?Y0NrUUo1RkJWdWQ1dVJ0c1cvUTd3eUQ3MlVQNEpjNXhyMmtpUzdERWhtR25RUnpr?=
 =?big5?B?VjkvS2NXZ2JTOWhqeFpHQmJuUHJzNXJNNlh1cjBMbUFzYnhKSFJLM2xYQkIwYnpU?=
 =?big5?B?MXh6YkY5aHROSlU2SmYvZ2lvanU4NFU0QXQ3QUZVMStMeVNWd1BqTkJOR3B2WFRH?=
 =?big5?B?eGJ5c01rRFlxQm05Y3NWNUxlT2ZqbUliNVdGUFpxcVhpN2t6WkFhZ3JEa2lBRmNM?=
 =?big5?B?OUtPN2ZFYzE5NFUyaU5ELzQvYzR3aXBWNC9oaW5JWEljY1hTVU1tRkFQL2I3ZVIy?=
 =?big5?B?cWlDdC9YOGhCYWdFUllYeWVpUE9qRUJIOExuVVNoeTUyZU1XT2J1UysvQVpVdkl2?=
 =?big5?B?RGp1N0kzOU5PTGJDUWlqNGFteWNIOUNwa0h0ZldOdkROczRjb1c4dDVwWGVrZ01E?=
 =?big5?B?K1ZFb0ZPZzgwUUtiU2dIVjh3WEZML3laUkVUangwK2hKblN2NXo0RzFFNDJJemFR?=
 =?big5?B?UmtKMVR1ZmZWd0xHVGFMbHVyaTVrVDA0NzErdCtva0JZaFNRKzRjNjk5dklKZnpq?=
 =?big5?B?ZWtVRkdUUlpkSDRsbnhJdVNzN2xXeFJSVEIrdkFyQ3RzUldmWmJEOWJRUGRQRmpI?=
 =?big5?B?czRqNEc5UUdCYTZqYXlzUU1BRHgrRTkvYVJUdHBWNEp5WjZKVmp3R05QeWgrcVFX?=
 =?big5?B?SkR3TlhFWEI1QmxXTHZWTEs1QnJjUT09?=
MIME-Version: 1.0
X-OriginatorOrg: aspeedtech.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TY0PR06MB6855.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 898386bc-aac8-4f18-ed6d-08dee0ad9d9c
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jul 2026 07:09:01.0986 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 43d4aa98-e35b-4575-8939-080e90d5a249
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OUdH3BaHV6D3TpX5jpEhAsttVPobtCmYENx97au9fBg6+OklM+5UuE2FmiHIOjDB1HHeXVa384znsyBJwDmVdg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: JH0PR06MB7198
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  > I don't understand what you are referring to,
 entire context
 is gone > because essentially you top-posted. Sorry about that. I
 misunderstood
 the mailing list etiquette. Inline reply below. On 29/06/2026 08:49, Yu-Che
 Hsieh via B4 Relay wrote: >> From: Yu-Che Hsieh <yc_hsieh@aspeedtech.com>
 >> >> Allocating IO and IRQ resources to LPC devices is in-theory an operation
 >> >> for the host, [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to DNSWL
 was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#DnsBlocklists-dnsbl-block
 for more information. [40.107.44.76 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URI: aspeedtech.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.44.76 listed in wl.mailspike.net]
X-Headers-End: 1wjB1V-0003Bx-Pm
Subject: [Openipmi-developer] =?big5?b?pl7C0Dogpl7C0DogW1BBVENIIDMvNF0g?=
 =?big5?b?ZHQtYmluZGluZ3M6IGlwbWk6IEFkZCBvcHRpb25hbCBMUEMgcHJvcGVydGllcyB0?=
 =?big5?b?byBBU1BFRUQgQlQgZGV2aWNlcw==?=
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
From: YC Hsieh via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: YC Hsieh <yc_hsieh@aspeedtech.com>
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "openipmi-developer@lists.sourceforge.net"
 <openipmi-developer@lists.sourceforge.net>,
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-6.11 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_MIXED(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:krzk@kernel.org,m:corey@minyard.net,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:joel@jms.id.au,m:andrew@codeconstruct.com.au,m:devicetree@vger.kernel.org,m:openipmi-developer@lists.sourceforge.net,m:linux-aspeed@lists.ozlabs.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,aspeedtech.com:s=selector1];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,aspeedtech.com:-];
	RCVD_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	HAS_REPLYTO(0.00)[yc_hsieh@aspeedtech.com];
	TAGGED_RCPT(0.00)[openipmi-developer,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[aspeedtech.com:replyto,aspeedtech.com:email,TY0PR06MB6855.apcprd06.prod.outlook.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B8F35748194

> I don't understand what you are referring to, entire context is gone
> because essentially you top-posted.

Sorry about that. I misunderstood the mailing list etiquette.
Inline reply below.

On 29/06/2026 08:49, Yu-Che Hsieh via B4 Relay wrote:
>> From: Yu-Che Hsieh <yc_hsieh@aspeedtech.com>
>>
>> Allocating IO and IRQ resources to LPC devices is in-theory an operation
>>
>> for the host, however ASPEED systems describe these resources through
>>
>> BMC-internal configuration, as already supported by the ASPEED KCS BMC

> What
>
> is
>
> with
>
> this
>
> line breaks?

Apologies for the broken formatting in the commit message.
I will fix it in the next revision.

>> +  aspeed,lpc-io-reg:
>> +    $ref: /schemas/types.yaml#/definitions/uint32-array
>> +    maxItems: 1
>> +    description: |
>> +      The host CPU LPC IO address for the BT device.

> No, you do not get second reg property.

>> +
>> +  aspeed,lpc-interrupts:
>> +    $ref: /schemas/types.yaml#/definitions/uint32-array
>> +    minItems: 2
>> +    maxItems: 2
>> +    description: |
>> +      A 2-cell property expressing the LPC SerIRQ number and the interrupt
>> +      level/sense encoding (specified in the standard fashion).
>> +
>> +      Note that the generated interrupt is issued from the BMC to the host, and
>> +      thus the target interrupt controller is not captured by the BMC's
> +     devicetree.

> No, you do not get second interrupts property.

Understood.

These values are not addressable resources of the BMC node itself;
rather, they describe how the BMC's LPC engine is exposed on the host
LPC bus. I am not sure how they should be represented in DT, since
they do not seem to fit the usual semantics of either "reg" or "interrupts".

Do you have a preferred way to represent this kind of host-facing LPC
configuration in the binding?

Thanks,
Yu-Che
_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

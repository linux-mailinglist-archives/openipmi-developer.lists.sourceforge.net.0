Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id M/xqObZ8VGozmgMAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Mon, 13 Jul 2026 07:50:46 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 973C3747596
	for <lists+openipmi-developer@lfdr.de>; Mon, 13 Jul 2026 07:50:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lists.sourceforge.net header.s=beta header.b=II+5boTm;
	dkim=fail ("body hash did not verify") header.d=sourceforge.net header.s=x header.b=Y6t3cmay;
	dkim=fail ("body hash did not verify") header.d=sf.net header.s=x header.b=JMFn71ii;
	dkim=fail ("body hash did not verify") header.d=aspeedtech.com header.s=selector1 header.b=h3SX35bd;
	dmarc=pass (policy=none) header.from=lists.sourceforge.net;
	spf=pass (mail.lfdr.de: domain of openipmi-developer-bounces@lists.sourceforge.net designates 216.105.38.7 as permitted sender) smtp.mailfrom=openipmi-developer-bounces@lists.sourceforge.net;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Cc:Reply-To:From:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:In-Reply-To:References:Message-ID:Date:To:Sender:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zg+PLetpSNrbyotp01jCx3rYlFyMgNr3BfcPsoalvn0=; b=II+5boTmIgpvVvdzIHWQj8yrez
	e1Jf9O4cCM4GerJzx4JKun0sbBD6vGF8jKq6CIAD48dDyQZFyk65MXnl715YjhwWTiCom6Nlns4eU
	VQlLsZSSlVLpv6dwpFcYGN/sXeszbsDfDt1tt+pCt7btpVxDvuNaUcdid9ri7dajYuY4=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wj9Yt-0001jy-BF;
	Mon, 13 Jul 2026 05:50:40 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <yc_hsieh@aspeedtech.com>) id 1wj9Yq-0001jq-96
 for openipmi-developer@lists.sourceforge.net;
 Mon, 13 Jul 2026 05:50:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:In-Reply-To:References:
 Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UuXYe5HvREAo9l6/5lOOmQOiQhAErjxuKKwZDIpGJ9c=; b=Y6t3cmayHmjIyGkR55DF+Kh4kZ
 eow5BiD2hjjWLIyyv1/D59zRZfKranDW1OmgyKvA2nKNf6xPrfMggOYLc2U7bnfvKl4ZLUm8hC8Sf
 ULg+Fwp2qTS/mmJITsYBI5gP4uWPCfXJnk+aItBVPsmruXCyotbb+q/aYNiXWA3+BYIw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:
 CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UuXYe5HvREAo9l6/5lOOmQOiQhAErjxuKKwZDIpGJ9c=; b=JMFn71iiZ2KHXJPVQkYRBKMxSb
 O8Kfx/ocWg01c0X9O1DMOfL/5nEr/wdYc7FUErp6GANH9tKx5M8NZw8i1ciaSdz4OuFT1JzOyy3SF
 ZXzFn+rgDJByWW+xnP2wEcwSJ3r45Ndx5PANm0WJTk9kkcCi4iLO0LXK3fuzIr6JvMYU=;
Received: from mail-koreacentralazon11023097.outbound.protection.outlook.com
 ([40.107.44.97] helo=SEYPR02CU001.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1wj9Yo-0000gi-Jo for openipmi-developer@lists.sourceforge.net;
 Mon, 13 Jul 2026 05:50:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tsYCVCJIl0hUDyoJJbKueHCXjxUC/7+xR7CIbPy3Ctqip9QSi36mz6OfsSI+joxoE5SSN8GAo+6rgc6YZRTuyC6AzDJxBOG8Y0V+WUJ4d7tgLbF6KqQJZPCRLuk/yoGuuzf5wqpKh4b6OBfg5C2qvCi28uVLB1mc7BwSuNjH1CAdDV1MyGXNcGnoJBOV+2sRt6bmUrpGq5UieH4iJxKO4tbuFLPtIhNSL74UaoGBPQWrO6vJllJaYw5AHycTtQMqOYL4EGnntZ4vHeNhOSCl3uoETBbEdeAwzggVlpox/mrgCqXY2aagfKVrw3jdYOkgARIdb54Qs6brmOVPveX3kA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UuXYe5HvREAo9l6/5lOOmQOiQhAErjxuKKwZDIpGJ9c=;
 b=NZvVms6vyF/PGtf2mxGFsFZdtttBDNMz6oV8zrVf8WUMnyxpo0RiT/ChFR9egFgWyj9x1oZxxXX0ka/UGDtdWq1LOM0SYMGDgJqIcfNFpPBqgCKWqx1J2NW9OWGoW0qbwZFBiMy8/zRTKIpbHUWppE1Y5DqHuZatCdNnlNBaTpFYjeEmvM2tTDPcCLvEOo6fcoxI+LtSLlqHvJFVL/Ek6jjE0XnlX6+5MCc8tYMuE3q7K6rD1WaOKBz8hsmtl9IRz/mu3LMMWm5x5jKWLsdYKmJv/wdHrJmTaoHGv77HMKBdD/Rn9JEl87qnW9vgfNoMYTG0+VdBfa0nFQcBKBcPuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aspeedtech.com; dmarc=pass action=none
 header.from=aspeedtech.com; dkim=pass header.d=aspeedtech.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aspeedtech.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UuXYe5HvREAo9l6/5lOOmQOiQhAErjxuKKwZDIpGJ9c=;
 b=h3SX35bdnY3ccCMUio+pgwREc+P1cDWdsSS5UrNA95jPVoPUiNUf0xbkgq1l2ubBAK5YfVtGelLJkPExmuuFn6c5Oav0tKs799iqgZM4J9UOzvkUmJspv8OR+Vc7ChggQKr24DPBxkWbeVKGrwJW6iB+m1fVkx3C8+Sq6NXujMDU8sDyD1A35QcKh8PkJnA8aG+l5LivC0/c7g83QL/3SmXQ1CLIQB5XzQmDwZdCgSB0s4ji4eUxFqzdiM1DTbp3+YFaS7LGwd6T3We6KdDXrOP0/s+FnFzm1pGWLmlspsBJ5rbciycIwAJWoE/eNbPFeZ6QmzQqOZArTfmOIHL1Lw==
Received: from TY0PR06MB6855.apcprd06.prod.outlook.com (2603:1096:405:13::10)
 by SEZPR06MB5713.apcprd06.prod.outlook.com (2603:1096:101:9d::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.202.18; Mon, 13 Jul
 2026 05:34:16 +0000
Received: from TY0PR06MB6855.apcprd06.prod.outlook.com
 ([fe80::9405:99c0:aadd:7e05]) by TY0PR06MB6855.apcprd06.prod.outlook.com
 ([fe80::9405:99c0:aadd:7e05%6]) with mapi id 15.21.0181.017; Mon, 13 Jul 2026
 05:34:16 +0000
To: Krzysztof Kozlowski <krzk@kernel.org>, Corey Minyard <corey@minyard.net>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, Andrew
 Jeffery <andrew@codeconstruct.com.au>
Thread-Topic: [PATCH 3/4] dt-bindings: ipmi: Add optional LPC properties to
 ASPEED BT devices
Thread-Index: AQHdB5N07GOCG0yUdU+n8UrPxJS92rZWn3MAgBRgtcA=
Date: Mon, 13 Jul 2026 05:34:16 +0000
Message-ID: <TY0PR06MB6855F4F499246CD5C44DB23893FA2@TY0PR06MB6855.apcprd06.prod.outlook.com>
References: <20260629-aspeed-bt-bmc-multichannel-v1-0-fc23ee337f7a@aspeedtech.com>
 <20260629-aspeed-bt-bmc-multichannel-v1-3-fc23ee337f7a@aspeedtech.com>
 <35a8e3b3-7725-4d1b-8667-84e6fa24b2ca@kernel.org>
In-Reply-To: <35a8e3b3-7725-4d1b-8667-84e6fa24b2ca@kernel.org>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TY0PR06MB6855:EE_|SEZPR06MB5713:EE_
x-ms-office365-filtering-correlation-id: bb4d90c3-4608-4895-ee86-08dee0a06114
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|23010399003|7416014|376014|3023799007|6133799003|38070700021|18002099003|22082099003|56012099006|4143699003|8096899003;
x-microsoft-antispam-message-info: 94JKcYwszho6ZXyHm0oX0csYD8b+3eT3wK8J/1Ol6wBhXnPPlD+A1jfBRmYMZvyPc6mCHfFR4+v1NojLJw1jqHWy/OsZpAmU+RwFvP514cn0rBLkP4OS114pm5+oL8es9xNvoxHIkBRKVmUwUlInZZibOifODS9BEXH6Thm3AcH2TPjSSNt2YgA/CZXmRpz+hIV41ZuPNP20nAOc8Cm69bks5gEmH8JoUWHk9+ghXgfeVSBcCkbcoZnnNk/dPeD1sL6wJ6QK0TNewzTrE/IvPAI5UoJ0keurt0PGS2ZRgb1axjIPrSupH2tAajHiWxT5Yg5091kdER+G60ChOn7PZDi1oKIi/oSNVezoPx9PiB8gJ0dFYPM04i7C41IWQKtzrOxhmPCiPS5yU0iKru84dlmwdF4pJRRBlKRoshbwZ8EapieScXc3IS0s44WbI6khZeBz9v9++ZzULai6flnmeFLz6cDiqd3TXkoPBBQl3VMPbFdnKLxrl5RsiQlU0jLwugODUY42nCfu9sUQEADhedAfFyLurcmt8J5/w3VPAXhn9IIIQL8ANvKWBHpbLMqYow1tGgKNTXOEoUZnrCcXVlHbzGLajxNd399Ge29yunTR1AV1PO+fGtaDra62mc7YGz/JZUzWoEoDJBfv8GLUyR7WmaC8/qufZ6zPHbjLphcB+huK2rmXjYQCSwsQrzYedf9vavDjlfTKaSTCkCYnpV7K52fdN8Kjioc0heAPDIA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:zh-tw; SCL:1;
 SRV:; IPV:NLI; SFV:NSPM; H:TY0PR06MB6855.apcprd06.prod.outlook.com; PTR:;
 CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(23010399003)(7416014)(376014)(3023799007)(6133799003)(38070700021)(18002099003)(22082099003)(56012099006)(4143699003)(8096899003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?big5?B?dU90bTE3cVVMa0VSaTVJNWc5ZE84SElaQnhtemlqTFRXcG5PTVJIY2VCUm1VMnRJ?=
 =?big5?B?elJWbnRQM1VvcjVrWFpWZUFCU2pRWjg4M0VjSzJsRXk3MVJNUjNYVWdYM0FucnRn?=
 =?big5?B?bDlmRU92NVJId01wMTVrRDZoaUtyc2NOdC9VV0swQU9mVzBRdW56M1VLRkczQXlY?=
 =?big5?B?MnNOMzhXOVhyY3lwT0Z1SjcyWFErOUNHOURPdm80RHZSekFVd3hLZVJlZllYSE01?=
 =?big5?B?ZTV6R0t6L2c3OHdpbVd6VXlSODZ1R1R0cFVubld6b1VBNG9BcGwydnA3MWdYK2pl?=
 =?big5?B?SFBocDNEMHlsMDUyN0lFL1pYcEdCRmV6d0pXNXp6MnhxYzJhMjIyZGJhc3FoSUZM?=
 =?big5?B?M1pHOFpXUU56eEF6ekFRMng1SUtURkJjYndWWHMwYVdzY09SVVlheCtXOUN6V09C?=
 =?big5?B?UnRXY3pYdjBLTUNaSzVTZzFXZ1A0M3c4OXBzZUhIdEh1ZWZraHJ0bnpTbFk5NVQr?=
 =?big5?B?bkdZZ293d01idHR6dnVSbDlJR1pUSkI3T0IxU0tsc01aWUR0Mm1JZVdCdHQzUk5E?=
 =?big5?B?aktrajVUY0tkTUxxaTNvZVpWaWJZaFRRS0FYaTV5T2dNbGl6NmZKSEc3dnZha0JQ?=
 =?big5?B?MGZza0dWNmhQbTJzM3Yvai84R1B3N0l3MXk3YTd3S0Z4QUU4a200eVNWWGpnbHR6?=
 =?big5?B?Y0hLZjRoUlBsVzlnR2FpZCtid3M2aHdRQkhCcmJaWFpJVi84eWdUa1g4QW1yMkxs?=
 =?big5?B?Z1pudTU4d3lMWmdtM2pacDVtdUZ3b2JUT3hKbXlLeXlURTJSQ0N3KzliVlExZjJH?=
 =?big5?B?RjIwUlJIaTlLNytMN3pWeFVjd3E5TnZXNE1OMDdjRlhRZWh3WTR6L2FhYVVPSFk3?=
 =?big5?B?QWV5ZW5BZVE3YUxkKzFnaStvNDdwWTNreVBVUnI3QlFlM2VJWkswU09hV2dnOW9p?=
 =?big5?B?T25SWXpIWXVoVUJWLzc3U2FIMUpJSUcyWkxULzE3QllBMmFjS0J2TTVGT3MySi9q?=
 =?big5?B?bS9GbE5lVC91dEM1UzFaNU9ya3NaTXRPUlpwenhHZks5THZmdzVINWhvNkFqU3BJ?=
 =?big5?B?ZU8zM2g2K0d6SllTYUx0RkhYZi81WjZ4ZS9zaHB2aXAvYlNkb1RQSExNM2NRdjMz?=
 =?big5?B?OGM1bi9Ra0MvWGJXcXpDT1FyR21TVDNKYTBTdzdwaVh2ekZUTWlzM0hoellxa0s4?=
 =?big5?B?eHFZMGtDdm96OVhEc3dLZk9nYlJNWnJ4RmtlWGNsRE5OZHNqT1V0YjRJZGUzcUUz?=
 =?big5?B?QkFqVGJocGdEL0hOMTI3VXdWTGtiQjdJVzNPWTNwQjVLSU1DVlYyTmN0L0oxUTNX?=
 =?big5?B?SGozNUJvazYvOG9Nc1U0RFdFUUwyYVZPMnZYT0FRSndVL3FrbVYrbzdwY21iRlJi?=
 =?big5?B?Q1d4VG1LeEZCZ3MvcS9rWnlkZVgxWkJWUFpIendiVVIxTExjZnhQeWJ4U0JXTitn?=
 =?big5?B?QWR0UUJjeFRFTjJQYjM3a0xJS0hnTVA0ZUNxZkFiMkRyY09wbWExUHkxejkxNVNu?=
 =?big5?B?RWJ2NENyN3UvYVBPeDBqME9FSHBNRkVGSlU5QjU0T0JhN1pTYUhzeFZIWEZndCtC?=
 =?big5?B?OWwzS25FUnM2QzR6SEwwT1g1dCtMNzlqRkdHTmUzWERJS3JCWkxSMkVWZEVpUVlU?=
 =?big5?B?UUdGUnVmeWhFSHkzakxtbUJtdGxrUE9ySmpBRHdsZzFrc0JUQUk0Q092T1Z6dGdZ?=
 =?big5?B?MEk4UkZYRGJKWTdkcXZ2eFVBWVo4ZEJadkhVb0xvcDAxYWtHaTJpNlE0WDJXWmxv?=
 =?big5?B?S1UvRzE1dnVpNHpOQ3hqR3RTRlNWU1pLcE1LYUxNaTV4clprMFdvL01ZMGtjbU1j?=
 =?big5?B?UEZMMTd6OGtKNmlEMEJSRlVFTmxmZVo4aitNTGFMZVJ3SnpkZWpDRFJnbTFFMTgv?=
 =?big5?B?V2VSNjFMaEczTWxCUnRkR2ZRTWNmWHdCQkZVdzhyb3NrbHBvUHJkd0c3VDBGTHNG?=
 =?big5?B?WWRjZmQ2TGgvZGsrNCtLNVliU3dGOWRmNlBUQmE5VU0wbHhCMk1RcU5CTzBiYXZJ?=
 =?big5?B?T3FqYUk1Zk5uMUIyZkcrVjNCMEo3djZEOSswb0hJenpISFZ5ZHI0Ukc0cFBYbVpF?=
 =?big5?B?T01qRmJibExCQWQ5Z0VWK3hJdHYwL1QvWnJqNjM3THBLa2NRR1lkZjV5d2ZKanRr?=
 =?big5?B?eDdJZTBRRUJIUG9vLzNxZWtibTAxTGg0VGMxSy90czJqQ1RTdmFHSlVJNzRERzEy?=
 =?big5?B?K1BXY1p1aG9uUmZrS2Z1YVJ2TWNHai9qeFhXUUtKSzdQcDhHTWFlMW9kN1gwem92?=
 =?big5?B?THZEemMwd0J4dEJ1SEl6TExoRXUwdz09?=
MIME-Version: 1.0
X-OriginatorOrg: aspeedtech.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TY0PR06MB6855.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bb4d90c3-4608-4895-ee86-08dee0a06114
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jul 2026 05:34:16.0567 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 43d4aa98-e35b-4575-8939-080e90d5a249
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NH6fmECNkyfra9IqhEmnCB2Ml/GFOPOieS0XQnH0Bdi4vPF2laQ7yMS30MyUNqLZi1oHvEOLl2khHh3IeD3nng==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEZPR06MB5713
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Jun 30, 2026 at 08:11:34AM +0200, Krzysztof Kozlowski
 wrote: > What > > is > > with > > this > > line breaks? Apologies for the
 broken formatting in the commit message. I will fix it in the next revision.
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.44.97 listed in wl.mailspike.net]
X-Headers-End: 1wj9Yo-0000gi-Jo
Subject: [Openipmi-developer] =?big5?b?pl7C0DogW1BBVENIIDMvNF0gZHQtYmlu?=
 =?big5?b?ZGluZ3M6IGlwbWk6IEFkZCBvcHRpb25hbCBMUEMgcHJvcGVydGllcyB0byBBU1BF?=
 =?big5?b?RUQgQlQgZGV2aWNlcw==?=
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
Content-Type: multipart/mixed; boundary="===============1994031888330205441=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-6.01 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_MIXED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:krzk@kernel.org,m:corey@minyard.net,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:joel@jms.id.au,m:andrew@codeconstruct.com.au,m:devicetree@vger.kernel.org,m:openipmi-developer@lists.sourceforge.net,m:linux-aspeed@lists.ozlabs.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+,5:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,aspeedtech.com:-];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,aspeedtech.com:s=selector1];
	TAGGED_RCPT(0.00)[openipmi-developer,dt];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[yc_hsieh@aspeedtech.com];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:from_smtp,lists.sourceforge.net:dkim,lists.sourceforge.net:helo,lists.sourceforge.net:rdns,lists.sourceforge.net:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 973C3747596

--===============1994031888330205441==
Content-Language: zh-TW
Content-Type: multipart/alternative;
	boundary="_000_TY0PR06MB6855F4F499246CD5C44DB23893FA2TY0PR06MB6855apcp_"

--_000_TY0PR06MB6855F4F499246CD5C44DB23893FA2TY0PR06MB6855apcp_
Content-Type: text/plain; charset="big5"
Content-Transfer-Encoding: base64

T24gVHVlLCBKdW4gMzAsIDIwMjYgYXQgMDg6MTE6MzRBTSArMDIwMCwgS3J6eXN6dG9mIEtvemxv
d3NraSB3cm90ZToNCg0KPiBXaGF0DQo+DQo+IGlzDQo+DQo+IHdpdGgNCj4NCj4gdGhpcw0KPg0K
PiBsaW5lIGJyZWFrcz8NCg0KQXBvbG9naWVzIGZvciB0aGUgYnJva2VuIGZvcm1hdHRpbmcgaW4g
dGhlIGNvbW1pdCBtZXNzYWdlLg0KSSB3aWxsIGZpeCBpdCBpbiB0aGUgbmV4dCByZXZpc2lvbi4N
Cg0KPiBObywgeW91IGRvIG5vdCBnZXQgc2Vjb25kIHJlZyBwcm9wZXJ0eS4NCj4NCj4gTm8sIHlv
dSBkbyBub3QgZ2V0IHNlY29uZCBpbnRlcnJ1cHRzIHByb3BlcnR5Lg0KDQpVbmRlcnN0b29kLg0K
DQpUaGVzZSB2YWx1ZXMgYXJlIG5vdCBhZGRyZXNzYWJsZSByZXNvdXJjZXMgb2YgdGhlIEJNQyBu
b2RlIGl0c2VsZjsNCnJhdGhlciwgdGhleSBkZXNjcmliZSBob3cgdGhlIEJNQydzIExQQyBlbmdp
bmUgaXMgZXhwb3NlZCBvbiB0aGUgaG9zdA0KTFBDIGJ1cy4gSSBhbSBub3Qgc3VyZSBob3cgdGhl
eSBzaG91bGQgYmUgcmVwcmVzZW50ZWQgaW4gRFQsIHNpbmNlDQp0aGV5IGRvIG5vdCBzZWVtIHRv
IGZpdCB0aGUgdXN1YWwgc2VtYW50aWNzIG9mIGVpdGhlciAicmVnIiBvciAiaW50ZXJydXB0cyIu
DQoNCkRvIHlvdSBoYXZlIGEgcHJlZmVycmVkIHdheSB0byByZXByZXNlbnQgdGhpcyBraW5kIG9m
IGhvc3QtZmFjaW5nIExQQw0KY29uZmlndXJhdGlvbiBpbiB0aGUgYmluZGluZz8NCg0KVGhhbmtz
LA0KWXUtQ2hlDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQqxSKXzqsw6IEty
enlzenRvZiBLb3psb3dza2kgPGtyemtAa2VybmVsLm9yZz4NCqR3tsewZTogrFC0waRHLCAyMDI2
IKZ+IDYgpOsgMzAgpOkgpFWkyCAwMjoxMQ0Kpqyl86rMOiBZQyBIc2llaCA8eWNfaHNpZWhAYXNw
ZWVkdGVjaC5jb20+OyBDb3JleSBNaW55YXJkIDxjb3JleUBtaW55YXJkLm5ldD47IFJvYiBIZXJy
aW5nIDxyb2JoQGtlcm5lbC5vcmc+OyBLcnp5c3p0b2YgS296bG93c2tpIDxrcnprK2R0QGtlcm5l
bC5vcmc+OyBDb25vciBEb29sZXkgPGNvbm9yK2R0QGtlcm5lbC5vcmc+OyBKb2VsIFN0YW5sZXkg
PGpvZWxAam1zLmlkLmF1PjsgQW5kcmV3IEplZmZlcnkgPGFuZHJld0Bjb2RlY29uc3RydWN0LmNv
bS5hdT4NCrDGpbs6IG9wZW5pcG1pLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQgPG9w
ZW5pcG1pLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQ+OyBsaW51eC1rZXJuZWxAdmdl
ci5rZXJuZWwub3JnIDxsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnPjsgZGV2aWNldHJlZUB2
Z2VyLmtlcm5lbC5vcmcgPGRldmljZXRyZWVAdmdlci5rZXJuZWwub3JnPjsgbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnIDxsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmc+OyBsaW51eC1hc3BlZWRAbGlzdHMub3psYWJzLm9yZyA8bGludXgtYXNwZWVkQGxpc3Rz
Lm96bGFicy5vcmc+DQqlRKauOiBSZTogW1BBVENIIDMvNF0gZHQtYmluZGluZ3M6IGlwbWk6IEFk
ZCBvcHRpb25hbCBMUEMgcHJvcGVydGllcyB0byBBU1BFRUQgQlQgZGV2aWNlcw0KDQpPbiAyOS8w
Ni8yMDI2IDA4OjQ5LCBZdS1DaGUgSHNpZWggdmlhIEI0IFJlbGF5IHdyb3RlOg0KPiBGcm9tOiBZ
dS1DaGUgSHNpZWggPHljX2hzaWVoQGFzcGVlZHRlY2guY29tPg0KPg0KPiBBbGxvY2F0aW5nIElP
IGFuZCBJUlEgcmVzb3VyY2VzIHRvIExQQyBkZXZpY2VzIGlzIGluLXRoZW9yeSBhbiBvcGVyYXRp
b24NCj4NCj4gZm9yIHRoZSBob3N0LCBob3dldmVyIEFTUEVFRCBzeXN0ZW1zIGRlc2NyaWJlIHRo
ZXNlIHJlc291cmNlcyB0aHJvdWdoDQo+DQo+IEJNQy1pbnRlcm5hbCBjb25maWd1cmF0aW9uLCBh
cyBhbHJlYWR5IHN1cHBvcnRlZCBieSB0aGUgQVNQRUVEIEtDUyBCTUMNCg0KV2hhdA0KDQppcw0K
DQp3aXRoDQoNCnRoaXMNCg0KbGluZSBicmVha3M/DQoNCg0KPg0KPiBiaW5kaW5nLg0KPg0KPiBB
ZGQgYXNwZWVkLGxwYy1pby1yZWcgYW5kIGFzcGVlZCxscGMtaW50ZXJydXB0cyB0byB0aGUgQVNQ
RUVEIEJUIEJNQw0KPg0KPiBiaW5kaW5nIHNvIGZpcm13YXJlIGNhbiBkZXNjcmliZSB0aGUgaG9z
dCBMUEMgSU8gYWRkcmVzcyBhbmQgU2VySVJRDQo+DQo+IGNvbmZpZ3VyYXRpb24gdXNpbmcgdGhl
IHNhbWUgcHJvcGVydGllcyBhcyBLQ1MgZGV2aWNlcy4NCj4NCj4gU2lnbmVkLW9mZi1ieTogWXUt
Q2hlIEhzaWVoIDx5Y19oc2llaEBhc3BlZWR0ZWNoLmNvbT4NCj4gLS0tDQo+IC4uLi9iaW5kaW5n
cy9pcG1pL2FzcGVlZCxhc3QyNDAwLWlidC1ibWMueWFtbCAgICAgICB8IDIxICsrKysrKysrKysr
KysrKysrKysrKw0KPiAgMSBmaWxlIGNoYW5nZWQsIDIxIGluc2VydGlvbnMoKykNCj4NCj4gZGlm
ZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9pcG1pL2FzcGVlZCxh
c3QyNDAwLWlidC1ibWMueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9p
cG1pL2FzcGVlZCxhc3QyNDAwLWlidC1ibWMueWFtbA0KPiBpbmRleCBjNGY3Y2RiYmUxNmIuLjE4
MDNjNmJiYWU5MyAxMDA2NDQNCj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL2lwbWkvYXNwZWVkLGFzdDI0MDAtaWJ0LWJtYy55YW1sDQo+ICsrKyBiL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9pcG1pL2FzcGVlZCxhc3QyNDAwLWlidC1ibWMueWFtbA0K
PiBAQCAtMjUsNiArMjUsMjQgQEAgcHJvcGVydGllczoNCj4gICAgaW50ZXJydXB0czoNCj4gICAg
ICBtYXhJdGVtczogMQ0KPg0KPiArICBhc3BlZWQsbHBjLWlvLXJlZzoNCj4gKyAgICAkcmVmOiAv
c2NoZW1hcy90eXBlcy55YW1sIy9kZWZpbml0aW9ucy91aW50MzItYXJyYXkNCj4gKyAgICBtYXhJ
dGVtczogMQ0KPiArICAgIGRlc2NyaXB0aW9uOiB8DQo+ICsgICAgICBUaGUgaG9zdCBDUFUgTFBD
IElPIGFkZHJlc3MgZm9yIHRoZSBCVCBkZXZpY2UuDQoNCk5vLCB5b3UgZG8gbm90IGdldCBzZWNv
bmQgcmVnIHByb3BlcnR5Lg0KDQo+ICsNCj4gKyAgYXNwZWVkLGxwYy1pbnRlcnJ1cHRzOg0KPiAr
ICAgICRyZWY6IC9zY2hlbWFzL3R5cGVzLnlhbWwjL2RlZmluaXRpb25zL3VpbnQzMi1hcnJheQ0K
PiArICAgIG1pbkl0ZW1zOiAyDQo+ICsgICAgbWF4SXRlbXM6IDINCj4gKyAgICBkZXNjcmlwdGlv
bjogfA0KPiArICAgICAgQSAyLWNlbGwgcHJvcGVydHkgZXhwcmVzc2luZyB0aGUgTFBDIFNlcklS
USBudW1iZXIgYW5kIHRoZSBpbnRlcnJ1cHQNCj4gKyAgICAgIGxldmVsL3NlbnNlIGVuY29kaW5n
IChzcGVjaWZpZWQgaW4gdGhlIHN0YW5kYXJkIGZhc2hpb24pLg0KPiArDQo+ICsgICAgICBOb3Rl
IHRoYXQgdGhlIGdlbmVyYXRlZCBpbnRlcnJ1cHQgaXMgaXNzdWVkIGZyb20gdGhlIEJNQyB0byB0
aGUgaG9zdCwgYW5kDQo+ICsgICAgICB0aHVzIHRoZSB0YXJnZXQgaW50ZXJydXB0IGNvbnRyb2xs
ZXIgaXMgbm90IGNhcHR1cmVkIGJ5IHRoZSBCTUMncw0KPiArICAgICBkZXZpY2V0cmVlLg0KDQpO
bywgeW91IGRvIG5vdCBnZXQgc2Vjb25kIGludGVycnVwdHMgcHJvcGVydHkuDQoNCj4NCg0KDQpC
ZXN0IHJlZ2FyZHMsDQpLcnp5c3p0b2YNCg==

--_000_TY0PR06MB6855F4F499246CD5C44DB23893FA2TY0PR06MB6855apcp_
Content-Type: text/html; charset="big5"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dbig5">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div class=3D"elementToProof" style=3D"font-family: &quot;Segoe UI&quot;, &=
quot;Segoe UI Web (West European)&quot;, -apple-system, BlinkMacSystemFont,=
 Roboto, &quot;Helvetica Neue&quot;, sans-serif; font-size: 11pt; color: rg=
b(0, 0, 0);">
On Tue, Jun 30, 2026 at 08:11:34AM +0200, Krzysztof Kozlowski wrote:</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Segoe UI&quot;, &=
quot;Segoe UI Web (West European)&quot;, -apple-system, BlinkMacSystemFont,=
 Roboto, &quot;Helvetica Neue&quot;, sans-serif; font-size: 11pt; color: rg=
b(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Segoe UI&quot;, &=
quot;Segoe UI Web (West European)&quot;, -apple-system, BlinkMacSystemFont,=
 Roboto, &quot;Helvetica Neue&quot;, sans-serif; font-size: 11pt; color: rg=
b(0, 0, 0);">
&gt; What</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Segoe UI&quot;, &=
quot;Segoe UI Web (West European)&quot;, -apple-system, BlinkMacSystemFont,=
 Roboto, &quot;Helvetica Neue&quot;, sans-serif; font-size: 11pt; color: rg=
b(0, 0, 0);">
&gt;&nbsp;</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Segoe UI&quot;, &=
quot;Segoe UI Web (West European)&quot;, -apple-system, BlinkMacSystemFont,=
 Roboto, &quot;Helvetica Neue&quot;, sans-serif; font-size: 11pt; color: rg=
b(0, 0, 0);">
&gt; is</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Segoe UI&quot;, &=
quot;Segoe UI Web (West European)&quot;, -apple-system, BlinkMacSystemFont,=
 Roboto, &quot;Helvetica Neue&quot;, sans-serif; font-size: 11pt; color: rg=
b(0, 0, 0);">
&gt;&nbsp;</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Segoe UI&quot;, &=
quot;Segoe UI Web (West European)&quot;, -apple-system, BlinkMacSystemFont,=
 Roboto, &quot;Helvetica Neue&quot;, sans-serif; font-size: 11pt; color: rg=
b(0, 0, 0);">
&gt; with</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Segoe UI&quot;, &=
quot;Segoe UI Web (West European)&quot;, -apple-system, BlinkMacSystemFont,=
 Roboto, &quot;Helvetica Neue&quot;, sans-serif; font-size: 11pt; color: rg=
b(0, 0, 0);">
&gt;</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Segoe UI&quot;, &=
quot;Segoe UI Web (West European)&quot;, -apple-system, BlinkMacSystemFont,=
 Roboto, &quot;Helvetica Neue&quot;, sans-serif; font-size: 11pt; color: rg=
b(0, 0, 0);">
&gt; this</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Segoe UI&quot;, &=
quot;Segoe UI Web (West European)&quot;, -apple-system, BlinkMacSystemFont,=
 Roboto, &quot;Helvetica Neue&quot;, sans-serif; font-size: 11pt; color: rg=
b(0, 0, 0);">
&gt;</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Segoe UI&quot;, &=
quot;Segoe UI Web (West European)&quot;, -apple-system, BlinkMacSystemFont,=
 Roboto, &quot;Helvetica Neue&quot;, sans-serif; font-size: 11pt; color: rg=
b(0, 0, 0);">
&gt; line breaks?</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Segoe UI&quot;, &=
quot;Segoe UI Web (West European)&quot;, -apple-system, BlinkMacSystemFont,=
 Roboto, &quot;Helvetica Neue&quot;, sans-serif; font-size: 11pt; color: rg=
b(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Segoe UI&quot;, &=
quot;Segoe UI Web (West European)&quot;, -apple-system, BlinkMacSystemFont,=
 Roboto, &quot;Helvetica Neue&quot;, sans-serif; font-size: 11pt; color: rg=
b(0, 0, 0);">
Apologies for the broken formatting in the commit message.</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Segoe UI&quot;, &=
quot;Segoe UI Web (West European)&quot;, -apple-system, BlinkMacSystemFont,=
 Roboto, &quot;Helvetica Neue&quot;, sans-serif; font-size: 11pt; color: rg=
b(0, 0, 0);">
I will fix it in the next revision.</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Segoe UI&quot;, &=
quot;Segoe UI Web (West European)&quot;, -apple-system, BlinkMacSystemFont,=
 Roboto, &quot;Helvetica Neue&quot;, sans-serif; font-size: 11pt; color: rg=
b(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Segoe UI&quot;, &=
quot;Segoe UI Web (West European)&quot;, -apple-system, BlinkMacSystemFont,=
 Roboto, &quot;Helvetica Neue&quot;, sans-serif; font-size: 11pt; color: rg=
b(0, 0, 0);">
&gt; No, you do not get second reg property.</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Segoe UI&quot;, &=
quot;Segoe UI Web (West European)&quot;, -apple-system, BlinkMacSystemFont,=
 Roboto, &quot;Helvetica Neue&quot;, sans-serif; font-size: 11pt; color: rg=
b(0, 0, 0);">
&gt;</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Segoe UI&quot;, &=
quot;Segoe UI Web (West European)&quot;, -apple-system, BlinkMacSystemFont,=
 Roboto, &quot;Helvetica Neue&quot;, sans-serif; font-size: 11pt; color: rg=
b(0, 0, 0);">
&gt; No, you do not get second interrupts property.</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Segoe UI&quot;, &=
quot;Segoe UI Web (West European)&quot;, -apple-system, BlinkMacSystemFont,=
 Roboto, &quot;Helvetica Neue&quot;, sans-serif; font-size: 11pt; color: rg=
b(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Segoe UI&quot;, &=
quot;Segoe UI Web (West European)&quot;, -apple-system, BlinkMacSystemFont,=
 Roboto, &quot;Helvetica Neue&quot;, sans-serif; font-size: 11pt; color: rg=
b(0, 0, 0);">
Understood.</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Segoe UI&quot;, &=
quot;Segoe UI Web (West European)&quot;, -apple-system, BlinkMacSystemFont,=
 Roboto, &quot;Helvetica Neue&quot;, sans-serif; font-size: 11pt; color: rg=
b(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Segoe UI&quot;, &=
quot;Segoe UI Web (West European)&quot;, -apple-system, BlinkMacSystemFont,=
 Roboto, &quot;Helvetica Neue&quot;, sans-serif; font-size: 11pt; color: rg=
b(0, 0, 0);">
These values are not addressable resources of the BMC node itself;</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Segoe UI&quot;, &=
quot;Segoe UI Web (West European)&quot;, -apple-system, BlinkMacSystemFont,=
 Roboto, &quot;Helvetica Neue&quot;, sans-serif; font-size: 11pt; color: rg=
b(0, 0, 0);">
rather, they describe how the BMC's LPC engine is exposed on the host</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Segoe UI&quot;, &=
quot;Segoe UI Web (West European)&quot;, -apple-system, BlinkMacSystemFont,=
 Roboto, &quot;Helvetica Neue&quot;, sans-serif; font-size: 11pt; color: rg=
b(0, 0, 0);">
LPC bus. I am not sure how they should be represented in DT, since</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Segoe UI&quot;, &=
quot;Segoe UI Web (West European)&quot;, -apple-system, BlinkMacSystemFont,=
 Roboto, &quot;Helvetica Neue&quot;, sans-serif; font-size: 11pt; color: rg=
b(0, 0, 0);">
they do not seem to fit the usual semantics of either &quot;reg&quot; or &q=
uot;interrupts&quot;.</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Segoe UI&quot;, &=
quot;Segoe UI Web (West European)&quot;, -apple-system, BlinkMacSystemFont,=
 Roboto, &quot;Helvetica Neue&quot;, sans-serif; font-size: 11pt; color: rg=
b(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Segoe UI&quot;, &=
quot;Segoe UI Web (West European)&quot;, -apple-system, BlinkMacSystemFont,=
 Roboto, &quot;Helvetica Neue&quot;, sans-serif; font-size: 11pt; color: rg=
b(0, 0, 0);">
Do you have a preferred way to represent this kind of host-facing LPC</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Segoe UI&quot;, &=
quot;Segoe UI Web (West European)&quot;, -apple-system, BlinkMacSystemFont,=
 Roboto, &quot;Helvetica Neue&quot;, sans-serif; font-size: 11pt; color: rg=
b(0, 0, 0);">
configuration in the binding?</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Segoe UI&quot;, &=
quot;Segoe UI Web (West European)&quot;, -apple-system, BlinkMacSystemFont,=
 Roboto, &quot;Helvetica Neue&quot;, sans-serif; font-size: 11pt; color: rg=
b(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: &quot;Segoe UI&quot;, &=
quot;Segoe UI Web (West European)&quot;, -apple-system, BlinkMacSystemFont,=
 Roboto, &quot;Helvetica Neue&quot;, sans-serif; font-size: 11pt; color: rg=
b(0, 0, 0);">
Thanks,</div>
<div style=3D"font-family: &quot;Segoe UI&quot;, &quot;Segoe UI Web (West E=
uropean)&quot;, -apple-system, BlinkMacSystemFont, Roboto, &quot;Helvetica =
Neue&quot;, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
Yu-Che</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<hr style=3D"display: inline-block; width: 98%;">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<b>=B1H=A5=F3=AA=CC:</b> Krzysztof Kozlowski &lt;krzk@kernel.org&gt;<br>
<b>=A4w=B6=C7=B0e:</b> =ACP=B4=C1=A4G, 2026 =A6~ 6 =A4=EB 30 =A4=E9 =A4U=A4=
=C8 02:11<br>
<b>=A6=AC=A5=F3=AA=CC:</b> YC Hsieh &lt;yc_hsieh@aspeedtech.com&gt;; Corey =
Minyard &lt;corey@minyard.net&gt;; Rob Herring &lt;robh@kernel.org&gt;; Krz=
ysztof Kozlowski &lt;krzk+dt@kernel.org&gt;; Conor Dooley &lt;conor+dt@kern=
el.org&gt;; Joel Stanley &lt;joel@jms.id.au&gt;; Andrew Jeffery &lt;andrew@=
codeconstruct.com.au&gt;<br>
<b>=B0=C6=A5=BB:</b> openipmi-developer@lists.sourceforge.net &lt;openipmi-=
developer@lists.sourceforge.net&gt;; linux-kernel@vger.kernel.org &lt;linux=
-kernel@vger.kernel.org&gt;; devicetree@vger.kernel.org &lt;devicetree@vger=
.kernel.org&gt;; linux-arm-kernel@lists.infradead.org &lt;linux-arm-kernel@=
lists.infradead.org&gt;;
 linux-aspeed@lists.ozlabs.org &lt;linux-aspeed@lists.ozlabs.org&gt;<br>
<b>=A5D=A6=AE:</b> Re: [PATCH 3/4] dt-bindings: ipmi: Add optional LPC prop=
erties to ASPEED BT devices
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-size: 11pt;">On 29/06/2026 08:49, Yu-Che Hsieh via B4 Re=
lay wrote:<br>
&gt; From: Yu-Che Hsieh &lt;yc_hsieh@aspeedtech.com&gt;<br>
&gt;<br>
&gt; Allocating IO and IRQ resources to LPC devices is in-theory an operati=
on<br>
&gt;<br>
&gt; for the host, however ASPEED systems describe these resources through<=
br>
&gt;<br>
&gt; BMC-internal configuration, as already supported by the ASPEED KCS BMC=
<br>
<br>
What<br>
<br>
is<br>
<br>
with<br>
<br>
this<br>
<br>
line breaks?<br>
<br>
<br>
&gt;<br>
&gt; binding.<br>
&gt;<br>
&gt; Add aspeed,lpc-io-reg and aspeed,lpc-interrupts to the ASPEED BT BMC<b=
r>
&gt;<br>
&gt; binding so firmware can describe the host LPC IO address and SerIRQ<br=
>
&gt;<br>
&gt; configuration using the same properties as KCS devices.<br>
&gt;<br>
&gt; Signed-off-by: Yu-Che Hsieh &lt;yc_hsieh@aspeedtech.com&gt;<br>
&gt; ---<br>
&gt; .../bindings/ipmi/aspeed,ast2400-ibt-bmc.yaml&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; | 21 +++++++++++++++++++++<br>
&gt;&nbsp; 1 file changed, 21 insertions(+)<br>
&gt;<br>
&gt; diff --git a/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-ibt=
-bmc.yaml b/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-ibt-bmc.y=
aml<br>
&gt; index c4f7cdbbe16b..1803c6bbae93 100644<br>
&gt; --- a/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-ibt-bmc.ya=
ml<br>
&gt; +++ b/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-ibt-bmc.ya=
ml<br>
&gt; @@ -25,6 +25,24 @@ properties:<br>
&gt;&nbsp;&nbsp;&nbsp; interrupts:<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; maxItems: 1<br>
&gt;&nbsp;<br>
&gt; +&nbsp; aspeed,lpc-io-reg:<br>
&gt; +&nbsp;&nbsp;&nbsp; $ref: /schemas/types.yaml#/definitions/uint32-arra=
y<br>
&gt; +&nbsp;&nbsp;&nbsp; maxItems: 1<br>
&gt; +&nbsp;&nbsp;&nbsp; description: |<br>
&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; The host CPU LPC IO address for the BT=
 device.<br>
<br>
No, you do not get second reg property.<br>
<br>
&gt; +<br>
&gt; +&nbsp; aspeed,lpc-interrupts:<br>
&gt; +&nbsp;&nbsp;&nbsp; $ref: /schemas/types.yaml#/definitions/uint32-arra=
y<br>
&gt; +&nbsp;&nbsp;&nbsp; minItems: 2<br>
&gt; +&nbsp;&nbsp;&nbsp; maxItems: 2<br>
&gt; +&nbsp;&nbsp;&nbsp; description: |<br>
&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; A 2-cell property expressing the LPC S=
erIRQ number and the interrupt<br>
&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; level/sense encoding (specified in the=
 standard fashion).<br>
&gt; +<br>
&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Note that the generated interrupt is i=
ssued from the BMC to the host, and<br>
&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; thus the target interrupt controller i=
s not captured by the BMC's<br>
&gt; +&nbsp;&nbsp;&nbsp;&nbsp; devicetree.<br>
<br>
No, you do not get second interrupts property.<br>
<br>
&gt;<br>
<br>
<br>
Best regards,<br>
Krzysztof<br>
</div>
</body>
</html>

--_000_TY0PR06MB6855F4F499246CD5C44DB23893FA2TY0PR06MB6855apcp_--


--===============1994031888330205441==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============1994031888330205441==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============1994031888330205441==--


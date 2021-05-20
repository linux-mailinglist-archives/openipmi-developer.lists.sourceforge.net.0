Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C7F3438B1D1
	for <lists+openipmi-developer@lfdr.de>; Thu, 20 May 2021 16:36:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Content-Transfer-Encoding:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:Date:Message-ID:
	References:To:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0tKMY5cm14cL9ZKFGsDO1r7P52yHmVnqWIAh7owppLI=; b=YybCUTIxTV3SkcPTOI5yxZaiIz
	3WYr5fU/iC5HH+G2AMLicO+tLqiKmeVWlNJxSTY1Nz2gbnCs7R63ydvuni/WQ5yu2OrvrSjeuZGxB
	EOohoI7CCZ30+YvYPrncaTTQn4ZwFY83vfurQw4N4Sx2CghEMaYcXeUbudC147XWGMUY=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1ljjmz-0002T8-Dy; Thu, 20 May 2021 14:36:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <quan@os.amperecomputing.com>) id 1ljjmw-0002Sz-Rq
 for openipmi-developer@lists.sourceforge.net; Thu, 20 May 2021 14:36:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lyql9MaMdh47OJgpYDRPts7soSiw2EHAounFyrEltV0=; b=MFG3Fg30unAKFKpoe4XZBf2VLR
 AGBUPS64xnXA6GX0s60UZmXjkR/4VZfleruPM6fwQaPeQhGV9WAhYAL5/qqLg9w9CVqATp+PndrCd
 eq378+nr9bg7qa1IsMCw/UxUUbZ79SIUSev/cI+1ZTUUhJpt21b2BUsqDMRZ9Wzysip0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lyql9MaMdh47OJgpYDRPts7soSiw2EHAounFyrEltV0=; b=J2xciCIjSiJ6X0BXpj+FBhP3Ge
 dmG196WXblLz7vLA+BRMTz++4/NPld91h44XeJJ4Tr77RR/rI4nNgW0MkL8NYfUS+0/35OkCGTNHv
 eCMszQJaoX1MwF3Qeaz6VeoKFl7tT+Ec9JHGH9JFm9+FI882+YchpcY3vdAey3nGMImw=;
Received: from mail-bn8nam11on2118.outbound.protection.outlook.com
 ([40.107.236.118] helo=NAM11-BN8-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1ljjmq-00Gaxo-6n
 for openipmi-developer@lists.sourceforge.net; Thu, 20 May 2021 14:36:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MfmMetX4YWCM+hZ0s2oEhRsjT1xqOQu8mjU7VviEBbrMJvIjIrP50r7b3WnVD4cxQxDI2BqxoKzHkPaquZaUtKhdYJYPu4jhDTf7dXExvezI14iiD3v7HBWJ9nNQwouFCjqMhqpAtJvSxO7MVq5zXKAqZSZrUkzDQFqPuUlMcfvDF4wFX0cbQu2wCiXsFH5czIjktzIfSInQLJUx9jbzYs904Jzq0aV69X6Ihe6oOdXHkLSpkKbFpERkkpIvCNVBxF9bO7pne5i8kW84xCZ6jmwXaqHQQ9TiO8EsaUMB4C+QXu+ESnmGBQyFSeV/UAmgyEq4Y8cnOCvLDU1lr6Hjkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lyql9MaMdh47OJgpYDRPts7soSiw2EHAounFyrEltV0=;
 b=PpDqTnSZDiIazKprJmL9dGjc7lGFWULn70di6sJzMZLw7dENBOI+ARyLyxHwOF6ifjLVzRGmbMgvdnG2ZM16WH2ish22Vl7Kulgz9VB+KQuCyPqCujTx3kU0/cQNuiILRAOKk2efuLE75E/UTkWQDqRl5CZYhOHNhfzjE7ZNo7AjHBr2t4sQ/TiRykfeUPS57Ze+e3Cg5sRN1MxzEodkdnSNSbFecEBBNuKkGdTR9L8olFttx2GzwqcXyrpfp+xGr29xQzl45Uxli80xRjl0w+lSqYT9vz3WSsgVm0VwJ1/jLeeW971Gd8c0gqxTdo5DBkMrEheuoKj8cgjz5uj4Rw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=os.amperecomputing.com; dmarc=pass action=none
 header.from=os.amperecomputing.com; dkim=pass
 header.d=os.amperecomputing.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=os.amperecomputing.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lyql9MaMdh47OJgpYDRPts7soSiw2EHAounFyrEltV0=;
 b=O8vNssRH1rSaDThpwcuwEXEes8+HZi+Q5hWtOhIzZngQDNuU4D//K6Shigz45TiMB2PqrmL8+HhIxmJMnoThHqfThcaFgGAoy6NYd/rvmhZjF58FkuTINl4Z9Cb+0Jp3SEsFBCYYOLwMfHqVx6T/pRurDYylJP1/aTxKe7YfJoc=
Authentication-Results: lists.ozlabs.org; dkim=none (message not signed)
 header.d=none;lists.ozlabs.org; dmarc=none action=none
 header.from=os.amperecomputing.com;
Received: from MW2PR0102MB3482.prod.exchangelabs.com (2603:10b6:302:c::32) by
 MWHPR01MB2672.prod.exchangelabs.com (2603:10b6:300:f2::10) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4150.23; Thu, 20 May 2021 14:03:48 +0000
Received: from MW2PR0102MB3482.prod.exchangelabs.com
 ([fe80::d840:7aa7:58d4:b503]) by MW2PR0102MB3482.prod.exchangelabs.com
 ([fe80::d840:7aa7:58d4:b503%5]) with mapi id 15.20.4129.034; Thu, 20 May 2021
 14:03:47 +0000
To: Guenter Roeck <linux@roeck-us.net>, Joel Stanley <joel@jms.id.au>
References: <20210519074934.20712-1-quan@os.amperecomputing.com>
 <20210519074934.20712-5-quan@os.amperecomputing.com>
 <CACPK8XdyQT=cuSr9KBqC0PBkOLgBUBpyz3kZEA3JuOuZsQN_Rw@mail.gmail.com>
 <414a51e8-0973-0007-9ffc-2949f3c7b0f8@roeck-us.net>
Message-ID: <f7b8ee1d-61dc-68a8-f60e-25f99e104c04@os.amperecomputing.com>
Date: Thu, 20 May 2021 21:03:33 +0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.10.2
In-Reply-To: <414a51e8-0973-0007-9ffc-2949f3c7b0f8@roeck-us.net>
Content-Language: en-US
X-Originating-IP: [2402:800:623c:5f9b:6031:ff4f:8fc2:44d0]
X-ClientProxiedBy: HK2PR02CA0199.apcprd02.prod.outlook.com
 (2603:1096:201:20::11) To MW2PR0102MB3482.prod.exchangelabs.com
 (2603:10b6:302:c::32)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2402:800:623c:5f9b:6031:ff4f:8fc2:44d0]
 (2402:800:623c:5f9b:6031:ff4f:8fc2:44d0) by
 HK2PR02CA0199.apcprd02.prod.outlook.com (2603:1096:201:20::11) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4150.23 via Frontend Transport; Thu, 20 May 2021 14:03:43 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9c373ca7-6ea2-4650-30b0-08d91b981676
X-MS-TrafficTypeDiagnostic: MWHPR01MB2672:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MWHPR01MB26724707C44289B435517C81F22A9@MWHPR01MB2672.prod.exchangelabs.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: lScz7btVUYbqeQPrvviWcyZmoxnASf9wXSzbBFmdYw0iftLQn7hz9VNzQSw/U0kl0w1uYrNLWHNM+naU1lfMELb3RejzvSjGqfDnlGDyQvO3p9yWOgbltBCmWyhtf+9RFvJ9UnUimyJIlLMwIzVsNseFvBI+bOOKu+Y95Te5cd3+nJSPb1nbrqtXeZrJ92eTLxbkHH5uZKOs8h28HAUD3BjY9z1JBgYCviY6EFe23T7JPi71qWLj6oMIGsk44qkTZC6I1PyO5xoKGbbJD7PBYu50zah0s39C8y6c+nbKcWGfXNhAcCVkYWtvCG5Vd6EbliG7CV2oz8jnUsZNR0+/DtrSZzIjor6XZPOJUMv5DValSuR2GIW1+efWsljj3/6fUaQlcu8vg4rtN5rD2/PKbV3Ivyv12HHzvgONsnf1nnIVNuMfb4CTnPGlF000wNOT/ef6SVmq9hsgS7CGhawm/3iQnPNHrZpWATuT6ztzveki3cBEuNzmc5YhZF2jfrcVph83y+mEPLmF3UJrbUK4itIm9A75rvcQOVQFqhcOUpa9DnYM1PHjfoXx/8Df7y6Uq7ujptn3tn9l24z7mvU5Kwvp2OJwTPB53lLxDvZA3dVIZZM+0MV3lTeWWZXtAg18SoHyJcmqp+Y+NzhKmFq5aGDV4tuOd3m7YSPzzs14onMMPSnUEQs4nYLkVHFbKFJk
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW2PR0102MB3482.prod.exchangelabs.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(39840400004)(366004)(346002)(136003)(396003)(16526019)(86362001)(186003)(7416002)(83380400001)(52116002)(66556008)(66476007)(31696002)(53546011)(66946007)(6666004)(478600001)(2616005)(31686004)(8936002)(38100700002)(316002)(54906003)(8676002)(6486002)(110136005)(5660300002)(4326008)(2906002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?cGVnaUIvL0o4NFV3SHA1S01UQVpsbTk4Uk5pclpBWEZDVERxZlR5TFFDOW41?=
 =?utf-8?B?c3ZJWmxkSFBhbHp5Qmk5czBROTE4TjNjVVdiay9DWE9qZU4zTTJZK1FLOXMr?=
 =?utf-8?B?RGY4MDFzZ1p3clFlVGhkUDVqazFmN1FGdFFzekZieFhZS2JPTFU4Z0h6YlNF?=
 =?utf-8?B?ZllWUkhYRVhueFhDNGlvMGtLRTBBVC9HRS8wRnlHdzZsVzZsRGQxbGx0M0kx?=
 =?utf-8?B?OXI4K0pjU1FLLzVGRUppekhGbDJtK3UzT1U1ZUd2Z1NlM2NnTVdGcGllTklL?=
 =?utf-8?B?aWVaODhQZTlDRkFHUGg3MzBRUk5SVU1qRklHaWt2N0JaRkkyT21QVjh1NjIr?=
 =?utf-8?B?UTdsRURsc1Fta082STdHTWZUT3Q3eU85OHZLUkUwYWdRUExKZVBleUdWVEY3?=
 =?utf-8?B?clVTcWI4MCtVNEEwbm55YlNDZnM1OG1FdGhTY2RnUXpHdU56N3VPWHBiWFNB?=
 =?utf-8?B?cGRZQ2xobTJCM1dFVlZZaTVjekxqbkNMSHlMKzk2MFZzKzg1TE51UnAweDFB?=
 =?utf-8?B?aHJTV29sNXpVbTZUam5ONzJma3pzWGtXR2laNE1mQTZwcGkwZXBwczYrZ3BT?=
 =?utf-8?B?MUdjVUFFSU8wRHpBZ3lIV0FnMjliMnM5Q1NTRjFHUTd6MmVleTAyK3lzenZm?=
 =?utf-8?B?UVcxbU9aWmorQ2lxaG9XeGhIOUVtZVMrN3crQzd1SFB3dXpWdUNWSVFUak5G?=
 =?utf-8?B?QVI0Vm1USDU5MENoU2Z0SUxScGEzUmlvdlZUUEhOdjRZcHJCY2k4SXFzdi9r?=
 =?utf-8?B?RGhxN24yUmpVbkhCVGZqMkx5UUZuUjEzSnZwMDd3d3IvVzJYTlN2eDlObkVs?=
 =?utf-8?B?TWtnNVFRdld3Q2RPRFNFQmNJZHdQYXFnYWxWSHdUUyt3RTFSaVZBL1RmZ2xr?=
 =?utf-8?B?aHRQOEtid2NRd3BuMzFibWNpRjFDQ1JqVzRKN0dWNk5kWG54YTdTUUFQS1pX?=
 =?utf-8?B?WXlMd09VK2tPUkpRb0x6OHZUejFseEpRSWwycVFzclBJdVFTSjFyemFEWENH?=
 =?utf-8?B?ci9qcEJ2MXBHZm51SVo5YWFadHVYYnFxckdoUXBlU2licG1ETHdSV1dWdEdn?=
 =?utf-8?B?RUkxUCtKZnQ5VmxuTHI0OEw0MFZhdzlkZS9wN3pGdVBJdWtYUkF2NE9Damkr?=
 =?utf-8?B?TllBdXQ0ZmlvM0Y3NFhHRXcrQmg4NnQrRjB3Mm5YYnNnaldkam1KRy93M2li?=
 =?utf-8?B?SUs1YkQxeDZLQVdYTmtwVWN3a3NLMDVWVStqUElOTEhDQ3FzN1RSZ044cDU1?=
 =?utf-8?B?TUMxTWJlZEZ0L0xLVGpYSWFmQzNZNjdtcURjN0wyTEJDZCt0MXd3Y1FQQ1dv?=
 =?utf-8?B?Z0s2MnFLMWN6a3RMU1dKSlA4TUxUa0FsaHZCLzdLQm04dmE0K05HT3ZCM0Vp?=
 =?utf-8?B?Ukgrek9hTi9aN3FCOHV5SmVOVWcyZVdwTUkzdWJKcXhwRU5HZ0pabUdjcXNF?=
 =?utf-8?B?cDBTUXFoRFZWSHhOTjdlT1JXTmprUEIvbStpcEk4cS8zd3FWa1llbnlnZmda?=
 =?utf-8?B?NHFTZkhWb2NhOHQ2SWh4UXU1L0lzRlNVb2VyLys0dFQ5QTIwOERFY2MxUzRq?=
 =?utf-8?B?dU0vN2pZbkZQaVJReEFvMUN5OThhalZGT1VIUzY1UG9Ndk5sVVdWMi9QMVJp?=
 =?utf-8?B?K0tqL3NyTEF4T05PanQyQk9LRVplMC9qSHpyWDNaVEJSOXFIcE4yY1FOSkZy?=
 =?utf-8?B?REkrajZxRVN5SDJjN0NoZ1VaSHBLTGo3NytweFJEMmRLN0FPajJxMUV4WjNq?=
 =?utf-8?B?WVRlVUUxb3E4TXJsb2N4RzhjcEt3OGROa2JxbDIwRm16WlRyVGhpUThVZlNw?=
 =?utf-8?B?K0pUcXZhNDVDQ0U5U3kvMVFRcW5kVzFLbGcxN01Pc0ZFOTdYZTRpQ2wzeWow?=
 =?utf-8?Q?SITIDzb1w5/h3?=
X-OriginatorOrg: os.amperecomputing.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9c373ca7-6ea2-4650-30b0-08d91b981676
X-MS-Exchange-CrossTenant-AuthSource: MW2PR0102MB3482.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 May 2021 14:03:47.8407 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /WqiZg7nkrXqekyb6VcDW0LQ4YYZt8V3LiTRqcElkn9nlHsC2I5vun29vmk+TQf7OWnZk0FhVQgQJ+ZX3gE7Yu5/JUMzLStcen3aHy7J5pE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR01MB2672
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: amperecomputing.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.236.118 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.236.118 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1ljjmq-00Gaxo-6n
Subject: Re: [Openipmi-developer] [PATCH v3 4/7] i2c: aspeed: Acknowledge Tx
 done w/wo ACK irq late
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
From: Quan Nguyen via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Quan Nguyen <quan@os.amperecomputing.com>
Cc: devicetree <devicetree@vger.kernel.org>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>, Corey Minyard <minyard@acm.org>,
 Andrew Jeffery <andrew@aj.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 "Thang Q . Nguyen" <thang@os.amperecomputing.com>,
 Brendan Higgins <brendanhiggins@google.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Phong Vo <phong@os.amperecomputing.com>, Wolfram Sang <wsa@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, linux-i2c@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>,
 openipmi-developer@lists.sourceforge.net,
 Open Source Submission <patches@amperecomputing.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gMjAvMDUvMjAyMSAwODoxOSwgR3VlbnRlciBSb2VjayB3cm90ZToKPiBPbiA1LzE5LzIxIDQ6
NDMgUE0sIEpvZWwgU3RhbmxleSB3cm90ZToKPj4gT24gV2VkLCAxOSBNYXkgMjAyMSBhdCAwNzo1
MCwgUXVhbiBOZ3V5ZW4gCj4+IDxxdWFuQG9zLmFtcGVyZWNvbXB1dGluZy5jb20+IHdyb3RlOgo+
Pj4KPj4+IFdpdGggVHggZG9uZSB3L3dvIEFDSyBhcmUgYWNrJ2VkIGVhcmx5IGF0IGJlZ2lubmlu
ZyBvZiBpcnEgaGFuZGxlciwKPj4KPj4gSXMgdy93byBhIHR5cG8/IElmIG5vdCwgcGxlYXNlIHdy
aXRlIHRoZSBmdWxsIHdvcmRzICgid2l0aCBhbmQgd2l0aG91dCIpCj4+Cj4+PiBpdCBpcyBvYnNl
cnZlZCB0aGF0LCB1c3VhbGx5LCB0aGUgVHggZG9uZSB3aXRoIEFjayBpcnEgcmFpc2VzIGluIHRo
ZQo+Pj4gUkVBRCBSRVFVRVNURUQgc3RhdGUuIFRoaXMgaXMgdW5leHBlY3RlZCBhbmQgY29tcGxh
aW50IGFzIGJlbG93IGFwcGVhcjoKPj4+ICJVbmV4cGVjdGVkIEFjayBvbiByZWFkIHJlcXVlc3Qi
Cj4+Pgo+Pj4gQXNzdW1lZCB0aGF0IFR4IGRvbmUgc2hvdWxkIG9ubHkgYmUgYWNrJ2VkIG9uY2Ug
aXQgd2FzIHRydWx5IHByb2Nlc3NlZCwKPj4+IHN3aXRjaCB0byBsYXRlIGFjaydlZCB0aGlzIHR3
byBpcnFzIGFuZCBzZWVuIHRoaXMgaXNzdWUgZ28gYXdheSB0aHJvdWdoCj4+PiB0ZXN0IHdpdGgg
QVNUMjUwMC4uCj4+Cj4+IFBsZWFzZSByZWFkIEd1bmV0ZXIncyBjb21taXQgbWVzc2FnZQo+PiAy
YmU2YjQ3MjExZTE3ZTZjOTBlYWQ0MGQyNGQyYTVjYzgxNWYyZDVjIHRvIGNvbmZpcm0gdGhhdCB5
b3VyIGNoYW5nZXMKPj4gZG8gbm90IGludmFsaWRhdGUgdGhlIGZpeCB0aGF0IHRoZXkgbWFkZS7C
oCBBZGQgdGhlbSB0byBDQyBmb3IgcmV2aWV3Lgo+Pgo+IAo+IFRoaXMgbWlnaHQgcmUtaW50cm9k
dWNlIGEgcmFjZSBjb25kaXRpb24gaWYgdGhlIGNvZGUgdGhhdCBpcyBoYW5kbGluZwo+IFR4IGRv
bmUgc2VuZHMgYW5vdGhlciBieXRlIHdpdGhvdXQgYWNrbm93bGVkZ2luZyB0aGUgb3JpZ2luYWwg
aW50ZXJydXB0LAo+IGFuZCBhbm90aGVyIFR4IGRvbmUgKG9yIFR4IG5hY2spIGludGVycnVwdCBp
cyByZWNlaXZlZCBiZWZvcmUgdGhlIGludGVycnVwdAo+IGhhbmRsZXIgcmV0dXJucy4gSWYgdGhh
dCBoYXBwZW5zLCB0aGUgc2Vjb25kIFR4IGRvbmUgaW50ZXJydXB0IHdvdWxkIGJlCj4gYWNrbm93
bGVkZ2VkIGJ1dCBub3QgYmUgaGFuZGxlZCwgYW5kIHRyYW5zbWl0IHdvdWxkIHN0YWxsLiBUaGF0
IG1heSB3ZWxsIGJlCj4gd2hhdCBJIGhhZCBvYnNlcnZlZCBhdCB0aGUgdGltZSBidXQgaXQgaXMg
dG9vIGxvbmcgYWdvIHRvIHJlbWVtYmVyLCBzb3JyeS4KPiAKTXkgYXNzdW1wdGlvbiBpcyB0aGF0
IEhXIHdpbGwgc3RhcnQgc2VuZGluZyBhbm90aGVyIGJ5dGUgYXMgc29vbiBhcyB0aGUgClR4IGRv
bmUgb2YgdGhlIHByZXZpb3VzIGJ5dGUgaXMgYWNrJ2VkLiBTbyBpZiBpdCB3YXMgYWNrJ2VkIGVh
cmx5IGJlZm9yZSAKdGhlIHNsYXZlIGlycSBoYW5kbGVyIHRvIGFjdHVhbGx5IHByZXBhcmUgdGhl
IG5leHQgYnl0ZSB0byBzZW5kLCBnYXJiYWdlIAp2YWx1ZSBtaWdodCBiZSBzZW50IG91dCBpbnN0
ZWFkLgpJJ20gbm90IHN1cmUgaWYgbXkgYXNzdW1wdGlvbiBpcyBjb3JyZWN0IGJ1dCB0aGlzIHBh
dGNoIGRvIGhlbHAgaW4gdGhpcyAKY2FzZS4KUGxlYXNlIGhlbHAgd2l0aCB5b3VyIGNvbW1lbnQu
Cgo+PiBBZ2FpbiwgdGhpcyBpcyBhIGZpeCB0aGF0IGlzIGluZGVwZW5kZW50IG9mIHRoZSBzc2lm
IHdvcmsuIFBsZWFzZSBzZW5kCj4+IGl0IHNlcGFyYXRlbHkgd2l0aCBhIEZpeGVzIGxpbmUuCj4+
Cj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogUXVhbiBOZ3V5ZW4gPHF1YW5Ab3MuYW1wZXJlY29tcHV0
aW5nLmNvbT4KPj4+IC0tLQo+Pj4gdjM6Cj4+PiDCoMKgICsgRmlyc3QgaW50cm9kdWNlIGluIHYz
IFtRdWFuXQo+Pj4KPj4+IMKgIGRyaXZlcnMvaTJjL2J1c3Nlcy9pMmMtYXNwZWVkLmMgfCAyNiAr
KysrKysrKysrKysrKysrKystLS0tLS0tLQo+Pj4gwqAgMSBmaWxlIGNoYW5nZWQsIDE4IGluc2Vy
dGlvbnMoKyksIDggZGVsZXRpb25zKC0pCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvaTJj
L2J1c3Nlcy9pMmMtYXNwZWVkLmMgCj4+PiBiL2RyaXZlcnMvaTJjL2J1c3Nlcy9pMmMtYXNwZWVk
LmMKPj4+IGluZGV4IDNmYjM3YzNmMjNkNC4uYjJlOWM4ZjBkZGY3IDEwMDY0NAo+Pj4gLS0tIGEv
ZHJpdmVycy9pMmMvYnVzc2VzL2kyYy1hc3BlZWQuYwo+Pj4gKysrIGIvZHJpdmVycy9pMmMvYnVz
c2VzL2kyYy1hc3BlZWQuYwo+Pj4gQEAgLTYwNiw4ICs2MDYsMTIgQEAgc3RhdGljIGlycXJldHVy
bl90IGFzcGVlZF9pMmNfYnVzX2lycShpbnQgaXJxLCAKPj4+IHZvaWQgKmRldl9pZCkKPj4+Cj4+
PiDCoMKgwqDCoMKgwqDCoMKgIHNwaW5fbG9jaygmYnVzLT5sb2NrKTsKPj4+IMKgwqDCoMKgwqDC
oMKgwqAgaXJxX3JlY2VpdmVkID0gcmVhZGwoYnVzLT5iYXNlICsgQVNQRUVEX0kyQ19JTlRSX1NU
U19SRUcpOwo+Pj4gLcKgwqDCoMKgwqDCoCAvKiBBY2sgYWxsIGludGVycnVwdHMgZXhjZXB0IGZv
ciBSeCBkb25lICovCj4+PiAtwqDCoMKgwqDCoMKgIHdyaXRlbChpcnFfcmVjZWl2ZWQgJiB+QVNQ
RUVEX0kyQ0RfSU5UUl9SWF9ET05FLAo+Pj4gK8KgwqDCoMKgwqDCoCAvKgo+Pj4gK8KgwqDCoMKg
wqDCoMKgICogQWNrIGFsbCBpbnRlcnJ1cHRzIGV4Y2VwdCBmb3IgUnggZG9uZSBhbmQKPj4+ICvC
oMKgwqDCoMKgwqDCoCAqIFR4IGRvbmUgd2l0aC93aXRob3V0IEFDSwo+Pgo+PiBOaXQ6IHRoaXMg
Y29tbWVudCBjYW4gYmUgb24gb25lIGxpbmUuCj4+Cj4+Cj4+PiArwqDCoMKgwqDCoMKgwqAgKi8K
Pj4+ICvCoMKgwqDCoMKgwqAgd3JpdGVsKGlycV9yZWNlaXZlZCAmCj4+PiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgfihBU1BFRURfSTJDRF9JTlRSX1JYX0RPTkUgfCBBU1BFRURfSTJDRF9J
TlRSX1RYX0FDSyB8IAo+Pj4gQVNQRUVEX0kyQ0RfSU5UUl9UWF9OQUspLAo+Pj4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIGJ1cy0+YmFzZSArIEFTUEVFRF9JMkNfSU5UUl9TVFNfUkVH
KTsKPj4+IMKgwqDCoMKgwqDCoMKgwqAgcmVhZGwoYnVzLT5iYXNlICsgQVNQRUVEX0kyQ19JTlRS
X1NUU19SRUcpOwo+Pj4gwqDCoMKgwqDCoMKgwqDCoCBpcnFfcmVjZWl2ZWQgJj0gQVNQRUVEX0ky
Q0RfSU5UUl9SRUNWX01BU0s7Cj4+PiBAQCAtNjUyLDEyICs2NTYsMTggQEAgc3RhdGljIGlycXJl
dHVybl90IGFzcGVlZF9pMmNfYnVzX2lycShpbnQgaXJxLCAKPj4+IHZvaWQgKmRldl9pZCkKPj4+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAiaXJxIGhh
bmRsZWQgIT0gaXJxLiBleHBlY3RlZCAweCUwOHgsIGJ1dCAKPj4+IHdhcyAweCUwOHhcbiIsCj4+
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaXJxX3Jl
Y2VpdmVkLCBpcnFfaGFuZGxlZCk7Cj4+Pgo+Pj4gLcKgwqDCoMKgwqDCoCAvKiBBY2sgUnggZG9u
ZSAqLwo+Pj4gLcKgwqDCoMKgwqDCoCBpZiAoaXJxX3JlY2VpdmVkICYgQVNQRUVEX0kyQ0RfSU5U
Ul9SWF9ET05FKSB7Cj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB3cml0ZWwoQVNQ
RUVEX0kyQ0RfSU5UUl9SWF9ET05FLAo+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBidXMtPmJhc2UgKyBBU1BFRURfSTJDX0lOVFJfU1RTX1JFRyk7Cj4+PiAt
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZWFkbChidXMtPmJhc2UgKyBBU1BFRURfSTJD
X0lOVFJfU1RTX1JFRyk7Cj4+PiAtwqDCoMKgwqDCoMKgIH0KPj4+ICvCoMKgwqDCoMKgwqAgLyog
QWNrIFJ4IGRvbmUgYW5kIFR4IGRvbmUgd2l0aC93aXRob3V0IEFDSyAqLwo+Pj4gK8KgwqDCoMKg
wqDCoCAvKiBOb3RlOiBSZS11c2UgaXJxX2hhbmRsZWQgdmFyaWFibGUgKi8KPj4KPj4gSSdtIG5v
dCBzdXJlIHdoYXQgdGhpcyBub3RlIG1lYW5zLgo+Pgo+Pj4gK8KgwqDCoMKgwqDCoCBpcnFfaGFu
ZGxlZCA9IDA7Cj4+PiArwqDCoMKgwqDCoMKgIGlmIChpcnFfcmVjZWl2ZWQgJiBBU1BFRURfSTJD
RF9JTlRSX1JYX0RPTkUpCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpcnFfaGFu
ZGxlZCB8PSBBU1BFRURfSTJDRF9JTlRSX1JYX0RPTkU7Cj4+PiArwqDCoMKgwqDCoMKgIGlmIChp
cnFfcmVjZWl2ZWQgJiBBU1BFRURfSTJDRF9JTlRSX1RYX0FDSykKPj4+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIGlycV9oYW5kbGVkIHw9IEFTUEVFRF9JMkNEX0lOVFJfVFhfQUNLOwo+
Pj4gK8KgwqDCoMKgwqDCoCBpZiAoaXJxX3JlY2VpdmVkICYgQVNQRUVEX0kyQ0RfSU5UUl9UWF9O
QUspCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpcnFfaGFuZGxlZCB8PSBBU1BF
RURfSTJDRF9JTlRSX1RYX05BSzsKPj4+ICvCoMKgwqDCoMKgwqAgd3JpdGVsKGlycV9oYW5kbGVk
LCBidXMtPmJhc2UgKyBBU1BFRURfSTJDX0lOVFJfU1RTX1JFRyk7Cj4+Cj4+IEFyZSB5b3UgaW50
ZW50aW9uYWxseSBvbmx5IGFja2luZyB0aGUgYml0cyB0aGF0IGFyZSBzZXQgd2hlbiB3ZSByZWFk
Cj4+IGZyb20gU1RTX1JFRyBhdCB0aGUgc3RhcnQgb2YgdGhlIGhhbmRsZXI/IElmIG5vdCwgd2Ug
Y291bGQgd3JpdGUgdGhpcwo+PiBpbnN0ZWFkOgo+Pgo+PiB3cml0ZWwoQVNQRUVEX0kyQ0RfSU5U
Ul9SWF9ET05FIHwgQVNQRUVEX0kyQ0RfSU5UUl9UWF9BQ0sgfAo+PiBBU1BFRURfSTJDRF9JTlRS
X1RYX05BSywKPj4gwqDCoMKgwqDCoMKgwqDCoCBidXMtPmJhc2UgKyBBU1BFRURfSTJDX0lOVFJf
U1RTX1JFRyk7Cj4+Cj4gCj4gVGhpcyB3b3VsZCBjbGVhciB0aG9zZSBiaXRzIHVuY29uZGl0aW9u
YWxseSBldmVuIGlmIHRoZXkgd2VyZSBub3QgaGFuZGxlZC4KPiAKPj4gSWYgeW91IG9ubHkgd2Fu
dCB0byBhY2sgdGhlIGJpdHMgdGhhdCBhcmUgc2V0LCB0aGVuIGRvIHRoaXM6Cj4+Cj4+IMKgwqAg
d3JpdGVsKGlycV9yZWNlaXZlZCAmCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAoQVNQRUVE
X0kyQ0RfSU5UUl9SWF9ET05FIHwgQVNQRUVEX0kyQ0RfSU5UUl9UWF9BQ0sgfAo+PiBBU1BFRURf
STJDRF9JTlRSX1RYX05BSyksCj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBidXMtPmJhc2UgKyBBU1BF
RURfSTJDX0lOVFJfU1RTX1JFRyk7Cj4+Cj4+IFRoYXQgd2F5LCB5b3UgY2FuIGF2b2lkIGFsbCBv
ZiB0aGUgdGVzdHMuCj4+Cj4gT3IKPiAgwqDCoMKgwqBpcnFfaGFuZGxlZCA9IGlycV9yZWNlaXZl
ZCAmCj4gIMKgwqDCoMKgwqDCoMKgIChBU1BFRURfSTJDRF9JTlRSX1JYX0RPTkUgfCBBU1BFRURf
STJDRF9JTlRSX1RYX0FDSyB8IAo+IEFTUEVFRF9JMkNEX0lOVFJfVFhfTkFLKTsKPiAgwqDCoMKg
wqB3cml0ZWwoaXJxX2hhbmRsZWQsIGJ1cy0+YmFzZSArIEFTUEVFRF9JMkNfSU5UUl9TVFNfUkVH
KTsKPiAKPiBpZiB0aGUgaWRlYSB3YXMgdG8gYXZvaWQgdGhlIGxvbmcgc3RhdGVtZW50Lgo+IAo+
IEd1ZW50ZXIKPiAKVGhhbmtzIEd1ZW50ZXIsCldpbGwgYXBwbHkgaW4gbmV4dCB2ZXJzaW9uLgoK
Pj4+ICvCoMKgwqDCoMKgwqAgcmVhZGwoYnVzLT5iYXNlICsgQVNQRUVEX0kyQ19JTlRSX1NUU19S
RUcpOwo+Pgo+PiBXaGVuIHlvdSBtb3ZlIHRoaXMsIHBsZWFzZSBhZGQgYSBjb21tZW50IHRoYXQg
cmVtaW5kcyB1cyB3aHkgd2UgZG8gYQo+PiB3cml0ZS10aGVuLXJlYWQgKHNlZSBjb21taXQgYzky
NmM4N2I4ZTM2ZGNjMGVhNWMyYTBhMDIyN2VkNGYzMmQwNTE2YSkuCj4+Cj4+PiArCj4+PiDCoMKg
wqDCoMKgwqDCoMKgIHNwaW5fdW5sb2NrKCZidXMtPmxvY2spOwo+Pj4gwqDCoMKgwqDCoMKgwqDC
oCByZXR1cm4gaXJxX3JlbWFpbmluZyA/IElSUV9OT05FIDogSVJRX0hBTkRMRUQ7Cj4+PiDCoCB9
Cj4+PiAtLSAKPj4+IDIuMjguMAo+Pj4KPiAKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KT3BlbmlwbWktZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApPcGVu
aXBtaS1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNl
Zm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL29wZW5pcG1pLWRldmVsb3Blcgo=

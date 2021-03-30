Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 083F934EACA
	for <lists+openipmi-developer@lfdr.de>; Tue, 30 Mar 2021 16:45:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=37VUAosMPXsP48RJji1rEthDsyVvYPeYYdTVn8ShxPQ=; b=dnA+8fQK3y9WQKVbWFQPV++jbX
	4kw4HpH7QeK4N5E0z+Kcsm4MqaV+JgaDghkx3cGMJ3501NDHQafbJ9myLZDN4JPuVkQOUN/d/5kSw
	HjgkQ7q6KY2A44RnP+46hTJs5JpAvHTPLxSoXZcNBVLXzprwtnp1UP0hK9fEutITkZLY=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lRFcc-0000s0-Fy; Tue, 30 Mar 2021 14:45:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <quan@os.amperecomputing.com>) id 1lRFca-0000rs-95
 for openipmi-developer@lists.sourceforge.net; Tue, 30 Mar 2021 14:45:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SGaNVQD5x5rpuDUHjPygn89EnlhnqwajxUtmJtQ1tjI=; b=cR0ZfwNZKQ+QYBzDGZCjIyHPEP
 9g2RD6vnLjpfYjnXKEC6ScbF1V8J7j3JbhZlvrpxsJ14AesgHZ54c5jYW8QExa+clI3edoR0IBCfB
 pu9N2tTge1imS9/4w50hWPRatnT0yGBxQfYH+0dVjopRHM9nIE1LktEHla6jU8KG5IdY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=SGaNVQD5x5rpuDUHjPygn89EnlhnqwajxUtmJtQ1tjI=; b=Q
 iGBwdDb1Se45J2Mdyu8II5kPI8tlwU/LneLRiazvEM5Hxa6wYapcFevzqetAlCucFAUnfT9BoHhaS
 2Ash7zI7ZWmh6PavNOKNOiAGuGrpnuHeGOHfg7R49MY+o5D0yTaDtxer0Js4b+mbkHjUnR7y9tdZ8
 R33cy/2C3IvCphWM=;
Received: from mail-bn8nam12on2111.outbound.protection.outlook.com
 ([40.107.237.111] helo=NAM12-BN8-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lRFcT-00DGDt-07
 for openipmi-developer@lists.sourceforge.net; Tue, 30 Mar 2021 14:45:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RJVm2z6jrNIQKeMzklEiamOWZT52IFaqVovOKHByEqrbUq08oawc8tTOnxUXxogsbdv0YeUzS+EegdJ3sVDJ2wTetOsMNzcZlnWU67jT6DXiiqa118cUSTY121zug+uh7N3tF/M4johHj5DBrtGUQB+9WqhXCzbxFhXz3HYJsQRIIoF9h9WNWO3wetdpYH8t98veJvSKugsPeV2pPDRkc6b56Bqi1w64RtcJ1m+F9ljVcskZB7VmMNj2ThBT4fttXZD5YX/GtEzLk1DzIT3FlSeZg1yHEKLJ3vZEcwOa96EUeJBujMFUPRNnID8kODe1OxHU3Qz2T0Wt7Ss/ywCXbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SGaNVQD5x5rpuDUHjPygn89EnlhnqwajxUtmJtQ1tjI=;
 b=EVd0U2USwcgqIYDDuRIF76nC5E5euX0PLWEGnwzlbt3bLW4KhHjR0H3nXyKKtkqGsnp91dk/NHMvILWiFxvcYjF0a3q2aIElx8r8OJ/OdGG0tvzn+RgisXOfqqA5gMJHv0LWr5/wIs8YE0Ap1EgSqyBSuQVMrEvJbM1cyaR3DnOAyumizODKB5rpMMwp/+gxH5hDxguIQPsM+3fQC6mVpRyHSzJROKxFC/Bcc8nmbpcxoinJru9Iaf+JGLmOqgcZghoZ2JoA0XhjZWHLnEBpxD+0NaFNOs8Ks6+pFpbnU4DfhBObHBln6Jm1NE4SDV25wXZ5QqKY+ghwAO5yCiuKGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=os.amperecomputing.com; dmarc=pass action=none
 header.from=os.amperecomputing.com; dkim=pass
 header.d=os.amperecomputing.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=os.amperecomputing.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SGaNVQD5x5rpuDUHjPygn89EnlhnqwajxUtmJtQ1tjI=;
 b=MnjHol6kivPOTvDD1C0jNNGzN/eaWnXxaUYw5myJgpal3r6bQ0Q6UlE2q8Fn06PeCLO6d0zg37caApH05kAELQqg7XLw4bxmhw2B6QgiF8oH59CuPH5nVHKRCfdK/kF8riFbG8h+ynIYZ+KFC5rI1syeROL20VkgUHjRESRQvME=
Authentication-Results: acm.org; dkim=none (message not signed)
 header.d=none;acm.org; dmarc=none action=none
 header.from=os.amperecomputing.com;
Received: from MW2PR0102MB3482.prod.exchangelabs.com (2603:10b6:302:c::32) by
 MWHPR01MB2736.prod.exchangelabs.com (2603:10b6:300:f3::10) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3977.33; Tue, 30 Mar 2021 14:10:50 +0000
Received: from MW2PR0102MB3482.prod.exchangelabs.com
 ([fe80::d840:7aa7:58d4:b503]) by MW2PR0102MB3482.prod.exchangelabs.com
 ([fe80::d840:7aa7:58d4:b503%5]) with mapi id 15.20.3977.033; Tue, 30 Mar 2021
 14:10:50 +0000
To: Corey Minyard <minyard@acm.org>, Rob Herring <robh+dt@kernel.org>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 Wolfram Sang <wsa@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 openipmi-developer@lists.sourceforge.net, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org
Date: Tue, 30 Mar 2021 21:10:26 +0700
Message-Id: <20210330141029.20412-1-quan@os.amperecomputing.com>
X-Mailer: git-send-email 2.28.0
X-Originating-IP: [118.69.219.201]
X-ClientProxiedBy: HK0PR03CA0120.apcprd03.prod.outlook.com
 (2603:1096:203:b0::36) To MW2PR0102MB3482.prod.exchangelabs.com
 (2603:10b6:302:c::32)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from hcm-sw-17.amperecomputing.com (118.69.219.201) by
 HK0PR03CA0120.apcprd03.prod.outlook.com (2603:1096:203:b0::36) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3977.29 via Frontend Transport; Tue, 30 Mar 2021 14:10:46 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: eb1e580d-9674-497c-2526-08d8f3859f00
X-MS-TrafficTypeDiagnostic: MWHPR01MB2736:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MWHPR01MB2736A8344B26B21FF4827779F27D9@MWHPR01MB2736.prod.exchangelabs.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5797;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ophLFFlekC5fOWK2mZZrfcwtfEltT3ymCjS2doJIysU1t35D2fCHhXcCwAkQn+6p/ywD6my++L5+aXilJ1ua0b0UQAbHHokYn5T53ykZExZYBkKg9Uv6uiQ231o5PXeeIuiworGNt81iF87A577gm0PZ9HcWUqKaub1niJ2+Faikiya2jJXKqy2wI/dBZc8OH/fWV99k0Dl++M6gHoHH2xl4nq8niBeZVxTgqrnw8xI3TMsdStwzlJCZt2MYe94V4X7myDotoERayH8lPUo3ktYAdNiByqdTDkzHwN/R1ct+kOXgcCQP8DBnYlQjui0vOZp8/ar84mJjrhMyheaVBGGWIZHxsH/2xfmZXNnX/iTIDt+qTLi1HRm3Ocog/c2iDaCJ7avnwjQLsj75Q1HKaBGMhh7jQNt4IxAOhxjdcF9R6NQVy+VPaVY5FZ7NMIQzPJkiBz6YR23MqxOwtru9IieUfDLjYiZVSY3Z6kQp5ocUw8xHiKvvL+Rosz667Sk32k+m/DDsB/Je4Vl0fIBFSVYK9xcJFRvLyeusMLudSZbfb0tXbDM4BEhEy89RiXpA0VF6mlkV8PEkor4Dl7I/eUcZPWIKKbTkX+zLX33vt5HxUGvt5QwPfue4dmU1H1NmyY4eLF7kgfm2RPLX9yS6EsyT0pSRYhthnDC0Wl6jZc0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW2PR0102MB3482.prod.exchangelabs.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(136003)(376002)(396003)(366004)(39850400004)(8676002)(107886003)(86362001)(6512007)(5660300002)(4326008)(921005)(186003)(38100700001)(26005)(956004)(2616005)(16526019)(2906002)(66476007)(110136005)(6486002)(66556008)(66946007)(54906003)(7416002)(83380400001)(1076003)(4744005)(478600001)(52116002)(316002)(6666004)(8936002)(6506007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?5SPvRRxpNzydOPmiFOL2GEGR7Yg8upPT6OpFf9+z/06DLtvaHYhhY6FHQN9V?=
 =?us-ascii?Q?htrAO0S/MArr2VzMyB8ytjm1r0GU+8sWQyhoDeHpuetWvxJsiEEJDoywFNm/?=
 =?us-ascii?Q?QcLR9t919Lx8f533TN1BR8NpdCPOA2m2QXvWvEoTnW03jImShL5pX3Iaqty2?=
 =?us-ascii?Q?TK5p00cjP8gp+PB5bj4Pk6BPNAPIKjvN45996sZ1pTc646p7Geb6vFPyT70j?=
 =?us-ascii?Q?hD7Bj8B+wL5bF4+k9mBLx/EmKjZb0fcVKZ/y9cyBxFeawnSBSJomNzgQHtym?=
 =?us-ascii?Q?E0PgrcfhD5RVbK56U6goVvB3hLRiFuifiY7mJE0z3BnvvECgIXvo5JqUKaLe?=
 =?us-ascii?Q?tAnw5ZRXOCkbx7hjTMzhTdeMUZjuMK1G++X/zYZzaYxRvcYhVxfbXVwbaI4o?=
 =?us-ascii?Q?Jr9JWhAzvf2c4JhH8PdmPpWm/dtnKnUJTdh//qmeI9xONaTxDjHKiDjSWvpY?=
 =?us-ascii?Q?Ak8IUzxwiymB9E5mG/WrW5Ixt9NTKVaWE9y2Jd3+dLXGug7f0MRzekTsyODs?=
 =?us-ascii?Q?eDTsDhj5MZS7vhz+0hVMhegP86F5JmpPfkNu00HXu12FighOV5TuoYNGdy/+?=
 =?us-ascii?Q?/FtrFraw2zBar2iL69XThzLoY2lTsGYzqwF18dABB/AteX62JmYnH3/ct+Gh?=
 =?us-ascii?Q?sg9FIsSHp6inqaFrPD0Pp0DoLtPNi6d3/dNfStoxd6yu+89LzMl7cWojhnxN?=
 =?us-ascii?Q?JtjBU5Q+dF2pkln59k0vMBiFyjhrtTNXhnhvM9/gHgfOMx1bUO2qjeQTHxwH?=
 =?us-ascii?Q?8j4NU6vXOmaIwjr32ugZ3rWl7S3wAxIyiMjUT/SVC4aeD2prfLwsdTSNFt9Q?=
 =?us-ascii?Q?ZIdaDO54LBX3qFDeaVhzfPbVnY2BlSqdzAxCt43vfm74ZeLyjnq6j6XcT3Ny?=
 =?us-ascii?Q?ZIh7ptsCdKISo/wO/JlxdQhFOJud94bd7sQRCgCaCo8+zy3yrRTyQNgor4lc?=
 =?us-ascii?Q?Wbv6ftBCNTmBapZnPx5PrIGFKfYpbVoQ0aj//8lh47K1VCoMLTrLuO7u/Jdh?=
 =?us-ascii?Q?ie8wJ7N2vvZ64FgUjsHczjbAatFfbSZa9OsmglJAqAHNBSzbEzbKmu9jgQKQ?=
 =?us-ascii?Q?CDPo2Lvt8BXBXemJw++VqaJ2AEWknNhW+68m5yF2L2DE6MTpQYVgATJl4q14?=
 =?us-ascii?Q?l2skR+FOe9REba33fK3fxS6x4G119UgvSyg7gUprXf+JYHCJ0qRa8OPeAczl?=
 =?us-ascii?Q?Qgv2GsPHaES5+3d0lX+rzxHpRu6bR5SPdbjs3DjVOSsyxEny5M/4TKQ4FInT?=
 =?us-ascii?Q?loYWQ+B4nMpGZE8o4fuijvAbGYPCkWbRH5IDKNyCEjE7OXOM9T/mzKPyPzRC?=
 =?us-ascii?Q?/bYij0RvQvUucn8VBw8ZqWWJ?=
X-OriginatorOrg: os.amperecomputing.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eb1e580d-9674-497c-2526-08d8f3859f00
X-MS-Exchange-CrossTenant-AuthSource: MW2PR0102MB3482.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Mar 2021 14:10:50.5107 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KpOGeTzAsU5M6gClLTCsg2P+k7hmQC69a8zmWa9v4oa/2bpVBgEd0rSCHNmOFG9AxM4KdeWhMQRqQ5SHzuetsqsR8mJ++MRKC8LfBgV5F1U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR01MB2736
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.237.111 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.237.111 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1lRFcT-00DGDt-07
Subject: [Openipmi-developer] [PATCH v2 0/3] Add Aspeed SSIF BMC driver
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
Cc: openbmc@lists.ozlabs.org, "Thang Q . Nguyen" <thang@os.amperecomputing.com>,
 Open Source Submission <patches@amperecomputing.com>,
 Phong Vo <phong@os.amperecomputing.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

This series add support for the Aspeed specific SSIF BMC driver which
is to perform in-band IPMI communication with the host in management
(BMC) side.

v2:
  + Fixed compiling error with COMPILE_TEST for arc

Quan Nguyen (3):
  i2c: i2c-core-smbus: Expose PEC calculate function for generic use
  drivers: char: ipmi: Add Aspeed SSIF BMC driver
  bindings: ipmi: Add binding for Aspeed SSIF BMC driver

 .../bindings/ipmi/aspeed-ssif-bmc.txt         |  18 +
 drivers/char/ipmi/Kconfig                     |  22 +
 drivers/char/ipmi/Makefile                    |   2 +
 drivers/char/ipmi/ssif_bmc.c                  | 645 ++++++++++++++++++
 drivers/char/ipmi/ssif_bmc.h                  |  92 +++
 drivers/char/ipmi/ssif_bmc_aspeed.c           | 132 ++++
 drivers/i2c/i2c-core-smbus.c                  |  12 +-
 include/linux/i2c.h                           |   1 +
 8 files changed, 922 insertions(+), 2 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/ipmi/aspeed-ssif-bmc.txt
 create mode 100644 drivers/char/ipmi/ssif_bmc.c
 create mode 100644 drivers/char/ipmi/ssif_bmc.h
 create mode 100644 drivers/char/ipmi/ssif_bmc_aspeed.c

-- 
2.28.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

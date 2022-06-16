Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2943B54DB7E
	for <lists+openipmi-developer@lfdr.de>; Thu, 16 Jun 2022 09:25:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1o1jt4-0007gf-H0; Thu, 16 Jun 2022 07:25:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <quan@os.amperecomputing.com>) id 1o1jt2-0007gY-8a
 for openipmi-developer@lists.sourceforge.net; Thu, 16 Jun 2022 07:25:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=juL03iFifOER4WNSwG2f9nk/iUpcJR7GEWZctOjcjvE=; b=gCiS3mzLEdWthM9Fw8VJMAajGA
 +p91UVhZZsQC99yRk6C5Kz0vF//SAz2BZQDHiy6hReBHNNB+OxMf8SxgD6926CoZ4umi81qvbUtsK
 5/DZqdDMSl6BnrMHUY5Ru+wL4iuloiklb6aeiU+gqilqW7peDgj8i9JXgTpwcDTPurI0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=juL03iFifOER4WNSwG2f9nk/iUpcJR7GEWZctOjcjvE=; b=gnkHA3eTM4U+8sL/soEIxh66oI
 RPR+M1ogBzsxpXoF9HEcpIk2xKjmr8eSsJP5hlz8DnAePTe6XUWM0P0Gp3NSA+UM8s1GJLxsSenpO
 lgfcQtLG2sM5KwBr+3Hp6TlEUTL/zt1wp0KPxzjlj1XZaVyL7ynxxR0ypuLfectzHWFE=;
Received: from mail-mw2nam04on2118.outbound.protection.outlook.com
 ([40.107.101.118] helo=NAM04-MW2-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o1jsw-003tg7-4I
 for openipmi-developer@lists.sourceforge.net; Thu, 16 Jun 2022 07:25:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fxgOA98wqiwKRJtZr+RWqwn8ZLSczPPs4DVWDv27zQBy/YGBVSEKEnPRv1g9PZVR4wrBpfHsWqnGbVRiDRdYUG4J1Wbr3MxOag39Cjscrld4lRhitH9pW5EpSGLsNuKmzHU7S/nQr9M//CHNsDHu/wiSvHJQQfhJFbtK0WpG6iZ84Bjr3Vn5qw+wa/W1S+oPLXCa5PlBE6mT6+am/PCmpo9PNOyyOxxwpT0JKf5pWJB8nn/YLdCXwdbcZnxFbdXSRpMSDYl7TQ6k1Gun7RniVSo4/qcFJdXFl8Rmi1Q5x4d2YcnLuv4BGGEFNLQMx5Rb38NXnTMJczcLlHtT40+DfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=juL03iFifOER4WNSwG2f9nk/iUpcJR7GEWZctOjcjvE=;
 b=XVEkAn0WiH5yWmk7QBRC4jbYkvm8/K/K3onlUhifnu82PzAqAGWr+hr87UyjDECrbPgdU7LKVbN3AKmLfmUD+SbFSamJiswFEU38U2rvFUUtMf0e2uoHYMHJsrCASUkEAFBgfMK5gQLDUsgUQGek09gpt18+DeouBXvr7NuCDqjdfgbzs335sZl/CpUmxBbZXcl/e56TC0QHAdMu+ZVrfjy9KHIJhFpweUiGlLndE5f7qLbXRPj/LIlMDwW1ConTbZgOMKZ7yqkBocoIK77A+CgQ7lcUTI74w6iwHPnug33xlsUDmQ6Xyb33mIq4YQVe22QM1ddAQtYg3mkSZQ40kg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=os.amperecomputing.com; dmarc=pass action=none
 header.from=os.amperecomputing.com; dkim=pass
 header.d=os.amperecomputing.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=os.amperecomputing.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=juL03iFifOER4WNSwG2f9nk/iUpcJR7GEWZctOjcjvE=;
 b=hpolDLksv0lrRWI49wZqokpQ7WlcwyrVTrfgvhe3IOqbUAG1gxIEvKZLiBh00/HA5Odx+Dki4NyV87I6RsnPH/WDeqFwEUj4WamQx50VOEQnu9xV2xAZTWDl7nqZirMMaB/pZCvwgscxaz0Qcw+fTqQnePXlGuRFHTNkfrGpGyw=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=os.amperecomputing.com;
Received: from SJ0PR01MB7282.prod.exchangelabs.com (2603:10b6:a03:3f2::24) by
 DM5PR0101MB3099.prod.exchangelabs.com (2603:10b6:4:35::25) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5332.13; Thu, 16 Jun 2022 07:25:28 +0000
Received: from SJ0PR01MB7282.prod.exchangelabs.com
 ([fe80::7535:773:f979:893e]) by SJ0PR01MB7282.prod.exchangelabs.com
 ([fe80::7535:773:f979:893e%7]) with mapi id 15.20.5332.020; Thu, 16 Jun 2022
 07:25:28 +0000
Message-ID: <74f94464-a095-f539-746a-853b8f1d52ca@os.amperecomputing.com>
Date: Thu, 16 Jun 2022 14:25:14 +0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.10.0
Content-Language: en-US
To: Randy Dunlap <rdunlap@infradead.org>, Corey Minyard <minyard@acm.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Brendan Higgins <brendanhiggins@google.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 Wolfram Sang <wsa@kernel.org>, openipmi-developer@lists.sourceforge.net,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-i2c@vger.kernel.org, openbmc@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org
References: <20220615090259.1121405-1-quan@os.amperecomputing.com>
 <20220615090259.1121405-2-quan@os.amperecomputing.com>
 <8b7841a9-9313-b1d5-8a80-a65cfa8e7b4d@infradead.org>
In-Reply-To: <8b7841a9-9313-b1d5-8a80-a65cfa8e7b4d@infradead.org>
X-ClientProxiedBy: SI2P153CA0010.APCP153.PROD.OUTLOOK.COM
 (2603:1096:4:140::13) To SJ0PR01MB7282.prod.exchangelabs.com
 (2603:10b6:a03:3f2::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b2b5dd06-411f-4af8-2289-08da4f696319
X-MS-TrafficTypeDiagnostic: DM5PR0101MB3099:EE_
X-Microsoft-Antispam-PRVS: <DM5PR0101MB30997BE749C4327A2642526FF2AC9@DM5PR0101MB3099.prod.exchangelabs.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: rCDr4GoEGWY6xcAr4osEC84FQckrC901gIwmqM/CuD6PxKV+l8njNSsAivA9qqM4ZZgxopFDnEgwVH2TqidWA6Eu19Xj6HSKx0rZYAbxBNHdgjgqhlANPbOQMOzSeCmWlp/we3rt3AL3cJa7AcV0ZK0uQCgtr7EUHpruQZFTaDkbTskqYZrVgZQ6CtGN5nWn2CvoBJsmDkIGtUt+DszFTILxLLlFgkGMgqhkWrZZJDfVJjWKUUwbrAdn8q2Djng/WKJDgtoR7IbjwHl6+8gPkxwJE3JHvsVHrneOmNwBzqG4vWYawa1nzoR7Okm34+57EbFHJZyzYDwcky/16bkQIWz/x+yM9MB/7FS9TRy/VsgLTJf/pr5s3CwcNsmnDTqjkDWcDzcm8AoedvhgZ5kRiz2kArKGMXoqpaSARvDOuVFusIMxjGTGCRmzK7PrL5Pl1Xkgb2evFwMlE0m+w8FdzYiE4ScQyqYa3w1B01QMTFPTPA25zG5aOcd41KmeKUjlzgaZbPo1UU+Mh+M5mxu2/u0AXmmzMrWqQlj0a5ASYisBVROZEfoxdKqC5/7WmqWi+/I5oxnpdWUNZcMAUt+bz/v0pMix53WdRm1XB4rb27AL96aOo7oYgVq1ls/Ot21S5B/lGDWta9b48EaC0ST7HmqgX8uySU0wBFFocp1CRvzGwL2aN4/rKo3cBH6rsv+Ro5gXSzagrL9zoSFPRShwBEQkO/7CxyVbpDF5Z9X3pzrts7s7LpYUW7I8MuhSf0XV
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR01MB7282.prod.exchangelabs.com; PTR:; CAT:NONE;
 SFS:(13230016)(4636009)(366004)(7416002)(8676002)(2906002)(6666004)(8936002)(107886003)(5660300002)(508600001)(316002)(66476007)(110136005)(38350700002)(54906003)(38100700002)(6486002)(921005)(66946007)(66556008)(4744005)(4326008)(26005)(2616005)(86362001)(6506007)(186003)(52116002)(31686004)(6512007)(31696002)(53546011)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cHRVZlprSURSbk51TEdObnFhczRaL2tuN0F2TkF6Y20xMGllNE9yWVY3dXZw?=
 =?utf-8?B?ZXFUdFY2Y3BMNTdjb1VINjl3NVdSL2l5OWQ1RGM2VGxVV3ZFUCtXVGtvQ2th?=
 =?utf-8?B?Mng0ektoejIzVlV5K0hTTllFUXphY1ppQ1Z0dnJ5Z250UHBDZVVhNE95TDV3?=
 =?utf-8?B?RTR3b0VxRmxpOWpRVko4ZFVaWDlyZFE4clhyaHJtWnZEQzZMd3Y4UXZ0MW1M?=
 =?utf-8?B?M0NlYnF0cFFTMFJMaFN0VUZGYnY2NEJ5NlROU0pYUW9TeTlMbnpTaHhyNjBB?=
 =?utf-8?B?alpiNjNMNCtZRk9lTm9YUUVReFJOYVNkSCtmdWZjSlFlZ014WXBHdWhlc2xm?=
 =?utf-8?B?V3BCKzJ5L2xzbGJXTGlsQlRlcUxEN3MrSW1GU05CS0crckZkLzVBTmNrOVpW?=
 =?utf-8?B?S2cvOGFJR3d0VVdIOTVDY0k3QjA0dlk1RmhaZTh0UlJvOGZnZGFPR21tRXM1?=
 =?utf-8?B?VW8zdkJzd3VaYTNWaTRIOU5RRG5NOVowV3dZTThRaVBNQUJwbWZaTlo2NlVV?=
 =?utf-8?B?U3BzQ2ZiMGM5L0xYOEFtdzVSOTIrRDB0b2R1TjY5SHdDSlptc2FON1huZm42?=
 =?utf-8?B?bTFja3hGeEtWWGNVWHVhUXFNd09YUUVVd2gvT1BjOEsyNVJSa20rUk1mV09G?=
 =?utf-8?B?b29CSUF2QmtPZ1BLWHM1WWt0YitzbEVIR2RUVHQ5NWlTNzliRUxVTXU1am9Y?=
 =?utf-8?B?RkV3eEM0Z1luaG54RUpmSVcxRkJzckdLa2RzaEsyNkdNMVNYNzZwY0NHUjV2?=
 =?utf-8?B?NUZvMVVHZUl0T1d0aGNYMEs0S0ZhQkQ0S2FTd0JjeEdMWTlMNmFTc0N4T2NB?=
 =?utf-8?B?d2F4S2N0Ri9HNE0vVUR1WjhjU0dSTmQ5aEM0QjV2eG84QlpodnNZU01tLzdn?=
 =?utf-8?B?bUluM1pjZjFCN2h3dVhMRXVlQXVwVXZIWlJCb3U3dExjSXRpaTFaWHJRS01q?=
 =?utf-8?B?NzhTbGtycS9Td21EdmozSVB3UmlSdXR3cUJIRW0wa2pPUzM3aVJ0aHhFakxl?=
 =?utf-8?B?M3VHSVUzeU1GbHNqZjFaY2VtZVJ1b0J0YzVpSGhiR2pCVmpweDZwaDFoRTd6?=
 =?utf-8?B?d3Zuem5IdWIwc0trdnJxakFPZWszZ2c2YVI4MUlzcSs0S1JWeVJVUlVKOC90?=
 =?utf-8?B?TkwvWGM4azlIMmdOZ3YzSkliVHpUQ2ViU1Y5cktOcGprMFBkeGhUMHBoVXd3?=
 =?utf-8?B?WlpVYndtVkZyMXBucDFRbEV3TkY2V0ZFM0w3YzlWcnJqdHkvREZGZms5L2JC?=
 =?utf-8?B?SkVOOTNDeUc2T3U4T2w3RzBLMmJEbmZjTVQydEd2L21pMVorb0twSVIrRGdS?=
 =?utf-8?B?cTEydWN5d20xT3JMNzh1UlAyOUxJUThwbFJ5UnE3M1p5SzNDNHJHWG1HRkc1?=
 =?utf-8?B?NlpWMUN2dm9Yc0Nyb01TSDJrN0hSMU00M1gwNnl2UEhCTWFrc0M2bnVsa1lP?=
 =?utf-8?B?dWZiRGhrL2s1THMwQXdUUjNZMlVoc2NlYmRwWmsybGtpam45YmVZY1F2YXpN?=
 =?utf-8?B?WFR4U1laMitDT2t3Ny9YQVVxODAzaEMyYXAvNEJXQ0YrUE9GMGtsSC9MWnNN?=
 =?utf-8?B?aTFudmpuVEllQnN1VHBKUzdNQm1LU2ZNRnEzZ2xOTmtQdXFOSVIrWFFGTzVn?=
 =?utf-8?B?MGxlekNjemNMM3dIc1lLVlRXUTZ2Ri9XV2ZONEx4bG56MFQvQ0s0OU1YSGtz?=
 =?utf-8?B?R204ZkwxdkFneGhJRURieEpROC9iQnFaUVZvNGkvU1QvOXcvYmlXVGFGWTZr?=
 =?utf-8?B?eE42a1oranpTMHg3aGpsaG01dVNFY2F1K0hpbjF5akgvbm4zU3lEQUdRWldu?=
 =?utf-8?B?SmVtejFFYzFDRFoxNmdtV1V6aVJRZTBGQk5wSVlEYjQzQXpROVd0Z25Iblp3?=
 =?utf-8?B?ZkUwQnh1RElJczg5SGtYWjVDYmsyTko1dytZOUQvaHNiSVlVNXR0RjZ5d3pU?=
 =?utf-8?B?djc0R2l4RWFMNHZlc2toOXdWMGlrU2xSSkNDUW5lSmRKN1RhdXlOM2tCNW41?=
 =?utf-8?B?dUVZV2cwanVYVG1QaGhRVjZFZ1dPVVRDUGlwQk5EVGRyM2RrakdTczUySG5n?=
 =?utf-8?B?L1RBcDZzZGdtTVFNcjU3Zk02WXBDY1RNbXJFZm03aldoamhCaTgrY3UwNzVv?=
 =?utf-8?B?SkJLVWhaWTRONVBDV2pxdkgrWFhJOG5XbS9vWUppZWhEZ0pZRm1QdXZjSzVi?=
 =?utf-8?B?RDZvemRyRlpOa1dLWDNaRnQwN09BQmpMc3FlKzBHNFV1WDdNNmd1Mks5WXgw?=
 =?utf-8?B?NkxPT3Z3VWFpMXR4eS9vOHowaThUK2lBS0NrdDJiRk56SXBjWVBFSnV4Yzkv?=
 =?utf-8?B?T3BoOVYxV3NWbFlVNnJuVmpBY3lZOWhQd252K0JOR1IxZUtWblRaUTNxZnFH?=
 =?utf-8?Q?5mJ4OwykjmaPoykPCj5JWBkixBACEIAmL3QXQ?=
X-OriginatorOrg: os.amperecomputing.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b2b5dd06-411f-4af8-2289-08da4f696319
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR01MB7282.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jun 2022 07:25:28.5025 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Hzt+lPH04neB8PYyFyXTzcpI8nmyCY7ht91kPxFKGQvOaXZwfhSz8stmHp/lF0hyM7pZMtEnHroljByX2dCHU9qItsSqGdUEt5xK+AsE0Xg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR0101MB3099
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 15/06/2022 23:06, Randy Dunlap wrote: > > > On 6/15/22
 02:02,
 Quan Nguyen wrote: >> diff --git a/drivers/char/ipmi/Kconfig
 b/drivers/char/ipmi/Kconfig
 >> index b061e6b513ed..18a89093d64e 100644 >> [...] 
 Content analysis details:   (-2.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.101.118 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.101.118 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1o1jsw-003tg7-4I
Subject: Re: [Openipmi-developer] [PATCH v8 1/3] ipmi: ssif_bmc: Add SSIF
 BMC driver
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
Cc: Open Source Submission <patches@amperecomputing.com>,
 "Thang Q . Nguyen" <thang@os.amperecomputing.com>,
 Phong Vo <phong@os.amperecomputing.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 15/06/2022 23:06, Randy Dunlap wrote:
> 
> 
> On 6/15/22 02:02, Quan Nguyen wrote:
>> diff --git a/drivers/char/ipmi/Kconfig b/drivers/char/ipmi/Kconfig
>> index b061e6b513ed..18a89093d64e 100644
>> --- a/drivers/char/ipmi/Kconfig
>> +++ b/drivers/char/ipmi/Kconfig
>> @@ -169,6 +169,17 @@ config ASPEED_BT_IPMI_BMC
>>   	  found on Aspeed SOCs (AST2400 and AST2500). The driver
>>   	  implements the BMC side of the BT interface.
>>   
>> +config SSIF_IPMI_BMC
>> +	tristate "SSIF IPMI BMC driver"
>> +	select I2C
> 
> No. That should be:
> 	depends on I2C
> 
> We don't select an entire subsystem just to satisfy one driver.
> 
>> +	select I2C_SLAVE
>> +	help
>> +	  This enables the IPMI SMBus system interface (SSIF) at the
>> +	  management (BMC) side.
>> +
>> +	  The driver implements the BMC side of the SMBus system
>> +	  interface (SSIF).
>> +
> 
> Thanks.

Thanks Randy,
it should be change to "depends on I2C && I2C_SLAVE"

Thanks,
- Quan


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

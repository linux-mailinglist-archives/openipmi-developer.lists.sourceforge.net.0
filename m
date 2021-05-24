Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 22D9C38E54A
	for <lists+openipmi-developer@lfdr.de>; Mon, 24 May 2021 13:22:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Content-Transfer-Encoding:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:Date:Message-ID:
	References:To:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OXbJ/G3zTlyxgrE/VdTN5ORwuxTgMcEsOpgVjD0dXS0=; b=Ddtc8+nwKacVTIlxa0jmYcqzVz
	64OvjMeffhqalMutzUE4U3Z8JbUQ1CQHTJa7CnkOagqqbjaoPsidNY/Qnhdjpf/V+ERtoRrPnaRS5
	CVbtdB0IVMne6xhdNuEdnZAy3NRJ4KwjSSUnplBvNWsPh0BDrXCpAykRZHRdqWEYucSg=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1ll8fL-0004Fy-1K; Mon, 24 May 2021 11:22:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <quan@os.amperecomputing.com>) id 1ll8fJ-0004Fr-Qw
 for openipmi-developer@lists.sourceforge.net; Mon, 24 May 2021 11:22:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=brwWNJcuj78QpoWCn9TF7n2MA+rHQmFSdWsuiRUmVNQ=; b=D6kugnjbHd90iTtG08vhPDZMNU
 5Dex6D2szsUyEfNBawJ+6YV37SurBbsf8fJ8VvtQPSwswRiTvrjChI4I5ZiNlJYzRmZGFeUkCJnJz
 M+lfCxUnMP533JsUXh2l+oyGsw9m+kTAiOqvXhtYPEUtB3x6Dsl0HWSwZmvzx18TLV6I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=brwWNJcuj78QpoWCn9TF7n2MA+rHQmFSdWsuiRUmVNQ=; b=P70QTfoaIrA66IETLVweosc+Uo
 FYzZZOgJBpes46quR0h7a2XYy3tvRP5gHiKZNtXi9c4WjCur+HJ79AJp4U1n7v0l9EJqtOA4sAE4r
 zkME9kEY6BZ/VShXyulyBut/I3O1KucfNQqGmzEnuOSJicLOo/9qOTUpyP4fNIamT9/I=;
Received: from mail-mw2nam10on2134.outbound.protection.outlook.com
 ([40.107.94.134] helo=NAM10-MW2-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1ll8f7-0047Wi-Hn
 for openipmi-developer@lists.sourceforge.net; Mon, 24 May 2021 11:22:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OgSHIW665QOr9ECwBpoYrXNX6G/p72o4MCBTVsa/taEq62glYk7GevAmGFCoEvOHhAsJnqt1plYpGy9utoK3fVa87/hFOMbcxQnSvuOhbJspG2oyzZa59ws1Gfe8AIkIWLQG60Rx72eJI8//sKIFpr5D4/qjmBsBLAerTMCB3PZBJBxmZwbNxZYwLTspdWwU+N2XE6VjXCOZgemNQmMO3gQTdFW5R03voJh9h3zF/wPwPNmmTMraooV9GKKBUFDDLDcz/vF5clu9/8gvKaBRo/me1n+z5rLl8q06vyWhd2wenONkaMAE+vFG2rO6Ror66qDjuero7yH5sQbk933P4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=brwWNJcuj78QpoWCn9TF7n2MA+rHQmFSdWsuiRUmVNQ=;
 b=ZLFK9dXkdHDNwXYPQD5cKTMnaQnUHVysxUj+vBSVZqi+6oEAvEQLZ3A23wyNSnrmQwXCp0Uo0VLwT5jVpfwK1DGRMTbFe2Jj/tAv9TMA9mZwgEUJLLRNXXiQTFc1JbifI54CAlMpK7eMVEm97RncXoqTkFo+ibRLCzLWDJ2uuEvtaySgjEFcoiyliXFz7z5yi5mt+77Q+gHvFsH7PXkheWSrnAPZljW6SA9BReazH3BfUsPysrSovKvBuhaqnN7Ky8zlfMNSR6SOYczjdgZO2zS8mfFAvfcLMGpPr+3jpKHy0wnFWR/8LTQBRAx8dmPhXyp76JxQjH9E3Au3bqOWXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=os.amperecomputing.com; dmarc=pass action=none
 header.from=os.amperecomputing.com; dkim=pass
 header.d=os.amperecomputing.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=os.amperecomputing.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=brwWNJcuj78QpoWCn9TF7n2MA+rHQmFSdWsuiRUmVNQ=;
 b=EAFV1EUCHGX+UhnHHqcFX55vCvAsuSX4Jp337OEhC2yx4aoAx1tgdUIE4oMghRCLKvHrk2yMm2MkjHKkvl/HLroC6Bw4YZVe1/rQ2zvijNeHhXiW2t/gdb/9qaPZsVKpF5T1D4Pb5OWpjod5+Lm7bzanHnwkw7b6nXbqLZJP+gs=
Authentication-Results: lists.ozlabs.org; dkim=none (message not signed)
 header.d=none;lists.ozlabs.org; dmarc=none action=none
 header.from=os.amperecomputing.com;
Received: from MW2PR0102MB3482.prod.exchangelabs.com (2603:10b6:302:c::32) by
 MW2PR0102MB3546.prod.exchangelabs.com (2603:10b6:302:2::30) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4150.27; Mon, 24 May 2021 10:48:48 +0000
Received: from MW2PR0102MB3482.prod.exchangelabs.com
 ([fe80::1905:a396:9968:3a5]) by MW2PR0102MB3482.prod.exchangelabs.com
 ([fe80::1905:a396:9968:3a5%5]) with mapi id 15.20.4150.027; Mon, 24 May 2021
 10:48:48 +0000
To: Ryan Chen <ryan_chen@aspeedtech.com>, Corey Minyard <minyard@acm.org>,
 Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Andrew Jeffery <andrew@aj.id.au>, Brendan Higgins
 <brendanhiggins@google.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Wolfram Sang <wsa@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 "openipmi-developer@lists.sourceforge.net"
 <openipmi-developer@lists.sourceforge.net>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>
References: <20210519074934.20712-1-quan@os.amperecomputing.com>
 <20210519074934.20712-6-quan@os.amperecomputing.com>
 <HK0PR06MB3380FD2B7649CFB48BEA2D4FF2269@HK0PR06MB3380.apcprd06.prod.outlook.com>
 <1648966e-3e45-9661-c5dc-5ac2f40e2581@os.amperecomputing.com>
 <HK0PR06MB338093E5E0D0DBA9EA7C1168F2269@HK0PR06MB3380.apcprd06.prod.outlook.com>
Message-ID: <917237ce-98f8-df5f-32b6-b4145ac47ac9@os.amperecomputing.com>
Date: Mon, 24 May 2021 17:48:38 +0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.10.2
In-Reply-To: <HK0PR06MB338093E5E0D0DBA9EA7C1168F2269@HK0PR06MB3380.apcprd06.prod.outlook.com>
Content-Language: en-US
X-Originating-IP: [118.69.219.201]
X-ClientProxiedBy: HK2P15301CA0014.APCP153.PROD.OUTLOOK.COM
 (2603:1096:202:1::24) To MW2PR0102MB3482.prod.exchangelabs.com
 (2603:10b6:302:c::32)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [10.38.33.138] (118.69.219.201) by
 HK2P15301CA0014.APCP153.PROD.OUTLOOK.COM (2603:1096:202:1::24) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4195.2 via Frontend Transport; Mon, 24 May 2021 10:48:43 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1729d4ce-64bf-4f50-4861-08d91ea182d9
X-MS-TrafficTypeDiagnostic: MW2PR0102MB3546:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MW2PR0102MB3546BE02889C8D457318E9EDF2269@MW2PR0102MB3546.prod.exchangelabs.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5516;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: a4KBT2bMOKOnRf+5vv+o/DLJOtFpYgHTzhNvpCrdKFuAzE2q4xb/ZX5acZlmI88wl0i/wDcX6zcEWudFKo1XqMjYX9dBz+lI++BV0g+9hCjtB4YnutEQyiJNjpCRQfatReePf3telonl1bUae04hHl8q3CnAxpLVAh/GgC1uspwQ9WYusXHJ1Vh1uKmar8zenmYt6yYUFHeG4oTyt0PIvW31ee/os7HyyzUY6jaRl24RSkIbpS0X0oorP+f+3a1/140mJR02dzW9RFJEynkvnTtTo8mSwR7O5JYZQ26BUhChFIcN6uPtP8jqtS5YFvrrTy4zWkp9HOZMk+Jlxv0bJ+31IBPwXaMfGcCb2tQX/ugjKtxKt9oyvpee8uB6yo3wnCNqyMzTuXNrztg1acuR4WAwQugKXeEegHFpy3pZjbpwxflBGHBTg+3BdKTLnRKCAI7llH3HSmFCDyXHyxqwhqLFBago6MeplK9E6rUm+ODqzP2HxezyFhG7ZkOyvdPwJOSnbTV2kfZjFp2kGGqyv42+RX5pI5RGEI+p6tea8VMOuYRm24TY02zNRGTw7wW1omrkyo0RgrylaVziWur6LmsxtNUGHUy7VDjP5qTXnqag5FUbZImqDS1V2wVGKeyOy6npvls9MlDaJhZuq1jLGTR1A2qgehBvDru8c/K7KMcOO0268T+9yxjo8lCvwt4RSTdMhuJ0a7cmMkicSRI6abZ0GuxGoSvbKJeRVUZe4Hg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW2PR0102MB3482.prod.exchangelabs.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(136003)(376002)(39850400004)(346002)(366004)(26005)(7416002)(38350700002)(2616005)(66556008)(8936002)(956004)(66946007)(38100700002)(52116002)(86362001)(921005)(53546011)(66476007)(6666004)(83380400001)(16526019)(16576012)(54906003)(5660300002)(31686004)(4326008)(2906002)(316002)(186003)(8676002)(478600001)(31696002)(110136005)(6486002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?YTFLVHZzMEMzRW5Xclp4VjhTTTRRV3pXUkg2eDd6QjR0VlRLNXE0bVdnTkhK?=
 =?utf-8?B?L3NFVGhKcEJvVWRlVTRzQUZzdkp5UkRmazh6Wk14WDhHNjUydDRZUEpYWDNx?=
 =?utf-8?B?RGp4WFJDTTRFVVdxOEVjM1VOenpJODQ4TDJKVk1lNG1oN0tBV1hUWGg3bkd3?=
 =?utf-8?B?NUV2MjU4eFFSMVorWklZeXc2M2htRWhYcldTeU1BRElJM285WnhtN2o3L1VY?=
 =?utf-8?B?b0VncVdoTmI1a0tpY3g0OFhKcjJFYjYxdFZnaWkzcjdUb2Ftb0c2Kyt6b21P?=
 =?utf-8?B?Q2hvRTIvYnVCQnVNdHh3TDBmYmxIQUNWVWc3OS9rdldXWitoTVVGZ2RmdndO?=
 =?utf-8?B?dXBQZG1KbEp5VHZ3bEt5Yy80dWJ3Y0k4M3lOS0haTVg0VkUvaUJic1Job3ZH?=
 =?utf-8?B?cGVoVFBrTkVGSlBQMFhoOXZXdDhPSk0xMkhCTnJzWmd5Mzkyd1BDbzFTSFBY?=
 =?utf-8?B?T0JXTlZLWW1leWJUeFd0czMrTkljWjQvczBielBLQlpvS1g3TWkwN21ERU5u?=
 =?utf-8?B?VTZGclZxMzJ5U3loemhPNHl4WU9NU1RDbVRhUmlaYWE4WXdyRzNBbmRCS2M3?=
 =?utf-8?B?cnp3YWFZUitDbVJXNzltck8ycjJCek9tS2kvSVdhZXpxb1pacXZIWGZTeUdh?=
 =?utf-8?B?YWs0WHMzcEpROGsyd0tOS2ZoVUtGTnFtanVLV00xU1F1bVpUd09GVjBjSmxQ?=
 =?utf-8?B?ZVRqSGk0VytIcGljSFM4UVFHdWdkSHZ6OHkxVmtYUzdPWmV3NW9Pd1JweUZC?=
 =?utf-8?B?bHQxNEdteS9ERUZVNXdKVEZWcmJVMTRnZFFJcmlEd2FjSDUzY3pyc1Q1UU9r?=
 =?utf-8?B?dEgvM1doOGJoWHZUcWRldS9UbEt4Z2granZyTnBQNnJNOVc3VEU0bUZwR2Zt?=
 =?utf-8?B?eUtMSkloZjZ6c1oxTkRud3NxaHd2QXZFcGhxUDVTSTRZNW9yeXdRNEJ4TVZ6?=
 =?utf-8?B?Yjc5bVMrcTJXWVBDU3VYYXpaWWlQQmNvaXRpUkRrdFZid2J2K1FUMjBocG5O?=
 =?utf-8?B?eUxNK2lWS2ZkQmpDVi9FNjZJL0tjY04xbk52UGpsdXVRb2NEeWl5OWlnNmNN?=
 =?utf-8?B?WldTTVJxS2tCcDVBVU9LWFU2aC8xZEErakVyTG9LRmFaYUdCWHJzUTNtTW05?=
 =?utf-8?B?SXUvcXpvL2svRy8vd05UTWRMR3F0OENrajVONW53RHJ0ZUtxbUR0ZjBVVFdC?=
 =?utf-8?B?N0FkS3huMjZlK0tDVDMxYzdCWVNkUG1HV3h6QnJUd0hJU1NSMm1PbzZFeTdP?=
 =?utf-8?B?cnRGVnM0Zms1OWdSdDVmbzRPdjZ6MW5MVlVieUgzeThGWk4zaDlTTnJXTEdN?=
 =?utf-8?B?ZTR0WFhzM1hZN20vdjVNL3R6TGNwOWsrdkhXL243RUFzUnhJSWRCM3h6SUdY?=
 =?utf-8?B?b3A2RUhjTFNUTXdnckx6UjZ6b2w1L00vSjNERUdteTBDaEs3QWljcDR5WFBG?=
 =?utf-8?B?dTNoOG5NcC83ZWdHSi91YTdJNWVEUFdXT1A3a0UzYzJ2UGg0d2Q4Sk00TGV5?=
 =?utf-8?B?Q0VEUExXOGxMK2FZdUIyMnZ4a0R0VjVKa0k1V0RpeUxKM2I5VG13TUhzOHZB?=
 =?utf-8?B?Uldqd1psWVUzZi9TWjRYamlPT1RDbWpla1pBRS9YTVZLWmJGdlFTSWtPNzMy?=
 =?utf-8?B?VGE4d2UyenVONmJINkhzcS9MUXJzK0syY0tiaXFJM2pFd0JuZzF1aXNKdHQ4?=
 =?utf-8?B?UlNlb1FFdnBJa2MvclRzcnN6QkJ6ek5ZMEM1R1ZlckNQMXBVWlh5aElDKzdV?=
 =?utf-8?Q?e2UZjERuR3JfnC8xzBzKsxbsFUDDSJuiELrkvyQ?=
X-OriginatorOrg: os.amperecomputing.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1729d4ce-64bf-4f50-4861-08d91ea182d9
X-MS-Exchange-CrossTenant-AuthSource: MW2PR0102MB3482.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 May 2021 10:48:48.7029 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 54AZQNochgV0ywASIGMsxIcV0m/kVnwRGudASBNF5N9iHxtYSOSfNF99uSanVpr4JDtgS/f+/5Xi9Q2/3MF3jb2r1KsC+lrv7IdQGmh8n+g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW2PR0102MB3546
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.94.134 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.94.134 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1ll8f7-0047Wi-Hn
Subject: Re: [Openipmi-developer] [PATCH v3 5/7] i2c: aspeed: Add
 aspeed_set_slave_busy()
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
 Phong Vo <phong@os.amperecomputing.com>,
 "openbmc@lists.ozlabs.org" <openbmc@lists.ozlabs.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gMjQvMDUvMjAyMSAxNzozNiwgUnlhbiBDaGVuIHdyb3RlOgo+PiAtLS0tLU9yaWdpbmFsIE1l
c3NhZ2UtLS0tLQo+PiBGcm9tOiBRdWFuIE5ndXllbiA8cXVhbkBvcy5hbXBlcmVjb21wdXRpbmcu
Y29tPgo+PiBTZW50OiBNb25kYXksIE1heSAyNCwgMjAyMSA2OjIwIFBNCj4+IFRvOiBSeWFuIENo
ZW4gPHJ5YW5fY2hlbkBhc3BlZWR0ZWNoLmNvbT47IENvcmV5IE1pbnlhcmQKPj4gPG1pbnlhcmRA
YWNtLm9yZz47IFJvYiBIZXJyaW5nIDxyb2JoK2R0QGtlcm5lbC5vcmc+OyBKb2VsIFN0YW5sZXkK
Pj4gPGpvZWxAam1zLmlkLmF1PjsgQW5kcmV3IEplZmZlcnkgPGFuZHJld0Bhai5pZC5hdT47IEJy
ZW5kYW4gSGlnZ2lucwo+PiA8YnJlbmRhbmhpZ2dpbnNAZ29vZ2xlLmNvbT47IEJlbmphbWluIEhl
cnJlbnNjaG1pZHQKPj4gPGJlbmhAa2VybmVsLmNyYXNoaW5nLm9yZz47IFdvbGZyYW0gU2FuZyA8
d3NhQGtlcm5lbC5vcmc+OyBQaGlsaXBwIFphYmVsCj4+IDxwLnphYmVsQHBlbmd1dHJvbml4LmRl
Pjsgb3BlbmlwbWktZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldDsKPj4gZGV2aWNldHJl
ZUB2Z2VyLmtlcm5lbC5vcmc7IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZzsK
Pj4gbGludXgtYXNwZWVkQGxpc3RzLm96bGFicy5vcmc7IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5l
bC5vcmc7Cj4+IGxpbnV4LWkyY0B2Z2VyLmtlcm5lbC5vcmcKPj4gQ2M6IE9wZW4gU291cmNlIFN1
Ym1pc3Npb24gPHBhdGNoZXNAYW1wZXJlY29tcHV0aW5nLmNvbT47IFRoYW5nIFEgLgo+PiBOZ3V5
ZW4gPHRoYW5nQG9zLmFtcGVyZWNvbXB1dGluZy5jb20+OyBQaG9uZyBWbwo+PiA8cGhvbmdAb3Mu
YW1wZXJlY29tcHV0aW5nLmNvbT47IG9wZW5ibWNAbGlzdHMub3psYWJzLm9yZwo+PiBTdWJqZWN0
OiBSZTogW1BBVENIIHYzIDUvN10gaTJjOiBhc3BlZWQ6IEFkZCBhc3BlZWRfc2V0X3NsYXZlX2J1
c3koKQo+Pgo+PiBPbiAyNC8wNS8yMDIxIDE3OjA2LCBSeWFuIENoZW4gd3JvdGU6Cj4+Pj4gLS0t
LS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPj4+PiBGcm9tOiBvcGVuYm1jCj4+Pj4gPG9wZW5ibWMt
Ym91bmNlcytyeWFuX2NoZW49YXNwZWVkdGVjaC5jb21AbGlzdHMub3psYWJzLm9yZz4gT24KPj4g
QmVoYWxmCj4+Pj4gT2YgUXVhbiBOZ3V5ZW4KPj4+PiBTZW50OiBXZWRuZXNkYXksIE1heSAxOSwg
MjAyMSAzOjUwIFBNCj4+Pj4gVG86IENvcmV5IE1pbnlhcmQgPG1pbnlhcmRAYWNtLm9yZz47IFJv
YiBIZXJyaW5nCj4+Pj4gPHJvYmgrZHRAa2VybmVsLm9yZz47IEpvZWwgU3RhbmxleSA8am9lbEBq
bXMuaWQuYXU+OyBBbmRyZXcgSmVmZmVyeQo+Pj4+IDxhbmRyZXdAYWouaWQuYXU+OyBCcmVuZGFu
IEhpZ2dpbnMgPGJyZW5kYW5oaWdnaW5zQGdvb2dsZS5jb20+Owo+Pj4+IEJlbmphbWluIEhlcnJl
bnNjaG1pZHQgPGJlbmhAa2VybmVsLmNyYXNoaW5nLm9yZz47IFdvbGZyYW0gU2FuZwo+Pj4+IDx3
c2FAa2VybmVsLm9yZz47IFBoaWxpcHAgWmFiZWwgPHAuemFiZWxAcGVuZ3V0cm9uaXguZGU+Owo+
Pj4+IG9wZW5pcG1pLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQ7Cj4+Pj4gZGV2aWNl
dHJlZUB2Z2VyLmtlcm5lbC5vcmc7IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZzsKPj4+PiBsaW51eC1hc3BlZWRAbGlzdHMub3psYWJzLm9yZzsgbGludXgta2VybmVsQHZnZXIu
a2VybmVsLm9yZzsKPj4+PiBsaW51eC1pMmNAdmdlci5rZXJuZWwub3JnCj4+Pj4gQ2M6IE9wZW4g
U291cmNlIFN1Ym1pc3Npb24gPHBhdGNoZXNAYW1wZXJlY29tcHV0aW5nLmNvbT47IFRoYW5nIFEg
Lgo+Pj4+IE5ndXllbiA8dGhhbmdAb3MuYW1wZXJlY29tcHV0aW5nLmNvbT47IFBob25nIFZvCj4+
Pj4gPHBob25nQG9zLmFtcGVyZWNvbXB1dGluZy5jb20+OyBvcGVuYm1jQGxpc3RzLm96bGFicy5v
cmcKPj4+PiBTdWJqZWN0OiBbUEFUQ0ggdjMgNS83XSBpMmM6IGFzcGVlZDogQWRkIGFzcGVlZF9z
ZXRfc2xhdmVfYnVzeSgpCj4+Pj4KPj4+PiBTbGF2ZSBpMmMgZGV2aWNlIG9uIEFTVDI1MDAgcmVj
ZWl2ZWQgYSBsb3Qgb2Ygc2xhdmUgaXJxIHdoaWxlIGl0IGlzCj4+Pj4gYnVzeSBwcm9jZXNzaW5n
IHRoZSByZXNwb25zZS4gVG8gaGFuZGxlIHRoaXMgY2FzZSwgYWRkcyBhbmQgZXhwb3J0cwo+Pj4+
IGFzcGVlZF9zZXRfc2xhdmVfYnVzeSgpIGZvciBjb250cm9sbGVyIHRvIHRlbXBvcmFyeSBzdG9w
IHNsYXZlIGlycQo+Pj4+IHdoaWxlIHNsYXZlIGlzIGhhbmRsaW5nIHRoZSByZXNwb25zZSwgYW5k
IHJlLWVuYWJsZSB0aGVtIGFnYWluIHdoZW4gdGhlCj4+IHJlc3BvbnNlIGlzIHJlYWR5Lgo+Pj4+
Cj4+Pj4gU2lnbmVkLW9mZi1ieTogUXVhbiBOZ3V5ZW4gPHF1YW5Ab3MuYW1wZXJlY29tcHV0aW5n
LmNvbT4KPj4+PiAtLS0KPj4+PiB2MzoKPj4+PiAgICAgKyBGaXJzdCBpbnRyb2R1Y2UgaW4gdjMg
W1F1YW5dCj4+Pj4KPj4+PiAgICBkcml2ZXJzL2kyYy9idXNzZXMvaTJjLWFzcGVlZC5jIHwgMjAg
KysrKysrKysrKysrKysrKysrKysKPj4+PiAgICAxIGZpbGUgY2hhbmdlZCwgMjAgaW5zZXJ0aW9u
cygrKQo+Pj4+Cj4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvaTJjL2J1c3Nlcy9pMmMtYXNwZWVk
LmMKPj4+PiBiL2RyaXZlcnMvaTJjL2J1c3Nlcy9pMmMtYXNwZWVkLmMgaW5kZXggYjJlOWM4ZjBk
ZGY3Li45OTI2ZDA0ODMxYTIKPj4+PiAxMDA2NDQKPj4+PiAtLS0gYS9kcml2ZXJzL2kyYy9idXNz
ZXMvaTJjLWFzcGVlZC5jCj4+Pj4gKysrIGIvZHJpdmVycy9pMmMvYnVzc2VzL2kyYy1hc3BlZWQu
Ywo+Pj4+IEBAIC05NDQsNiArOTQ0LDI2IEBAIHN0YXRpYyBpbnQgYXNwZWVkX2kyY19pbml0KHN0
cnVjdCBhc3BlZWRfaTJjX2J1cwo+Pj4+ICpidXMsCj4+Pj4gICAgCXJldHVybiAwOwo+Pj4+ICAg
IH0KPj4+Pgo+Pj4+ICsjaWYgSVNfRU5BQkxFRChDT05GSUdfSTJDX1NMQVZFKQo+Pj4+ICt2b2lk
IGFzcGVlZF9zZXRfc2xhdmVfYnVzeShzdHJ1Y3QgaTJjX2FkYXB0ZXIgKmFkYXAsIGJvb2wgYnVz
eSkgewo+Pj4+ICsJc3RydWN0IGFzcGVlZF9pMmNfYnVzICpidXMgPSBpMmNfZ2V0X2FkYXBkYXRh
KGFkYXApOwo+Pj4+ICsJdW5zaWduZWQgbG9uZyBjdXJyZW50X21hc2ssIGZsYWdzOwo+Pj4+ICsK
Pj4+PiArCXNwaW5fbG9ja19pcnFzYXZlKCZidXMtPmxvY2ssIGZsYWdzKTsKPj4+PiArCj4+Pj4g
KwljdXJyZW50X21hc2sgPSByZWFkbChidXMtPmJhc2UgKyBBU1BFRURfSTJDX0lOVFJfQ1RSTF9S
RUcpOwo+Pj4gSGVsbG8KPj4+IAlXaGVyZSB0aGUgYnVzLT5iYXNlIHRvIGJlIHJlbWFwPwo+Pj4K
Pj4KPj4gSGkgUnlhbiwKPj4KPj4gSW4gIltQQVRDSCB2MyA2LzddIGlwbWk6IHNzaWZfYm1jOiBB
ZGQgQXNwZWVkIFNTSUYgQk1DIGRyaXZlciIsIHRoZQo+PiAtPnByaXYgaXMgcmV0cmlldmVkIGJ5
IGNhbGxpbmcgaTJjX2dldF9hZGFwZGF0YShjbGllbnQtPmFkYXB0ZXIpLiBBbmQgaW4KPj4gYXNw
ZWVkX3NldF9zc2lmX2JtY19zdGF0dXMoKSwgY2FsbCB0aGUgZXhwb3J0ZWQgYXNwZWVkX3NldF9z
bGF2ZV9idXN5KCkKPj4gdXNpbmcgLT5wcml2IHBvaW50ZXIgYXMgY29kZSBiZWxvdy4KPj4KPiBZ
ZXMsIEkgc2VlIHRoZSBwcm9iZSBmdW5jdGlvbiAiIHNzaWZfYm1jLT5wcml2ID0gaTJjX2dldF9h
ZGFwZGF0YShjbGllbnQtPmFkYXB0ZXIpOyIgdG8gZ2V0IHByaXYuCj4gQnV0IG15IHF1ZXN0aW9u
IEkgZG9u4oCZdCBzZWUgdGhlIGJ1cy0+YmFzZSBhZGRyZXNzIGJlIGFzc2lnbmVkLgo+IApIaSBS
eWFuLAoKSW4gZHJpdmVycy9pMmMvYnVzc2VzL2kyYy1hc3BlZWQuYzoKc3RydWN0IGFzcGVlZF9p
MmNfYnVzIHsKICAgICAgICAgc3RydWN0IGkyY19hZGFwdGVyICAgICAgICAgICAgICBhZGFwOwog
ICAgICAgICBzdHJ1Y3QgZGV2aWNlICAgICAgICAgICAgICAgICAgICpkZXY7CiAgICAgICAgIHZv
aWQgX19pb21lbSAgICAgICAgICAgICAgICAgICAgKmJhc2U7CiAgICAgICAgIHN0cnVjdCByZXNl
dF9jb250cm9sICAgICAgICAgICAgKnJzdDsKICAgICAgICAgLyogU3luY2hyb25pemVzIEkvTyBt
ZW0gYWNjZXNzIHRvIGJhc2UuICovCiAgICAgICAgIHNwaW5sb2NrX3QgICAgICAgICAgICAgICAg
ICAgICAgbG9jazsKClNvIHdoZW4gInN0cnVjdCBhc3BlZWRfaTJjX2J1cyAqYnVzID0gaTJjX2dl
dF9hZGFwZGF0YShhZGFwKTsiLCB0aGUgCmJ1cy0+YmFzZSBzaG91bGQgcG9pbnQgdG8gdGhlIGJh
c2Ugb2YgdGhlIGFzcGVlZF9pMmNfYnVzLCB3aGljaCBpcyAKYWxyZWFkeSBpbml0aWFsaXplZCBi
eSB0aGUgYXNwZWVkIGkyYyBidXMgZHJpdmVyLgoKRG8gSSBtaXNzIHNvbWV0aGluZz8KCi0gUXVh
bgoKCj4+ICtleHRlcm4gdm9pZCBhc3BlZWRfc2V0X3NsYXZlX2J1c3koc3RydWN0IGkyY19hZGFw
dGVyICphZGFwLCBib29sIGJ1c3kpOwo+PiArc3RhdGljIHZvaWQgYXNwZWVkX3NldF9zc2lmX2Jt
Y19zdGF0dXMoc3RydWN0IHNzaWZfYm1jX2N0eCAqc3NpZl9ibWMsCj4+IHVuc2lnbmVkIGludCBz
dGF0dXMpCj4+ICt7Cj4+ICsJaWYgKHN0YXR1cyAmIFNTSUZfQk1DX0JVU1kpCj4+ICsJCWFzcGVl
ZF9zZXRfc2xhdmVfYnVzeSgoc3RydWN0IGkyY19hZGFwdGVyICopc3NpZl9ibWMtPnByaXYsIHRy
dWUpOwo+PiArCWVsc2UgaWYgKHN0YXR1cyAmIFNTSUZfQk1DX1JFQURZKQo+PiArCQlhc3BlZWRf
c2V0X3NsYXZlX2J1c3koKHN0cnVjdCBpMmNfYWRhcHRlciAqKXNzaWZfYm1jLT5wcml2LCBmYWxz
ZSk7IH0KPj4gKwo+PiArc3RhdGljIGludCBzc2lmX2JtY19wcm9iZShzdHJ1Y3QgaTJjX2NsaWVu
dCAqY2xpZW50LCBjb25zdCBzdHJ1Y3QKPj4gaTJjX2RldmljZV9pZCAqaWQpCj4+ICt7Cj4+ICsJ
c3RydWN0IHNzaWZfYm1jX2N0eCAqc3NpZl9ibWM7Cj4+ICsKPj4gKwlzc2lmX2JtYyA9IHNzaWZf
Ym1jX2FsbG9jKGNsaWVudCwgMCk7Cj4+ICsJaWYgKElTX0VSUihzc2lmX2JtYykpCj4+ICsJCXJl
dHVybiBQVFJfRVJSKHNzaWZfYm1jKTsKPj4gKwo+PiArCXNzaWZfYm1jLT5wcml2ID0gaTJjX2dl
dF9hZGFwZGF0YShjbGllbnQtPmFkYXB0ZXIpOwo+PiArCXNzaWZfYm1jLT5zZXRfc3NpZl9ibWNf
c3RhdHVzID0gYXNwZWVkX3NldF9zc2lmX2JtY19zdGF0dXM7Cj4+ICsKPj4gKwlyZXR1cm4gMDsK
Pj4gK30KPj4KPj4gLSBRdWFuCj4+Cj4+Cj4gCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCk9wZW5pcG1pLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKT3Bl
bmlwbWktZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJj
ZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9vcGVuaXBtaS1kZXZlbG9wZXIK

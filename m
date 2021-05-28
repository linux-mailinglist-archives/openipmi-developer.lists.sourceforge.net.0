Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B6250393AE4
	for <lists+openipmi-developer@lfdr.de>; Fri, 28 May 2021 03:09:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Content-Transfer-Encoding:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:Date:Message-ID:
	References:To:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yPRJyEZPNcbK4Q2xWY7VM0O/MQxlCj/4jbedw3Lqpwo=; b=lipCDgPbxGvse4PZET/zoMssZk
	rH2yP5F5jo/J7/+QdesR6UIYfQ9OgYeg6yU+DJ19+LI/ZefZMp7VnWCBKeP9Lg2yvoruGSIcX98u2
	1p5dlZgoy5qsZF4d770mvTlwXBVzpAdCsb99ieEFLtaZWkLd3BNDLtnsO9GbEYzlXfaM=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lmR0B-0005r0-GV; Fri, 28 May 2021 01:09:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <quan@os.amperecomputing.com>) id 1lmR0A-0005qt-0I
 for openipmi-developer@lists.sourceforge.net; Fri, 28 May 2021 01:09:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Q39wZYcnjxMJ+4STf8QsAr2pUVl0olHlxwGASWnb0OQ=; b=KfWR6g7i+adgS/4596b315kYK9
 B6Quq2SoF4YjZHbdpBRj5uje04xfpV1fEeVcTOHw+qxJ+KKUi9t3ujZA0BpRta+Sim46t86cQopkQ
 QmK1ZFCpsXnr1xBZ8vfWsGUBbGQ+NkKIJSz++EiYOB3GjybZ1yM6hf6JYdapQnOrH1RQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Q39wZYcnjxMJ+4STf8QsAr2pUVl0olHlxwGASWnb0OQ=; b=K+Cxpn7yxIztDasHdTd56zdFY9
 ur551EJ/9oIrl4jSqKyELRadgmpZuRXB/ev3It0xIQ5B60BmK1O7KviuSC6nnkwMR+7mwRkTKVtNr
 i1w1TaG9ec01gnQsdFHxhqtJ8rXr01i+eft+RwkKhW4fRM9v3QkK4OjTU5yNa0URWhho=;
Received: from mail-mw2nam10on2118.outbound.protection.outlook.com
 ([40.107.94.118] helo=NAM10-MW2-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lmQzz-000JGi-Ex
 for openipmi-developer@lists.sourceforge.net; Fri, 28 May 2021 01:09:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j+JwPwi4bTwclT1DonBN7No/HyQsE2nW0fQNT2Dr6l35CRCSawxfC4elfH8dxrM/SxWewNVnrqsSuJBnsounLsW8qsCv4ij1qDHT9i6HsCkQDwaQW+xwqmwb2a1f/iknNvEJNqy6lgfW90R8Hehnfj1efO7kOPNrkhtxNzXcwuZpAlUhQbQaZQTI5mBYvzyfeCfF5roaCdo+xackDcLe357KmASmYNgJ+OONeC6acGjKpbS00Z27AgKFpKKkZ+p/xaJ+uZpoZX91V4B4s2Tx3rH6vgiOZA1YWJVYObSmP9tVlV9tEZ5rJyvSWqyvhv8cU1m6zbTyzImwoLzSWO1NIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Q39wZYcnjxMJ+4STf8QsAr2pUVl0olHlxwGASWnb0OQ=;
 b=JWfRhK8qJCnKz6BnfC3WK9LHBcIOfFhg7Qv+8iZSKQZDFsWBqxwPcuSZbfh6MQywbhSUy1rXboS5FM24hXCWKsXBGbAG7Hn1uJ85/0um0v7wgQVAuT2i43l5zm9sQe9jRr4oBtKDOq/EfircPPzCC6MD0Z/gK3mejkqKTsxeO45Vi1vYY5N9ZsOI95UoHY+bu52VSglXFOfGZMimyhyFg/CW7QI3TwgLVN/pa0NQC1rdDly1TjdYwGeP77IuDHPGw9tLt9Gb/2Lxa3Jtp/TUbWcjCOIj9+tG8TTx+evW6XVgfQg48v/Kt5xYdPfio6e7Rwmnb1PjZwxO4KSdjyK/bQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=os.amperecomputing.com; dmarc=pass action=none
 header.from=os.amperecomputing.com; dkim=pass
 header.d=os.amperecomputing.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=os.amperecomputing.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Q39wZYcnjxMJ+4STf8QsAr2pUVl0olHlxwGASWnb0OQ=;
 b=iZeNlSaG5MrvjVQQvn7UTEXTgBV/N4RdTmwUki7qe/uEO33taKe86jd5KaOTr6DltEi6Z4II2/HG7xrP9lPWI4VDdJCxfKlXp6s9HV8cgH7nSueqtW50llb9nkI91Tq2Fqfkb87+/w/j6s+l0XksIyG3grpA+n1ko+0tyyqvczk=
Authentication-Results: lists.ozlabs.org; dkim=none (message not signed)
 header.d=none;lists.ozlabs.org; dmarc=none action=none
 header.from=os.amperecomputing.com;
Received: from MW2PR0102MB3482.prod.exchangelabs.com (2603:10b6:302:c::32) by
 MW2PR0102MB3483.prod.exchangelabs.com (2603:10b6:302:3::12) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4150.27; Fri, 28 May 2021 00:53:42 +0000
Received: from MW2PR0102MB3482.prod.exchangelabs.com
 ([fe80::1905:a396:9968:3a5]) by MW2PR0102MB3482.prod.exchangelabs.com
 ([fe80::1905:a396:9968:3a5%5]) with mapi id 15.20.4150.027; Fri, 28 May 2021
 00:53:42 +0000
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
 <917237ce-98f8-df5f-32b6-b4145ac47ac9@os.amperecomputing.com>
 <HK0PR06MB33805BB4A4D35192A0D95E59F2259@HK0PR06MB3380.apcprd06.prod.outlook.com>
Message-ID: <14d58497-44e6-265a-af9d-7189379784d5@os.amperecomputing.com>
Date: Fri, 28 May 2021 07:53:28 +0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.10.2
In-Reply-To: <HK0PR06MB33805BB4A4D35192A0D95E59F2259@HK0PR06MB3380.apcprd06.prod.outlook.com>
Content-Language: en-US
X-Originating-IP: [2402:800:623c:5f9b:282b:d89a:b291:5ff0]
X-ClientProxiedBy: HK2PR02CA0158.apcprd02.prod.outlook.com
 (2603:1096:201:1f::18) To MW2PR0102MB3482.prod.exchangelabs.com
 (2603:10b6:302:c::32)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2402:800:623c:5f9b:282b:d89a:b291:5ff0]
 (2402:800:623c:5f9b:282b:d89a:b291:5ff0) by
 HK2PR02CA0158.apcprd02.prod.outlook.com (2603:1096:201:1f::18) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4173.20 via Frontend Transport; Fri, 28 May 2021 00:53:37 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 56541955-1b82-4957-d769-08d9217309bf
X-MS-TrafficTypeDiagnostic: MW2PR0102MB3483:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MW2PR0102MB3483F61DF1DB680F83373446F2229@MW2PR0102MB3483.prod.exchangelabs.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5236;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VQzJCcvfCQrxkkvs8P4XHa+nh905K/K6TyVMLzOp3rXS5tMFzgSquft8tDlOpfGsohBzRAstqFqRy1m5kkqw5Y57CipvTIufCJN5zcMqH8yhBJuvXmJRC6ktBLVgq1WxTrplIUB9AA7FHuysaV3fNIvI2Tt3dnqosRa2qYoPR3rm0J17d+NcraOCXZYhW4zbKKepagSSj/vZXMz8wWO7BolPdb4hEkeoLxWWF7PmqdpnhZW/quGsgISGD9URE9kn08lepwF9qfKgwkqUJrAmawzNCMmWNbPMeVOywgWQq2icwskSjQa+xrtuzbhQiNMqQPdPcqggwe1FpuNSUPDQitNoVPgDxe2OZme1VZ4z3DTPNf1gmDhTLHL5uknysUWGohteQ14IcoIQnlP87RV66kaZOeEQfGMT2OUblIFmXaw7Q+sLoFL+MciE6SinT3DQwkydVRWthj5I+DpPOg5LqJlGc+pwwl7pVCPSqEXuyqK/M2SAWonsNVKg+CkvGHBcOmJYa8Xkpt2IYk79Maal35Dm0yKRJ+/zHqq+7LtSDU7jJzG7bT/H2Zq8VWqZ58qd10yAde4Fjfv0CEheGBeo8lB/sjGGiIqFaAaQxByTZiHLCSW7OJf9KUE9Zj+aEJaxpqk+haFm4MI3byyHFRFbua2URTFE08PeTm7+V83fLrIjH7u2hLU5QA6vUaYg2atV+SoXbHsJpX990/pz4Gi7lA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW2PR0102MB3482.prod.exchangelabs.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(366004)(136003)(39830400003)(396003)(376002)(110136005)(31686004)(5660300002)(4326008)(66946007)(66476007)(38100700002)(83380400001)(6666004)(8936002)(31696002)(478600001)(186003)(54906003)(6486002)(52116002)(2906002)(316002)(16526019)(8676002)(7416002)(86362001)(53546011)(66556008)(921005)(2616005)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?My8xTXBTRkxRdndZcDIvQlEwdlRBdk1vMjA1Z2tXVTVxT29lYzVUdWpVZVdG?=
 =?utf-8?B?a0lUSzh5MHBFQldub0UxR1kzMGxZV1RaaUk1VkJXY0pLc1RRaVVGR0FPV1BE?=
 =?utf-8?B?dSsxVk9tdVVOME9jbVF2aVpoVkJlb1NxQTZwVmRnQVNEek5FaGVnSVpGM0lq?=
 =?utf-8?B?Y2ZEVnNSVW4xaW92ZzlHSWtzVHZQcVJ4WUpZRmxOZFd0OXlTZitNY0ZNUUlo?=
 =?utf-8?B?VnExWWt2K0tWb1hpT2ZIa2t6NXEvOFlaMkJOTFNGeUl2dHlQRnhFTnlHSGVC?=
 =?utf-8?B?em9iajlXYy9LbUVhNUV2VldSUERHZTRkQWpEemw2eVBDVmVUa3FvU0ljL0RF?=
 =?utf-8?B?QllTVGsyMmhhdlk0Y0lUUnZvbXZuWWozdGswK2h1T1dGUnZYOHV3bjhCYzdX?=
 =?utf-8?B?WnFNSVpuNmRTaTF1bDJ2QkRKTTN6TXppVFZWMkNUNndqK0NkSjNCNmtLRU5T?=
 =?utf-8?B?L3NYa1d3eHFxSlk2QkdjazVLRmNadkpxM2JrYWVGOVFEYkwweGR1WHdPMFJ4?=
 =?utf-8?B?MkxKdXd3cUlBYnZyNXdxc1lDRllYYy82QytJOTEzU2ZzMjdlVEx4RWwrUlRJ?=
 =?utf-8?B?WmhEUG1xMnRCb3RtdXFCaFBrNi9ZVURJM0Nld09MOHM2OXJZbzRoRzJNaEhU?=
 =?utf-8?B?WDQ2VE52dEJKSnNXcjBXU3lkRVVLbW1XblNMeDg2Vi9sejJNdkFYSFNjWWdv?=
 =?utf-8?B?Y1FJQzVZRWNXd1lpT3orYUV4a05kSzVDazdlS3VhYitmOE5BeTFnUFlrVmJN?=
 =?utf-8?B?Uy9hZXFZNTJzWW5IYjBGSWNTYkxYZ3NMOVhTcWl5NnlQdm5MajBqMXpzOWJV?=
 =?utf-8?B?NDB5VURKZGpnYU9oSUFaR2huMzc2K1hJdVMxSlNYWmJsK1BBZmR3TWF3TkRZ?=
 =?utf-8?B?ZkQwRmRMUXdLZkd5RjdnQ1Rnd2prNy95MTBtbHVJeEJSRkdsdmkvZVZqLzBO?=
 =?utf-8?B?UDFZbXNiSit1MDRKcHNIYmtDTkJKOXlHN3F1U0N2WGw3TGg1bWdzRzFJazd2?=
 =?utf-8?B?VFZ1eHJreDhyZEJkMnNPWm0xb3FYaTNHaURVQ1pjdlVGYVFGMnoyOW1BcmNM?=
 =?utf-8?B?MXVsL0pSWUVxRGwvampxdVZlOEY2dXZITHpqMGVwY05Xd0xKM0ltc2RGbzhO?=
 =?utf-8?B?bnRhbzVBSWMrdVJNbk9iL01UOVRlMWJqSmxhMGtJU3BGNHRQVGRBTE1UMGFh?=
 =?utf-8?B?M2dqNUhSaUtoZVEvMWFHVDlTeE5HcmJlNGk5Z3E2Rk5ZSk5lVE1ZakIyRVJx?=
 =?utf-8?B?dVBnZGlldThQRjR3YUJ0OEtiQ3dLdHVhRkNtYmNUdjFDQlBVWHM1VzV4QVdj?=
 =?utf-8?B?SmpzbHdUM2M3MnRzVFFBUlBuYVZKejBEWnNCMkRIeEV6ZncvVWJ3MER4OURi?=
 =?utf-8?B?NlRCcmFuZE1ONnh5dHJiY0ovQUdtd0R2UmZ0RXVSZ3VpY2ZhQmhHemc3TjV1?=
 =?utf-8?B?RHVOajRzZFJ0dkF5SjdNVHFkQXlKaVJFTWhWMzQwVnpJN3RzSVR2VXhpNkxM?=
 =?utf-8?B?WkQ2NmQ2QVdxa1hHVU1zNlhZUDlKaFMrMGlXVkRvaU5ubENTTGhhVkQzQ25B?=
 =?utf-8?B?LzFNQ29tMEowNGg0TDBjYjFMZDVjNEZBY0tRWXhrMDRWVHJDNTlvRnJseklm?=
 =?utf-8?B?VkJENlRad0NMUDJ4cDk5b2d0b0RHTnkwdDg3UndvU0ZaWTR4NEk5eXppaHo0?=
 =?utf-8?B?UXNnTHdscFRJMmF1SDBVWndBRFJVZGUySVRDa2JwdjBjcElwbERSTEZhMFR5?=
 =?utf-8?B?aW5MN2syeEVBMnNzWXN4bDU0ajFyRXhhMlNKT0lPSTZiUmoyUzdLNWRhM0cw?=
 =?utf-8?B?cXZVOXArZTRMSUovMVBWMFFla2g3RjVkQnlpcURCaFV1NlZPR1lmMXc3WUhr?=
 =?utf-8?Q?H6YznKBoMLZGM?=
X-OriginatorOrg: os.amperecomputing.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 56541955-1b82-4957-d769-08d9217309bf
X-MS-Exchange-CrossTenant-AuthSource: MW2PR0102MB3482.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 May 2021 00:53:42.1147 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oD2YMYBDTiGSDpNXClScmg6UryNON4rslXKi0IYylDbFLhzZut8szT58iaZt3nZbti6Iw5OD6ZJvWiwuUwzvaEchp6BM/x0F17f0ER3YeOI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW2PR0102MB3483
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.94.118 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.94.118 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1lmQzz-000JGi-Ex
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

T24gMjUvMDUvMjAyMSAxNzozMCwgUnlhbiBDaGVuIHdyb3RlOgo+PiAtLS0tLU9yaWdpbmFsIE1l
c3NhZ2UtLS0tLQo+PiBGcm9tOiBRdWFuIE5ndXllbiA8cXVhbkBvcy5hbXBlcmVjb21wdXRpbmcu
Y29tPgo+PiBTZW50OiBNb25kYXksIE1heSAyNCwgMjAyMSA2OjQ5IFBNCj4+IFRvOiBSeWFuIENo
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
c3koKQo+Pgo+PiBPbiAyNC8wNS8yMDIxIDE3OjM2LCBSeWFuIENoZW4gd3JvdGU6Cj4+Pj4gLS0t
LS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPj4+PiBGcm9tOiBRdWFuIE5ndXllbiA8cXVhbkBvcy5h
bXBlcmVjb21wdXRpbmcuY29tPgo+Pj4+IFNlbnQ6IE1vbmRheSwgTWF5IDI0LCAyMDIxIDY6MjAg
UE0KPj4+PiBUbzogUnlhbiBDaGVuIDxyeWFuX2NoZW5AYXNwZWVkdGVjaC5jb20+OyBDb3JleSBN
aW55YXJkCj4+Pj4gPG1pbnlhcmRAYWNtLm9yZz47IFJvYiBIZXJyaW5nIDxyb2JoK2R0QGtlcm5l
bC5vcmc+OyBKb2VsIFN0YW5sZXkKPj4+PiA8am9lbEBqbXMuaWQuYXU+OyBBbmRyZXcgSmVmZmVy
eSA8YW5kcmV3QGFqLmlkLmF1PjsgQnJlbmRhbiBIaWdnaW5zCj4+Pj4gPGJyZW5kYW5oaWdnaW5z
QGdvb2dsZS5jb20+OyBCZW5qYW1pbiBIZXJyZW5zY2htaWR0Cj4+Pj4gPGJlbmhAa2VybmVsLmNy
YXNoaW5nLm9yZz47IFdvbGZyYW0gU2FuZyA8d3NhQGtlcm5lbC5vcmc+OyBQaGlsaXBwCj4+Pj4g
WmFiZWwgPHAuemFiZWxAcGVuZ3V0cm9uaXguZGU+Owo+Pj4+IG9wZW5pcG1pLWRldmVsb3BlckBs
aXN0cy5zb3VyY2Vmb3JnZS5uZXQ7Cj4+Pj4gZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmc7IGxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZzsKPj4+PiBsaW51eC1hc3BlZWRAbGlz
dHMub3psYWJzLm9yZzsgbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZzsKPj4+PiBsaW51eC1p
MmNAdmdlci5rZXJuZWwub3JnCj4+Pj4gQ2M6IE9wZW4gU291cmNlIFN1Ym1pc3Npb24gPHBhdGNo
ZXNAYW1wZXJlY29tcHV0aW5nLmNvbT47IFRoYW5nIFEgLgo+Pj4+IE5ndXllbiA8dGhhbmdAb3Mu
YW1wZXJlY29tcHV0aW5nLmNvbT47IFBob25nIFZvCj4+Pj4gPHBob25nQG9zLmFtcGVyZWNvbXB1
dGluZy5jb20+OyBvcGVuYm1jQGxpc3RzLm96bGFicy5vcmcKPj4+PiBTdWJqZWN0OiBSZTogW1BB
VENIIHYzIDUvN10gaTJjOiBhc3BlZWQ6IEFkZCBhc3BlZWRfc2V0X3NsYXZlX2J1c3koKQo+Pj4+
Cj4+Pj4gT24gMjQvMDUvMjAyMSAxNzowNiwgUnlhbiBDaGVuIHdyb3RlOgo+Pj4+Pj4gLS0tLS1P
cmlnaW5hbCBNZXNzYWdlLS0tLS0KPj4+Pj4+IEZyb206IG9wZW5ibWMKPj4+Pj4+IDxvcGVuYm1j
LWJvdW5jZXMrcnlhbl9jaGVuPWFzcGVlZHRlY2guY29tQGxpc3RzLm96bGFicy5vcmc+IE9uCj4+
Pj4gQmVoYWxmCj4+Pj4+PiBPZiBRdWFuIE5ndXllbgo+Pj4+Pj4gU2VudDogV2VkbmVzZGF5LCBN
YXkgMTksIDIwMjEgMzo1MCBQTQo+Pj4+Pj4gVG86IENvcmV5IE1pbnlhcmQgPG1pbnlhcmRAYWNt
Lm9yZz47IFJvYiBIZXJyaW5nCj4+Pj4+PiA8cm9iaCtkdEBrZXJuZWwub3JnPjsgSm9lbCBTdGFu
bGV5IDxqb2VsQGptcy5pZC5hdT47IEFuZHJldyBKZWZmZXJ5Cj4+Pj4+PiA8YW5kcmV3QGFqLmlk
LmF1PjsgQnJlbmRhbiBIaWdnaW5zIDxicmVuZGFuaGlnZ2luc0Bnb29nbGUuY29tPjsKPj4+Pj4+
IEJlbmphbWluIEhlcnJlbnNjaG1pZHQgPGJlbmhAa2VybmVsLmNyYXNoaW5nLm9yZz47IFdvbGZy
YW0gU2FuZwo+Pj4+Pj4gPHdzYUBrZXJuZWwub3JnPjsgUGhpbGlwcCBaYWJlbCA8cC56YWJlbEBw
ZW5ndXRyb25peC5kZT47Cj4+Pj4+PiBvcGVuaXBtaS1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9y
Z2UubmV0Owo+Pj4+Pj4gZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmc7IGxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZzsKPj4+Pj4+IGxpbnV4LWFzcGVlZEBsaXN0cy5vemxhYnMu
b3JnOyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnOwo+Pj4+Pj4gbGludXgtaTJjQHZnZXIu
a2VybmVsLm9yZwo+Pj4+Pj4gQ2M6IE9wZW4gU291cmNlIFN1Ym1pc3Npb24gPHBhdGNoZXNAYW1w
ZXJlY29tcHV0aW5nLmNvbT47IFRoYW5nCj4+IFEgLgo+Pj4+Pj4gTmd1eWVuIDx0aGFuZ0Bvcy5h
bXBlcmVjb21wdXRpbmcuY29tPjsgUGhvbmcgVm8KPj4+Pj4+IDxwaG9uZ0Bvcy5hbXBlcmVjb21w
dXRpbmcuY29tPjsgb3BlbmJtY0BsaXN0cy5vemxhYnMub3JnCj4+Pj4+PiBTdWJqZWN0OiBbUEFU
Q0ggdjMgNS83XSBpMmM6IGFzcGVlZDogQWRkIGFzcGVlZF9zZXRfc2xhdmVfYnVzeSgpCj4+Pj4+
Pgo+Pj4+Pj4gU2xhdmUgaTJjIGRldmljZSBvbiBBU1QyNTAwIHJlY2VpdmVkIGEgbG90IG9mIHNs
YXZlIGlycSB3aGlsZSBpdCBpcwo+Pj4+Pj4gYnVzeSBwcm9jZXNzaW5nIHRoZSByZXNwb25zZS4g
VG8gaGFuZGxlIHRoaXMgY2FzZSwgYWRkcyBhbmQgZXhwb3J0cwo+Pj4+Pj4gYXNwZWVkX3NldF9z
bGF2ZV9idXN5KCkgZm9yIGNvbnRyb2xsZXIgdG8gdGVtcG9yYXJ5IHN0b3Agc2xhdmUgaXJxCj4+
Pj4+PiB3aGlsZSBzbGF2ZSBpcyBoYW5kbGluZyB0aGUgcmVzcG9uc2UsIGFuZCByZS1lbmFibGUg
dGhlbSBhZ2FpbiB3aGVuCj4+Pj4+PiB0aGUKPj4+PiByZXNwb25zZSBpcyByZWFkeS4KPj4+Pj4+
Cj4+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBRdWFuIE5ndXllbiA8cXVhbkBvcy5hbXBlcmVjb21wdXRp
bmcuY29tPgo+Pj4+Pj4gLS0tCj4+Pj4+PiB2MzoKPj4+Pj4+ICAgICAgKyBGaXJzdCBpbnRyb2R1
Y2UgaW4gdjMgW1F1YW5dCj4+Pj4+Pgo+Pj4+Pj4gICAgIGRyaXZlcnMvaTJjL2J1c3Nlcy9pMmMt
YXNwZWVkLmMgfCAyMCArKysrKysrKysrKysrKysrKysrKwo+Pj4+Pj4gICAgIDEgZmlsZSBjaGFu
Z2VkLCAyMCBpbnNlcnRpb25zKCspCj4+Pj4+Pgo+Pj4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
aTJjL2J1c3Nlcy9pMmMtYXNwZWVkLmMKPj4+Pj4+IGIvZHJpdmVycy9pMmMvYnVzc2VzL2kyYy1h
c3BlZWQuYyBpbmRleCBiMmU5YzhmMGRkZjcuLjk5MjZkMDQ4MzFhMgo+Pj4+Pj4gMTAwNjQ0Cj4+
Pj4+PiAtLS0gYS9kcml2ZXJzL2kyYy9idXNzZXMvaTJjLWFzcGVlZC5jCj4+Pj4+PiArKysgYi9k
cml2ZXJzL2kyYy9idXNzZXMvaTJjLWFzcGVlZC5jCj4+Pj4+PiBAQCAtOTQ0LDYgKzk0NCwyNiBA
QCBzdGF0aWMgaW50IGFzcGVlZF9pMmNfaW5pdChzdHJ1Y3QKPj4+Pj4+IGFzcGVlZF9pMmNfYnVz
ICpidXMsCj4+Pj4+PiAgICAgCXJldHVybiAwOwo+Pj4+Pj4gICAgIH0KPj4+Pj4+Cj4+Pj4+PiAr
I2lmIElTX0VOQUJMRUQoQ09ORklHX0kyQ19TTEFWRSkKPj4+Pj4+ICt2b2lkIGFzcGVlZF9zZXRf
c2xhdmVfYnVzeShzdHJ1Y3QgaTJjX2FkYXB0ZXIgKmFkYXAsIGJvb2wgYnVzeSkgewo+Pj4+Pj4g
KwlzdHJ1Y3QgYXNwZWVkX2kyY19idXMgKmJ1cyA9IGkyY19nZXRfYWRhcGRhdGEoYWRhcCk7Cj4+
Pj4+PiArCXVuc2lnbmVkIGxvbmcgY3VycmVudF9tYXNrLCBmbGFnczsKPj4+Pj4+ICsKPj4+Pj4+
ICsJc3Bpbl9sb2NrX2lycXNhdmUoJmJ1cy0+bG9jaywgZmxhZ3MpOwo+Pj4+Pj4gKwo+Pj4+Pj4g
KwljdXJyZW50X21hc2sgPSByZWFkbChidXMtPmJhc2UgKyBBU1BFRURfSTJDX0lOVFJfQ1RSTF9S
RUcpOwo+Pj4+PiBIZWxsbwo+Pj4+PiAJV2hlcmUgdGhlIGJ1cy0+YmFzZSB0byBiZSByZW1hcD8K
Pj4+Pj4KPj4+Pgo+Pj4+IEhpIFJ5YW4sCj4+Pj4KPj4+PiBJbiAiW1BBVENIIHYzIDYvN10gaXBt
aTogc3NpZl9ibWM6IEFkZCBBc3BlZWQgU1NJRiBCTUMgZHJpdmVyIiwgdGhlCj4+Pj4gLT5wcml2
IGlzIHJldHJpZXZlZCBieSBjYWxsaW5nIGkyY19nZXRfYWRhcGRhdGEoY2xpZW50LT5hZGFwdGVy
KS4gQW5kCj4+Pj4gLT5pbgo+Pj4+IGFzcGVlZF9zZXRfc3NpZl9ibWNfc3RhdHVzKCksIGNhbGwg
dGhlIGV4cG9ydGVkCj4+Pj4gYXNwZWVkX3NldF9zbGF2ZV9idXN5KCkgdXNpbmcgLT5wcml2IHBv
aW50ZXIgYXMgY29kZSBiZWxvdy4KPj4+Pgo+Pj4gWWVzLCBJIHNlZSB0aGUgcHJvYmUgZnVuY3Rp
b24gIiBzc2lmX2JtYy0+cHJpdiA9Cj4+IGkyY19nZXRfYWRhcGRhdGEoY2xpZW50LT5hZGFwdGVy
KTsiIHRvIGdldCBwcml2Lgo+Pj4gQnV0IG15IHF1ZXN0aW9uIEkgZG9u4oCZdCBzZWUgdGhlIGJ1
cy0+YmFzZSBhZGRyZXNzIGJlIGFzc2lnbmVkLgo+Pj4KPj4gSGkgUnlhbiwKPj4KPj4gSW4gZHJp
dmVycy9pMmMvYnVzc2VzL2kyYy1hc3BlZWQuYzoKPj4gc3RydWN0IGFzcGVlZF9pMmNfYnVzIHsK
Pj4gICAgICAgICAgIHN0cnVjdCBpMmNfYWRhcHRlciAgICAgICAgICAgICAgYWRhcDsKPj4gICAg
ICAgICAgIHN0cnVjdCBkZXZpY2UgICAgICAgICAgICAgICAgICAgKmRldjsKPj4gICAgICAgICAg
IHZvaWQgX19pb21lbSAgICAgICAgICAgICAgICAgICAgKmJhc2U7Cj4+ICAgICAgICAgICBzdHJ1
Y3QgcmVzZXRfY29udHJvbCAgICAgICAgICAgICpyc3Q7Cj4+ICAgICAgICAgICAvKiBTeW5jaHJv
bml6ZXMgSS9PIG1lbSBhY2Nlc3MgdG8gYmFzZS4gKi8KPj4gICAgICAgICAgIHNwaW5sb2NrX3Qg
ICAgICAgICAgICAgICAgICAgICAgbG9jazsKPj4KPj4gU28gd2hlbiAic3RydWN0IGFzcGVlZF9p
MmNfYnVzICpidXMgPSBpMmNfZ2V0X2FkYXBkYXRhKGFkYXApOyIsIHRoZQo+PiBidXMtPmJhc2Ug
c2hvdWxkIHBvaW50IHRvIHRoZSBiYXNlIG9mIHRoZSBhc3BlZWRfaTJjX2J1cywgd2hpY2ggaXMK
Pj4gYWxyZWFkeSBpbml0aWFsaXplZCBieSB0aGUgYXNwZWVkIGkyYyBidXMgZHJpdmVyLgo+Pgo+
PiBEbyBJIG1pc3Mgc29tZXRoaW5nPwo+IEhlbGxvIFF1YW4sCj4gCUFmdGVyIHN0dWR5LiBJIHRo
aW5rIHRoZSBzc2lmX2JtY19hc3BlZWQuYyBhc3N1bWUgdGhlIHByaXYgZGF0YSBpcyB0aGUgc2Ft
ZSBzdHJ1Y3QuCj4gCVRoYXQgaXMgdHJpY2suCj4gCURvIHdlIGhhdmUgYSBiZXR0ZXIgZm9yIHNs
YXZlIGVuYWJsZS9kaXNhYmxlIGNhbGwgYmFjayB0byBpbXBsZW1lbnQgdGhpcz8KPiAJSWYgYWRk
IGNhbGwgYmFjayBpbiBzdHJ1Y3QgaTJjX2FsZ29yaXRobTsgaXMgaXQgd29ya2FibGU/Cj4+CgpI
aSBSeWFuLAoKSSBkb250IGtub3cgd2hpY2ggaXMgYmV0dGVyLCBpZTogYWRkaW5nIGNhbGxiYWNr
IHRvIHN0cnVjdCBpMmNfYWxnb3JpdGhtIApvciB0byBzdHJ1Y3QgaTJjX2FkYXB0ZXIuCkkgaGF2
ZSB0cmllZCB0byBhZGQgZ2VuZXJpYyBjYWxsYmFjayB0byBzdHJ1Y3QgaTJjX2FkYXB0ZXIgYXMg
YmVsb3cgYW5kIAppdCB3b3Jrcy4KCmRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2kyYy5oIGIv
aW5jbHVkZS9saW51eC9pMmMuaAppbmRleCA0ZTc3MTRjODhmOTUuLjZlOWFiZjJkNmFiYiAxMDA2
NDQKLS0tIGEvaW5jbHVkZS9saW51eC9pMmMuaAorKysgYi9pbmNsdWRlL2xpbnV4L2kyYy5oCkBA
IC03MTMsNiArNzEzLDEwIEBAIHN0cnVjdCBpMmNfYWRhcHRlciB7CiAgCWNvbnN0IHN0cnVjdCBp
MmNfYWRhcHRlcl9xdWlya3MgKnF1aXJrczsKCiAgCXN0cnVjdCBpcnFfZG9tYWluICpob3N0X25v
dGlmeV9kb21haW47CisjaWYgSVNfRU5BQkxFRChDT05GSUdfSTJDX1NMQVZFKQorCWludCAoKnNs
YXZlX2VuYWJsZSkoc3RydWN0IGkyY19hZGFwdGVyICphZGFwKTsKKwlpbnQgKCpzbGF2ZV9kaXNh
YmxlKShzdHJ1Y3QgaTJjX2FkYXB0ZXIgKmFkYXApOworI2VuZGlmCiAgfTsKICAjZGVmaW5lIHRv
X2kyY19hZGFwdGVyKGQpIGNvbnRhaW5lcl9vZihkLCBzdHJ1Y3QgaTJjX2FkYXB0ZXIsIGRldikK
Cj4+Pj4gK2V4dGVybiB2b2lkIGFzcGVlZF9zZXRfc2xhdmVfYnVzeShzdHJ1Y3QgaTJjX2FkYXB0
ZXIgKmFkYXAsIGJvb2wgYnVzeSk7Cj4+Pj4gK3N0YXRpYyB2b2lkIGFzcGVlZF9zZXRfc3NpZl9i
bWNfc3RhdHVzKHN0cnVjdCBzc2lmX2JtY19jdHggKnNzaWZfYm1jLAo+Pj4+IHVuc2lnbmVkIGlu
dCBzdGF0dXMpCj4+Pj4gK3sKPj4+PiArCWlmIChzdGF0dXMgJiBTU0lGX0JNQ19CVVNZKQo+Pj4+
ICsJCWFzcGVlZF9zZXRfc2xhdmVfYnVzeSgoc3RydWN0IGkyY19hZGFwdGVyICopc3NpZl9ibWMt
PnByaXYsIHRydWUpOwo+Pj4+ICsJZWxzZSBpZiAoc3RhdHVzICYgU1NJRl9CTUNfUkVBRFkpCj4+
Pj4gKwkJYXNwZWVkX3NldF9zbGF2ZV9idXN5KChzdHJ1Y3QgaTJjX2FkYXB0ZXIgKilzc2lmX2Jt
Yy0+cHJpdiwgZmFsc2UpOyB9Cj4+Pj4gKwo+Pj4+ICtzdGF0aWMgaW50IHNzaWZfYm1jX3Byb2Jl
KHN0cnVjdCBpMmNfY2xpZW50ICpjbGllbnQsIGNvbnN0IHN0cnVjdAo+Pj4+IGkyY19kZXZpY2Vf
aWQgKmlkKQo+Pj4+ICt7Cj4+Pj4gKwlzdHJ1Y3Qgc3NpZl9ibWNfY3R4ICpzc2lmX2JtYzsKPj4+
PiArCj4+Pj4gKwlzc2lmX2JtYyA9IHNzaWZfYm1jX2FsbG9jKGNsaWVudCwgMCk7Cj4+Pj4gKwlp
ZiAoSVNfRVJSKHNzaWZfYm1jKSkKPj4+PiArCQlyZXR1cm4gUFRSX0VSUihzc2lmX2JtYyk7Cj4+
Pj4gKwo+Pj4+ICsJc3NpZl9ibWMtPnByaXYgPSBpMmNfZ2V0X2FkYXBkYXRhKGNsaWVudC0+YWRh
cHRlcik7Cj4+Pj4gKwlzc2lmX2JtYy0+c2V0X3NzaWZfYm1jX3N0YXR1cyA9IGFzcGVlZF9zZXRf
c3NpZl9ibWNfc3RhdHVzOwo+Pj4+ICsKPj4+PiArCXJldHVybiAwOwo+Pj4+ICt9Cj4+Pj4KPj4+
PiAtIFF1YW4KPj4+Pgo+Pj4+Cj4+Pgo+IAoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpPcGVuaXBtaS1kZXZlbG9wZXIgbWFpbGluZyBsaXN0Ck9wZW5p
cG1pLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vm
b3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vb3BlbmlwbWktZGV2ZWxvcGVyCg==

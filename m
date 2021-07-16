Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D3E63CB0D9
	for <lists+openipmi-developer@lfdr.de>; Fri, 16 Jul 2021 04:46:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Content-Transfer-Encoding:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:Date:Message-ID:
	References:To:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=t10bgy1FycJZaUeqHbvgZAowfBVhl9sArEIjpmyLaqY=; b=dpBSlts5HyP9ZJS63a92ZSrYvl
	6hDHkSdOvHPIbX5H9pDvAJ/G4BsdWIPM2s7u9lgO9c5al18+wqjKpY85+2Jh4snyh5A8flLZFanLM
	fPhknvC9bmHGyajojvDexVcvOvCaVlQpzAlNKVzZw4/INOHAA2JRmeFjzQELIHU9CqYc=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1m4DrW-0004rk-IF; Fri, 16 Jul 2021 02:46:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <quan@os.amperecomputing.com>) id 1m4DrV-0004rX-Kg
 for openipmi-developer@lists.sourceforge.net; Fri, 16 Jul 2021 02:46:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FSBN5zyXG8bvzKPP2qBKvzjOakKNO6rTUrC7dLdyLQc=; b=KjIS+xM3+AIbV3zOj30d383CZQ
 W/89BOJlWHXyzS1Fw7IHC6q4frvcHHVIrNemDCMKM/moK3WqTZIBSWXO96ZB+NZfaXzR6FeYvArQ5
 CrvjAlD0joJOilKY3H4cN7wIPkueiC5WxDzZ12QopNISNtzVBu6wcTKpRC/s8pZkPNo4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=FSBN5zyXG8bvzKPP2qBKvzjOakKNO6rTUrC7dLdyLQc=; b=KxZRgK0nfe+BWPsAtYsIVVaVN3
 ZRCQvfyowOSjPy5BZazN7YQT/I8RZaSewTTl5Rbr9eaPKkf1FjlYwqPxNCQ+eFUf7szxNYGo6lmK/
 gG/lpNYjkjYSDXWxcl5p6g+HOSbUjDc8p5KGTXCtQ164MCp2g4PAcQ3rSkcoIm/BmUow=;
Received: from mail-dm6nam11on2112.outbound.protection.outlook.com
 ([40.107.223.112] helo=NAM11-DM6-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1m4DrQ-009xvG-2M
 for openipmi-developer@lists.sourceforge.net; Fri, 16 Jul 2021 02:46:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cK9nz4iiOuX6fko3H2noYkrL3f/mWfAay82/Akt5OfL2OVxHc1ZmZWUSbwHYgtqBN8PYkjShwu413+qPuk2vZ0wRjSNMTgi/A95OmeJPsCKmJ6Y88OiBzFX2vlh23qHodwSyOaj46PCQBLi3/bSaAo8ND8bSJPm9lWFJ58ikX7q8URMnArP81BrTi/Xn+qBTOVHISwBsT9yqe3kbsJY+PgxSp5A5QMljfvGzF3U95i4b/DnVcRWbs+8/ADVCccNqNV+CokfWBZQWexmLaQaamtFSxu/MNj8QoKPlJg48CSp6ruBtb43TWy+1zgYPuXIBwl4I0RizVYE0wTkDlK3YJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FSBN5zyXG8bvzKPP2qBKvzjOakKNO6rTUrC7dLdyLQc=;
 b=ByolbqHmyg5k7wLN9/cZ3WFM2sqjsELdgpUdhrC3HCJEJSyUYyCt4xpmcUB45MUq/LHFhGH5Y/RkhwxaQ4KyAEGu+tot68ukxamPmK6VTWfGYiU+ckJFVQkIbjzVCg93JI6G6FzkQU5yzZLJbDsaG+ZwGexOSEi9+8cX5qPTjWmSubex/zfhyN4OSTBbFdNRxu4ByU8AkQSzeKdTmr0D1NzlQnGUkzlANP32M54RiPg0IQc6fvGajoLSU717i0AYB7NWgrb/sKdYk0f/gDw23X6PhdeIxTmGigeXPWyGFAxmSPAkUQFTddaNL8ywAbip523f1L/LDNem7irjB75k5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=os.amperecomputing.com; dmarc=pass action=none
 header.from=os.amperecomputing.com; dkim=pass
 header.d=os.amperecomputing.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=os.amperecomputing.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FSBN5zyXG8bvzKPP2qBKvzjOakKNO6rTUrC7dLdyLQc=;
 b=bh+kBLy4YyPW8FWup8Omdq4c2X65Owf8rFFmgURthEK6dm2sSNkZTb9fWNMa16dMFoX+QnYERhAkSeixDTZ2LrKcXfX5JmSbR8wfiLTsSZ85XQUaRUGAevAlV0RVuO4++rFvT+9eqpl+7+jeZDlAKg+0g9Gka6vpljpV2M1ixNI=
Authentication-Results: aj.id.au; dkim=none (message not signed)
 header.d=none;aj.id.au; dmarc=none action=none
 header.from=os.amperecomputing.com;
Received: from MW2PR0102MB3482.prod.exchangelabs.com (2603:10b6:302:c::32) by
 MWHPR0101MB3039.prod.exchangelabs.com (2603:10b6:301:31::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4219.22; Fri, 16 Jul 2021 02:45:44 +0000
Received: from MW2PR0102MB3482.prod.exchangelabs.com
 ([fe80::452a:24fb:12cb:9d7e]) by MW2PR0102MB3482.prod.exchangelabs.com
 ([fe80::452a:24fb:12cb:9d7e%5]) with mapi id 15.20.4331.026; Fri, 16 Jul 2021
 02:45:44 +0000
To: Rob Herring <robh@kernel.org>
References: <20210714033833.11640-1-quan@os.amperecomputing.com>
 <20210714033833.11640-4-quan@os.amperecomputing.com>
 <20210715174339.GA1309142@robh.at.kernel.org>
Message-ID: <c2deac6c-54e0-c73b-161c-163acc975211@os.amperecomputing.com>
Date: Fri, 16 Jul 2021 09:45:32 +0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.11.0
In-Reply-To: <20210715174339.GA1309142@robh.at.kernel.org>
Content-Language: en-US
X-ClientProxiedBy: HK2PR03CA0057.apcprd03.prod.outlook.com
 (2603:1096:202:17::27) To MW2PR0102MB3482.prod.exchangelabs.com
 (2603:10b6:302:c::32)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2402:800:623c:a5ad:439:3cf4:ddb0:478f]
 (2402:800:623c:a5ad:439:3cf4:ddb0:478f) by
 HK2PR03CA0057.apcprd03.prod.outlook.com (2603:1096:202:17::27) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4352.10 via Frontend Transport; Fri, 16 Jul 2021 02:45:39 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6b1331d4-4bf4-4496-796f-08d94803ce65
X-MS-TrafficTypeDiagnostic: MWHPR0101MB3039:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MWHPR0101MB30395720F023ABE167785574F2119@MWHPR0101MB3039.prod.exchangelabs.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4941;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: DAKOAOd8TqcCn2w1neEwXGXLLnqSxb503kvqX54WZLAcAjxPS4kpoqUr0eok3thi0FN77zcbXJZtUZRjcr/QaMlR41vRTxTCdzqto+ZYCfi7JD3WXWCw/0KFUn0MVJEivxr7Xk1KROlLuIAeNYtuNIWW9D0Yegu5UD3GI2AKWRmGXa6+WvTuwYX5wITe9MBPnauJRpjzNGld9GhNzmzX4u+IthzDckEsuVsq1SLvCLPYw0uXJQtKbxwWakUxGWvD7Q9RvhUA/xrJ+ie8oK38hiAkeNvUgnXFSt3quQEs5PLGgkmQU+gZ4GTbMDYS7aF63P+LS3BWuzvsVEHQQSEtKv7DGBwSJqxGgKECGvxnA4Be1FmUUpFx6iUFJKiWCdMHJ6iUnx0sW8D/wgYELjPBJgx8qyaTsP9MjKJcXLGJk9b4bRPHqwROwiIKh2XczBixK9dkLmrI+XRGxOPckOvmbqQlDHdGkhoULITnUt/PodNhDnjvIrwDLPkKqi9CyXGQJmqX3ndfdGZZ3PEeho0rTx8rU6l9T3jvjXBsxSNnyQepy+nwKOnbcKmf+ZR3ar2wg6WhMAO3wt2QKq1ZiewqDntqoWDYLB/TBez816LsTCKfeQ9NSUGzLwuig6Tqx1rSzOVwL+yfSD/ZV3CwAAc6KUiqsoypCu0rtZ8wIhp5b4JYGVdFvfE+Ag7pxGWB0N6GzyBkJRwcrOGrYPKYsG4ceXqDI6fL5ZcdI6YGrbIY004=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW2PR0102MB3482.prod.exchangelabs.com; PTR:; CAT:NONE;
 SFS:(4636009)(39850400004)(346002)(366004)(396003)(136003)(376002)(8936002)(8676002)(7416002)(6486002)(2906002)(4744005)(38100700002)(4326008)(83380400001)(31686004)(2616005)(54906003)(6916009)(66556008)(6666004)(66476007)(5660300002)(186003)(478600001)(66946007)(31696002)(52116002)(86362001)(316002)(53546011)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T2tvT1lKVVV3VU8vb1ZxRmZNSnJOenBVN1NoalU1d0RIazdQdkdtaDNjN2x0?=
 =?utf-8?B?N3VmelpYaVRSOWx6dzBqOXB1ekl2RFVSLzlMaWM2MHJLOTRuRWlHV1l4L1lE?=
 =?utf-8?B?SnVGZEx2MW45bHRkZFFJUXFUYzN4eUs0MWkrTHBHZEpCaXN4ajhtNy9VWXRU?=
 =?utf-8?B?Y1J0UG1nTDl1WkFMTnBvSG1EY28yMXoycmV4U1p3R0Q4b3hIYzJ5cUU4ampl?=
 =?utf-8?B?SFl6bHFYc0ErVkxUOFF3RytTQit5TTZ3ZWdDam1vYTBmclAzVERLRmZGcU9m?=
 =?utf-8?B?Mmx3Z3VKSVVORnZLNEhJRGR0VUs5Z21YSVZMVkRXZVhDZExnMmhXV0RXNWJm?=
 =?utf-8?B?U0EvYWJsMjhKWDh0S21XL28rck5DY3RicDZCdE45UFg5d2pObnpMcWk0NUVp?=
 =?utf-8?B?UkNQRkQyNmJjemZ1Z1E1OW80dGt2L2pHTjJ4bW8wamVJbnRHbjZNcCtML3hJ?=
 =?utf-8?B?bll0SXZkOG41VGlBY1ovZW9YKzJGOUV0dUxxaU50c2lxQ0hna2lrNkZabHNI?=
 =?utf-8?B?WEhWVitzUHZHY1diZHN6YmxrYXYrUHBadS9nNEZ2dGFMbHlpYmRxVHRHYmhZ?=
 =?utf-8?B?QnQ2Zjl0am44K3l0R1gwd0N2QkhaRXhKdnlucGFTNVVjcmdKaGlhWVFTNjY1?=
 =?utf-8?B?Vmt1UG54bFNvZS9BRlNIMkZYQVpuMFg1OE1Cb1hnK3lVRUpDeUJLdEJqcU82?=
 =?utf-8?B?eEg2aE9XVGYxUHFYSmttbVIwdzl1OFNLUkF4MVhJdzM1UGI0OE1MQnRzbHda?=
 =?utf-8?B?VFVvVXZIVXkyeGtoOWt2MzRjUEMwS1JsREY4cENrSWtyUWEwR3FaalFqQ2Ez?=
 =?utf-8?B?RGJHVHBHN0tZamxPcmdLTGNmaVY1YjAwZVdxZ1F1clkrRnJpdE43QTI4ZTZT?=
 =?utf-8?B?Y3dVcDNEaEJjYTZyZjlza2F6a0NROTRNeVd0SUV6N0oxT2p6WlIxV1JSQWgv?=
 =?utf-8?B?RExpdS90aHpmK255eWEzOHhOc0NSQ1VROWE0aUZTTUlSQ2h3dzd1YXNCQ3hD?=
 =?utf-8?B?OEw3N3JiTHdoaDVDR1VzT2VIUmQyMlZGZml1ZEF4Uy9zSGZlNzRnTUtmVDFE?=
 =?utf-8?B?bVVLYnJVNnF6R3dFeVZsZ3ZZbTE2Y0xRRG5MamMxV1piTmlMMVdFUVhEaFFH?=
 =?utf-8?B?NzNHa09kNWY2MHloM3VSRFBEd3MzamdPaVRRcG1aYk43WXBpeGNIRWI1MnVH?=
 =?utf-8?B?TDNZRHNVTk9VTk12VkJldEJTT2FnK0lRWUNETTEwc0F5M1FzeGxYeUFJc0d6?=
 =?utf-8?B?cThuREVqVENYL2Z5OFI5bm9Dd0hJUXNNUkprQkdXdUR1TlZ5YXZHKzh5T250?=
 =?utf-8?B?Q0FoQVRxTVR6TVVYTnQxYkE0VHk4TTVoRjYrR3JhR2JlaHRXMSt4aFpra3FN?=
 =?utf-8?B?NG5jdnRjSUdhQVRXbEprUWdrOHV4Z3M5RkFHRGhnNGxZWDFSVzRYZ1lkSXYy?=
 =?utf-8?B?UVg0Y1IzNk55elQ1SVgzSVJQNkdqMHpuM25vMjFyRnpNYWtFNjZwWnJXVTFP?=
 =?utf-8?B?dFJldW9NVUpBWTZ2c2xVWjNEYXU4c3NKb0diVjY5dlhmNEQrbzVTMVA4eTdv?=
 =?utf-8?B?WkovaTBKQm1Ka20wZnFCTG9mNkV5YTFCQjJUaGNGb2Q5NkY5VWtyNTJEWEtP?=
 =?utf-8?B?T2JqK25PM0FtSUJCb1U1UmFtUVB6U0gvMDJzcnBoT2dicEMzOGhlOGJmcE5V?=
 =?utf-8?B?M203VVFNUkZlWGpvcjhqZTN6SU53WmFTRTJnaHBUVkhnTUVQb1J5WTFjMFJJ?=
 =?utf-8?B?ZkoyeUpSaWU2cG8rcWU1M0pBaktYWGpFZU90ditYazBqaVVndUhMcFN1Z2p2?=
 =?utf-8?B?b3J6MEZ4RWJhTnZ2ZVdQNGZrWk11S0FUeXRvOEwyYk5yKys3QjRYemNUTUlO?=
 =?utf-8?Q?w2psbj+KwxJXV?=
X-OriginatorOrg: os.amperecomputing.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b1331d4-4bf4-4496-796f-08d94803ce65
X-MS-Exchange-CrossTenant-AuthSource: MW2PR0102MB3482.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jul 2021 02:45:44.1900 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9fXDXuidQLOumshBN5ieQjkEX/fjc3d94jKh5MsyFIn1r1/+63VdK12svfpe5NlJv0R4qQbRaMa0fuq994HI/iNpWpuQIPfNJ/w5UkbYvFg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR0101MB3039
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.223.112 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: amperecomputing.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.223.112 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1m4DrQ-009xvG-2M
Subject: Re: [Openipmi-developer] [PATCH v5 3/3] bindings: ipmi: Add binding
 for SSIF BMC driver
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
Cc: devicetree@vger.kernel.org, Corey Minyard <minyard@acm.org>,
 linux-aspeed@lists.ozlabs.org, Andrew Jeffery <andrew@aj.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 "Thang Q . Nguyen" <thang@os.amperecomputing.com>,
 Brendan Higgins <brendanhiggins@google.com>, linux-kernel@vger.kernel.org,
 Phong Vo <phong@os.amperecomputing.com>, Wolfram Sang <wsa@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, linux-i2c@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net,
 Open Source Submission <patches@amperecomputing.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 16/07/2021 00:43, Rob Herring wrote:
> On Wed, 14 Jul 2021 10:38:33 +0700, Quan Nguyen wrote:
>> Add device tree binding document for the SSIF BMC driver.
>>
>> Signed-off-by: Quan Nguyen <quan@os.amperecomputing.com>
>> ---
>> v5:
>>    + None
>>
>> v4:
>>    + Fix warning with dt_binding_check [Rob]
>>    + Change aspeed-ssif-bmc.yaml to ssif-bmc.yaml [Quan]
>>
>> v3:
>>    + Switched to use DT schema format [Rob]
>>
>> v2:
>>    + None
>>
>>   .../devicetree/bindings/ipmi/ssif-bmc.yaml    | 38 +++++++++++++++++++
>>   1 file changed, 38 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/ipmi/ssif-bmc.yaml
>>
> 
> Reviewed-by: Rob Herring <robh@kernel.org>
> 

Thanks Rob.


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

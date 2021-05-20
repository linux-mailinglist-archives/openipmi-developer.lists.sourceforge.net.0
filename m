Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CD22038B10A
	for <lists+openipmi-developer@lfdr.de>; Thu, 20 May 2021 16:07:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Content-Transfer-Encoding:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:Date:Message-ID:
	References:To:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1VeoI8m0tG2SVXBIh2ALbGVA/tHbwC5yWkNWqmmrxr0=; b=h6WUnWwS/iy61AmR+NPsjB19To
	XXcKXzM+fCEeI234afginLzTi+4inLY7vmYtGc6rczoRw8XFglMTF4XLMe9U8EgDLGttbw9vqJUxY
	kUdcKj4I8PLEP2AUuk8n3cDqon3D9JGS6NataLLoOlMrUrZH4JVYd4GnKxJUPa4onZsc=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1ljjKs-0002Wj-7l; Thu, 20 May 2021 14:07:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <quan@os.amperecomputing.com>) id 1ljjKq-0002WV-Fh
 for openipmi-developer@lists.sourceforge.net; Thu, 20 May 2021 14:07:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zZpICnrhzNxoiG8dibqEJ3OUn5DrlYRNYyvosGiUpHU=; b=TBfNgvYxivTEGabrb2RgwQnHdb
 UTKjFUdlO2b+Mv8OB2UvGg5RoFlLDC/tX6Avt97XHOd5QDw93hvSckMszECCZgeKvUHWZtkCx4qyB
 QskVAIEqMnTEt+FRkKIcC/kpkTiyTb0U6eb/Jw9E86hrCBGW8UIPR59kXVygVHWQAGrg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zZpICnrhzNxoiG8dibqEJ3OUn5DrlYRNYyvosGiUpHU=; b=RoHPV67myqZHXPNlIjO2sytXno
 dkTiLMR8ESJMeJzRCQL84MyilAYgqDhJTWBM0WQXrajKx7KvqjdNo7msffjOUSdxP23EeDc9w3wTb
 zUyLwBdTpDVCkIjT0WBP8ODGrgODPtyUxA/7JXV3PygHzs9YKYKZdLFJdsTDxd/omvUA=;
Received: from mail-dm6nam12on2107.outbound.protection.outlook.com
 ([40.107.243.107] helo=NAM12-DM6-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1ljjKe-0002cm-Kr
 for openipmi-developer@lists.sourceforge.net; Thu, 20 May 2021 14:07:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iLI7mRmtBCczApPza/89ifzhO5YBB6JQFkKUT3kLYTh6lzjKCRAZgz+vRfVCuylQtKoGt7BSQ+47f0244miULPjvHvdGNl1DJaMeps9xiOz2bOU1ThMEDoHu0ROQyoGmMa2Yfsqwi+qh4HFaUIavpPkq0ZCn7L5sTNYpgqW+WMLrZgfiPcgm+agO3qOgxdsF1CADoMnx3osCdEc0eZ053H4fNYuDe6pB2LV1XY7pPUMKZ7TzrwXBlHgT6jPeTTFACiYWfVk35ZPYE8V7uvp/0NdbpQbAGy8388sKuaz8UWM82Feo0PycoidBxWk0kS1s+qSId6FwHZVFV0fMChPDcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zZpICnrhzNxoiG8dibqEJ3OUn5DrlYRNYyvosGiUpHU=;
 b=fhMgBuTrUgLXhNRfZuyso4sP+F+E+46Q+S7MQnnhOfiiLzsXKlnOC2uCHwC1VI8hkybh1dN+PVFMWz17WbeB2aBv0w3DOGah1q7TiUJZIcJm4qp2kk0yhk0/kqe+aZo90kYkq/5H2tqwBeSyCmJFZd3uB0Vnqo17fWIpFsZNjnmjdZd1sfovs1QFa3ZtR6mC0odLcGEh7PVqB+K4UkGpJe3mOiAjneJ4QW/DvKtoViexsM/EwcaQLjpfUyX1OuBV80qjqxwkEXsHgoynmEgAsNxabWCZy704h67D9yYBzLYquS5pRhWXENH0wxEuXdz2Ppxtuwb0BJT5X/x72U9qRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=os.amperecomputing.com; dmarc=pass action=none
 header.from=os.amperecomputing.com; dkim=pass
 header.d=os.amperecomputing.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=os.amperecomputing.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zZpICnrhzNxoiG8dibqEJ3OUn5DrlYRNYyvosGiUpHU=;
 b=DklxCBuSz2gzBo8bj8f6Hz9ZRyC3+tJUxZf2F1emwZJlESy1bL2Kfjdq7SzTTqgk9i79Rp022/TQfHyvPIMveeG/p2jE7kKT5JILZTzuE+Ny+ufXEHZZ3K0QKkLkPD4rZSl3LpFTzKWp/iUKbVjS2raHhB1sw1L8W7OsAfQ/a84=
Authentication-Results: lists.ozlabs.org; dkim=none (message not signed)
 header.d=none;lists.ozlabs.org; dmarc=none action=none
 header.from=os.amperecomputing.com;
Received: from MW2PR0102MB3482.prod.exchangelabs.com (2603:10b6:302:c::32) by
 MW4PR01MB6131.prod.exchangelabs.com (2603:10b6:303:7e::11) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4129.28; Thu, 20 May 2021 13:52:26 +0000
Received: from MW2PR0102MB3482.prod.exchangelabs.com
 ([fe80::d840:7aa7:58d4:b503]) by MW2PR0102MB3482.prod.exchangelabs.com
 ([fe80::d840:7aa7:58d4:b503%5]) with mapi id 15.20.4129.034; Thu, 20 May 2021
 13:52:26 +0000
To: Joel Stanley <joel@jms.id.au>, Guenter Roeck <linux@roeck-us.net>
References: <20210519074934.20712-1-quan@os.amperecomputing.com>
 <20210519074934.20712-5-quan@os.amperecomputing.com>
 <CACPK8XdyQT=cuSr9KBqC0PBkOLgBUBpyz3kZEA3JuOuZsQN_Rw@mail.gmail.com>
Message-ID: <b082d8a8-cc96-7bc1-6ca4-589ab5ac677e@os.amperecomputing.com>
Date: Thu, 20 May 2021 20:52:15 +0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.10.2
In-Reply-To: <CACPK8XdyQT=cuSr9KBqC0PBkOLgBUBpyz3kZEA3JuOuZsQN_Rw@mail.gmail.com>
Content-Language: en-US
X-Originating-IP: [2402:800:623c:5f9b:6031:ff4f:8fc2:44d0]
X-ClientProxiedBy: HKAPR03CA0001.apcprd03.prod.outlook.com
 (2603:1096:203:c8::6) To MW2PR0102MB3482.prod.exchangelabs.com
 (2603:10b6:302:c::32)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2402:800:623c:5f9b:6031:ff4f:8fc2:44d0]
 (2402:800:623c:5f9b:6031:ff4f:8fc2:44d0) by
 HKAPR03CA0001.apcprd03.prod.outlook.com (2603:1096:203:c8::6) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4173.12 via Frontend Transport; Thu, 20 May 2021 13:52:21 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4aca8b37-6eca-4ba6-06d4-08d91b968018
X-MS-TrafficTypeDiagnostic: MW4PR01MB6131:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MW4PR01MB613159E4051A05467B183BBCF22A9@MW4PR01MB6131.prod.exchangelabs.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: RUukmIcyBBli6wXuOWqFeiy6VSwTRwGt0kOxJHbTEwNnsoOorphA61eZVyeE/wQDvhBxwEeItLtAYylN8D/lpm/4Na6FgJNpQi+iNbOMp/5FQANGV8FwMsufTKZP8ZXYPCBeIxwLSNtOyE6wNtR9GHuV0PObuHTm47VXKHegLJdbYRRpEPKBhCFnCI75MiGka+JLvp/cKG7CFiNinKgX/CXx75Q32X4MvKNsy+DBJdz06PukJ8GiF9YJMMeiEqo5FHOf/Sr2aqv2mFoFkKqHxox+xE6wg0z+ztJOxhZuEaSVUKXyyU2uDncKsJ6S+wwMNfq2sj5UN3xqdNb8kswDrR9l6vH0+/rsrqy1LR6TWBHZKiBUg8w61YFBwyEUWZnK/9TvEWhZZoZkYn7t5H7bhOp1SpAHRJR1egdRrSerraqFQtWmJLNwjzNg1IBW1QAZwWIxpkfFkFqJKz4lJA1RG/Z4CpvMpCuJwf10TpRS1ZVOBp69RkPevk1a72tpB//zZj7hALK0cvrEx1vrdASuipmpTTW1atsRe1QuPbQvDlF+2LMP5A1WB08SfsfdbEcPeHbCr0GwVXzUkLMUVJmAF9bnlajA/qmV1BqkoVrv6q7GsbB/m0TthHnh97SNqgDROREKUFCyK8KMdy0EzlJDTyq4myb0nw32udTh0pDJ444=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW2PR0102MB3482.prod.exchangelabs.com; PTR:; CAT:NONE;
 SFS:(4636009)(39840400004)(376002)(346002)(136003)(396003)(366004)(66946007)(66476007)(83380400001)(66556008)(52116002)(4326008)(31696002)(6486002)(2906002)(38100700002)(8936002)(8676002)(186003)(31686004)(16526019)(7416002)(86362001)(53546011)(2616005)(478600001)(6666004)(5660300002)(316002)(54906003)(110136005)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?WTJRVXlFbmtQZi9FSnlBZ3dWRk9vUEVlODdXSnhRbmxTdDFQbHhSSGhoeVUx?=
 =?utf-8?B?dDI1UW01c2NaTlFoM2tuMWRvM242NVgxY1k0RUpGZmppSTFmcGFOeFpYZncv?=
 =?utf-8?B?dVB1NWtpTk1WNFhSOGpVUTdZN2lETzZVQ0U4VkVzSmRwTzBOdG9sL1Qycmh5?=
 =?utf-8?B?MHpRVk1Sc0lqQ3FXWWwrdXhOa3hMR0JxRTBwQ1htZjNyK0tOdUx4ZGIzVzBJ?=
 =?utf-8?B?OTA0OUtkQjN2bzhKZWpoQnpKQ0FxNTZubUg0UHYyNi8xWVBxRnNhNzZMMGZv?=
 =?utf-8?B?dmxEM09NZkpMd0xieW5ONHdsRXlGa3NzMjlTMmpBeEdSMjFEMkdiRFFwdWhY?=
 =?utf-8?B?SDFsR2VleXFzWGNGWFVFbWhPL1VONFBlR1JBU092TkJPdm9iczcvMFRpK3Vm?=
 =?utf-8?B?bmNlTCtRTkdjMllBRFk3ejZBU3l0Zk9ZQUdVNVN4MWJoRFh4eHpEdUtxWmo5?=
 =?utf-8?B?VTVuZjM0ZFBFbkJWRlR4UzgwWVR2bS8yZmNxdmgzZFprZTY4a2p4V3NUc0wz?=
 =?utf-8?B?bi82TWViMWU0SVY0Znc3RnlFcXZVZ2QwN2thOCtneUY1ajZKclNsOEJFbUd6?=
 =?utf-8?B?eTVEUi83dmlvKzZhMnFBeml3S2U1VHRNY1RWUFhObUF6bFQwSW4vMm15Y0Vv?=
 =?utf-8?B?alNVeGErNHZJU2hMTHNjanpicU1EV3RPSjdsTlBZeVlPakxVOFloZU1QOHo4?=
 =?utf-8?B?SVFoSGozVUpXYkd4SWVBb2x4ejJQdFlWVDBockxWWXdyeHZjTG1QZWxaZmpn?=
 =?utf-8?B?M0JKU1Bta2xTY1RKdWhUSW5CRWt4S2g4MGZDN3k2OW9vSEJ5czF3SkM3Y0t1?=
 =?utf-8?B?amJGZW1uTG81VWl6VVRGcm5YRlFZVlkydTJMSnBCNkJ6LzdmVTNpSytrZ3V0?=
 =?utf-8?B?dUY1dFlVWXVQd2p2aWVFbVVuc045a01XdDhiYytMS0ZkSVZNZm43SHlWbjZP?=
 =?utf-8?B?TFFETjJDU21zKytpM1E1L2ZNSjMvSG9yVjI3UjIvajVOM3JZT3N3UktOSFdx?=
 =?utf-8?B?U0xodU5vYWpoSU51QjlzNHFBelpnRDY3d3h6YUxTd2w2cXdaNlFDUnp6WDha?=
 =?utf-8?B?UVYxakZPSjFKQm9ZeWZObllBalUza1ZYYkFEcmxBQzRyZ3R3YnhPL3JlUkZu?=
 =?utf-8?B?elRxdnFoSGdwekpJSFZ0ZFN0VnpNNmlOczNYNElxYnBCNEVwaEMyY1ltR083?=
 =?utf-8?B?LzZKcGwrMXppREpJbzFjMkN4T1IvQy9rWFpXVzV2RTEzbEQ2ZWF5MEw5RFdT?=
 =?utf-8?B?SE5vbGh6RnhGMDgxRExOTW55U2U1eTdvaUpyYkRvOEpQZ3pvQVdSSGVFMHB2?=
 =?utf-8?B?cXJReStITXM2eUh3ZFFnZFJUaGlnTGFnNkJFNEY2andGSllqTTEvRjV0YVNm?=
 =?utf-8?B?b21VM1A5V0lkblp0QW1tY0lLNTNtNTMraUtPOFIrdXFiMXFNVHBYaWNxY2Nh?=
 =?utf-8?B?Yk1mdk1PaEdTb1h4d0FnWjBMditxT0o1eTk0UFBlWWV5dTdlTE0xVFNUMGhm?=
 =?utf-8?B?d2ZUTS84ZW8xdGl4eGNYaDFlNWp4Zlh6Rk12T3haMGlvRXA3SjJLZFMwZ1l4?=
 =?utf-8?B?RFp0MmZCYUw2U3J1K2M2Wk0wWmdPcGxVZ3NvQTIzYkVaWnJUN1hZQWNSbnRw?=
 =?utf-8?B?eS82a0V5WFBFTzh1ZjJSUTl1WHNZTFVERXhZOVBDOWZPenBsWGdta0lHRS8x?=
 =?utf-8?B?bTZaL2xCT2lHcjViMmFNOWF6WGVqVFlkUFM2Uys3L2JMQmRQc1VDSGcwYWRK?=
 =?utf-8?B?eEd1ZWdZTTRJdEQwNDVCYnpHczhUb2NnazBiOUZVWWM4SkwzSWJvYU9JazJq?=
 =?utf-8?B?WXUwQlFxNndCSFNPeGs2SmRjYWl5THhaWXQ2T1lkdUYyNndESitOQ1BUZHFu?=
 =?utf-8?Q?INcfRA0vASjUa?=
X-OriginatorOrg: os.amperecomputing.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4aca8b37-6eca-4ba6-06d4-08d91b968018
X-MS-Exchange-CrossTenant-AuthSource: MW2PR0102MB3482.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 May 2021 13:52:26.1866 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: W5KvEfZoCWDLkMX6zxvSzKpXXPM0wq/rbpMLD5ZAfaGXaeFvAq1gc9Q4JTlVO8xQ85LUGLSCEiq2moN7XN49oPp34B05Rhi+nHa0TJx1GSw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR01MB6131
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: amperecomputing.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.243.107 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.243.107 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1ljjKe-0002cm-Kr
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 20/05/2021 06:43, Joel Stanley wrote:
> On Wed, 19 May 2021 at 07:50, Quan Nguyen <quan@os.amperecomputing.com> wrote:
>>
>> With Tx done w/wo ACK are ack'ed early at beginning of irq handler,
> 
> Is w/wo a typo? If not, please write the full words ("with and without")
> 
It is "with and without", will fix in next version

>> it is observed that, usually, the Tx done with Ack irq raises in the
>> READ REQUESTED state. This is unexpected and complaint as below appear:
>> "Unexpected Ack on read request"
>>
>> Assumed that Tx done should only be ack'ed once it was truly processed,
>> switch to late ack'ed this two irqs and seen this issue go away through
>> test with AST2500..
> 
> Please read Guneter's commit message
> 2be6b47211e17e6c90ead40d24d2a5cc815f2d5c to confirm that your changes
> do not invalidate the fix that they made.  Add them to CC for review.
> 
> Again, this is a fix that is independent of the ssif work. Please send
> it separately with a Fixes line.
> 
Will do and separate this patch into other series in next version.

>>
>> Signed-off-by: Quan Nguyen <quan@os.amperecomputing.com>
>> ---
>> v3:
>>    + First introduce in v3 [Quan]
>>
>>   drivers/i2c/busses/i2c-aspeed.c | 26 ++++++++++++++++++--------
>>   1 file changed, 18 insertions(+), 8 deletions(-)
>>
>> diff --git a/drivers/i2c/busses/i2c-aspeed.c b/drivers/i2c/busses/i2c-aspeed.c
>> index 3fb37c3f23d4..b2e9c8f0ddf7 100644
>> --- a/drivers/i2c/busses/i2c-aspeed.c
>> +++ b/drivers/i2c/busses/i2c-aspeed.c
>> @@ -606,8 +606,12 @@ static irqreturn_t aspeed_i2c_bus_irq(int irq, void *dev_id)
>>
>>          spin_lock(&bus->lock);
>>          irq_received = readl(bus->base + ASPEED_I2C_INTR_STS_REG);
>> -       /* Ack all interrupts except for Rx done */
>> -       writel(irq_received & ~ASPEED_I2CD_INTR_RX_DONE,
>> +       /*
>> +        * Ack all interrupts except for Rx done and
>> +        * Tx done with/without ACK
> 
> Nit: this comment can be on one line.
> 
Thanks, will fix.
> 
>> +        */
>> +       writel(irq_received &
>> +              ~(ASPEED_I2CD_INTR_RX_DONE | ASPEED_I2CD_INTR_TX_ACK | ASPEED_I2CD_INTR_TX_NAK),
>>                 bus->base + ASPEED_I2C_INTR_STS_REG);
>>          readl(bus->base + ASPEED_I2C_INTR_STS_REG);
>>          irq_received &= ASPEED_I2CD_INTR_RECV_MASK;
>> @@ -652,12 +656,18 @@ static irqreturn_t aspeed_i2c_bus_irq(int irq, void *dev_id)
>>                          "irq handled != irq. expected 0x%08x, but was 0x%08x\n",
>>                          irq_received, irq_handled);
>>
>> -       /* Ack Rx done */
>> -       if (irq_received & ASPEED_I2CD_INTR_RX_DONE) {
>> -               writel(ASPEED_I2CD_INTR_RX_DONE,
>> -                      bus->base + ASPEED_I2C_INTR_STS_REG);
>> -               readl(bus->base + ASPEED_I2C_INTR_STS_REG);
>> -       }
>> +       /* Ack Rx done and Tx done with/without ACK */
>> +       /* Note: Re-use irq_handled variable */
> 
> I'm not sure what this note means.
> 
>> +       irq_handled = 0;
>> +       if (irq_received & ASPEED_I2CD_INTR_RX_DONE)
>> +               irq_handled |= ASPEED_I2CD_INTR_RX_DONE;
>> +       if (irq_received & ASPEED_I2CD_INTR_TX_ACK)
>> +               irq_handled |= ASPEED_I2CD_INTR_TX_ACK;
>> +       if (irq_received & ASPEED_I2CD_INTR_TX_NAK)
>> +               irq_handled |= ASPEED_I2CD_INTR_TX_NAK;
>> +       writel(irq_handled, bus->base + ASPEED_I2C_INTR_STS_REG);
> 
> Are you intentionally only acking the bits that are set when we read
> from STS_REG at the start of the handler? If not, we could write this
> instead:
> 
> writel(ASPEED_I2CD_INTR_RX_DONE | ASPEED_I2CD_INTR_TX_ACK |
> ASPEED_I2CD_INTR_TX_NAK,
>          bus->base + ASPEED_I2C_INTR_STS_REG);
> 
> If you only want to ack the bits that are set, then do this:
> 
>    writel(irq_received &
>              (ASPEED_I2CD_INTR_RX_DONE | ASPEED_I2CD_INTR_TX_ACK |
> ASPEED_I2CD_INTR_TX_NAK),
>           bus->base + ASPEED_I2C_INTR_STS_REG);
> 
> That way, you can avoid all of the tests.
> 
Thanks, will fix this in next version.

>> +       readl(bus->base + ASPEED_I2C_INTR_STS_REG);
> 
> When you move this, please add a comment that reminds us why we do a
> write-then-read (see commit c926c87b8e36dcc0ea5c2a0a0227ed4f32d0516a).
> 
Will fix in next version.
>> +
>>          spin_unlock(&bus->lock);
>>          return irq_remaining ? IRQ_NONE : IRQ_HANDLED;
>>   }
>> --
>> 2.28.0
>>



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BF5B34E9EA
	for <lists+openipmi-developer@lfdr.de>; Tue, 30 Mar 2021 16:11:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-Id:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VpVl2/GOEMvlKX8T8GdmOUdw6mNL7JYJji+HETjjn7s=; b=BuqJX1MCVs1XhgfmDtOEIsxWp
	MBt1b9Zrxt9zb4uMYlMbeqsa9weTCzozRG3fLjwUMOz5SWp08JbRTXJnyPfnpCb4bsBndt6kCVFVM
	mj9EOv/9v0rkmhINnG0DAupIwBiKMmX9nTDCeQ8siNP+EUymR2phE3aHOyqbM0gxivpRU=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lRF5T-00038l-Ju; Tue, 30 Mar 2021 14:11:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <quan@os.amperecomputing.com>) id 1lRF5R-00038d-KA
 for openipmi-developer@lists.sourceforge.net; Tue, 30 Mar 2021 14:11:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ObTdeZ8zsjlufq5/WNaeZ0cI2o4TsSWrRB99EetYum4=; b=kLVB2VwbRuEnKNh+CwpxmcCKZE
 ykifHwgu6qhFdtWMENfcf5VhMt6xqByE2PoYfxDKFyLY9HTtJowyiiVYbY62OSNGy4GAmy8RuHPX2
 K2qO3F/LeROTMf1hb2XJ8lwR40rhNPLIlP+fGpgzCDuPtLTuDEdCx7tqNEBoU9I5sH0s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ObTdeZ8zsjlufq5/WNaeZ0cI2o4TsSWrRB99EetYum4=; b=JodBLrd57wnA8qv0QfRCXHL/iV
 AJFmupgGu3/e8idBMuf/hkyLlIxVyLE3LrO0XHCPf8nS7jmfeZN59oV1Oi2pPAvJ1RG/U9eWizPL1
 OJclye5KZQNb0ZX7vWTO77hO24jn/YqnX24cVWZ8BVUYVDRa1aVRtZISvVLjVD4zzakw=;
Received: from mail-dm6nam12on2125.outbound.protection.outlook.com
 ([40.107.243.125] helo=NAM12-DM6-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lRF5E-0001dB-Az
 for openipmi-developer@lists.sourceforge.net; Tue, 30 Mar 2021 14:11:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HYT4U+S5AB+znlKPZrDJ7LJgZRKqAecWenwgnO6z4e7h11nR9eksYr+snKW50YTnxmkbW2AOLAqq50tLZAvxwU6e//fhyv1ZnwZk4Oira/BL6DrzvDGj4wkch5fFNGgdgBRYtgBTH8UCCVoD4bIedMhDywtTZupxlMC6FmG1SsI1gjfLVW8L7y/jjNmAca9vAvADw8W1nUln2CU/pBJPXuFv5yrotMHRfM7aDnGxMaRsWBxN0Z3wttz6jrPMKF/sWDzN+FU/iIkkT9ugL5PatIh7RNZBBhZtd7Nw6YgrrDbCFLxl2k3zeDNdgTs9Re8wAFAthHSnkCMoq1KvtZ8d8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ObTdeZ8zsjlufq5/WNaeZ0cI2o4TsSWrRB99EetYum4=;
 b=VCJ45QZ0aULI8qYvE1ia+CUPu2lUH0iCmW4JQBXd4nFSEwBZc3dRtnf9IWj+gDC4P39lICmvOgPuGwvTCmgDP/2QfM0VTgI/fw1jGtknIZHKPdXb5FLlZrLph73tBZqLFtmmOq9O3euUqlKd9iwo34Uw86NsgGSlcFa9+pX5M0XVTFth3tmjaaa0SXNDyJUmXyZyT/oUlOFMepxEqlbOLd7IEFx6fKaZtA5ihq1wnBKsjOMJYl2ZpjcJZO+JerExA+8VU780z/BAiC0eDdIJBoy/E58zWJCLAe3MkQMW9J0WNlKDRINcQ27Y9ZniNBkGwzr8iTibGJd6H055pesdXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=os.amperecomputing.com; dmarc=pass action=none
 header.from=os.amperecomputing.com; dkim=pass
 header.d=os.amperecomputing.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=os.amperecomputing.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ObTdeZ8zsjlufq5/WNaeZ0cI2o4TsSWrRB99EetYum4=;
 b=Xp4E2zia66KuqUhiWJTWj5inSM3+AubRLqrbVDWcYiBkQ03WKQ/iaXupUC0appSoPfCXXYun0Untz3eTPDLPvpSB7UMCqPnfJ7/r1vGnp+rvfrFpWbGX7RCSgXbYIXDqFhHyHXz8gV5uQkGzOXb9mXYC5AoBZmDjes8/vCjAyrc=
Authentication-Results: acm.org; dkim=none (message not signed)
 header.d=none;acm.org; dmarc=none action=none
 header.from=os.amperecomputing.com;
Received: from MW2PR0102MB3482.prod.exchangelabs.com (2603:10b6:302:c::32) by
 MW4PR01MB6338.prod.exchangelabs.com (2603:10b6:303:7b::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3977.30; Tue, 30 Mar 2021 14:10:54 +0000
Received: from MW2PR0102MB3482.prod.exchangelabs.com
 ([fe80::d840:7aa7:58d4:b503]) by MW2PR0102MB3482.prod.exchangelabs.com
 ([fe80::d840:7aa7:58d4:b503%5]) with mapi id 15.20.3977.033; Tue, 30 Mar 2021
 14:10:54 +0000
To: Corey Minyard <minyard@acm.org>, Rob Herring <robh+dt@kernel.org>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 Wolfram Sang <wsa@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 openipmi-developer@lists.sourceforge.net, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org
Date: Tue, 30 Mar 2021 21:10:27 +0700
Message-Id: <20210330141029.20412-2-quan@os.amperecomputing.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20210330141029.20412-1-quan@os.amperecomputing.com>
References: <20210330141029.20412-1-quan@os.amperecomputing.com>
X-Originating-IP: [118.69.219.201]
X-ClientProxiedBy: HK0PR03CA0120.apcprd03.prod.outlook.com
 (2603:1096:203:b0::36) To MW2PR0102MB3482.prod.exchangelabs.com
 (2603:10b6:302:c::32)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from hcm-sw-17.amperecomputing.com (118.69.219.201) by
 HK0PR03CA0120.apcprd03.prod.outlook.com (2603:1096:203:b0::36) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3977.29 via Frontend Transport; Tue, 30 Mar 2021 14:10:50 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0915a22f-cb1c-4fc6-b4cf-08d8f385a1c7
X-MS-TrafficTypeDiagnostic: MW4PR01MB6338:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MW4PR01MB63387E44D15A48DD708E073DF27D9@MW4PR01MB6338.prod.exchangelabs.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3968;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ibtCF2jG/bRJ/vMV+HgnOaljgF2gjiXfDRxM1lb0rnTxGqEWVlkRCtJUMjXf+VxUiIuPtU5qKKebeLcsu3B7ZCDGSR3EYXOOLwQzopBlNoE7YeP3F2ZgJ63dciKse++HjjsJr0UDYiSgAgG6ag5Kze95dMB/APadYwrBmu3k9M2fRgg+9a9NTQArDvplfaUnnLkfaMinBbDrNie9fgEG2bCfWGOogYbf3bxx+uhObsTzlBVSyh4hh0ckbjp59V0NI7ZC42GMea4oWCPYfo5fqkYYH9tG3EuhSOdrJgJbrfiro1HxZTC7TYtpq+ed41S1ffH4skya7TAoczm7XQ82LkN2Zw9Ja7pAJxk8+NnQUzVdz2o3RzX87c2zYZOrwsr2nMZ4Nsn8EiPqydsljl2/YWyqtEDCNwEb/juhgv4fxg0x+r+la7EEnZD+oUj0NY+V/X7ZmiKFtiTfBIdHj4tsWD0nQUdfuCH5sLXYteL7DejwTKVOC6PjOy1AXs7DZw62KQTidDDGpOAqmZne6xuHirUia9FMSyIEPt6K26jZy5tthoW3yVvCKle/GJBAO0Kvn93sCzZwgTE2d5kYGoennoye/V/+qCoKRFwAx/yLRbpSD9lvbf9/R5iKSQDDIZYhyhMWaQ1k91LHbIYp05a5l+mgMWj4/vY6NmBbpdpzPt+TnawKcIYrqeA0y1BlqjDmuI4+8iWWmLoFGzLDS6uUww==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW2PR0102MB3482.prod.exchangelabs.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(2616005)(5660300002)(2906002)(956004)(186003)(16526019)(6512007)(66556008)(66476007)(6666004)(921005)(107886003)(52116002)(8676002)(7416002)(8936002)(86362001)(38100700001)(66946007)(110136005)(6506007)(83380400001)(498600001)(6486002)(4326008)(1076003)(26005)(54906003)(41533002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?CBHYV2yQ0q92bfTkMZg8G7STuaJM1Ob5oWxTRvT/+C20yDdxtfx6HKr3p6tL?=
 =?us-ascii?Q?H+5Oa6VnMYdMdmV+W+JImj4LGXgU+7Bg69O+GslEeiPqqe/Kb8SBUbnS3Rpz?=
 =?us-ascii?Q?btvElmsDdwmNUP8ONFbA7rmtow6wESC/MKrouR3ODMzj98nlc27dAMoVCj/M?=
 =?us-ascii?Q?CfSg37aere70tOltfgh1mGGZhNBangZNTuXoD4z0GV0xT73O7qf191OgjUPb?=
 =?us-ascii?Q?OLaQcN3KNDNCH4oNBQ5/eqjNdBlnyfgMp4/e/3rM6rxiNYfLYPfAoZ3qk0F2?=
 =?us-ascii?Q?E9i1cTVEKC+rKuzJsodepGAfXjxhQK0Mv+Yh/Sl2QiLWeJbAdCPAaQ/zS9rv?=
 =?us-ascii?Q?vm2wqYLizbNtyfF9hRQlpz8iRRRUFyo+xgQ9j2JZecrkiviG0jj1G+rSRZ2i?=
 =?us-ascii?Q?WMz85R2bfFCpMPSF81zjKXndQ9GTlPQmprZBjC7SRYVXkW/WBlTqUeuJ5xNA?=
 =?us-ascii?Q?FSxxIP2dhHE7eTDnBf1Tjr5wSxZX/0a0eidJE2UQmQXdUTZaNfPKYNeRLuK9?=
 =?us-ascii?Q?2QuVqMXLmh95O1wnLXZAysEIcmAua8h7YQtZBDTYMdzF/KIv2fn/IUDOhMw+?=
 =?us-ascii?Q?jEPUHymEAFNt4iAlNVOlxaWxDNHUYCJX6bejZzggs5dhmNhk6I81f4eKrgle?=
 =?us-ascii?Q?qRWpgaZxZ4nVw2/gSGI4Plj/GJM0hJzHCgjKZvVTuYgOrLHKZ0lHotI9xM/w?=
 =?us-ascii?Q?DH8v+YpFhukjCNBIWMfT3h9dQPCfyiewee0EX1DkgCuemzTyk0BLgu/j7QjX?=
 =?us-ascii?Q?5NHek8tjXzOYKPlVwnjiUGXSbFbU/pfq+Oi5BMxm/ulSIpTM0NCH8FPHW7Go?=
 =?us-ascii?Q?A8j2sy1pIgSFZrso3pcL2JB2bWZkPxGxNZncuoKxDilSxwhTFxRCKctmxNhv?=
 =?us-ascii?Q?2QAhMTuIy0f0phLsTloSYzAgTow0X3vJEd/NOUlfm+SRSAUDZTgTEWpsftxa?=
 =?us-ascii?Q?vV5pmfU0nA4Hv7OFZABMzW6m1NPLjO+TrXVXPf59jKi7pUNnc2RikNoVREaq?=
 =?us-ascii?Q?ZHAGgwfd4R0Hwepuo7ECdtdSDCWO8A40IRQSahXLIIkFWYxrzUINdid6qg3Q?=
 =?us-ascii?Q?ZXCdL+CS4ZTGLssAN5y5VvX9RgdZPNL5Jcw4jRYyFJSVpDtgZKXcI3b8tLNj?=
 =?us-ascii?Q?/5Gok92Vp4/kRtDI0j2xZn2oh2Bc95v85cSBoQf6a2RxSzsoMsbkQIajoN2T?=
 =?us-ascii?Q?+s4SrYktxS7JZoLXI+evMN0WLLLBjkI/Xf0hJZIcq/XO1ELWO8cFv4OVUHj8?=
 =?us-ascii?Q?eDlyRqDDgOdVI1CXiefH1t3vvoy349tMFEGiQnjhDTFGdVHkhYdOqvcZPPFq?=
 =?us-ascii?Q?ZNkQlzuyvi6ECELkm9DRkiJA?=
X-OriginatorOrg: os.amperecomputing.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0915a22f-cb1c-4fc6-b4cf-08d8f385a1c7
X-MS-Exchange-CrossTenant-AuthSource: MW2PR0102MB3482.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Mar 2021 14:10:54.7752 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VTiLY/qwMIT9qKH9qr1dkXfld33hyHg/9hK7w5koBwss2FybuIkd24Ib2GOa9pRq2cyC9UNB893r3HJHYktgr2XPwgEfntBP6VllJlx7aMo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR01MB6338
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: amperecomputing.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.243.125 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.243.125 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1lRF5E-0001dB-Az
Subject: [Openipmi-developer] [PATCH v2 1/3] i2c: i2c-core-smbus: Expose PEC
 calculate function for generic use
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

Expose the PEC calculation i2c_smbus_pec() for generic use.

Signed-off-by: Quan Nguyen <quan@os.amperecomputing.com>
---
 drivers/i2c/i2c-core-smbus.c | 12 ++++++++++--
 include/linux/i2c.h          |  1 +
 2 files changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/i2c/i2c-core-smbus.c b/drivers/i2c/i2c-core-smbus.c
index d2d32c0fd8c3..e5b2d1465e7e 100644
--- a/drivers/i2c/i2c-core-smbus.c
+++ b/drivers/i2c/i2c-core-smbus.c
@@ -37,8 +37,15 @@ static u8 crc8(u16 data)
 	return (u8)(data >> 8);
 }
 
-/* Incremental CRC8 over count bytes in the array pointed to by p */
-static u8 i2c_smbus_pec(u8 crc, u8 *p, size_t count)
+/**
+ * i2c_smbus_pec - Incremental CRC8 over the given input data array
+ * @crc: previous return crc8 value
+ * @p: pointer to data buffer.
+ * @count: number of bytes in data buffer.
+ *
+ * Incremental CRC8 over count bytes in the array pointed to by p
+ */
+u8 i2c_smbus_pec(u8 crc, u8 *p, size_t count)
 {
 	int i;
 
@@ -46,6 +53,7 @@ static u8 i2c_smbus_pec(u8 crc, u8 *p, size_t count)
 		crc = crc8((crc ^ p[i]) << 8);
 	return crc;
 }
+EXPORT_SYMBOL(i2c_smbus_pec);
 
 /* Assume a 7-bit address, which is reasonable for SMBus */
 static u8 i2c_smbus_msg_pec(u8 pec, struct i2c_msg *msg)
diff --git a/include/linux/i2c.h b/include/linux/i2c.h
index 56622658b215..0d75e5bcdde6 100644
--- a/include/linux/i2c.h
+++ b/include/linux/i2c.h
@@ -144,6 +144,7 @@ s32 __i2c_smbus_xfer(struct i2c_adapter *adapter, u16 addr,
 /* Now follow the 'nice' access routines. These also document the calling
    conventions of i2c_smbus_xfer. */
 
+u8 i2c_smbus_pec(u8 crc, u8 *p, size_t count);
 s32 i2c_smbus_read_byte(const struct i2c_client *client);
 s32 i2c_smbus_write_byte(const struct i2c_client *client, u8 value);
 s32 i2c_smbus_read_byte_data(const struct i2c_client *client, u8 command);
-- 
2.28.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

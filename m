Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E9D8834D071
	for <lists+openipmi-developer@lfdr.de>; Mon, 29 Mar 2021 14:52:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-Id:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VpVl2/GOEMvlKX8T8GdmOUdw6mNL7JYJji+HETjjn7s=; b=c0b/VEEA7r2mDB6MO7ZS1fkA1
	Ju6h6/GcrUBo04ozBiDz1gfMg6BDH3Ie6v/ZJtBHKiQdVemq9ZWzpBK/vRRctRf0AaPhn36S3VBPm
	s4HVZcNgkd2WExblW66mSQ9RxLSRySP3+wQhC4/5fney0hRXvBsX8o1VCcZ1QK1X6AMwk=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lQrNp-0007Xr-Ra; Mon, 29 Mar 2021 12:52:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <quan@os.amperecomputing.com>) id 1lQr5I-0001o3-53
 for openipmi-developer@lists.sourceforge.net; Mon, 29 Mar 2021 12:33:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ObTdeZ8zsjlufq5/WNaeZ0cI2o4TsSWrRB99EetYum4=; b=kyxi5w/p+Gpr0BLakXRQTyXwzn
 G+7W+N07XSPWNdc8cy77OVpfEeRjRFWKkA9B9qQS/aeCCQ68DZRa8IBYeQEJ34tSvwMmEch5bmXOI
 pxKDEHXdF55lvIUyBn/xsnTU0Wq0fVSGyueL8tS17xC4slUNzpHug+Hx4uP5J3cF3Ots=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ObTdeZ8zsjlufq5/WNaeZ0cI2o4TsSWrRB99EetYum4=; b=CTKKNq0R8Akn4i8N6DUg+ALzUv
 R/rETr8/u/W9FAROzzG/3XQIppW1PwExAQ+g/EToYPbV6zxkaLEsRB7fPmn3eJRM5ti39GjUsj2BX
 ngRCvhXe5YqllD3Vz79ToRSoEXwn3nC3gV5w3L8QDik5d64Gw1zrs0a+BMXbTxh/9gmk=;
Received: from mail-dm6nam11on2134.outbound.protection.outlook.com
 ([40.107.223.134] helo=NAM11-DM6-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lQr5B-008Y4p-96
 for openipmi-developer@lists.sourceforge.net; Mon, 29 Mar 2021 12:33:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ASjHxlzU/83jjWYKHZIc/6G4s2uCjPaZ/2UntYSBz7kryL+9/hp2dyKzmxQgi17c3aho1prYpQu6VAk0+0Qa+MffVXdxrmSsX/qZH3mAyyfsVoyFHrgFheNEkYw1dEhajmY9u4hsAwlFcO5QvqYkrL/qvtBHWH1Rra3yIZeW3lWBE0pqP83c3cKdwvuZzl2bDTP4wnlbv6148g/GzyYcG+dZf4+551AsknmKHAHVL8HdQFqaEuox5CgmweOuIIp0iCdJqY45zFXw2Z1Gld9uKoTWIZoYhSsmCvMGUGswSTZIfSSRNnYPX+ZEoS11YAkInJIiwEgE5hLGiiPTAvEYew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ObTdeZ8zsjlufq5/WNaeZ0cI2o4TsSWrRB99EetYum4=;
 b=dezEa/mW0Q50rQx0jhMvQ8z+KWYYWkdKctzf03O39lN7MC5X56dzWk5n49rBvcA1Oi4rI6RNOtYnn/1wkBd7ZGwpJ+sNoMGkxkWnruEypBBsGOClpcX8WuPGunbAV7XvggSF5nPoj8AFunPZooDfKnIt8c9Q8WRr+CEMoTvwJgA7jnp6U0J/5AKexd4+wgmaER/BZs8tmHF+jFA9b1Iur3/mfeuRD21qwV5i4FOFzvtfpD32Ce2Nbxa5lsnH5UjzB/zyT1/ERbeN8D8zdCRaGEekL6HyMCNL1UBLDFGDAY9UXNKezLcJ43m+ohQG1fBkiED2Qj3Hs1EnYEE8ZxFVYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=os.amperecomputing.com; dmarc=pass action=none
 header.from=os.amperecomputing.com; dkim=pass
 header.d=os.amperecomputing.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=os.amperecomputing.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ObTdeZ8zsjlufq5/WNaeZ0cI2o4TsSWrRB99EetYum4=;
 b=UMnvoExxDtYF2RhE4n7W+rSwYGFr1lQyylB9MKGCxRQYHYQlbKRiiUMwlr9OOnbJhANbhygaDSGeMGfehHk3tcEc2DWvAd//MDouEE5cnuu1rP6mU7s7M54F58obqnS7S+E4lPTDr9G+pg2cTjPUKu6IBWWFMNI+A7mP0zBdyzk=
Authentication-Results: acm.org; dkim=none (message not signed)
 header.d=none;acm.org; dmarc=none action=none
 header.from=os.amperecomputing.com;
Received: from MW2PR0102MB3482.prod.exchangelabs.com (2603:10b6:302:c::32) by
 CO1PR01MB6679.prod.exchangelabs.com (2603:10b6:303:f5::23) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3977.24; Mon, 29 Mar 2021 12:18:31 +0000
Received: from MW2PR0102MB3482.prod.exchangelabs.com
 ([fe80::d840:7aa7:58d4:b503]) by MW2PR0102MB3482.prod.exchangelabs.com
 ([fe80::d840:7aa7:58d4:b503%5]) with mapi id 15.20.3977.033; Mon, 29 Mar 2021
 12:18:31 +0000
To: Corey Minyard <minyard@acm.org>, Rob Herring <robh+dt@kernel.org>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 Wolfram Sang <wsa@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 openipmi-developer@lists.sourceforge.net, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org
Date: Mon, 29 Mar 2021 19:17:57 +0700
Message-Id: <20210329121759.5644-2-quan@os.amperecomputing.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20210329121759.5644-1-quan@os.amperecomputing.com>
References: <20210329121759.5644-1-quan@os.amperecomputing.com>
X-Originating-IP: [118.69.219.201]
X-ClientProxiedBy: HKAPR03CA0027.apcprd03.prod.outlook.com
 (2603:1096:203:c9::14) To MW2PR0102MB3482.prod.exchangelabs.com
 (2603:10b6:302:c::32)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from hcm-sw-17.amperecomputing.com (118.69.219.201) by
 HKAPR03CA0027.apcprd03.prod.outlook.com (2603:1096:203:c9::14) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3999.14 via Frontend Transport; Mon, 29 Mar 2021 12:18:27 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ee65b826-7160-44ae-2c3a-08d8f2acc3fe
X-MS-TrafficTypeDiagnostic: CO1PR01MB6679:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <CO1PR01MB6679AD07FD63E9D9FFF24FCDF27E9@CO1PR01MB6679.prod.exchangelabs.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3968;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: lkcZvIiTmGuq8XTNPfLcoERkBvh+3Lq9BbQzBrZM/IXgUGdOxtqnvxo254MRAbr5k7Gkq9fAzj2nfSAMyaNc6q5B9Uggy5zD58mtTIGFHysk08WQBP3v6Xh6BHRSQ2IZM+fQ5FbabaubTC9cb2gCmzZ9qOMoZc1oqG4l40EAGEUyTk1X6R3OOCdrXiwHkXub45CcALvT+Ah10CzW+BJlH25NWVidXKt6XfRVQk1sNDE5mTdUK4/DMWr3ykwZklwWeHSo8B0rdXzniA4e3Ze70hIgjoWa5pvAftOS5bmgf+D0mo2LSuGkNUuigeXMF7mruReUddLOq8x0/u0GGOF+rMKFECsQl0RhPgrcu3Q4a/wIdMjhijI0EshOu+errxG7rGA7oXP0rH5pXzKX5mcYzs0+KqyUuPFUl+yyl5SXew5QbBKQHHN6zXt2cPSWhFRvUjGBIhtB7eBWbs+0vLjp54+PIIxzPhSCMqmc8anGvgP4ggUSfzUXpIyUP9Zm+c37MiJLYbw/MebIP+FVsg/msrysWqu0zLFSzmkc8A0Acm49JG+xnXC/Ks3yRtrIESFhQy3wyR/VieZfOScnkV07XJau4i99jjjNkqYtU52b2RZVppeN/NmfEv6Go5Vt0mVdWWgwBorEyb3ODaKit4EoAeq6FMGCkti+X6Q63pQF2isjdZlSJf3DWUzh8iMBAIYc
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW2PR0102MB3482.prod.exchangelabs.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(376002)(39840400004)(396003)(346002)(136003)(921005)(52116002)(6506007)(66556008)(4326008)(6486002)(16526019)(54906003)(2906002)(107886003)(956004)(6512007)(110136005)(86362001)(8676002)(38100700001)(8936002)(1076003)(66476007)(5660300002)(2616005)(83380400001)(7416002)(316002)(26005)(478600001)(66946007)(6666004)(186003)(41533002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?wI0izVF6VsbQRmoX5ezlG2BEqxPbFF2dG7yhRHNfRedunNfXbOPunRa7mVw4?=
 =?us-ascii?Q?PM/vrC0MIvP8I6MDDleFzHo5P1suMLltNq/JOImTt8C1DOoCV2pFK589U1vc?=
 =?us-ascii?Q?quVRyqSOW55tNIBzSnQzEVRIqwXc9+iT2009RefAzjr2VxUR4iDQ8nsQ+duO?=
 =?us-ascii?Q?mK2m950jRVBKFoikRSBqIMcZXGJA1cq9WHYdRRFTTzQEf8HIaMztc7UYLXvD?=
 =?us-ascii?Q?xjT5weO+1danJB/wMf9KChx2dbKncz9CTGnuML6X8DaU0koMlgwTxrYRKwns?=
 =?us-ascii?Q?2clpVOPJi6ZRpNSUPvTr21mZABCfRnLXpFORmVUDEwpAUgCtplRIIBIlY7U0?=
 =?us-ascii?Q?cRkW4Uil/xidqJanSpEBcFiJU6PZ/U1SbPn6+SzaWWRdlCMpz1ZfFqdYT7jq?=
 =?us-ascii?Q?uLZiaau1HrNPLuCpvM89In+Y+giwgbCbgURObe50jZlgGx8UZrzT+fvA9Su3?=
 =?us-ascii?Q?faKAuKPxbp7lZ/2Vm5J2IPwEdn/7EQFVX4r8qQDgTCgn3irRCQYHpDV582h/?=
 =?us-ascii?Q?I0UbWncaa9ZKB6tARCnIV0p2ZrNf7ngI/js/r39GVLLGP3OM+pnI0rN7aJHL?=
 =?us-ascii?Q?MTrt2fyUQj7N2NPzRu0EGcPWV3ZrWFRR0ceIKccDfRzPLGh7X7MvaFZQ02oP?=
 =?us-ascii?Q?PZP3hzpDrZxWyoozX4DXEjFGJvveyZQSeb/g+iWPLRWAD1KZSJEnItDGSolQ?=
 =?us-ascii?Q?0zEPB0cBTuDEgB1F73VugEFvGhVrOa5AROKzMgCUw4yppooJcrrRZC/Dn8Dn?=
 =?us-ascii?Q?oPjPc81o2kO5DFKfNwPhzHjMQxJEL2Mi+vpjI10VIcrsaY+5on0WDFM0Winw?=
 =?us-ascii?Q?+jrYo1e3Af3oKB4LGt9Oh6R7YmSkN0hkRKvgMRkwC0kukEXVFHPQAehOMOgb?=
 =?us-ascii?Q?GiZn2jlG2gYeFN2ZMr0y76Ldn7RisqJVs18osCUQOFnOnw+5f/l7bodO/dUC?=
 =?us-ascii?Q?jtIxZocm1aOaAHBtt3Nr4tzPnh+YUNdmhZm011irkFBGyEiYe2tSgJn8o1Xs?=
 =?us-ascii?Q?9AyU1TyFjiZ21kt9aexkqcN8c2Mtu5WzrAsGgPXeVW4PxmBCulxsKTqM7njF?=
 =?us-ascii?Q?lX0agF0Oc4Qo6RQLMnBpi2obZ8UTxpp1/S348M+oj9BKMvKhxexdQYEf8Xgp?=
 =?us-ascii?Q?cY7qwunnEqoEuNnAK/9u9UPOYlweMgvWfE83/ZP0lCyOmYn0B8X8gOcdT5zv?=
 =?us-ascii?Q?gr/2RprRxMhNK6BX2oFyvQXGHOarbEJBWhedROYjlPvxteQrE/hKxfzxEAsr?=
 =?us-ascii?Q?I064STS+/2LkJEtZJwBInENKJRnTHDNvTU59H2Tw71B4wQxvej9CTKIuVuHA?=
 =?us-ascii?Q?MDsUZ3OZ8curBxXUqhli+YoQ?=
X-OriginatorOrg: os.amperecomputing.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ee65b826-7160-44ae-2c3a-08d8f2acc3fe
X-MS-Exchange-CrossTenant-AuthSource: MW2PR0102MB3482.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Mar 2021 12:18:31.4103 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bb0hzPJ/ybSXHOGuSp3Dy44EySeq9aZEZ93phVuoBfVuFXg7G9A/Z0enoLP0e4AWtRHO8eyJa3HfkDVPnx1LgbzWP8k/2z1czQBnTNETiPM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR01MB6679
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.223.134 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1lQr5B-008Y4p-96
X-Mailman-Approved-At: Mon, 29 Mar 2021 12:52:40 +0000
Subject: [Openipmi-developer] [PATCH v1 1/3] i2c: i2c-core-smbus: Expose PEC
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

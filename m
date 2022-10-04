Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F5AC5F408C
	for <lists+openipmi-developer@lfdr.de>; Tue,  4 Oct 2022 12:05:53 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1ofenw-0002Zm-W8;
	Tue, 04 Oct 2022 10:05:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <quan@os.amperecomputing.com>) id 1ofenw-0002ZG-1M
 for openipmi-developer@lists.sourceforge.net;
 Tue, 04 Oct 2022 10:05:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JarapY2F3PHBxMk0AMW5ZyebXunpeBj40CKtflfqha8=; b=V0k0s5tHLKXQGu8QxjAuQ+QmJC
 4VBMgpOwZee8pec6gyvahW1IE7Qh3haM0/qIIDQWIIiDLr8/Xou6VluGQSsckbeJbhCB9+vd4ZCwp
 bOYbajc+bLYcVo0i/Yxc0j33mYenTb9Jr78QuXYYbeS96zcLj4ncMxzYJqJeuSjtYdz0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JarapY2F3PHBxMk0AMW5ZyebXunpeBj40CKtflfqha8=; b=TE/VlqMgeLLEzJpmU6VKXuF9vN
 85/bgTtJIk/ackXABGbB5R2mESv7aCYUt6MlfSHwHOFe8v3+Q5cMFCno5Mqzv7UanRHO+shPCcQMF
 NljA0IgELi3gywpOdykqowohYztkwVz9MLw9BA66t8Id9vEydxOBkk8rVKwo8pzKVIAU=;
Received: from mail-mw2nam12on2106.outbound.protection.outlook.com
 ([40.107.244.106] helo=NAM12-MW2-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ofeo3-0007NU-QC for openipmi-developer@lists.sourceforge.net;
 Tue, 04 Oct 2022 10:05:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Cz/IFy/648WNwrRV8iSMgB8JvRc8xD7mI2oRrPIURRCkqtxWp4cO1yytVkeNDSttHnNfYEERQzfW6Ro86Mumb2jJ5uEKwv/aHuPb52WnHp4yF/cBOBkpKh2HoIBBhA4HQQnBeBSHxz0ivIuj2zTjyAxMUy0W11GfNYbiCVT8A4KwpFSkahd6PfRhl/bSrMhdvM7Ro4q5UM1R4VeLF7AGBxYaCwCHgShkn0uIfAd3Y6pfDK9Wca2CuS0HYgRv1B6IoWOD2b8rkDkOWKiSZZZyHVfkKbalUE2SmLJbw7SqtLXGaXGT54MSf+6+/JYCgoU2L0V+72u7XC/zxJa/hkQckg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JarapY2F3PHBxMk0AMW5ZyebXunpeBj40CKtflfqha8=;
 b=jONLhwbSb9CQdWkUIZb38uTxH0SQFMWPg6akfWgiiapN6rlVLrHgUMN9aXpB4JBDDQk0TYj1kIAMM2evjgPYkVwH/p8olpqocqP+ki72iq9QiCwMuBftr3bnuq0VP6zTDy6UThqd2y3ozrH+Aa42PnjX/G5piX1BM43LLGEg5rfa/2ANLHeMY4HP5BuuO34YXRE6F4A+xheOF2LCjY3GW2a4AHtf+YnVbQc5wHusyRbp9aHWNU+v95lbgTlAVm9OXzRh43jYFtDx57jHdTIF+CMtT6LF6okAxf1tS9DKVp24ljOiCDk2vUa7jyza6Dkp1VA7O1pXp80urWAP+emSYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=os.amperecomputing.com; dmarc=pass action=none
 header.from=os.amperecomputing.com; dkim=pass
 header.d=os.amperecomputing.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=os.amperecomputing.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JarapY2F3PHBxMk0AMW5ZyebXunpeBj40CKtflfqha8=;
 b=cX9GarOM7Cj5qaj33eILSLU2fk5WoTZ3bMKI2Pza4rdqDLe3JHHd6JpNQmNiXwqB6LtFdv5i2r4yTJzLAlmGF2bRZO8w0qKEBedE144O4UkDRcoHTZ+RCEKINx9BytmYluCbdbONRkF6dgOEgSm+uxII/VcVPIOTPxthAS2UUaQ=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=os.amperecomputing.com;
Received: from SJ0PR01MB7282.prod.exchangelabs.com (2603:10b6:a03:3f2::24) by
 BL0PR0102MB3428.prod.exchangelabs.com (2603:10b6:207:1a::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5676.15; Tue, 4 Oct 2022 09:31:45 +0000
Received: from SJ0PR01MB7282.prod.exchangelabs.com
 ([fe80::7d50:e907:8e2e:1ff0]) by SJ0PR01MB7282.prod.exchangelabs.com
 ([fe80::7d50:e907:8e2e:1ff0%3]) with mapi id 15.20.5676.031; Tue, 4 Oct 2022
 09:31:45 +0000
To: Randy Dunlap <rdunlap@infradead.org>, Wolfram Sang <wsa@kernel.org>,
 Corey Minyard <minyard@acm.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Brendan Higgins <brendan.higgins@linux.dev>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 openipmi-developer@lists.sourceforge.net, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org,
 openbmc@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
 linux-aspeed@lists.ozlabs.org,
 Open Source Submission <patches@amperecomputing.com>
Date: Tue,  4 Oct 2022 16:31:06 +0700
Message-Id: <20221004093106.1653317-4-quan@os.amperecomputing.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221004093106.1653317-1-quan@os.amperecomputing.com>
References: <20221004093106.1653317-1-quan@os.amperecomputing.com>
X-ClientProxiedBy: SG2P153CA0029.APCP153.PROD.OUTLOOK.COM (2603:1096:4:c7::16)
 To SJ0PR01MB7282.prod.exchangelabs.com
 (2603:10b6:a03:3f2::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR01MB7282:EE_|BL0PR0102MB3428:EE_
X-MS-Office365-Filtering-Correlation-Id: 73f470da-8426-461e-2569-08daa5eb40ae
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vrcgAjpsFyAzHV+SFNRsam6VEoWUSkMxcKNoEDSGivWR9dnRCgX2HW6JmLJbgq3wA8a4Cy19Cpfmo2x6uV5OWADTg0vSq9nAYA4200VvMwLfl5Yi1G2qkleKqwMd7cIZ/jStIkV/CB7edxJ0/ky93oFQORPBhNVPXqCtyVPXT/03TfnFPz7zK3syy9CacWhB8F0Gqcq0tJW6Emxx07vH10IsZNGZ0h/W5tod+tN+rxQMl5fEj/CgU1BCjTH948Kwg2fdT7In5AkuQBB4Uknom+SvC5TdGaxEGJ6uWfUe3UCcNYkDXYSem3PwADIyS+82oiTPUHkyLui9lZaqQ2gDjBARa7lZMuLeYsTD0BT1bmKmYOHsWRyTc92TKdNHTwDfMbHJUdesrVxwRSGp+YxmIbhvKTE7B88Muj4Ls78UDles26Zp3W9Hir4OiH4LtH/118badCfg0gnBAR0NcbIH0N7woyhwWQnt7iFVJXo28A0LkBlJK8nlBzUsxsIgKDLsDlzF/SsFnSUikkbZAYBDd66wZr+wX5NrWh8HVUaMgzjTJJJae7KrXubCrFK3eeMM94ZW7qjg9yZVX4QLMa27AFqoRR8+Bwmu6CEruIswu/5vgnOeR49Gdbz0RruILgsbPolJImNrbXh5iCcOc1MUNcMN/DRfL6I+T3vWvv5uohdGKt8bnuJ+bWJRt6ILktw87qTeGNOgkDTdr08SGQ7efGOpIvkeyzxBkoycS8KEpCwoxhr6V3EEM9MFwH/oLbSuoaeKY0OTwqarwD2Dw0FZ91DGLEbZmeehSNjEXZj951w=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR01MB7282.prod.exchangelabs.com; PTR:; CAT:NONE;
 SFS:(13230022)(4636009)(396003)(39850400004)(366004)(376002)(346002)(136003)(451199015)(54906003)(110136005)(6666004)(8936002)(5660300002)(6506007)(921005)(52116002)(7416002)(107886003)(478600001)(6486002)(38100700002)(186003)(2616005)(1076003)(38350700002)(86362001)(26005)(83380400001)(6512007)(2906002)(66946007)(316002)(8676002)(66476007)(66556008)(4326008)(41300700001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?UkNe4ya916KBcBaZzOv0VgbZl7Jjg8peNjsln6zK7oMPwYFR8ZYyEthy7gp1?=
 =?us-ascii?Q?e/ZYv/G/8nqYsfG6/6+oQ+oUFEyOJQc1L5F4r1nSBPIo+3zPKoRmh1kaCIP3?=
 =?us-ascii?Q?0yXby6FiCeC85soX7z3m+xfeFkarif9kJcYl0KNs8tF8wQcLiKKMH5yjX9Cf?=
 =?us-ascii?Q?AUAK+eVWqdwUfQ3HEW35ljv+k41hTiJv9WOKGM28G6r8vO02pPlVWKlQEleW?=
 =?us-ascii?Q?JzjxgoZGpoouAmpcddci1wYbZTEJ79FUszCHf8ry7LrEAniFwWrB/14arNq0?=
 =?us-ascii?Q?j3bEXx03xvisIEsfqBvHvct/L/CfpUVOS5qVzLw00WQ1rqqE21h/njClX2vX?=
 =?us-ascii?Q?H8sLu3oAUdZ0wdk5AEXGVx/sa6BsSRpl2h3o8jjuSCLsvBvrkSGnxGejo3Na?=
 =?us-ascii?Q?3gBypTHrw97EdGYvgKQT5sv8qSKFqU9LUlZ72vIBeOwCUav9NT+p9ku6qKtR?=
 =?us-ascii?Q?mqAV4LvIQd/Nwi8LXtaO29PCLRlA3bNar4oehLlO7Wuq1QL+EGlONxe9fqEP?=
 =?us-ascii?Q?/Dsddn7reZlAH5GsAhYnVvUV3BGw6ZOUp8cAApOyps2eySxojbM4KR8DIHtG?=
 =?us-ascii?Q?8FhATrr7M8acrfe9mdGhTDMMwHNnPgS/G6NUkBtTlfcazPRl9lKjg50hAWmL?=
 =?us-ascii?Q?wNdg1l9vgjQv2cYvqwl8czH9WQxw19ABpEhtVhMQ8Rv4VKXLDMoiwBWm8mV8?=
 =?us-ascii?Q?aYtMocIlTtrlADVOiD3tMMt4rVu6iU2IT6mEe5MU0HSe4L43O7SCuRk/wT0h?=
 =?us-ascii?Q?RBhEAYEqT2qxLmxja++ZI00Z7D1CCheK2ZVITvFcxaZAgLPYKxtqYYtVPG27?=
 =?us-ascii?Q?gFNhCykDH6agqk7sDxZcEtEz4yVVciX5JgJ4E0I1Dba1jB5eGtDRLSkB9fE7?=
 =?us-ascii?Q?KaYjbdcYRIbHH8bEU8w8BhsDlZCc7KrXCrs1rSEF++aiORz/7Q2NBvrCJHzP?=
 =?us-ascii?Q?Nx3kO0FG+Z1XQgA7PaOVLA9YsasErHapBLE/HXFhroOLzVxEEoUwqiprOveR?=
 =?us-ascii?Q?jmmmgrgpRbTlgsK28SJCMyS3rqTmBS5XGKH5PMM769CeB21szf6JDVUKpftq?=
 =?us-ascii?Q?JYiLYdKUVEXRfkTYnTFOd0Buxbz70BgXn0KogNQDgfR9+zC5uAxqXZ4flDMO?=
 =?us-ascii?Q?FUfe3y8q88LGgeEsFqjUb8Jvc6qbEnaSs4CqmCrmWm4iFFa5R3rj4EZ7+aqq?=
 =?us-ascii?Q?pIIvx9W9vxA3kCzWn4G28JCLH4TSgdDlVggOPMTI/ZyzQkB39PTRGdmxOzTf?=
 =?us-ascii?Q?RoiqiGBll2PiaV49McudtMIrvIZilHynzenDztaEX67INj12cP62m+fUdLnp?=
 =?us-ascii?Q?OxgGk+BdgmdtFw3Nv09x2wD8MRPo7tPxw9DTi5bLYg8VXwik//ikfIdaDKe7?=
 =?us-ascii?Q?7CFMn1a4SQ/FG35PYCdIRkrlLJCr2X3OSyZqRkmGtyV4L9EqAxYZrvFOK4+Q?=
 =?us-ascii?Q?31gLJkNKo9uaEkvF2jQgD4BCIqhnCG8/LG7ZZm8uczpQWNXBpF+Am+gTrv52?=
 =?us-ascii?Q?wuqUHamdOwzHTbeT0W5hg/1yy1MHlxs80FYfIBmrBYdV0d+UZZ1RS6rtnHBJ?=
 =?us-ascii?Q?CDzrgE7TTen8FbEgHasGcAVIs1G7huFDrHsuS+CQvD55pUmmahSYaZFb6q26?=
 =?us-ascii?Q?umdcKr/QhmHfXsQLfRuv8Ec=3D?=
X-OriginatorOrg: os.amperecomputing.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 73f470da-8426-461e-2569-08daa5eb40ae
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR01MB7282.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Oct 2022 09:31:45.0679 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TzDuQI7feM3Mt0VRKP9bnAaRUi0ViXA5FXEyjW97UP2BEWM+5cENn8oLirsFEZJwG3NOM9Ta7kH7CES0PhgIsbJKgiUT6Pw/kMC1XwKzmpA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR0102MB3428
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On I2C_SLAVE_WRITE_REQUESTED event, Slave already ACK'ed on
 the address phase. But as the backend driver is busy and unable to process
 any request from Master, issue RxCmdLast for Slave to auto send N [...] 
 Content analysis details:   (-0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.244.106 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.244.106 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1ofeo3-0007NU-QC
Subject: [Openipmi-developer] [PATCH v10 3/3] i2c: aspeed: Assert NAK when
 slave is busy
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
Cc: thang@os.amperecomputing.com, Phong Vo <phong@os.amperecomputing.com>,
 Quan Nguyen <quan@os.amperecomputing.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On I2C_SLAVE_WRITE_REQUESTED event, Slave already ACK'ed on the address
phase. But as the backend driver is busy and unable to process any
request from Master, issue RxCmdLast for Slave to auto send NACK on
next incoming byte.

Signed-off-by: Quan Nguyen <quan@os.amperecomputing.com>
---
v10:
  + Issuing RxCmdLast command for all errnos     [Wolfram]

v9:
  + Update commit message and add comment to explain
    the effect of issuing RxCmdLast when Slave busy [Quan]

v7 -> v8:
  + None

v6:
  + New introduced in v6                            [Quan]
---
 drivers/i2c/busses/i2c-aspeed.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/i2c/busses/i2c-aspeed.c b/drivers/i2c/busses/i2c-aspeed.c
index 185dedfebbac..c64c381b69b7 100644
--- a/drivers/i2c/busses/i2c-aspeed.c
+++ b/drivers/i2c/busses/i2c-aspeed.c
@@ -244,6 +244,7 @@ static u32 aspeed_i2c_slave_irq(struct aspeed_i2c_bus *bus, u32 irq_status)
 	u32 command, irq_handled = 0;
 	struct i2c_client *slave = bus->slave;
 	u8 value;
+	int ret;
 
 	if (!slave)
 		return 0;
@@ -311,7 +312,13 @@ static u32 aspeed_i2c_slave_irq(struct aspeed_i2c_bus *bus, u32 irq_status)
 		break;
 	case ASPEED_I2C_SLAVE_WRITE_REQUESTED:
 		bus->slave_state = ASPEED_I2C_SLAVE_WRITE_RECEIVED;
-		i2c_slave_event(slave, I2C_SLAVE_WRITE_REQUESTED, &value);
+		ret = i2c_slave_event(slave, I2C_SLAVE_WRITE_REQUESTED, &value);
+		/*
+		 * Slave ACK's on this address phase already but as the backend driver
+		 * returns an errno, the bus driver should nack the next incoming byte.
+		 */
+		if (ret < 0)
+			writel(ASPEED_I2CD_M_S_RX_CMD_LAST, bus->base + ASPEED_I2C_CMD_REG);
 		break;
 	case ASPEED_I2C_SLAVE_WRITE_RECEIVED:
 		i2c_slave_event(slave, I2C_SLAVE_WRITE_RECEIVED, &value);
-- 
2.35.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

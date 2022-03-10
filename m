Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AB97E4D47E3
	for <lists+openipmi-developer@lfdr.de>; Thu, 10 Mar 2022 14:16:41 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nSIek-0008GB-T0; Thu, 10 Mar 2022 13:16:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <quan@os.amperecomputing.com>) id 1nSIej-0008Fy-LS
 for openipmi-developer@lists.sourceforge.net; Thu, 10 Mar 2022 13:16:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Wjv6CnSj3V2zB6DLMhx0xgB/PBPemXBO36wqpNHB844=; b=GTouQrwI14zB2HnjPEUFX2XBlL
 tT12FoElsuzVfaBwN1KkrhGKM3B0HYUMnj4xxuxIrFr7RgSGu40TCaVoTvS4nxju88l2VO6W5feqh
 x/zq2p8AfHas5jQ2eAQ306G/6Cm6J8i6LRGXo/VLb3/lMATkld5Gv3Rr5X8iaz2tu0E0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Wjv6CnSj3V2zB6DLMhx0xgB/PBPemXBO36wqpNHB844=; b=LaEWn1tyiW88BoCcsWnQ92DND7
 3Twke14A27SiCDGaDIRpqZoJLIg0pQGy0avz649JtRrUMZby2JHowV0lkoO8HoU7STd3JUxG3jMwY
 zI41sLjI89Xu9oPKQmkgOYeLeIqPu7GkNc8v6etUiXgf5nOp8bD/3+rPHIU/FIF+433U=;
Received: from mail-mw2nam10on2106.outbound.protection.outlook.com
 ([40.107.94.106] helo=NAM10-MW2-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nSIee-0004CU-Fu
 for openipmi-developer@lists.sourceforge.net; Thu, 10 Mar 2022 13:16:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KXT5WyL6I62ZiOrAiOifuf5tPMZ7CQU+nRpTZ7A0xextQy33s6dxJJuJMaI6IG8NhFAmAiFiwGJskHnkC4Ixui/gFDfNpExv1XME/wH6z+bXfd1v8g+PGeuxdKpm3/ux9GcKByfRrwTnhUO2b5XlD5E6qOLKHswcLdtNAEL9ZUCvOkMenZX9ipGy+g8My+U1c43gCmOpZx7psd0KZ6H5fx4CGvs/9WHGaUKyVR6S9VfiEZHn5O9JHDCVLOu/Zy4zbXKg6nvJFUrMF3brYrqIg0HzZOWtQiP01YT+LIDZHZteIWzvf2I3mU7KljPbiY7U7WA3KDWhfmwuS2MMl5U9TQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Wjv6CnSj3V2zB6DLMhx0xgB/PBPemXBO36wqpNHB844=;
 b=UB3ZZdzjlnD7gVr5GMIkEQSLgiBY0sPn+YGLfzGgHbSr19YjN89D5v7tFsMJ1IJmnQ0LCe5SDAK+EjZwz7zQVIwXwxHPQXP5m0+BP6PYedaCNtvRhh/niJQTxIyjFE0A85i6iyj/62Ul2nQ7R2030opF6kLOonZ3vKjzHP7LyBpJSc7tgRcor50e95S7IaYQwmQCyJ5853YbSRqgwAOw45Coarivk1wXSj1x8zrspRj/FI//XQlag4hZOT0GVMsYZW/2wNkfCDMLroSa6k6yt6XuXTfVjcKXJ4abzhGq73oyd5VBCrqBZZpLGYXUkF8EXllUqdOSjn9FjQyFc7e54g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=os.amperecomputing.com; dmarc=pass action=none
 header.from=os.amperecomputing.com; dkim=pass
 header.d=os.amperecomputing.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=os.amperecomputing.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Wjv6CnSj3V2zB6DLMhx0xgB/PBPemXBO36wqpNHB844=;
 b=BpfuAd0d8VlshMLiJ9HxODYsd1UMoLp+Q/XY0TAI8J6mjhzPsOpmlWA6LllOfqJxRH3QgHz6kRfGpP2Fto7FXP8LMSx2AO1p/CcaABaEejC5Dokv54sRgYjlOjb3XXo3T8Wnhr8LbeGp7z7pl/lvGDkza9tNt0LhnBdvXsePjj4=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=os.amperecomputing.com;
Received: from SJ0PR01MB7282.prod.exchangelabs.com (2603:10b6:a03:3f2::24) by
 DM6PR01MB3771.prod.exchangelabs.com (2603:10b6:5:82::24) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5038.16; Thu, 10 Mar 2022 11:42:04 +0000
Received: from SJ0PR01MB7282.prod.exchangelabs.com
 ([fe80::cd24:39ed:7042:46d6]) by SJ0PR01MB7282.prod.exchangelabs.com
 ([fe80::cd24:39ed:7042:46d6%6]) with mapi id 15.20.5038.027; Thu, 10 Mar 2022
 11:42:04 +0000
To: Corey Minyard <minyard@acm.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 Brendan Higgins <brendanhiggins@google.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Wolfram Sang <wsa@kernel.org>, openipmi-developer@lists.sourceforge.net,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-i2c@vger.kernel.org, openbmc@lists.ozlabs.org
Date: Thu, 10 Mar 2022 18:41:18 +0700
Message-Id: <20220310114119.13736-4-quan@os.amperecomputing.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220310114119.13736-1-quan@os.amperecomputing.com>
References: <20220310114119.13736-1-quan@os.amperecomputing.com>
X-ClientProxiedBy: SG2PR02CA0125.apcprd02.prod.outlook.com
 (2603:1096:4:188::13) To SJ0PR01MB7282.prod.exchangelabs.com
 (2603:10b6:a03:3f2::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d611fabd-8eee-4196-a55f-08da028aff19
X-MS-TrafficTypeDiagnostic: DM6PR01MB3771:EE_
X-Microsoft-Antispam-PRVS: <DM6PR01MB37717B97790867DDFD848F73F20B9@DM6PR01MB3771.prod.exchangelabs.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gky5Ab+W//BAhQk2IwggqqVPiUdUz6CmYQK7gtFQU6smKtkQuu5hgIH6u7EM/ibgk0xGACeIdFTc5kyLcghSZOLk6q7aHuxfNkdtf43CnXmO3ePzP49EOCN7QU27MfGL9y/6Va4SBj86i6htfeed9UOnkU4QKOSRONGZ5ABn6X4TnlKZpBgdpwVaLxhFzrYDWEn6XrLqqWs3LOy4vs//5AwsHibV67w8yqPRNqi4CPHHpM8nQ9meyWflNUwZrckAfLpuw5hxPUlqhaPCIcQdlI7lY9kxQmTf0hT3C6oYDWE0QoD1b/zF92PrLy7FwxKlwO9HFEieUl8s/Xln7mUmjBjNCSdUleEphAnp1QzDgCi+dufBXclWbHwBDk0LNKST4ah56e+k4PXH79ewYK+YLRoWinotcclZ0pFKBEXNf4FtVZh6MlP0c0MuQfAitZbAQZpRlTXMDaBmX7+2hy79dwQMOIL0jDcN12631qb2hFe50ZymKW9Rj+DgQhEscsJUkS7By0X6sca828js+mX1GrBcGpP3bmlXN6yXCdDQE3BPcctkAr6HhzSl+wrl0Zn7EpabvxYy1D26iWRj+Yd/qww5tURqsH75ABC6XzLaYMdHFAW9weybPZ3QV4RPTUfTN8onlS5Q4qnlLX7r9MqjUvCjcL8sYuMVEJszNw37tzf2fMEYK4ac7TXp2RzArHghHOiLLCf0ngUdH7E6kuZ9ufidKfMCFNop5rrqfZ1ixs0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR01MB7282.prod.exchangelabs.com; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(366004)(38100700002)(38350700002)(83380400001)(186003)(26005)(107886003)(921005)(54906003)(66946007)(110136005)(2616005)(316002)(6512007)(1076003)(52116002)(2906002)(6506007)(6666004)(86362001)(66476007)(66556008)(8936002)(7416002)(5660300002)(6486002)(508600001)(4326008)(8676002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?BefJ29iVA7lzH+Tc0cl5Wwn/hWvI8l4RxyxBQLpFKF8i9y6QQxyHSuth/y28?=
 =?us-ascii?Q?gVfy5UxfB491HizQZWEDZbgrKujFVlql6uVQ/RzFgRS/Q0FB9886GqOCIh15?=
 =?us-ascii?Q?kCTQF7uMSgraTCs1+E9qsM92gklfyqDdJ6yXSdcpgISEGNT78OVKMUeUYZmA?=
 =?us-ascii?Q?2RFNftQN5YJDyiAkb5fCWjOrvHpqYRfWSV/5iqobIgHakB77j+HGSEtPqt/X?=
 =?us-ascii?Q?L9ICWJWh+7HJR67ybXjr/kWLZXdyD16PzKhDerfkSXNpiRv+2ynw87dQCZ6y?=
 =?us-ascii?Q?uS95MFMDz4quTHW0CUPN7IpWaW0/QPFdVwtg6Z1S43Kmj3BT8R/JzK3RewC3?=
 =?us-ascii?Q?UazP7P/JC7OtLP4/wk7fXiSUa2ugmaqfax5QRF2qOzvZ8GnhbbpUNn0VWjW5?=
 =?us-ascii?Q?dUCLiiT7CQhCQVrgjZPyybsApszkXVizoAj5I+KCZpPINWyoaR2kY91yN6ju?=
 =?us-ascii?Q?DbyNf8O5n/bEmQt7Niry4DQzlN0ZisAXv+H0sU9bl/WrvIh4+pi+VPR0J9lW?=
 =?us-ascii?Q?MD4QkmstqH6WjnW1Qey1Q6K6oggdnwe7tnP2FvCD9UlcB8gHY7QAXuYC67lI?=
 =?us-ascii?Q?2rpeFG5pAKzBmB4BYr+7g18zHkpeNwNV4wG2s/Wek1xqioK20P0rrDHkf4Vv?=
 =?us-ascii?Q?AdAvI1ZoGi4ZxUXbxJLt8RvH+yHP9338MOnBtKd+jhkMv2t46Qkys9RD/7Lz?=
 =?us-ascii?Q?HgPUvHndKnaPC/mCiEz1wVqVuEVxiLmwJHrG8Qes5qmWbRCjaWpe5bbugQrA?=
 =?us-ascii?Q?5Q+R7mEjIz/5FEN5t5f3noh+tSs8qq7tNazxNBaeDPq5cFKqL+vWADwFqVVx?=
 =?us-ascii?Q?aTVWAgKJLsO5X5qXIV7qXc64t6YWxEuE1qKDIlo6i4j5LCAfMbaPdH27BMYf?=
 =?us-ascii?Q?ngoT/6bzc76YOHEr0iXrJAQ8k82VX/3ltwZ3Va2gtFmMcbrdLU0u4VwgCeBn?=
 =?us-ascii?Q?pc7Rf4T5VuJU7DpS8EiI///Rp9SWHqhB164jtKl4mVF/eWhGm/JXxJ4D7SA1?=
 =?us-ascii?Q?Mim731gGz2C2I1dyTNywGwlRMorzSkvgLVyNaA9BUUGcdJcWEwVO/yTPftQb?=
 =?us-ascii?Q?8QMGYS5cG1vOzzjLtmnyTzXqYpEe+f0SuMHlk4HOzX0OTwPnXA2ckn4ritr1?=
 =?us-ascii?Q?ioaTlob7fLcUHX27VephVAq315dFQTnBU0CWVZ/AUYid4jUeVBo8Q2AYY3Yt?=
 =?us-ascii?Q?Vwir7gq9moyDMl/sLhPsefP+N1C7WnUkmKceNuzi9fxUo3yRsdbOUnceZzn3?=
 =?us-ascii?Q?9mZGWC05dtAYDFXdQETOhtngLaS4Jl1YuwCmoVu7F3yNB09V51EnJhMz8WCW?=
 =?us-ascii?Q?ZZlcLQCMrQeznC3fEhmWeaQOxB4PGXoMmA5S3YFZlYpoHEQdaPtU7TT6efmS?=
 =?us-ascii?Q?geLFqJuC2rRtvXDQnnkCmSd/g8c4tdIA1mbI9TI0jN9DqVLBsR4so9/uqXf0?=
 =?us-ascii?Q?fe2y9uudYuisPlb8as617S9Xc4g+X1zRaO61RFxODPb/etK2SzuDvfd7FT7Z?=
 =?us-ascii?Q?FkUpjXSG8G7sXhRihGcKO2F7AvmC21uVVX6dpyLPCbat1gG5Io5Bvu3309rX?=
 =?us-ascii?Q?Yg6N/54b9SqzXUmXw9klFjwal5XEMN2LDL32BhUHAvoojpPt9teeeyLsNI58?=
 =?us-ascii?Q?PFHaGgfHszgaeKfx4sTt6HsXHKrq2zCllO13hJUYmCzsvFJV1FUysqqoekbq?=
 =?us-ascii?Q?XuABkSua2acs46PzD0U/fRrNYa8=3D?=
X-OriginatorOrg: os.amperecomputing.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d611fabd-8eee-4196-a55f-08da028aff19
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR01MB7282.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Mar 2022 11:42:04.2627 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TNUhbl8uD63EvAfj4sc0kNU9N19a/JQFOlQEhdOjrYdbB2pB5pvO2WWXcWraPKmIRX4jCqFk1idU1mYsLfGbdjV/hE+HMOKVNjoY9vZuhCY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR01MB3771
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Dan Carpenter <dan.carpenter@oracle.com> The
 copy_from_user()
 function returns the number of bytes remaining to be copied but we should
 return -EFAULT here. Fixes: 501c25b59508 ("ipmi: ssif_bmc: Add SSIF BMC
 driver")
 Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com> Signed-off-by: Corey
 Minyard <cminyard@mvista.com> Signed-off-by: Quan Nguyen <quan@ [...] 
 Content analysis details:   (-0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.94.106 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.94.106 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nSIee-0004CU-Fu
Subject: [Openipmi-developer] [PATCH v6 3/4] ipmi: ssif_bmc: Return -EFAULT
 if copy_from_user() fails
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

From: Dan Carpenter <dan.carpenter@oracle.com>

The copy_from_user() function returns the number of bytes remaining to
be copied but we should return -EFAULT here.

Fixes: 501c25b59508 ("ipmi: ssif_bmc: Add SSIF BMC driver")
Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
Signed-off-by: Corey Minyard <cminyard@mvista.com>
Signed-off-by: Quan Nguyen <quan@os.amperecomputing.com>
---
v6:
  + New add in v6, thanks Dan for the patch     [Dan]

 drivers/char/ipmi/ssif_bmc.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/char/ipmi/ssif_bmc.c b/drivers/char/ipmi/ssif_bmc.c
index 62db97773654..91ac2cae756e 100644
--- a/drivers/char/ipmi/ssif_bmc.c
+++ b/drivers/char/ipmi/ssif_bmc.c
@@ -87,9 +87,8 @@ static ssize_t ssif_bmc_write(struct file *file, const char __user *buf, size_t
 	if (count > sizeof(struct ssif_msg))
 		return -EINVAL;
 
-	ret = copy_from_user(&msg, buf, count);
-	if (ret)
-		return ret;
+	if (copy_from_user(&msg, buf, count))
+		return -EFAULT;
 
 	if (!msg.len || count < ssif_msg_len(&msg))
 		return -EINVAL;
-- 
2.35.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

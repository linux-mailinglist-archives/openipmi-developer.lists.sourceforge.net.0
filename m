Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D852388A95
	for <lists+openipmi-developer@lfdr.de>; Wed, 19 May 2021 11:24:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-Id:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2Vl/dp4LNomZVfvJAUhkbF2OzYxDCFwuG4lV+RANr8I=; b=k8fJ8FYZKUOEv7g52Tm7BFWE3
	Y+lqxgvwAoDNagVCgEfT56RsS3ZZ50yM+j+yRXUBduex2NmZf2En8sKUXA+EDlwn89/8X7xz/spVA
	fowgxIJQw46vRyl68AB33CdruIxksxWYNaBvLFwMH9XTgm5O95xn4XmfLYahcYIdd/Yds=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1ljIR8-0006UN-1p; Wed, 19 May 2021 09:24:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <quan@os.amperecomputing.com>) id 1ljIR0-0006Tz-RZ
 for openipmi-developer@lists.sourceforge.net; Wed, 19 May 2021 09:24:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PqBAtez2bYEYPVr1UA+6yYTcfsTkQ8Jef38beg1HuNw=; b=X/52TqT/5ro7VrC6Hn+uXPJ/lh
 8OzXTAmOlerx6z5MKI52gRqvsVRRxxLThbMRmr1+GNtkVK05u4+vy3DGX8OwPCcBRntKFGAQ03do+
 Tsl35tYpIpc4ybu8VDJ3bN77XqBurzEfei9ZYkFsQMh+0fUpjxCbF8Rt6KRDBMeTa4tM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PqBAtez2bYEYPVr1UA+6yYTcfsTkQ8Jef38beg1HuNw=; b=cndA17rbv4Y5VLFAvlqJzLdkmS
 QS5266QaNCzqP9dBIV+HzM7tKso+NPotflyipv8tidzI6kLNHHvd7gFb4iGajRZc1Sogs4LNE2dno
 ZtImH0YFijhJeUps8/2Jmwaq1sZGoYMseYAUjdJ/RpmLngVGPity/5aFYgLC3NL6xA9U=;
Received: from mail-dm6nam12on2101.outbound.protection.outlook.com
 ([40.107.243.101] helo=NAM12-DM6-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1ljIQn-0006DY-W3
 for openipmi-developer@lists.sourceforge.net; Wed, 19 May 2021 09:24:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FPhr7e3zmtVVcw6QJXZiMftQUWOCry1TuCeqXL4QkheTlqpB4nehIAiSdxsE/3wNvUSco4W7T5I67ZPMpIq8N5C4KfkzdkVuyFvnlp9TPGiBvvc2xjEKk6Z0gtk6wuwnNJ7C6qCJzgX0C4PGBVBM8SMgTAzfMEymExMJ2gGGJT/TXL5olGE88bMHvWRN4RWzJvNGcSUkVSENwEvvA35o/YsnzpnrV15/D9hsJ2AublELT7BGhC/aIrSra8XOYWx8o5vu4YBNWmQBzk7LJy6cXnTBtvtSYQlgXF2AjuxDN+XhStzdbyheDRtW9RaPBY3KhOVkFZUwCvhDchtM7uRuyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PqBAtez2bYEYPVr1UA+6yYTcfsTkQ8Jef38beg1HuNw=;
 b=OszkteslzvFbttq7oXJLoKUFrAWBbB9IQtT4aRuLplZ2NUE9y1OnoMtac6rgRytMp4Kx7MGSHng+TCEzRUHaN0nfFguGm9M6Y60Xvq1uRwi9q+St1ZxodOPsSw1Kkd48ic9VhquP4RmrTRVcek1IZYpnvct+TGp4x4sHvqh7DKr0MWL6NWgtthl1sD5GseOspIBIBTP5QUOf+f+ok8Am8fRZIDs6QwjDWX0AD1aghq7Y5YoRkaTH9gfFVmNZ5nP/liaqqsnJbfkf6cL7F/XedxRZNg6k6fZSZeUTyZ0uOSYBSPRohxJqQLkaUq7/qJlib/yLKYw7sVtXPWzoC4+6bA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=os.amperecomputing.com; dmarc=pass action=none
 header.from=os.amperecomputing.com; dkim=pass
 header.d=os.amperecomputing.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=os.amperecomputing.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PqBAtez2bYEYPVr1UA+6yYTcfsTkQ8Jef38beg1HuNw=;
 b=AXy/CmkEHESFFrRqk7UHuNZydzz+6M90JEu6uNHLauF/+fboFqePZoyK//rA2pkmJ8gBblqVXy7bSpB0xcaYoVHQHoEOAEqvwMcynuZT8QHgS5MVaaC6J9dzaToz9j79sCZRXGjh+Z4tUSg/aaKIuejhKa8BKXPRO2B5zPV4/8c=
Authentication-Results: acm.org; dkim=none (message not signed)
 header.d=none;acm.org; dmarc=none action=none
 header.from=os.amperecomputing.com;
Received: from MW2PR0102MB3482.prod.exchangelabs.com (2603:10b6:302:c::32) by
 CO1PR01MB6743.prod.exchangelabs.com (2603:10b6:303:d5::10) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4129.26; Wed, 19 May 2021 07:50:37 +0000
Received: from MW2PR0102MB3482.prod.exchangelabs.com
 ([fe80::d840:7aa7:58d4:b503]) by MW2PR0102MB3482.prod.exchangelabs.com
 ([fe80::d840:7aa7:58d4:b503%5]) with mapi id 15.20.4129.032; Wed, 19 May 2021
 07:50:37 +0000
To: Corey Minyard <minyard@acm.org>, Rob Herring <robh+dt@kernel.org>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 Brendan Higgins <brendanhiggins@google.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Wolfram Sang <wsa@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 openipmi-developer@lists.sourceforge.net, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org
Date: Wed, 19 May 2021 14:49:32 +0700
Message-Id: <20210519074934.20712-6-quan@os.amperecomputing.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20210519074934.20712-1-quan@os.amperecomputing.com>
References: <20210519074934.20712-1-quan@os.amperecomputing.com>
X-Originating-IP: [118.69.219.201]
X-ClientProxiedBy: HK2PR04CA0081.apcprd04.prod.outlook.com
 (2603:1096:202:15::25) To MW2PR0102MB3482.prod.exchangelabs.com
 (2603:10b6:302:c::32)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from hcm-sw-17.amperecomputing.com (118.69.219.201) by
 HK2PR04CA0081.apcprd04.prod.outlook.com (2603:1096:202:15::25) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4129.25 via Frontend Transport; Wed, 19 May 2021 07:50:33 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3f34fae3-c945-4d1c-e4f8-08d91a9aca06
X-MS-TrafficTypeDiagnostic: CO1PR01MB6743:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <CO1PR01MB6743475DC8715299D202A201F22B9@CO1PR01MB6743.prod.exchangelabs.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3383;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 95jn109+m3nocENwElxyrjFodaRMaJicDBnx+WxHCrXfLGUeiSgxZxcNPgHlYRI2Zmw2NlSzhEzS20Ke+0gwF+PM50Dvru8fMVKl2diI+Eb41Pknhf10OVSFlJ3c+4S/K8wlxtnNbOv+80hh34ALoGJXU4ef/hS2w3EOO67Kb+PyWwCNxMSxhJoilNpk872cBIwI+RmEsKzGj9aqNu44nwpWvMJ3IiFmyEAQlPLRnwvL9DsBG+Z4G701Gt2HS3U678QpGMpNqo9FClYKAhubBUdIFXHpr2e8hAinEDJE+wfDAXFiSnh2OMpe/eWApeySGU6AqUSYns4E+UNDOIIg5PpOFAkH/mvcTc8yY/q54aSOFteNzj1L9hkION52U31iT5XhJmX8mgNjQvf1LCY0QaaKxDHDwO7RFEyf7B0051tkItdQUwPcfl+enRtuGhvQkpKDgFQc/pkHJtNf7gS6eM36KZ6LrRG+rwjHWq3n8nFbXvHel237JrX8yq3ueQgmjTizQ3/tcJb+Ls5fwhN9x3lDPK0xybhvv5Xh2xCJ97f+RkL4vRMC0wYlm8zx3GF0hazXYeqoAJaUkKbfh+0s5gm1vggFWKpNmHtYbcZ1AsUteQQze0jh64rtEr8CG90P7vqlMmbIHLkhScf/jIx0pxx4D/gJQcWpI++ItUINymo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW2PR0102MB3482.prod.exchangelabs.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(39850400004)(376002)(136003)(346002)(396003)(478600001)(66946007)(66476007)(8676002)(8936002)(956004)(921005)(66556008)(52116002)(6506007)(2616005)(6512007)(5660300002)(86362001)(4326008)(38100700002)(1076003)(38350700002)(7416002)(316002)(83380400001)(186003)(2906002)(110136005)(54906003)(6486002)(16526019)(26005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?wf/tLFUZ8IECaMNchEzq6ikeZPCoXVSce7cpTgRoTH1XX0sEjfmm68uXdXZ+?=
 =?us-ascii?Q?wQbQAn3lyefXZM0JNPZf92bcaG+xWUd8/J3LJf22GCy2HlmlkhQ0UD/nJ7Sh?=
 =?us-ascii?Q?7RsJBjud9cU+E+q87MHqu/uz4ihxBo16HNp00mafJYUf1bFG7sz947s/5D75?=
 =?us-ascii?Q?Mtqy5We5HY0UMV0KHSGKMR6zZgXkqcLgDdOsqPBNKQ9UEqzt3IThyW9gn6jv?=
 =?us-ascii?Q?hHfHF3vG1MLpIgWOKN5wcOKD6vVW6Mhxr7bSgQw6pGIENMQSjJIenN6/NNC3?=
 =?us-ascii?Q?MRk8X2t5quoH6i5zsggSrMPjNZWn8eCOaiKi1af/ftyBJnDC8eRQzNN1Vbca?=
 =?us-ascii?Q?bipICm8ordWPW9UTgD9Wac1h8PjyFOz4VRwGMdl/Xz1pdziK23Gh5opDAuDC?=
 =?us-ascii?Q?NFUdbg5/oOhcO1TLU+/iq9L0aITjAgLN+5mPTRzgbLBGigtgqxU6yOoYeHPh?=
 =?us-ascii?Q?TifejIcup8DTRwok9+HnDFcWSRj6U4zXoBvraAqXgKubBZvlRFYrJkGhJFPu?=
 =?us-ascii?Q?Ezl69MM9nEDmf3zmULm8Vbm1uRl/h6BAH5ZRTnzsmrdMtzQANLm3V15U6u2A?=
 =?us-ascii?Q?L1TF97kJKzjJzuyC/oyx4q3N9SmAoulRb40heQmCi5ZCFcXzlyNZMdJ/asrL?=
 =?us-ascii?Q?4v7zwqnH5tIElbxDrpY2se9H0y6xYD/BZ/UbWBbczch2yAJMWyge9jmtDuyp?=
 =?us-ascii?Q?gM15V/BY7tGfL0w7PrhiHxGoTkMxKWRDl0400s32bq3QfuoNEWboE+c9OT7Q?=
 =?us-ascii?Q?UI9ZyfslskUeAQhU3tM6sQwleFy2THIAhkDy2p7vK3hst9i2H4lAsrIylA8f?=
 =?us-ascii?Q?go7kTas9aV5yjfpamNpqT1GVWvTy3H6U+nEEKJ1Eb2JJmz+g+MCBbi5sxjet?=
 =?us-ascii?Q?E/5bocc9U+dUmQQ0+pmfOiofu4zSePO5hWqUor3mjQRSEfhDr3ZAUtrIUu9s?=
 =?us-ascii?Q?iAylBl0eueekLMpsHW2PZTSfNcAGZtl5Bblq/EF5G/78xtEtIi8Dw+HfheAI?=
 =?us-ascii?Q?bYgKkNje86rROOswDTKxUbDIvxYa/CG1rohrOI9OvEPQ5/OWKz4eBuczsWcX?=
 =?us-ascii?Q?YlvwUSGu1cDdIG6HTnYHhyonqQ9wdrgz1l4SKRXcHubK/nrgL6mUJlwMJ5c9?=
 =?us-ascii?Q?B7WHqBqDPdGQp4fQ2mCZxocD63hG/Rt01cfwVHXEeVDOdWPit6LGRTA0BSdi?=
 =?us-ascii?Q?YXMRFDdFIj8/XSEUXunEqUHYjcf2cJqH9J/9jD5erdx7ZzbiUDNTGg8iKIqF?=
 =?us-ascii?Q?rO3EhW+r7gVouUI20I5rJDZX9JR/oxEJdl/oxgCktmu5p4swoQzcgRg/lqh/?=
 =?us-ascii?Q?Fw4236bTgoE65Ve9K9vtaHv5?=
X-OriginatorOrg: os.amperecomputing.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3f34fae3-c945-4d1c-e4f8-08d91a9aca06
X-MS-Exchange-CrossTenant-AuthSource: MW2PR0102MB3482.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 May 2021 07:50:36.9439 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ls50jwrku7MN6VDAh2fBVqEr5u3Z0GVgx/IOzpQiv0IUP5IwjI6mmYyWv3//P7bjrnD/RpAknDDkCPOngNHJEtMkhX5oLsVV8k7wOliULsE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR01MB6743
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: amperecomputing.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.243.101 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.243.101 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1ljIQn-0006DY-W3
Subject: [Openipmi-developer] [PATCH v3 5/7] i2c: aspeed: Add
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
 Phong Vo <phong@os.amperecomputing.com>, openbmc@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Slave i2c device on AST2500 received a lot of slave irq while it is
busy processing the response. To handle this case, adds and exports
aspeed_set_slave_busy() for controller to temporary stop slave irq
while slave is handling the response, and re-enable them again when
the response is ready.

Signed-off-by: Quan Nguyen <quan@os.amperecomputing.com>
---
v3:
  + First introduce in v3 [Quan]

 drivers/i2c/busses/i2c-aspeed.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/drivers/i2c/busses/i2c-aspeed.c b/drivers/i2c/busses/i2c-aspeed.c
index b2e9c8f0ddf7..9926d04831a2 100644
--- a/drivers/i2c/busses/i2c-aspeed.c
+++ b/drivers/i2c/busses/i2c-aspeed.c
@@ -944,6 +944,26 @@ static int aspeed_i2c_init(struct aspeed_i2c_bus *bus,
 	return 0;
 }
 
+#if IS_ENABLED(CONFIG_I2C_SLAVE)
+void aspeed_set_slave_busy(struct i2c_adapter *adap, bool busy)
+{
+	struct aspeed_i2c_bus *bus = i2c_get_adapdata(adap);
+	unsigned long current_mask, flags;
+
+	spin_lock_irqsave(&bus->lock, flags);
+
+	current_mask = readl(bus->base + ASPEED_I2C_INTR_CTRL_REG);
+	if (busy)
+		current_mask &= ~(ASPEED_I2CD_INTR_RX_DONE | ASPEED_I2CD_INTR_SLAVE_MATCH);
+	else
+		current_mask |= ASPEED_I2CD_INTR_RX_DONE | ASPEED_I2CD_INTR_SLAVE_MATCH;
+	writel(current_mask, bus->base + ASPEED_I2C_INTR_CTRL_REG);
+
+	spin_unlock_irqrestore(&bus->lock, flags);
+}
+EXPORT_SYMBOL_GPL(aspeed_set_slave_busy);
+#endif
+
 static int aspeed_i2c_reset(struct aspeed_i2c_bus *bus)
 {
 	struct platform_device *pdev = to_platform_device(bus->dev);
-- 
2.28.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

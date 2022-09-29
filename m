Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D9485EF036
	for <lists+openipmi-developer@lfdr.de>; Thu, 29 Sep 2022 10:20:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1odoll-0002q0-QG;
	Thu, 29 Sep 2022 08:19:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <quan@os.amperecomputing.com>) id 1odolW-0002pZ-RQ
 for openipmi-developer@lists.sourceforge.net;
 Thu, 29 Sep 2022 08:19:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7QI35EmryoGoSqB1mpdelSOtphsBg4oGQO04/RFUkv0=; b=MDazmQjYyypTLVTlzjTMRP5nlc
 jI2GQq3zEfNSzc7SvHzBy553rKr4ATTcFaLWd40ihvoPrX8KtU21NuPaJBhB6hqlNmyBXUdt4tbtc
 mKJ+EVXl/+QAyicyNDdv8AqcOJ7j0lE+wHg6esRxPsLGqcz/LtBurk7+gVEPCOIhtV4w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7QI35EmryoGoSqB1mpdelSOtphsBg4oGQO04/RFUkv0=; b=iU4HR5yHMMKBuelc9vdkUgkUaL
 v5dFQb0sxGhrufSpOMiubEovNE9vNIC7ZCe+yuDStj9baOtr/3QWOXtHbtlpq0guliLKsKh2xb5uK
 WqYyj1HRepFsNMUkPlaQOaiEch7QrxJfDa9xDklYmPnlPGvoiZO/L+x/pMUZ9hPbLMB0=;
Received: from mail-bn8nam12on2102.outbound.protection.outlook.com
 ([40.107.237.102] helo=NAM12-BN8-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1odold-006OHZ-On for openipmi-developer@lists.sourceforge.net;
 Thu, 29 Sep 2022 08:19:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aojGLdVD/ySSx2Fw0FISos91TCDnz8TGjb39EuFH+h8EB9cDiX4dJVTLoIgpjYkeQ2rbtO4qU03wVOcWYRSyaIo0phk2GpnnQ4D5zuyxBDFLcKekXOlHtexduT+ouWgp73cToqVg8P7fgECoWeF4NKCyBRsfl1cELIeSVGVPZQZfGQ0Kf2BdoIxKwUdlXcrBwWh1BbdXj0U+RdoDoj/Mgu28XavzrzM7LOHJfrkJc+I3WlWeEjPlwX/YhCrwJwYs9JZg2uurASTiCycSdCLHf8MNLpwEhy3B0jlhLnH0rjEUA2AENg61sAuKxNB33KO/7T5A5OCCUYP6Egd1MSIz/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7QI35EmryoGoSqB1mpdelSOtphsBg4oGQO04/RFUkv0=;
 b=PE38Gsqlrr0eVK8j2dVLq12qCa4DoiebumoVFBin8ROX0mxB+MsWZsXFnGm//A2f+5yZlfKYPunKp7ANwNQYyAbo0z1y07dX43GH37uVy9gvt3rfk7kzgbLmLDrbvZQo0PDF1r8AOmhBMh2mm9KEBoAFbpmPYAv3xYHgSvqZyosxin+Jmg21VfPmIbnqwGqGhNdPHmEFNH5ud0M4fW8hyr/m9vwjYEx3jKdlC6VoTudISNGHk5GT+dfWPG1zRJiD9zd/X9nR5KtSejaUCW1ymclkm8jI5W9q1lhvZiqw8rQycTo/6bemrmPEhSE3sC6WUGrPANT2WHM5Ghgwd4lUFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=os.amperecomputing.com; dmarc=pass action=none
 header.from=os.amperecomputing.com; dkim=pass
 header.d=os.amperecomputing.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=os.amperecomputing.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7QI35EmryoGoSqB1mpdelSOtphsBg4oGQO04/RFUkv0=;
 b=tFV3nTanQNJDprCjark/w7oQPu9V/4dh73LeUs25985Jur4ulGgiuvE+bXzopbprTxcS/fPhjSHt4MKZllOzqQYEpdjvdydPfA+DEd+YMAdrXNdYsIbx87pLspema0OokXiksfDhgQCOPBwKkgrgf21VxJsxbewKjIfIzC6BSGk=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=os.amperecomputing.com;
Received: from SJ0PR01MB7282.prod.exchangelabs.com (2603:10b6:a03:3f2::24) by
 LV2PR01MB7885.prod.exchangelabs.com (2603:10b6:408:17f::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5676.15; Thu, 29 Sep 2022 08:04:08 +0000
Received: from SJ0PR01MB7282.prod.exchangelabs.com
 ([fe80::7d50:e907:8e2e:1ff0]) by SJ0PR01MB7282.prod.exchangelabs.com
 ([fe80::7d50:e907:8e2e:1ff0%3]) with mapi id 15.20.5676.017; Thu, 29 Sep 2022
 08:04:08 +0000
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
Date: Thu, 29 Sep 2022 15:03:26 +0700
Message-Id: <20220929080326.752907-4-quan@os.amperecomputing.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220929080326.752907-1-quan@os.amperecomputing.com>
References: <20220929080326.752907-1-quan@os.amperecomputing.com>
X-ClientProxiedBy: SI2P153CA0002.APCP153.PROD.OUTLOOK.COM
 (2603:1096:4:140::16) To SJ0PR01MB7282.prod.exchangelabs.com
 (2603:10b6:a03:3f2::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR01MB7282:EE_|LV2PR01MB7885:EE_
X-MS-Office365-Filtering-Correlation-Id: 8d3a2bbf-9b77-43a6-b866-08daa1f12f21
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: UW1JvqVEgtgZQPmksH8z/BjfdaN5QpQPdugsDmJsVi0Bdb1MCedABJBFwC5s/X3FlhcNHwpgORJN2FQvr/323qPb1xa0hwJwwvSsa7j8/iDEEhA43nineydNZ/2oh+ir/84zCbzuZ0CDP3mES4YtpL3IBtD5nXe+GjNbynx0Fq/FH2q4bkVMj9IigYKLQcYganN+p5+Jlo5cYfer/2taHRIKWohf5BEli4UVLuIdsHeHKVNUu5lnpEb3uA3oAznlZlz85uyKqGXk2qV4OWEZJmlkLolR+Ol4caLTmTsiun+U2hqn/dmpXLxedA9VGzG8p2a1kAA0eRiCVFAt3aXR07ildHJ+g4lMxIAbbit07WPm9cWZPaJWK/6PLA9OD4qbJvCeuG9FN5SvqvEX72egWf38CibwA5jDCuSqqRB2eKAJMpMhjU+QEY5rzFBr0QNMC4yUzj9uQH0TRntpFJzHi1OESdh5X3wCvkvATO6mRuAHdfrc7bNCmZimQJf33cMkl1tvUqjrtV/mRZ1eWp9DJAIKSZTDlx2H3W1Xalc210scryBWrUGhFdBmUb7GqeSfyR4Pgu2pw89aNCy2L1ZMXalPteqcEl2owcI9kuQyq/aDszyTEUlOyNxYg8v6Ol6dkpkiZqar+xeNodADdirNz9XCpNTK0Wl5ko+v+230uhF6d3iX3bQTNRVzKxbSUYOUJ+L6ny4oIwiAheVwQtMMi7tbQ7S8rsjz2UpSCawZMlgYx+syMenj1qHAxgwi5hh16CS7rB1jQNxNIj1MKkrtkxoaf4IEvpTEJ85zCYYWq00=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR01MB7282.prod.exchangelabs.com; PTR:; CAT:NONE;
 SFS:(13230022)(4636009)(366004)(346002)(376002)(136003)(39850400004)(396003)(451199015)(6666004)(107886003)(2906002)(8936002)(66476007)(26005)(6506007)(6512007)(66946007)(4326008)(86362001)(54906003)(7416002)(66556008)(5660300002)(38350700002)(38100700002)(110136005)(921005)(41300700001)(6486002)(316002)(478600001)(52116002)(8676002)(186003)(2616005)(1076003)(83380400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?I3xAM2ng10qs5iuCu8+l0sNkf265/sPTxKXGKS3p8Yh+SNr1I9PtkrQOT6Rx?=
 =?us-ascii?Q?CaE7/pkI6suONwY1zqOpKVSw8FztHlHEsr6qApQZkN1gSedEeaqYxgRbi1h8?=
 =?us-ascii?Q?TtGLA3W56M8U2Saire/TwioltqGFYcXQFjXe0AjFGuwUk2sdB5FLyS7QJYvJ?=
 =?us-ascii?Q?7Lj+8/VBnNMKpPsbXsyaufnoDSjvZBy43vFlYWpIB3g947y5yymP16QB9J9S?=
 =?us-ascii?Q?kmUGkWWI03wKRuXCTjqmWEArJ+PEeyszcckfXTcLpcS/Eqqr4FCzFFZyw3Vf?=
 =?us-ascii?Q?QomenKi5/A3rfs66FlZ3KfPDSBq5oTI1tx0kpy+LiyglntRDShQYfRwGEN2d?=
 =?us-ascii?Q?xcgWqYGgUxUsF850OQyiotm+H94HiImUpK0k7cJoP2a332TMy6xFlJpceUzn?=
 =?us-ascii?Q?Cd0X3nDN6xA3HPRgNXg3Nt2tqdMueW6sdtpQnol8gk9g5vI7HfUO/MdofXHc?=
 =?us-ascii?Q?ZMH6hBSgLHjnIsFDhtwANV69JiLWdQoy/FPOyYA7kIoA5KJwgkrJxHSQ4bty?=
 =?us-ascii?Q?vNBQxIkLYv7NxkTfcCksOGTWDmapTTkKugZMq27xx1b8GBG0B1XQJCMUoET7?=
 =?us-ascii?Q?GmOrLYKgGl00RF20kCUbzZzJonafMQwELpE/rhb9SUbwtX0g/I2slakd6ZGK?=
 =?us-ascii?Q?1xgmaXzLG3J/4lM62bQ7nuvtBh9c+pZ2m0+PwL1P8sH8zUYc2z0qiWqDgzDD?=
 =?us-ascii?Q?zyE84gL9iH1nNV0hUPbyqbyOJoddPuB6Mv3wW9fA0fVQd93EefhFirhVOPZL?=
 =?us-ascii?Q?3D6EVieQw3C9WAf1SVW1jtEyVE/j4btRN2eZRvx3RfxFzzH8+SC4GWQFa9bB?=
 =?us-ascii?Q?iCFAYvyjBo84woCY1lK7tt1lh/dNmYqRWAgi6617jy/msc89/rtqqE9tzHJO?=
 =?us-ascii?Q?qRULI1OnnkwdIVcusJ+8PDEm54uPkBIoadrGpzqbH/qRVgp49zg0mPeoU2k+?=
 =?us-ascii?Q?GeNHwpdDGxkzTmBwQqL7ZAgGWFUq4EZXBUcRtOoM2hNZL1omU+my5hmv1GUc?=
 =?us-ascii?Q?XaTzvVe1q5jF6kz+/ttgtFLHv4P0S6huSTpdtmDtdAwmb3ZfEv4lx8okUN49?=
 =?us-ascii?Q?MvFEwG5mCkGGrvgMDWVQ0u35ukeX0Y2aA8cvv1PdUYYTNuhod/IsPEkFRKRe?=
 =?us-ascii?Q?pv5dCEF6cZx11nxJA+QYselLENjiZ7RCnFaTAxgsvheBceVFUnMxZEj8Vfb9?=
 =?us-ascii?Q?nxfMHrNVTEqKOZkIPa/GScTcUwr0/ytvkig+0ytd01aNe26FnK2XdXhnjuLp?=
 =?us-ascii?Q?1sCdGfgPQxNHas/cfLRyGRDMcQelXYKsZ4q8i8zXrco9dcQxHtPAjprKgTDx?=
 =?us-ascii?Q?RcyuAwvMWKRh043udLNHh0rOHrY/f4N1/V92QRQNAaLHdXfrHaAzyKtqVWsg?=
 =?us-ascii?Q?E/f0iRcxAw1WunVRxz5VjW872haBm9ZTXsLdDGgIgVtl7u3A7jBhT0vHaCHi?=
 =?us-ascii?Q?nBWQmc618ov7+A1SsO1CfoapOuIq+EBvQyPd5UHb9Nik7vyDV9jbd4Jg4dP7?=
 =?us-ascii?Q?ktxcgkb/VYk7M0eCfuJD6weq90VpCJq88UTugp49FCOVMPZJr32ZL0VRU2VZ?=
 =?us-ascii?Q?+v6OPnCwQoi3NwUqVfUlggRRnRhkzr/CeqFlEVn0ZP/fYRhlwb7wRYlG2ewl?=
 =?us-ascii?Q?2n/gJExPPebE4Y0KT1mJyjg=3D?=
X-OriginatorOrg: os.amperecomputing.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d3a2bbf-9b77-43a6-b866-08daa1f12f21
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR01MB7282.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Sep 2022 08:04:07.9087 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lTYurY18aZlSlaf38HWKrI0i1TdHXImBAKW8mo14Vj5pFO87CUvgNw+ioUa+K26EQF7Aod7EPXON5MohbOCEReQNWmr24yl79h64pRfIoAs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR01MB7885
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
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.237.102 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.237.102 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1odold-006OHZ-On
Subject: [Openipmi-developer] [PATCH v9 3/3] i2c: aspeed: Assert NAK when
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
v9:
  + Update commit message and add comment to explain
    the effect of issuing RxCmdLast when Slave busy [Quan]

v7 -> v8:
  + None

v6:
  + New introduced in v6                            [Quan]

 drivers/i2c/busses/i2c-aspeed.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/i2c/busses/i2c-aspeed.c b/drivers/i2c/busses/i2c-aspeed.c
index 185dedfebbac..3d70f1ce6c6a 100644
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
+		 * Slave ACK's on this address phase already but as the backend driver insists it
+		 * is busy, turn on RxCmdLast for Slave to NACK on the next Rx byte.
+		 */
+		if (ret == -EBUSY)
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

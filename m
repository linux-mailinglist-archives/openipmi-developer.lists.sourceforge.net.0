Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E053F50AFB1
	for <lists+openipmi-developer@lfdr.de>; Fri, 22 Apr 2022 07:43:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nhm50-0002eK-Gn; Fri, 22 Apr 2022 05:43:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <quan@os.amperecomputing.com>) id 1nhm4z-0002eE-6b
 for openipmi-developer@lists.sourceforge.net; Fri, 22 Apr 2022 05:43:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4AB4z21GlH5BDnsO4LeD2v6rjcUQffsM9T/vlXad6F0=; b=RvQnwROKaBXZhGeAvLJexwFtG7
 kgUjT5ghb0nh0GbDiBENk1suJBuB7XU4AxGOr56lk84d/toMf1dgWDe5Bj8/MXqI8aoTWxJWqijqM
 /e8nMzgre3T8BK5hxRIVdBqV13msrYoc7dxBt2VPh6RUSFN0hsRrjjgteYtsvJb8Kd8A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4AB4z21GlH5BDnsO4LeD2v6rjcUQffsM9T/vlXad6F0=; b=fn+9DG8oyzyD95S+7O5g3iqhll
 TGXoaIJ7PRJ893WT0RW9lEWD2VCqw92e2oTlgICtoE8D7fgsY3QAvyHuCV9N9ISU6dBlLXhzFUawF
 EuiWYYM+8otW20sI0Ol94k8B1WRE+1b7Tx9Q/yxiksMEUBVZVuyCmkzMxYt/nyl87CfI=;
Received: from mail-mw2nam10on2101.outbound.protection.outlook.com
 ([40.107.94.101] helo=NAM10-MW2-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nhm4s-0005Be-Ri
 for openipmi-developer@lists.sourceforge.net; Fri, 22 Apr 2022 05:43:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ed/QCTJpAz3at2DSg6J3yAnqlB6ngWmun+ztXFgApwgToSigydjHZx3G5lLByVnxqandYskQIE65SSMYcMa24G1dyf2UVYDtek8b5G8XEDLKxQMM6TvIHPmt4R0xYhuhr78x+ir5MQ1ljl7EC/mYshNT9P63ZC1EJlxt4Art6ypAa1eFhv1xoabRF8U065r51t3q9KKXNrBAurW6tROQHwKCLNsndUr2pV+g0Q3Y6MScW9g+JCtIOeUFwKcmjhLxYs7xbRNy+eAyBnCiRLI0e93DQHiJjVkFsH/zui8goLQPPN04iRPQQjVEI0LPJllP1/hLwaJYn3gWCFZgAQW3UQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4AB4z21GlH5BDnsO4LeD2v6rjcUQffsM9T/vlXad6F0=;
 b=LebJD+XmLEzc0t4HOWrtE4ygtsroqANZcwrLjhfuzIaiLXzyVDVJ+QJx+oUc/XJCM7n18Lj/uRsJmCMHfPjrlsEW/g3eXztOcv/KczRqlqNntXAWqtUTl+WSD3kadMEfgWbSLzE2jx/jfoMW0UvQ870I3OjUohn/e2HeqUzBwEYO0u1I/BAlsCch/x06yJ8ZLcMrIaqVSGURg+nEhFZ0IvxZnmxeT/9GCLFvA8Tmg/8k2Fiz4E4sDFBcFIWXQGc/+TFDjCle0t+R2YAyQjOTtALeEAfEo9g8uhNWQmLd4dCAwwfEDZfkrd1VHJFB9JE+lPXru9xjOiGwbVJVABTN6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=os.amperecomputing.com; dmarc=pass action=none
 header.from=os.amperecomputing.com; dkim=pass
 header.d=os.amperecomputing.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=os.amperecomputing.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4AB4z21GlH5BDnsO4LeD2v6rjcUQffsM9T/vlXad6F0=;
 b=nmD2Ec5HyyON48DxrVpWYaMsigmiSn61rX6UuRDD8Qx6QjuiSWQEWDIb4VtnwgPutnI4TUhrcBMBT7gFrirhEFtWnR/+0IUU8I9e4W5sorEqDULkxpaoB3+oPcoiW9V/zL32J9rN+eAAiRvxBYw3FxML6Y6W2jkPg3kk39k7tfM=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=os.amperecomputing.com;
Received: from SJ0PR01MB7282.prod.exchangelabs.com (2603:10b6:a03:3f2::24) by
 BL0PR0102MB3587.prod.exchangelabs.com (2603:10b6:207:38::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5164.25; Fri, 22 Apr 2022 04:08:39 +0000
Received: from SJ0PR01MB7282.prod.exchangelabs.com
 ([fe80::319b:4612:e6f4:f22c]) by SJ0PR01MB7282.prod.exchangelabs.com
 ([fe80::319b:4612:e6f4:f22c%3]) with mapi id 15.20.5186.015; Fri, 22 Apr 2022
 04:08:39 +0000
To: Corey Minyard <minyard@acm.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 Brendan Higgins <brendanhiggins@google.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Wolfram Sang <wsa@kernel.org>, openipmi-developer@lists.sourceforge.net,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-i2c@vger.kernel.org, openbmc@lists.ozlabs.org
Date: Fri, 22 Apr 2022 11:08:03 +0700
Message-Id: <20220422040803.2524940-4-quan@os.amperecomputing.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220422040803.2524940-1-quan@os.amperecomputing.com>
References: <20220422040803.2524940-1-quan@os.amperecomputing.com>
X-ClientProxiedBy: SI2PR04CA0005.apcprd04.prod.outlook.com
 (2603:1096:4:197::16) To SJ0PR01MB7282.prod.exchangelabs.com
 (2603:10b6:a03:3f2::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a60d5fe5-25f4-49dc-418c-08da2415c7cd
X-MS-TrafficTypeDiagnostic: BL0PR0102MB3587:EE_
X-Microsoft-Antispam-PRVS: <BL0PR0102MB3587B463C975082B25CE4419F2F79@BL0PR0102MB3587.prod.exchangelabs.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: NgOVPwN+GX4MSQ6RCE7mAdfhWIaixBiaOfOCfaJNheMs0GIDdTt6BdsvfeIxL7WaX5KViA5DlY6axGEwf/6Fos2Ke8uNLu6Igg0hXWcYWMS3hlbo2dDjTgQIl0NwcqblMJjORqCPJ/Ux9u2SUg6xzpNTHJkysDUG9B5XRSQgb1V+DAUBWgNVnSDNFGYa5DPyvIMkiaw4fqqZrjEnxROOB0VGopzqBPU77HkZQRdBOctSSIB7M39BPo5sQJODxciNe3rsNyL/HUDOCRbay0D9Pnmc/WVtI3X8oTgDLIxA+CWA5cGb0brdJ9Em4pL3x4jKffI9nXYi+Hv8DN2f2NiLT2iasnXv78WAUiY+eRQqJUkt6gQ70FE8newFD841m24eYl4WzpyyjcgF8kR0+24gv/isvYqCVLO4/ade5H/sfS81K+QPtS+t9IdeGZl1ec6wGjoGP/ptRS/vt4ZSvkvuAc+PUfRhN16QOF3QW+YxrDPaWK39acdmKmlwpdFEgD1AEwASuwpqAObPIdQRE1t/qjojTKpNiQbvGgFUeS/E6V1qEkuJ968GrXD7YEUCNx/HzA09TbAmj/Pwbgbi2VjGYu5nlNIFHuBNGeYwEoWOl4I6Ufgiyjd32YtVuhl/T6WEk/gJaH/+lPQ53DU4cFDa8tgY4pK0E5CXFObRXD7I3SICOzIsVr1lb+MaSZwhNBGae+0okpz7n6BjFnwFPWZvmv2IEOSg3oKrE4xm1Vz3MWA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR01MB7282.prod.exchangelabs.com; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(366004)(316002)(186003)(4326008)(921005)(38100700002)(54906003)(66946007)(7416002)(86362001)(110136005)(8676002)(6486002)(38350700002)(8936002)(83380400001)(52116002)(2906002)(66476007)(66556008)(5660300002)(508600001)(1076003)(6512007)(6506007)(2616005)(26005)(6666004)(107886003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?KpbXOBUBjGfvhS9V6fFYD48P34937XU/+ZyEYrfIp5Tj59338/wiUQcMuC8o?=
 =?us-ascii?Q?nhRRZk9gOLNaYexvjSbGmR7QRRxetI3MdMcux6C0yhe0SymHBRsEgOIFnP55?=
 =?us-ascii?Q?9XjOOCQtGzr+hvvxjAJ0CXtosomZVm/iHVOMpF3MgljjQpbOGZEHgmF9KJOc?=
 =?us-ascii?Q?qHKKLWTsfflIEUcFOoYWayWTULfeeEHOZF3pAym6HljWGtuwjsBOJm/Y+woV?=
 =?us-ascii?Q?iLbMJXhTTslPqPE+0ytq5KO3REwY92f5KivHvZPJ27Sg0mE0T71xpjWuNpAu?=
 =?us-ascii?Q?W6BIjxatlEzp2hNp63qiWFCCxrHlT9Ychzrm+OcoKEiJosYGNOW1qYKXJZIw?=
 =?us-ascii?Q?p61F77CUmX3hj3Rpo8SAUimtmWf4bByLt9HBcpzRs/+mBJ3tdqIdSgcgUzma?=
 =?us-ascii?Q?nqjqQE5edFc1hG6mAAxLzYTNKvvNxMyqRLPYJQsyPutUph0z0LOfOs4SVltH?=
 =?us-ascii?Q?RdGkAggSM3mtFi0lxoalbCxamxpPljy17a7M2urJjYcMdES8H5NE+4hkZGOI?=
 =?us-ascii?Q?bWfMXOZ43vypnfKZUsbmhJwiRFsKnadiSQbDwWR8hG7pGrAkzxZi/jQxTp16?=
 =?us-ascii?Q?hhbIo+7OqDPzd8jxEUlQgmRuxQ4hMxNqj+zeO78B3C80rddtkyVcMh8ii14D?=
 =?us-ascii?Q?ZG1SiH7QbohhVFJoR165QD4QPplejyGL6kr+oKvTFrynKGHv7f64JPC97+ni?=
 =?us-ascii?Q?Kb0uOMB/8kZ0zcwTe3LUace1amcSvR9obIZPesERNabhX9WIQQLxVhgBZLiT?=
 =?us-ascii?Q?bprj3+R9KkIvGqg01+mrn7vFM0Omt7+5eN2mvEdPfl0XkIa7BwQmhCmrL7Q5?=
 =?us-ascii?Q?aT/zWT2YfvYJ4S7rzao+3a3egWhzU+3ZqsQPFnpuvvATe8bE6acbk6dDhPJj?=
 =?us-ascii?Q?nchyQk8W1mNzQAa298BA6DMg1a15ByP5wih3tCv2ZiPfdbpct92uC8TNoZcH?=
 =?us-ascii?Q?iqzzkfatQqLrbpWPnaGy2v0o3Izpohr54dO+CgjYa1blUNeZP7PnzlcD8Yg+?=
 =?us-ascii?Q?/5M2Xr7CZJlWfXqy2db6eAzlz1tLRBpZ8gFIu5SKoVlM+yr+8+pc4lGXuw92?=
 =?us-ascii?Q?sOwzP1yp22O09wFVVoNsDpAm8cpUZMy/0JdfFc3WTzWwCZPu9oJnySYz4A3a?=
 =?us-ascii?Q?p+05jKxZrZ8yIpap+In3NgzJV4kcpB8dfm98xezhxOerD+82rgrGv04ISwt2?=
 =?us-ascii?Q?YAEmGnuRcL8yMcnYkSMbxMsFmQX/6njOq/8BXt9Jg37nIcdbnaeKNgDJoOHA?=
 =?us-ascii?Q?ClYuOWZdnXqWbqfjfwpRys5SccL8ggDm8SQtvBQsyadRpFpV8VXBpuK1WJiz?=
 =?us-ascii?Q?GHFTc82YAt2WKUDqwZUt1fEpLRKkYVDJTNrdIMWFz34U3m+fuaFe2p+ZqJBQ?=
 =?us-ascii?Q?/CA3bc4B1DmDKVdL+NIIVbzOyOAeiEAkznY0P+9AuUfgi4tTIpu+4ubjZgpL?=
 =?us-ascii?Q?Plo83PtJVBcUBlA9WlN8qpTXMfYV0XgUxR6zslo5IyZPa99B3STvlE0EeSoR?=
 =?us-ascii?Q?jUlGDlpg9InFjkhV18Y4y/Q1+WpFHFWVfl4mcHHYIz3daKJpR+Ik0y/7hds/?=
 =?us-ascii?Q?BOo+/6r+1px4L4NzReN2v1szMXA0R6g8uJlDd723HFqz9CFFZUpwwzuGAJXY?=
 =?us-ascii?Q?VezJrdxY+3b359RHbawJnJ49yld+i9aVIvkKpe+ztiEqS1lSvP8xiTVTR6l4?=
 =?us-ascii?Q?wu4f7viEWhklTa8Xs0za9XREof/8jyCTgCi8jWJz0EeOQyU1SdrnH2u8Yp1+?=
 =?us-ascii?Q?SPGI4JC9TWJ2yL51YudshGX1g5NG8DXfsyVqOJSpX+A1aVVwBmFH?=
X-OriginatorOrg: os.amperecomputing.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a60d5fe5-25f4-49dc-418c-08da2415c7cd
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR01MB7282.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Apr 2022 04:08:39.6532 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ndM1NHlCx66lE1qKY0ozIaQaKWFIn7Sr5LNHBC5+f4apwk1DTXYx30MdmjQ9ju0FOJa0iPqsk0IB15ny7VchImhoRVoYqv6ITrbk5SPaCpE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR0102MB3587
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  When processing I2C_SLAVE_WRITE_REQUESTED event, if slave
 returns -EBUSY, i2c controller should issue RxCmdLast command to assert NAK
 on the bus. Signed-off-by: Quan Nguyen <quan@os.amperecomputing.com> ---
 v7: + None 
 Content analysis details:   (-0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.94.101 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.94.101 listed in list.dnswl.org]
X-Headers-End: 1nhm4s-0005Be-Ri
Subject: [Openipmi-developer] [PATCH v7 3/3] i2c: aspeed: Assert NAK when
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
Cc: Open Source Submission <patches@amperecomputing.com>,
 "Thang Q . Nguyen" <thang@os.amperecomputing.com>,
 Phong Vo <phong@os.amperecomputing.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

When processing I2C_SLAVE_WRITE_REQUESTED event, if slave returns
-EBUSY, i2c controller should issue RxCmdLast command to assert NAK
on the bus.

Signed-off-by: Quan Nguyen <quan@os.amperecomputing.com>
---
v7:
  + None

v6:
  + New introduced in v6                      [Quan]

 drivers/i2c/busses/i2c-aspeed.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/i2c/busses/i2c-aspeed.c b/drivers/i2c/busses/i2c-aspeed.c
index 771e53d3d197..ebc2b92656c8 100644
--- a/drivers/i2c/busses/i2c-aspeed.c
+++ b/drivers/i2c/busses/i2c-aspeed.c
@@ -244,6 +244,7 @@ static u32 aspeed_i2c_slave_irq(struct aspeed_i2c_bus *bus, u32 irq_status)
 	u32 command, irq_handled = 0;
 	struct i2c_client *slave = bus->slave;
 	u8 value;
+	int ret;
 
 	if (!slave)
 		return 0;
@@ -311,7 +312,9 @@ static u32 aspeed_i2c_slave_irq(struct aspeed_i2c_bus *bus, u32 irq_status)
 		break;
 	case ASPEED_I2C_SLAVE_WRITE_REQUESTED:
 		bus->slave_state = ASPEED_I2C_SLAVE_WRITE_RECEIVED;
-		i2c_slave_event(slave, I2C_SLAVE_WRITE_REQUESTED, &value);
+		ret = i2c_slave_event(slave, I2C_SLAVE_WRITE_REQUESTED, &value);
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

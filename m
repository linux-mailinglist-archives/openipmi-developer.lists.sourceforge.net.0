Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 392FE7E038E
	for <lists+openipmi-developer@lfdr.de>; Fri,  3 Nov 2023 14:14:02 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qytzo-0001hY-Ux;
	Fri, 03 Nov 2023 13:13:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andrew@codeconstruct.com.au>) id 1qynlY-0005lo-Eg
 for openipmi-developer@lists.sourceforge.net;
 Fri, 03 Nov 2023 06:34:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AMOQEb03XmNyI60tnL3U2zDrGzgwc0hBeKG41n8Z2ko=; b=K9OdQyWJ4VrsjE7VIjg0aA7Y+E
 uFEDY7qVN2JRyYy8idKDVf7/MmyTFma5NnaJ+oumeQ3ftiUmsZzBjXGSgcnsjzTCo7+DE9q4BBR5T
 4mCM3GB4ChQptWaWQ5Nd9PfjINah9CghLYYM3dzUyCeT7dwUugJk82nN139PTR2rhKV0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=AMOQEb03XmNyI60tnL3U2zDrGzgwc0hBeKG41n8Z2ko=; b=G0een6N8icGfabyfiUPOQJKGJL
 i6xOr5BLSZiK8+BARIwIc3m2rkgMBFNO+WYN5bySt3TquPm40HNvaqOLlGgAFdEWQPnYRYLCKQaEQ
 hWgRd1BY+vzATlwIzLs0cRh2NoCJIoGIeH9Z26q20LG7fJRzJ4eXGIp1fnT8F5WaYVl8=;
Received: from pi.codeconstruct.com.au ([203.29.241.158]
 helo=codeconstruct.com.au)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qynlT-001qVP-F6 for openipmi-developer@lists.sourceforge.net;
 Fri, 03 Nov 2023 06:34:48 +0000
Received: from localhost.localdomain
 (ppp14-2-79-67.adl-apt-pir-bras31.tpg.internode.on.net [14.2.79.67])
 by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 2EEB6201BD;
 Fri,  3 Nov 2023 14:15:38 +0800 (AWST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=codeconstruct.com.au; s=2022a; t=1698992138;
 bh=AMOQEb03XmNyI60tnL3U2zDrGzgwc0hBeKG41n8Z2ko=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=jtjV3TZLPzvN1w4uR+fgbdz1AEMsgGnTq4P6RHyjkA4Zt4Y8ax1EROo73dfq2HmCn
 6km6mjpDeLUeQkt4Umlt9SO1SEvc6KeAVIZ55upcRfl+Q2MkNozRkMn9yKVbq0djBi
 wUmkcYb+bxTqNFnlLngWXRB0qVR2Ym0rwoQsPtPvW01ucSshJZdJx3qokNg3XkLSo9
 F6FNbXzsO3dVuBuw+jiJCk6s+Hh+evqDvAF3mVfUT26mYeMyFp/Cu1IcHbsF3ikuYT
 JeVqO5FI3+7FoQlAZuoQZ20pbzv+DS8V0IFwoJXgPY2JP2sLVqbevUSE0u3BTLCsEY
 OrMUwmbzBIE8A==
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: minyard@acm.org,
	openipmi-developer@lists.sourceforge.net
Date: Fri,  3 Nov 2023 16:45:13 +1030
Message-Id: <20231103061522.1268637-2-andrew@codeconstruct.com.au>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231103061522.1268637-1-andrew@codeconstruct.com.au>
References: <20231103061522.1268637-1-andrew@codeconstruct.com.au>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  KCS devices are often used for IPMI,
 but they're not constrained
 to it. Update the subsystem module description to reflect its more general
 capabilities. Signed-off-by: Andrew Jeffery <andrew@codeconstruct.com.au>
 --- drivers/char/ipmi/kcs_bmc.c | 2 +- 1 file changed, 1 insertion(+), 1
 deletion(-) 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1qynlT-001qVP-F6
X-Mailman-Approved-At: Fri, 03 Nov 2023 13:13:55 +0000
Subject: [Openipmi-developer] [PATCH 01/10] ipmi: kcs_bmc: Update module
 description
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
Cc: jk@codeconstruct.com.au, aladyshev22@gmail.com,
 linux-kernel@vger.kernel.org, Jonathan.Cameron@Huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

KCS devices are often used for IPMI, but they're not constrained to it.
Update the subsystem module description to reflect its more general
capabilities.

Signed-off-by: Andrew Jeffery <andrew@codeconstruct.com.au>
---
 drivers/char/ipmi/kcs_bmc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/char/ipmi/kcs_bmc.c b/drivers/char/ipmi/kcs_bmc.c
index 8b1161d5194a..a429d9f8a7bf 100644
--- a/drivers/char/ipmi/kcs_bmc.c
+++ b/drivers/char/ipmi/kcs_bmc.c
@@ -187,4 +187,4 @@ EXPORT_SYMBOL(kcs_bmc_update_event_mask);
 MODULE_LICENSE("GPL v2");
 MODULE_AUTHOR("Haiyue Wang <haiyue.wang@linux.intel.com>");
 MODULE_AUTHOR("Andrew Jeffery <andrew@aj.id.au>");
-MODULE_DESCRIPTION("KCS BMC to handle the IPMI request from system software");
+MODULE_DESCRIPTION("Subsystem for BMCs to communicate via KCS devices");
-- 
2.39.2



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

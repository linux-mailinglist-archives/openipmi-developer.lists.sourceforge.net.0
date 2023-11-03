Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 88E627E0391
	for <lists+openipmi-developer@lfdr.de>; Fri,  3 Nov 2023 14:14:02 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qytzo-0001hQ-JB;
	Fri, 03 Nov 2023 13:13:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andrew@codeconstruct.com.au>) id 1qynlY-0006uv-ES
 for openipmi-developer@lists.sourceforge.net;
 Fri, 03 Nov 2023 06:34:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UrTbHIBuDGRrYkDPZsK7lRpnYMK3E56TRQ6kVp/EyZE=; b=L7XniMIOWLnMmtPjvB9LI3+ihV
 +n3e5mRHI5qeq2PzQy9AhRjDfXK4qwfjq+STNutPnZj12Ag9ojhWCmMQlN4yY72CcMnl9PVXP+BoR
 gsEteZKmZi+SmLdzLk2ASepK2T7I2GCE+ETonQ2/U3WoyKLP8eYMprlAFmbCb0YYbJXE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UrTbHIBuDGRrYkDPZsK7lRpnYMK3E56TRQ6kVp/EyZE=; b=Vos3AXdbVU0i2RlonEIrJsNUOE
 CIMotoS80+ajUB07c7Et5Hm+a8plPuk20uYcr43DlW4k8aH23U+j4EgjXmGyaqVeMxD+39vxYgn4B
 RbWfKz2wxfVwa8l7BFceUvoT4rPtsJzSrVOTjh4m7YJXtMUQofqQh0jpKSqWNQR4yzRc=;
Received: from pi.codeconstruct.com.au ([203.29.241.158]
 helo=codeconstruct.com.au)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qynlT-001qVO-E8 for openipmi-developer@lists.sourceforge.net;
 Fri, 03 Nov 2023 06:34:48 +0000
Received: from localhost.localdomain
 (ppp14-2-79-67.adl-apt-pir-bras31.tpg.internode.on.net [14.2.79.67])
 by mail.codeconstruct.com.au (Postfix) with ESMTPSA id E281B201BF;
 Fri,  3 Nov 2023 14:15:38 +0800 (AWST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=codeconstruct.com.au; s=2022a; t=1698992139;
 bh=UrTbHIBuDGRrYkDPZsK7lRpnYMK3E56TRQ6kVp/EyZE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=JMtdd0T0P2ikWmfihcJb7TZYWjGjos/oKFYsVKErP6oYr9ryUwZBj1FmAHMZvOg5K
 /lLCvJwADNnbA6Qvi7Ml4lSiHyJqIHKVL8GjPW6qBdkmSyz7ws6OODms3Bugi9c9bd
 EvUjv8nvKmBnxP8z6Jg7vqcdPkVsSUTF2di+420m3rCNJX4ycft1f7Yy0xqwDRfrII
 EY//3q5nRw+uu3Hi36DTDKhmGKQ9gdwsA2jef7pJy159m02X8/tE+4W4C7cDcdrvb7
 gcrVKBHGx4HYZULDZfTGT1BzFc3h5NKGyyvPwUm8v2o3ykpdtz2fehzJ1sKQ7Ri9rb
 a/G36x83DzgPA==
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: minyard@acm.org,
	openipmi-developer@lists.sourceforge.net
Date: Fri,  3 Nov 2023 16:45:14 +1030
Message-Id: <20231103061522.1268637-3-andrew@codeconstruct.com.au>
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
 Content preview: struct kcs_bmc_device defines a spinlock member but the
 header
 in which it is defined failed to include the spinlock header. In the spirit
 of include-what-you-use, do what's necessary. Signed-off-by: Andrew Jeffery
 <andrew@codeconstruct.com.au> --- drivers/char/ipmi/kcs_bmc.h | 1 + 1 file
 changed, 1 insertion(+) 
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
X-Headers-End: 1qynlT-001qVO-E8
X-Mailman-Approved-At: Fri, 03 Nov 2023 13:13:54 +0000
Subject: [Openipmi-developer] [PATCH 02/10] ipmi: kcs_bmc: Include spinlock.h
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

struct kcs_bmc_device defines a spinlock member but the header in which
it is defined failed to include the spinlock header. In the spirit of
include-what-you-use, do what's necessary.

Signed-off-by: Andrew Jeffery <andrew@codeconstruct.com.au>
---
 drivers/char/ipmi/kcs_bmc.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/char/ipmi/kcs_bmc.h b/drivers/char/ipmi/kcs_bmc.h
index fa408b802c79..880d835fb90c 100644
--- a/drivers/char/ipmi/kcs_bmc.h
+++ b/drivers/char/ipmi/kcs_bmc.h
@@ -7,6 +7,7 @@
 #define __KCS_BMC_H__
 
 #include <linux/list.h>
+#include <linux/spinlock.h>
 
 #define KCS_BMC_EVENT_TYPE_OBE	BIT(0)
 #define KCS_BMC_EVENT_TYPE_IBF	BIT(1)
-- 
2.39.2



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 664FC42C381
	for <lists+openipmi-developer@lfdr.de>; Wed, 13 Oct 2021 16:37:27 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mafNj-0002v1-Qm; Wed, 13 Oct 2021 14:37:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <arnd@kernel.org>) id 1mafNh-0002ut-TQ
 for openipmi-developer@lists.sourceforge.net; Wed, 13 Oct 2021 14:37:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kJlNGQp1x0AJcEpqMXbDrkirvdCb1s1Od6DDv54dtuc=; b=cPEKOCh0J1+Cifob88f28eH8lC
 hwB1GHoT5UdExqKfPwSbvXcyU3ktUZ98TJ0s54GWe7WbDEn/gFaNqcEguFVq1A6vyan37IFgAyh51
 cx5kfNTVvwbor8zmQUcfVlb/1ofPtKnIquri3YvHdnwsR451uGyOH/Kov3CIfXq/Yg3k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=kJlNGQp1x0AJcEpqMXbDrkirvdCb1s1Od6DDv54dtuc=; b=M
 hgGNR2sCYsLKt5lhOjhH86ZAvaWjtUFHrE56lM0LY/MORtewEXafob3CJ/dXDkZ9rbkXnW/o7SEnL
 aXIfGl3svpW5bxIQccnjixaoBCtD5riMd26ebRdVSyBLqT9Be0ohmnU7pkQJXEIKbSHwyTLWY2wWA
 xRJGomQpsdmXx3nc=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mafNg-0006Mn-7s
 for openipmi-developer@lists.sourceforge.net; Wed, 13 Oct 2021 14:37:21 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7362960C40;
 Wed, 13 Oct 2021 14:37:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1634135834;
 bh=62764QpdtQPwnbA7EbX2a/yKmFZtb1uxpoIAqRloIr8=;
 h=From:To:Cc:Subject:Date:From;
 b=qOqh/1i78uqaymOnML9xwizvXUJxIXeaLgGqrwan2Dxe/J6B1Rs41u9sxkD76vAbB
 dR3AqcPO8huctVvn97cdBcRmfAH7LyNltiLyLia0zmnMHGzOWfgQbdaoaREODcO4qa
 rxY2FedUT+ioamWVDONgpA6YMccK4X8zWwCyJyxCnwEoaffV2fNl+g8MiZdH4u17pc
 vtdJnlxB4ylRwwsEXXHPETRkIIVhjjTtD8UzY6MM8e184k7iQn+6bTu7Yd0QjGl7Yi
 iXtlZflKavDt32aGoOCja8eA6zlT3MUrHGbn52HXvOW5JzR6otcgtpXY2eQ+2JogS2
 ZfLO6+KOthZAQ==
From: Arnd Bergmann <arnd@kernel.org>
To: Corey Minyard <minyard@acm.org>,
 Andrew Manley <andrew.manley@sealingtech.com>
Date: Wed, 13 Oct 2021 16:36:53 +0200
Message-Id: <20211013143710.2077272-1-arnd@kernel.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Arnd Bergmann <arnd@arndb.de> When CONFIG_I2C is a
 loadable module,
 the slave interface is not available to built-in drivers: x86_64-linux-ld:
 drivers/char/ipmi/ipmi_ipmb.o: in function `ipmi_ipmb_remove':
 ipmi_ipmb.c:(.text+0x37):
 undefined reference to `i2c_slave_unregister' x86_64-linux-ld:
 drivers/char/ipmi/ipmi_ipmb.o: [...] 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mafNg-0006Mn-7s
Subject: [Openipmi-developer] [PATCH] ipmi: ipmb: add CONFIG_I2C dependency
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
Cc: Andrew Jeffery <andrew@aj.id.au>, openipmi-developer@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Zev Weiss <zweiss@equinix.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

From: Arnd Bergmann <arnd@arndb.de>

When CONFIG_I2C is a loadable module, the slave interface is not
available to built-in drivers:

x86_64-linux-ld: drivers/char/ipmi/ipmi_ipmb.o: in function `ipmi_ipmb_remove':
ipmi_ipmb.c:(.text+0x37): undefined reference to `i2c_slave_unregister'
x86_64-linux-ld: drivers/char/ipmi/ipmi_ipmb.o: in function `ipmi_ipmb_thread':
ipmi_ipmb.c:(.text+0x284): undefined reference to `i2c_transfer'

Add another dependency to the ipmb backend to avoid this.

Fixes: 63c4eb347164 ("ipmi:ipmb: Add initial support for IPMI over IPMB")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/char/ipmi/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/char/ipmi/Kconfig b/drivers/char/ipmi/Kconfig
index ace882ed3d55..b061e6b513ed 100644
--- a/drivers/char/ipmi/Kconfig
+++ b/drivers/char/ipmi/Kconfig
@@ -77,7 +77,7 @@ config IPMI_SSIF
 
 config IPMI_IPMB
 	tristate 'IPMI IPMB interface'
-	depends on I2C_SLAVE
+	depends on I2C && I2C_SLAVE
 	help
 	  Provides a driver for a system running right on the IPMB bus.
 	  It supports normal system interface messages to a BMC on the IPMB
-- 
2.29.2



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

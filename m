Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 09C4F6A2E72
	for <lists+openipmi-developer@lfdr.de>; Sun, 26 Feb 2023 06:40:31 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1pW9ll-00054Y-8t;
	Sun, 26 Feb 2023 05:40:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <rdunlap@infradead.org>) id 1pW9li-00054R-G1
 for openipmi-developer@lists.sourceforge.net;
 Sun, 26 Feb 2023 05:40:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AyoTZxblYHrDgUuDfRxaCtNtUrEUy/+HCnPw8W0zpKM=; b=Hh6vbh0cqLW3Kyix/LPg4hLZWs
 M4p/6EanR8pT5YIf0RtjdVEfseSalSt9W9/h5pMc2W67UDI0Tk/9vWtS4LST7ZZXIsjUPwnqjFTwD
 Hjp2+qbyVcbAYd5/D5BYtKk39lAv8nIpelrKM8rTwhCtR4MpFc39xKEwjPV4LxI5MEFo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=AyoTZxblYHrDgUuDfRxaCtNtUrEUy/+HCnPw8W0zpKM=; b=aLkFwIs7W2f2CjxldzUGtsItXo
 S4oAg+FoIJwwbaKu1XePPuoDQ1hJUbiiK2aFmtLgSAzUv5hjBgyTnPxPC2AyXwvOhc60rKpfrrt4Y
 iaMw/7QEkszrqzQkJZSSsHq0ikgcetlOhHATwCznhZWKrRiRUHfhFWJGM660Y2UVwn+8=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pW9le-000V4v-8C for openipmi-developer@lists.sourceforge.net;
 Sun, 26 Feb 2023 05:40:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=AyoTZxblYHrDgUuDfRxaCtNtUrEUy/+HCnPw8W0zpKM=; b=vE34UtPha3vYcnY3CA1tx0eYDv
 n5+ZoUMoM6RFCuvENArB8yc9DIMT16fw+tSYZXAiWj1fA3D8ax7rXYNf5JYgfIB/YUQ9COkgHC8fL
 D7Zn3Qj2Qzg1sTL2ybUR4J4lDFS9LUprVbfxWKgURB8slpOt7OeittRhl5gPi46p1CGdTxgpPen/R
 pykahEiooe9Gcp+Gp/o/ASPVPptdRQzhM5li4XeEutcdEg7cS+Opmi9546ZCBAoBHeY48PvDqqz8g
 M7kn8FEuRWX2UhxnFgjCD8RPWXbAmr5IycK2as91NO5EzsI9qPoMKjXmDD/dcLemmrAYWBNtuPHK7
 x/lzHb8g==;
Received: from [2601:1c2:980:9ec0::df2f] (helo=bombadil.infradead.org)
 by bombadil.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1pW9lL-006qYL-37; Sun, 26 Feb 2023 05:39:55 +0000
From: Randy Dunlap <rdunlap@infradead.org>
To: linux-kernel@vger.kernel.org
Date: Sat, 25 Feb 2023 21:39:46 -0800
Message-Id: <20230226053953.4681-2-rdunlap@infradead.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230226053953.4681-1-rdunlap@infradead.org>
References: <20230226053953.4681-1-rdunlap@infradead.org>
MIME-Version: 1.0
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  REGMAP is a hidden (not user visible) symbol. Users cannot
 set it directly thru "make *config", so drivers should select it instead
 of depending on it if they need it. Consistently using "select" or "depends
 on" can also help reduce Kconfig circular dependency issues. 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.137.202.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1pW9le-000V4v-8C
Subject: [Openipmi-developer] [PATCH 1/8] ipmi: ASPEED_BT_IPMI_BMC: select
 REGMAP_MMIO instead of depending on it
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
Cc: Corey Minyard <minyard@acm.org>, Arnd Bergmann <arnd@arndb.de>,
 Andrew Jeffery <andrew@aj.id.au>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Randy Dunlap <rdunlap@infradead.org>, openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

REGMAP is a hidden (not user visible) symbol. Users cannot set it
directly thru "make *config", so drivers should select it instead of
depending on it if they need it.

Consistently using "select" or "depends on" can also help reduce
Kconfig circular dependency issues.

Therefore, change the use of "depends on REGMAP_MMIO" to
"select REGMAP_MMIO", which will also set REGMAP.

Fixes: eb994594bc22 ("ipmi: bt-bmc: Use a regmap for register access")
Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
Cc: Andrew Jeffery <andrew@aj.id.au>
Cc: Corey Minyard <minyard@acm.org>
Cc: openipmi-developer@lists.sourceforge.net
Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/char/ipmi/Kconfig |    3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff -- a/drivers/char/ipmi/Kconfig b/drivers/char/ipmi/Kconfig
--- a/drivers/char/ipmi/Kconfig
+++ b/drivers/char/ipmi/Kconfig
@@ -162,7 +162,8 @@ config IPMI_KCS_BMC_SERIO
 
 config ASPEED_BT_IPMI_BMC
 	depends on ARCH_ASPEED || COMPILE_TEST
-	depends on REGMAP && REGMAP_MMIO && MFD_SYSCON
+	depends on MFD_SYSCON
+	select REGMAP_MMIO
 	tristate "BT IPMI bmc driver"
 	help
 	  Provides a driver for the BT (Block Transfer) IPMI interface


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

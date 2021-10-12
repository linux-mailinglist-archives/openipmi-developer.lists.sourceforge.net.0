Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DE4042AE1B
	for <lists+openipmi-developer@lfdr.de>; Tue, 12 Oct 2021 22:44:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1maOdV-0004Ta-8m; Tue, 12 Oct 2021 20:44:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <rdunlap@infradead.org>) id 1maOdT-0004TT-6h
 for openipmi-developer@lists.sourceforge.net; Tue, 12 Oct 2021 20:44:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sKGTat30RNCy2/FTRskvWCn5egJkoLenpbku9vap1/U=; b=H+s5Zc5GoTr6h+7/za9KtZSN+M
 ZdnmOb5TBHPPKTAdTjArSMl8IFgjCu4c3/h85V50cHNjslb/s/yw6UWlX2jAUz3SQU8sRrzBb0QDQ
 FGruJ5hErBE1RLb3SGAamsqEZSHO0ZWjgNpvi1eqc1Ddn6mrmgaBxPZBozm9pXmriMJk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=sKGTat30RNCy2/FTRskvWCn5egJkoLenpbku9vap1/U=; b=P
 lXtekQlPOZvaQ3gMaDhenMCCNgLjPVW36Mwqr7zd3ZTyE4/cemewwp8jQ1FnOxwFoMC3QprWbMK1G
 CUox2Am+/8adSi721VEI30UPIkX4TTXypupV7pm4Cr5sRF4plQszU4pCIxQU6XrdoZ1x3sawaDCjC
 b1+VzB4Y0dwQ+n4A=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1maOdP-006F1j-Pz
 for openipmi-developer@lists.sourceforge.net; Tue, 12 Oct 2021 20:44:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=sKGTat30RNCy2/FTRskvWCn5egJkoLenpbku9vap1/U=; b=YK8/Tw+cplklLXX9Rq2G0wY+87
 oCnHKEyqtemkSgkAY2l6CMlou7JN2iYohsDoaCzWLtycs2YWInmIokYOJcD5mVIofVKlaiKprezDI
 5PobrSqN58yc9KTpYidWIURe1KJ2fbMF5oIVAsGLqCC3ULtWcc2iUPYAHiwP+Eo5Jw6Kg+S2Oa3hO
 jvrf+Bc04nfa1bJa3dRIjjvu3wI9Jk9V7AXV7N8UbWGMDQ/DI8XkDJUF1Bky/rY+9nCtXAFUZ3/8m
 LXcYmtFPr+SXfGDQcnO77NCa8gJzrDbd+nX/qGPXTXl7SY4oQqCqdqDOZR4PbIgJ6WMaSHHGEXQrc
 WqsJI0+w==;
Received: from [2601:1c0:6280:3f0::aa0b] (helo=bombadil.infradead.org)
 by bombadil.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1maOdF-00Dx7u-CW; Tue, 12 Oct 2021 20:44:17 +0000
From: Randy Dunlap <rdunlap@infradead.org>
To: linux-kernel@vger.kernel.org
Date: Tue, 12 Oct 2021 13:44:16 -0700
Message-Id: <20211012204416.23108-1-rdunlap@infradead.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  When CONFIG_I2C=m, CONFIG_I2C_SLAVE=y (bool),
 and CONFIG_IPMI_IPMB=y, 
 the build fails with: ld: drivers/char/ipmi/ipmi_ipmb.o: in function
 `ipmi_ipmb_remove':
 ipmi_ipmb.c:(.text+0x6b): undefined reference to `i2c_slave_unregister' ld:
 drivers/char/ipmi/ipmi_ipmb.o: in function `ipmi_ipmb_thr [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.137.202.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1maOdP-006F1j-Pz
Subject: [Openipmi-developer] [PATCH -next] ipmi: ipmb: fix dependencies to
 eliminate build error
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 openipmi-developer@lists.sourceforge.net, Randy Dunlap <rdunlap@infradead.org>,
 Arnd Bergmann <arnd@arndb.de>, Corey Minyard <minyard@acm.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

When CONFIG_I2C=m, CONFIG_I2C_SLAVE=y (bool), and CONFIG_IPMI_IPMB=y,
the build fails with:

ld: drivers/char/ipmi/ipmi_ipmb.o: in function `ipmi_ipmb_remove':
ipmi_ipmb.c:(.text+0x6b): undefined reference to `i2c_slave_unregister'
ld: drivers/char/ipmi/ipmi_ipmb.o: in function `ipmi_ipmb_thread':
ipmi_ipmb.c:(.text+0x2a4): undefined reference to `i2c_transfer'
ld: drivers/char/ipmi/ipmi_ipmb.o: in function `ipmi_ipmb_probe':
ipmi_ipmb.c:(.text+0x646): undefined reference to `i2c_slave_register'
ld: drivers/char/ipmi/ipmi_ipmb.o: in function `ipmi_ipmb_driver_init':
ipmi_ipmb.c:(.init.text+0xa): undefined reference to `i2c_register_driver'
ld: drivers/char/ipmi/ipmi_ipmb.o: in function `ipmi_ipmb_driver_exit':
ipmi_ipmb.c:(.exit.text+0x8): undefined reference to `i2c_del_driver'

This is due to having a tristate depending on a bool symbol.
By adding I2C (tristate) as a dependency, the desired dependencies
are met, causing IPMI_IPMB to be changed from =y to =m:

  -CONFIG_IPMI_IPMB=y
  +CONFIG_IPMI_IPMB=m

Fixes: 63c4eb347164 ("ipmi:ipmb: Add initial support for IPMI over IPMB")
Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
Cc: Corey Minyard <minyard@acm.org>
Cc: openipmi-developer@lists.sourceforge.net
Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/char/ipmi/Kconfig |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

--- linux-next-20211012.orig/drivers/char/ipmi/Kconfig
+++ linux-next-20211012/drivers/char/ipmi/Kconfig
@@ -77,7 +77,7 @@ config IPMI_SSIF
 
 config IPMI_IPMB
 	tristate 'IPMI IPMB interface'
-	depends on I2C_SLAVE
+	depends on I2C && I2C_SLAVE
 	help
 	  Provides a driver for a system running right on the IPMB bus.
 	  It supports normal system interface messages to a BMC on the IPMB


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

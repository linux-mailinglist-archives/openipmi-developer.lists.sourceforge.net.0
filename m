Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D0853119353
	for <lists+openipmi-developer@lfdr.de>; Tue, 10 Dec 2019 22:10:01 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1iemlb-0005p3-SR; Tue, 10 Dec 2019 21:09:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <sashal@kernel.org>) id 1iemlZ-0005os-7M
 for openipmi-developer@lists.sourceforge.net; Tue, 10 Dec 2019 21:09:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UKCDb1CijpIFeYHJ9UO+WIzbdaoZMRc2lTT15FYJ0hI=; b=QYIVFMW9gmHGzJE14s6RZ1+9Yg
 0FDq6bA2xJPKnot87p4no//iloGsax+ht4vK5RbXpl2tfjbwAHM8g9UMXJWnggmlQ21Ed1smmZoed
 kTJQh+WvOQdLyWZ408aJBcbQSdvZcULMEUFmb9XnYVXuhQ0IGD9oHtLcFnKlU1d3+a6c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UKCDb1CijpIFeYHJ9UO+WIzbdaoZMRc2lTT15FYJ0hI=; b=juS37yWPdLDDXSbbZiKGKS5jSU
 0BgXSZ3mSZqahKLeHUHdigr+/VAepEJVIRh9X71FDv+5y6m/sJvPBhHFAR2wuHVZ50IB6SCghKF+/
 dztm7FJc0bkZMe5mITNU4bQNy7uyDC4Lnegu5sehcKlwuMedrRoDqcvtLg/xJXGG0o7w=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iemlV-000NpX-Uu
 for openipmi-developer@lists.sourceforge.net; Tue, 10 Dec 2019 21:09:57 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 95FFC24697;
 Tue, 10 Dec 2019 21:09:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576012184;
 bh=rxzjSJnbj4/fdS6pWGsFMYoWLp+HgY8/eUiuyL01MtA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=S1mupsZxIiO0d2l2/AIPNupAASsV4YZieIfnIvAPhKznyyTPvewKGx+miNooye3D2
 kumTtg8pzMTADiovtEYtzn18KEpmgSgwwnl0OLdjcOixDQt5RjAMRPx5SxpimkJzvE
 6Esx2g5HYCf7JXAkPu7/v1KUBvda8aI08uniT0U8=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Tue, 10 Dec 2019 16:04:06 -0500
Message-Id: <20191210210735.9077-102-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191210210735.9077-1-sashal@kernel.org>
References: <20191210210735.9077-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: mvista.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iemlV-000NpX-Uu
Subject: [Openipmi-developer] [PATCH AUTOSEL 5.4 141/350] ipmi: Don't allow
 device module unload when in use
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
Cc: Sasha Levin <sashal@kernel.org>, Corey Minyard <cminyard@mvista.com>,
 openipmi-developer@lists.sourceforge.net, tony camuso <tcamuso@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

From: Corey Minyard <cminyard@mvista.com>

[ Upstream commit cbb79863fc3175ed5ac506465948b02a893a8235 ]

If something has the IPMI driver open, don't allow the device
module to be unloaded.  Before it would unload and the user would
get errors on use.

This change is made on user request, and it makes it consistent
with the I2C driver, which has the same behavior.

It does change things a little bit with respect to kernel users.
If the ACPI or IPMI watchdog (or any other kernel user) has
created a user, then the device module cannot be unloaded.  Before
it could be unloaded,

This does not affect hot-plug.  If the device goes away (it's on
something removable that is removed or is hot-removed via sysfs)
then it still behaves as it did before.

Reported-by: tony camuso <tcamuso@redhat.com>
Signed-off-by: Corey Minyard <cminyard@mvista.com>
Tested-by: tony camuso <tcamuso@redhat.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/char/ipmi/ipmi_msghandler.c | 23 ++++++++++++++++-------
 include/linux/ipmi_smi.h            | 12 ++++++++----
 2 files changed, 24 insertions(+), 11 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index 2aab80e19ae06..3c8a559506e86 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -448,6 +448,8 @@ enum ipmi_stat_indexes {
 
 #define IPMI_IPMB_NUM_SEQ	64
 struct ipmi_smi {
+	struct module *owner;
+
 	/* What interface number are we? */
 	int intf_num;
 
@@ -1220,6 +1222,11 @@ int ipmi_create_user(unsigned int          if_num,
 	if (rv)
 		goto out_kfree;
 
+	if (!try_module_get(intf->owner)) {
+		rv = -ENODEV;
+		goto out_kfree;
+	}
+
 	/* Note that each existing user holds a refcount to the interface. */
 	kref_get(&intf->refcount);
 
@@ -1349,6 +1356,7 @@ static void _ipmi_destroy_user(struct ipmi_user *user)
 	}
 
 	kref_put(&intf->refcount, intf_free);
+	module_put(intf->owner);
 }
 
 int ipmi_destroy_user(struct ipmi_user *user)
@@ -2459,7 +2467,7 @@ static int __get_device_id(struct ipmi_smi *intf, struct bmc_device *bmc)
  * been recently fetched, this will just use the cached data.  Otherwise
  * it will run a new fetch.
  *
- * Except for the first time this is called (in ipmi_register_smi()),
+ * Except for the first time this is called (in ipmi_add_smi()),
  * this will always return good data;
  */
 static int __bmc_get_device_id(struct ipmi_smi *intf, struct bmc_device *bmc,
@@ -3377,10 +3385,11 @@ static void redo_bmc_reg(struct work_struct *work)
 	kref_put(&intf->refcount, intf_free);
 }
 
-int ipmi_register_smi(const struct ipmi_smi_handlers *handlers,
-		      void		       *send_info,
-		      struct device            *si_dev,
-		      unsigned char            slave_addr)
+int ipmi_add_smi(struct module         *owner,
+		 const struct ipmi_smi_handlers *handlers,
+		 void		       *send_info,
+		 struct device         *si_dev,
+		 unsigned char         slave_addr)
 {
 	int              i, j;
 	int              rv;
@@ -3406,7 +3415,7 @@ int ipmi_register_smi(const struct ipmi_smi_handlers *handlers,
 		return rv;
 	}
 
-
+	intf->owner = owner;
 	intf->bmc = &intf->tmp_bmc;
 	INIT_LIST_HEAD(&intf->bmc->intfs);
 	mutex_init(&intf->bmc->dyn_mutex);
@@ -3514,7 +3523,7 @@ int ipmi_register_smi(const struct ipmi_smi_handlers *handlers,
 
 	return rv;
 }
-EXPORT_SYMBOL(ipmi_register_smi);
+EXPORT_SYMBOL(ipmi_add_smi);
 
 static void deliver_smi_err_response(struct ipmi_smi *intf,
 				     struct ipmi_smi_msg *msg,
diff --git a/include/linux/ipmi_smi.h b/include/linux/ipmi_smi.h
index 4dc66157d8723..deec18b8944a8 100644
--- a/include/linux/ipmi_smi.h
+++ b/include/linux/ipmi_smi.h
@@ -224,10 +224,14 @@ static inline int ipmi_demangle_device_id(uint8_t netfn, uint8_t cmd,
  * is called, and the lower layer must get the interface from that
  * call.
  */
-int ipmi_register_smi(const struct ipmi_smi_handlers *handlers,
-		      void                     *send_info,
-		      struct device            *dev,
-		      unsigned char            slave_addr);
+int ipmi_add_smi(struct module            *owner,
+		 const struct ipmi_smi_handlers *handlers,
+		 void                     *send_info,
+		 struct device            *dev,
+		 unsigned char            slave_addr);
+
+#define ipmi_register_smi(handlers, send_info, dev, slave_addr) \
+	ipmi_add_smi(THIS_MODULE, handlers, send_info, dev, slave_addr)
 
 /*
  * Remove a low-level interface from the IPMI driver.  This will
-- 
2.20.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

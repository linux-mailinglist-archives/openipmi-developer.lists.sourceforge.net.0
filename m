Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E20CD666F
	for <lists+openipmi-developer@lfdr.de>; Mon, 14 Oct 2019 17:47:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1iK2Z0-0004w5-CL; Mon, 14 Oct 2019 15:47:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1iK2Z0-0004vy-0n
 for openipmi-developer@lists.sourceforge.net; Mon, 14 Oct 2019 15:47:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+d/ANv1Sk5IA8SJFgYWLVzJmUF0sZPRMkbEU6RlJbuU=; b=NB6v3n7RaQsXWvzF5p532vSYwk
 TK1S7NBkBG27IID8pFIMNzTqW12AkHcWxgew88N6Eyrqp3AcecaVl7DW/RgmS3dDlrzUyNNjfVJTv
 WAJhrCE7SWGavUm/JFk1CFiuvTnFDv2FVnwA4DRuoy/bVXZyhKXOx05gXfIZMmM4N9Es=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+d/ANv1Sk5IA8SJFgYWLVzJmUF0sZPRMkbEU6RlJbuU=; b=kTFdrMp3aItgQGosL5dNpVBVU5
 nytMW77hRBSSGo2E13OuYOjlrhKmxdJCqOD2Llvai54DjZYsQ+6TfOdAuqv1CZOb8KpUp1ev8nF8E
 tqCU8VK+Uqi+PJZS0goHCO15Rc3FjaqnkzYF+0Texk72xPLyseCOpIBi5saIV0ZaZoz4=;
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iK2Yu-008uI2-R2
 for openipmi-developer@lists.sourceforge.net; Mon, 14 Oct 2019 15:47:13 +0000
Received: by mail-oi1-f195.google.com with SMTP id k20so14134643oih.3
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 14 Oct 2019 08:47:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=+d/ANv1Sk5IA8SJFgYWLVzJmUF0sZPRMkbEU6RlJbuU=;
 b=RbIgsQ3JeEoO2SUOr8czjyqwoTyu9r8YhfgWisemdpxK2TD1dtv+aT7vlxPqIla1pI
 HC10AunLc1raT9aMtGsv8cMVAagR08qwBHnCigIE1cpkkHwxDsfvxdLIp05rI+qIS1hU
 Y7ekzDFMeu+RxKMZwPncW2tvPmij9/iW1nQVTpJlhVclDUl/F99UBtfouYxkJiw7aE1E
 7c1p3klAtJjlAxLA7XT3gvqi34CrNTAKfxstdablRwFGe5qKrNAV5qNlctCGjafPirMM
 dCBbBrDTnm82fyaf3uoxEEJhlyuUK4d1y1NZ4JL5nFUkjYjw1lnxCpVqLo51fya8aPHW
 Py/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references;
 bh=+d/ANv1Sk5IA8SJFgYWLVzJmUF0sZPRMkbEU6RlJbuU=;
 b=ZTuhi68h/hlPzmVKcPG0F6/w29zdM7v6k9oy3lDmqaReIcTbQN/+ZRsf57KIY4Fk4w
 x4zeW2TqnWmgYXknRvFSlzI4hD6OnCawkrmfYyiKAPm3L231c/1NE/uGyv1efDQm2vMW
 Pn+mpN5q8RdHjUf8ulaxpjbyWE5zSSQbgC1OIFSLOXteawLP2quSjvZQ5CQ8P8wuol+K
 aimJdrV64j+mu3X2/boj09hnWnELfB/R2kI7NvMrTNlNqj5OtVQAdeWhXrYdNyL+dd2t
 Hbr93xnw9i3122/fdUIFMv3fZDAmTc5VFt0RndStL0FUcFPKHQyMKqQVIomFaNa3A7TC
 202g==
X-Gm-Message-State: APjAAAULxLpDHirC1ySdKOmtuSv0HMbKJPQEEUFKF1eXXlHzC+wmZbqV
 VBLrISZKbtb96w9Cb09XkQ==
X-Google-Smtp-Source: APXvYqwI0Z1cxSpz1w0mNked6Bo5WZ8GaCPKDgxLt7TEcEY/EZGe/CNHeNQtWH8abrD4+mF/fnVJCg==
X-Received: by 2002:aca:5ed7:: with SMTP id
 s206mr23826167oib.134.1571068022560; 
 Mon, 14 Oct 2019 08:47:02 -0700 (PDT)
Received: from serve.minyard.net ([47.184.136.59])
 by smtp.gmail.com with ESMTPSA id o23sm5832035ote.67.2019.10.14.08.47.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Oct 2019 08:47:02 -0700 (PDT)
Received: from t560.minyard.net (unknown [192.168.27.180])
 by serve.minyard.net (Postfix) with ESMTPA id 7FEA1180044;
 Mon, 14 Oct 2019 15:47:01 +0000 (UTC)
From: minyard@acm.org
To: tony camuso <tcamuso@redhat.com>
Date: Mon, 14 Oct 2019 10:46:32 -0500
Message-Id: <20191014154632.11103-1-minyard@acm.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191014134141.GA25427@t560>
References: <20191014134141.GA25427@t560>
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: mvista.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.195 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1iK2Yu-008uI2-R2
Subject: [Openipmi-developer] [PATCH] ipmi: Don't allow device module unload
 when in use
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
Cc: Corey Minyard <cminyard@mvista.com>,
 openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Corey Minyard <minyard@acm.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

From: Corey Minyard <cminyard@mvista.com>

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
---
Tony, here is a suggested change for this.  Can you look it over and
see if it looks ok?

Thanks,

-corey

 drivers/char/ipmi/ipmi_msghandler.c | 23 ++++++++++++++++-------
 include/linux/ipmi_smi.h            | 12 ++++++++----
 2 files changed, 24 insertions(+), 11 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index 2aab80e19ae0..15680de18625 100644
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
index 4dc66157d872..deec18b8944a 100644
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
2.17.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

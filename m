Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F3E346D40A
	for <lists+openipmi-developer@lfdr.de>; Wed,  8 Dec 2021 14:06:46 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1muwef-000779-6X; Wed, 08 Dec 2021 13:06:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ykaukab@suse.de>) id 1mutJH-0001Mu-6f
 for openipmi-developer@lists.sourceforge.net; Wed, 08 Dec 2021 09:32:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SCwFerdjzwTA7lozIJo/7cN2zuWAsDUZzTz6KxaDJtI=; b=Ft8WbtojTdtxU+9/HYqAInqYPJ
 kaJSXr5M3d7m0yki2j3lGxB8gOw9r4HTQvMqda4sdGw4X4oPd/j9lCSrrHeRHTaHX+UUohGKWDrx0
 UhvnlRahjFrZXB5HWGiNW7+D5q3ii0iOYIGISwTsj01NhIqDpEd7Moy2VwHmX705eYpA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=SCwFerdjzwTA7lozIJo/7cN2zuWAsDUZzTz6KxaDJtI=; b=I
 9bIK+kpvxd2RBr5+9cN4s5LXxezg4xLdBGAOfniYA6eFcwnC5Wp4ikw77BWcwlfBe952qm7XhCNia
 SqUOVYVOHExPcQso6i6c8Qq7LHlNxboi5j368A8VA2C0hx9hJTiynjRZt9iOcPt7MvMErXfcUvVwA
 xrfMLPoWz1NObdTs=;
Received: from smtp-out2.suse.de ([195.135.220.29])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mutJH-0000bb-Eo
 for openipmi-developer@lists.sourceforge.net; Wed, 08 Dec 2021 09:32:24 +0000
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
 by smtp-out2.suse.de (Postfix) with ESMTP id 81ACF1FD2A;
 Wed,  8 Dec 2021 09:32:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1638955933; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version: content-transfer-encoding:content-transfer-encoding;
 bh=SCwFerdjzwTA7lozIJo/7cN2zuWAsDUZzTz6KxaDJtI=;
 b=ejjgkZSglDZEyPWn4U1iCWi8m9fKj+UR7tBkrDm2yxr+gki+Q/mwA25ZY/wXeYHwhMqdpJ
 w50drJ2R+XO8ih33Uw66l1/4QzvatFRp65GcsYRfeFdxDsukxYKOssCR4CtjNwrm7mA/7b
 pSlnPzvkrR/uPsBZDvhtDsG52JSg4dg=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1638955933;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version: content-transfer-encoding:content-transfer-encoding;
 bh=SCwFerdjzwTA7lozIJo/7cN2zuWAsDUZzTz6KxaDJtI=;
 b=tjZ1BatQAum8GenyxvhdR4g0nIY/Yy0c9HY9mKvvHPlKzRIhxizDjRoCWeCQaAr7vtAqi6
 eNcsXT4rHGd5oRCg==
Received: from un68u.suse.de (unknown [10.163.42.126])
 by relay2.suse.de (Postfix) with ESMTP id 48043A3B85;
 Wed,  8 Dec 2021 09:32:13 +0000 (UTC)
From: Mian Yousaf Kaukab <ykaukab@suse.de>
To: minyard@acm.org,
	kamlakantp@marvell.com
Date: Wed,  8 Dec 2021 10:32:39 +0100
Message-Id: <20211208093239.4432-1-ykaukab@suse.de>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: During probe ssif_info->client is dereferenced in error path.
 However, it is set when some of the error checking has already been done.
 This causes following kernel crash if an error path is taken: [ 30.645593][
 T674] ipmi_ssif 0-000e: ipmi_ssif: Not probing, Interface already present
 [ 30.657616][ T674] Unable to handle kernel NULL pointer dereference at
 virtual address 0000000000000088 ... [ 3 [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.29 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1mutJH-0000bb-Eo
X-Mailman-Approved-At: Wed, 08 Dec 2021 13:06:39 +0000
Subject: [Openipmi-developer] [PATCH] ipmi: ssif: initialize
 ssif_info->client early
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
Cc: Takashi Iwai <tiwai@suse.de>, openipmi-developer@lists.sourceforge.net,
 Mian Yousaf Kaukab <ykaukab@suse.de>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

During probe ssif_info->client is dereferenced in error path. However,
it is set when some of the error checking has already been done. This
causes following kernel crash if an error path is taken:

[   30.645593][  T674] ipmi_ssif 0-000e: ipmi_ssif: Not probing, Interface already present
[   30.657616][  T674] Unable to handle kernel NULL pointer dereference at virtual address 0000000000000088
...
[   30.657723][  T674] pc : __dev_printk+0x28/0xa0
[   30.657732][  T674] lr : _dev_err+0x7c/0xa0
...
[   30.657772][  T674] Call trace:
[   30.657775][  T674]  __dev_printk+0x28/0xa0
[   30.657778][  T674]  _dev_err+0x7c/0xa0
[   30.657781][  T674]  ssif_probe+0x548/0x900 [ipmi_ssif 62ce4b08badc1458fd896206d9ef69a3c31f3d3e]
[   30.657791][  T674]  i2c_device_probe+0x37c/0x3c0
...

Initialize ssif_info->client before any error path can be taken. Clear
i2c_client data in the error path to prevent the dangling pointer from
leaking.

Fixes: c4436c9149c5 ("ipmi_ssif: avoid registering duplicate ssif interface")
Suggested-by: Takashi Iwai <tiwai@suse.de>
Signed-off-by: Mian Yousaf Kaukab <ykaukab@suse.de>
---
 drivers/char/ipmi/ipmi_ssif.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_ssif.c b/drivers/char/ipmi/ipmi_ssif.c
index 0c62e578749e..48aab77abebf 100644
--- a/drivers/char/ipmi/ipmi_ssif.c
+++ b/drivers/char/ipmi/ipmi_ssif.c
@@ -1659,6 +1659,9 @@ static int ssif_probe(struct i2c_client *client, const struct i2c_device_id *id)
 		}
 	}
 
+	ssif_info->client = client;
+	i2c_set_clientdata(client, ssif_info);
+
 	rv = ssif_check_and_remove(client, ssif_info);
 	/* If rv is 0 and addr source is not SI_ACPI, continue probing */
 	if (!rv && ssif_info->addr_source == SI_ACPI) {
@@ -1679,9 +1682,6 @@ static int ssif_probe(struct i2c_client *client, const struct i2c_device_id *id)
 		ipmi_addr_src_to_str(ssif_info->addr_source),
 		client->addr, client->adapter->name, slave_addr);
 
-	ssif_info->client = client;
-	i2c_set_clientdata(client, ssif_info);
-
 	/* Now check for system interface capabilities */
 	msg[0] = IPMI_NETFN_APP_REQUEST << 2;
 	msg[1] = IPMI_GET_SYSTEM_INTERFACE_CAPABILITIES_CMD;
@@ -1881,6 +1881,7 @@ static int ssif_probe(struct i2c_client *client, const struct i2c_device_id *id)
 
 		dev_err(&ssif_info->client->dev,
 			"Unable to start IPMI SSIF: %d\n", rv);
+		i2c_set_clientdata(client, NULL);
 		kfree(ssif_info);
 	}
 	kfree(resp);
-- 
2.31.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E0F66B1DFD0
	for <lists+openipmi-developer@lfdr.de>; Fri,  8 Aug 2025 01:32:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Message-ID:Date:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LwqXVk7+AM6iSX3rybCIFP9rNsOePP5ul2PyEFKs2pM=; b=KDWHFYWm03K52s3UbSCw3BHIe7
	4utYnBlsyOQ0uCRliH/ouibxsxxNpXLBwxg8QcTHmg98ulQZ/jMvrkv9pfud6e96McvmywGU7GsX9
	uL7MNpbtCWpmqwNDbm7D/b8a9JroOeGe1r+tsBMegxAYKjmZEET0tc0iT8VRmyS5I1g4=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1ukA5i-0007JO-94;
	Thu, 07 Aug 2025 23:32:10 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1ukA5S-0007Ix-NR
 for openipmi-developer@lists.sourceforge.net;
 Thu, 07 Aug 2025 23:31:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=b0LAU+2u10/+0C78Muwt+CLP14PGQsov9MOIPNpjq38=; b=Fl1BQEGASq0Dj2pzlmaG+Q3km3
 IxfT4VgFwbOSjh3jpHXCFV8LEaAd78DC5RfIFrfxcjI/CYttZ+2+Lc9+PnzR+tIEj6Q2i3eXcda2L
 T0Dki3IB/agRjq8EeJTErp3ehufdR+w9lzmwGeD0Yjjh/wZIypLcEeXhVsOfzeljTQcw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=b0LAU+2u10/+0C78Muwt+CLP14PGQsov9MOIPNpjq38=; b=YcLu55K8rypdxiXhEZUPfZ4/S7
 CY/cF5++f0tGSnwZ7z58oElJpDWHbeTYtViThOwkwV5ZZkdOKYzYAXuSolrL5yITVCVoG0lPVBJoy
 UdfG+Vw4XqidXqqNuMMEon9yf188rkjkvl0U51/CLRa5Ww6hDMxo7Zh5HY0lPgEhxOJo=;
Received: from mail-ot1-f49.google.com ([209.85.210.49])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ukA5S-0004w4-CT for openipmi-developer@lists.sourceforge.net;
 Thu, 07 Aug 2025 23:31:54 +0000
Received: by mail-ot1-f49.google.com with SMTP id
 46e09a7af769-742f983e313so1282531a34.0
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 07 Aug 2025 16:31:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1754609508; x=1755214308;
 darn=lists.sourceforge.net; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=b0LAU+2u10/+0C78Muwt+CLP14PGQsov9MOIPNpjq38=;
 b=V4IoAgsdVMN7VEu39t8N1Rh4ArWshgWbNXNBpRyZBwyd94iFzdOLkV4qvpX++MuHZk
 BnmFqQRgbrVDVgdleb/L/Q2lOrxJgw3UPTSIgCdGRym4S7OqLn0yt0C9UKvmx1n1EIKm
 CEhak7NpB+QqUG+x6bIhm0e7ZFVCLmGplvMgFLKZeZlZBdi78okZCZbN+L7IIQlGCYVG
 K9tRxgCg7i6urX06ngYP7UOZeGBU9BO/MRh7kmaMivk3pqf58jI2ZR78QyGeuR+X9d11
 yQH9Ng/HbRvsMg8/FB8a9h0RGk1pY7WBd+JetJbXNTWiax+Si8KSHlxAGw0v4yXdU5fA
 42kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1754609508; x=1755214308;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=b0LAU+2u10/+0C78Muwt+CLP14PGQsov9MOIPNpjq38=;
 b=ntk1WH/QC4NE8dZ0k/2NOD2CsnAyxlPwoFptISDr8c3lS4rZ8KopFBTEtoTHhYClSR
 eY/FCVBl0xy1ybbIk1dazC512yIJFtS++u+bUocDghUpQNtoqSzz14oQC+Dny5AUnI0t
 uyhG6d9Y14pY4TD89V6pvcm2+W4w3cWxsviVzhv8iFBqDrwKqUI/PgfM8i3vSwsW/GgR
 UjM9M8fVBi+vn0UGOobjV9nC6t6htANvFgeeReem72PmbL1GRC2BTHrnRL8aeQ1AFFA3
 S6tgCnkhpBHKD3oJGEOwC30XVzpSfBmA237606MC2IVDfo3NxiMKd3y4iT4wzTwdQgsA
 72og==
X-Gm-Message-State: AOJu0YxF+BG14Pqr+GcDFDm0kWzKUAoweeSFgOwOV4z7u0yvibcanmW0
 /YCmWRuf/U+HrcJ1Qed4bodG+KFUg5COyo6un41MtMNTtOduc4Vv/9qJ34/5+IpXaPudilLOI1F
 sGf6B
X-Gm-Gg: ASbGncvkVIMG7/Fe3bg5zZt0DoWU211rCZRzQieGZU0Y6KKRcPaMt6BmtCnKRnExpom
 GnZOhxPEVsyNmPAgF3n4CsLqQ47/MYCE/p/kigTeiafP0QlVLETJdnun7wJYY23txMmkq9RD/e3
 H09Ekg10zMVJJNA5Z24FmqiYJoBk0KhPcD5l84Ag8UtFUOLvgU9aRdFT3/N6X7AOF9sGppHgLU2
 lwbus5UaLXGcj4PWRkaWZHVVCjmqXsvoReBP0oC4VEGvUtpGUyJ77JTxI4x+b13bAIvWbjZh3i6
 Z5AZiFlJDszdZWcHrgrKH7aSPoHpIMHIJmpEJh85QW2sw9KJUFCHdS9oh8FJzHGSx0pSSr49hTb
 Ut5kVo9TnF7XU2S8P
X-Google-Smtp-Source: AGHT+IG3YI98db3U5jyEiwKVKzbDF/UC2VWFGKQazNVvN6GxHdclxmttgoqEdDwj/6d2EukNXgKTUw==
X-Received: by 2002:a05:6808:d51:b0:435:7814:294c with SMTP id
 5614622812f47-43597c1d781mr783107b6e.16.1754608018731; 
 Thu, 07 Aug 2025 16:06:58 -0700 (PDT)
Received: from localhost ([2001:470:b8f6:1b:e698:accb:897b:ca29])
 by smtp.gmail.com with UTF8SMTPSA id
 5614622812f47-43358892c0fsm3827725b6e.20.2025.08.07.16.06.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 07 Aug 2025 16:06:58 -0700 (PDT)
From: Corey Minyard <corey@minyard.net>
To: Frederick Lawler <fred@cloudflare.com>
Date: Thu,  7 Aug 2025 18:02:34 -0500
Message-ID: <20250807230648.1112569-4-corey@minyard.net>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250807230648.1112569-1-corey@minyard.net>
References: <20250807230648.1112569-1-corey@minyard.net>
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: So you can see if it's in maintenance mode and see how long
 is left. Signed-off-by: Corey Minyard <corey@minyard.net> ---
 drivers/char/ipmi/ipmi_msghandler.c
 | 23 +++++++++++++++++++++++ 1 file changed, 23 insertions(+) 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.49 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1ukA5S-0004w4-CT
Subject: [Openipmi-developer] [PATCH 3/4] ipmi: Add a maintenance mode sysfs
 file
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
Cc: Corey Minyard <corey@minyard.net>, openipmi-developer@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, kernel-team@cloudflare.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

So you can see if it's in maintenance mode and see how long is left.

Signed-off-by: Corey Minyard <corey@minyard.net>
---
 drivers/char/ipmi/ipmi_msghandler.c | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index 72f5f4a0c056..5ff35c473b50 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -432,6 +432,7 @@ struct ipmi_smi {
 	atomic_t nr_users;
 	struct device_attribute nr_users_devattr;
 	struct device_attribute nr_msgs_devattr;
+	struct device_attribute maintenance_mode_devattr;
 
 
 	/* Used for wake ups at startup. */
@@ -3545,6 +3546,19 @@ static ssize_t nr_msgs_show(struct device *dev,
 }
 static DEVICE_ATTR_RO(nr_msgs);
 
+static ssize_t maintenance_mode_show(struct device *dev,
+				     struct device_attribute *attr,
+				     char *buf)
+{
+	struct ipmi_smi *intf = container_of(attr,
+					     struct ipmi_smi,
+					     maintenance_mode_devattr);
+
+	return sysfs_emit(buf, "%u %d\n", intf->maintenance_mode_state,
+			  intf->auto_maintenance_timeout);
+}
+static DEVICE_ATTR_RO(maintenance_mode);
+
 static void redo_bmc_reg(struct work_struct *work)
 {
 	struct ipmi_smi *intf = container_of(work, struct ipmi_smi,
@@ -3681,6 +3695,14 @@ int ipmi_add_smi(struct module         *owner,
 		goto out_err_bmc_reg;
 	}
 
+	intf->maintenance_mode_devattr = dev_attr_maintenance_mode;
+	sysfs_attr_init(&intf->maintenance_mode_devattr.attr);
+	rv = device_create_file(intf->si_dev, &intf->maintenance_mode_devattr);
+	if (rv) {
+		device_remove_file(intf->si_dev, &intf->nr_users_devattr);
+		goto out_err_bmc_reg;
+	}
+
 	intf->intf_num = i;
 	mutex_unlock(&ipmi_interfaces_mutex);
 
@@ -3788,6 +3810,7 @@ void ipmi_unregister_smi(struct ipmi_smi *intf)
 	if (intf->handlers->shutdown)
 		intf->handlers->shutdown(intf->send_info);
 
+	device_remove_file(intf->si_dev, &intf->maintenance_mode_devattr);
 	device_remove_file(intf->si_dev, &intf->nr_msgs_devattr);
 	device_remove_file(intf->si_dev, &intf->nr_users_devattr);
 
-- 
2.43.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

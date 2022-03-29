Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 51A334EB364
	for <lists+openipmi-developer@lfdr.de>; Tue, 29 Mar 2022 20:34:04 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nZGXM-0007WG-Cw; Tue, 29 Mar 2022 18:34:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tcminyard@gmail.com>) id 1nZGXL-0007W6-4a
 for openipmi-developer@lists.sourceforge.net; Tue, 29 Mar 2022 18:33:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bjza6K+AY/cPZQnOFPJJVhFu3gZWdgR4+p6QcBpzTy0=; b=E/GpGGRhIK+eMXc0XVOsKVsXwP
 8/HMjS4qM1gzGouqD3Dy2tKCPD6zGpbUoWiiYitncPeNm2Pu3Yase+h4uApMSIqsbWXGlYXnvd81o
 knPLHqdtYhyErEtIYJe4ng/s9sz0mYFuWq2yCYFt7fJe9SsK0ubAIKrHqnL/vA67UYpk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bjza6K+AY/cPZQnOFPJJVhFu3gZWdgR4+p6QcBpzTy0=; b=SPYrxIuVuS5BFXAkvRqjoryhm2
 WV/OiT8xgBLG0MILAs8xzFbGa1zqnTKkGSNatDVd+VCGvBMoqd/Rlo6Y1+n+HwUM+1wA28T2GFynW
 ca23xINtOyydJAX1wKfbeH4q4rxWnBQjrFMnqfI0mtRkWQypPz1/cXTKS+rNPrOgwOjE=;
Received: from mail-qt1-f177.google.com ([209.85.160.177])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nZGfF-0002YK-K6
 for openipmi-developer@lists.sourceforge.net; Tue, 29 Mar 2022 18:33:58 +0000
Received: by mail-qt1-f177.google.com with SMTP id v2so16047526qtc.5
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 29 Mar 2022 11:33:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bjza6K+AY/cPZQnOFPJJVhFu3gZWdgR4+p6QcBpzTy0=;
 b=JPam0pwniV7W7pfXJ0KUPB7FsNfYvcpKufKyDRuc8w2/nhluZvybl8Xl4GxkU6Xl4J
 tkz8Tz7sxWzqQOzY1YdZ8hkXE+oRBhI4qBDKicL3fLc7cFH4ZecY1Dp4OY4lDmYSXbNq
 W4Fw2HFh95UlQpvGAt68H8/Hie51PP/TIPeqzc66F0QuhEUrXS18/tDNiQQOg1WNhRy1
 G6YSkoy6wOlxOobjYo2ifZkl7cafxY2SXAACXmbYfNf9o0fMolEBQ7NoFLeHgZJUkEsM
 lw7g94ng0ve5foXBMpirk3r4XNmrNIGjQJ3I6pAJfwVWQ4XTEa9x8YqOk3a1b1hdxWF0
 bQDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=bjza6K+AY/cPZQnOFPJJVhFu3gZWdgR4+p6QcBpzTy0=;
 b=Kjx1uKCeRGjNXtbRzOH81SwSXYr187h0qGln8bwuP2Wj55DKRGdj9NOG52AiwCD05C
 v5yORooBgMUGHmEgjKEZ59OsklXXW6KD/uIurtGHeK077zFvCY1ocbPtJKDdEz5ap3cA
 faUjwXycEjc8HemQUNi5pc9IoyHeYsGtQTjPYeUCIP72GtKDSMspSIfhn6Bpw7dLxLVm
 6NMf5KzDYwk4CFFc0TL3OWbloQElbI20GYDG26+QulDIEKjVTF+WO4eBFV28YjXjZMyU
 23JG8N0WZO/dfRYH53WYbco95HYSGYnI4FngsXCxP1AttNKj+JEy1+cXQ5E8apbB6yvi
 /95A==
X-Gm-Message-State: AOAM530i9+nkd8PDiS6yyBD4H9fSCFcT6jKseq6WUkgljPlq6V7wmGH9
 dLl0X9NUluZzn8exIsc2Aw==
X-Google-Smtp-Source: ABdhPJzgswxUhX3CVNKadJI6lHxhDQSuNlqb2woYu+H3DNLh7JPt8Kog1vdWOnQfKSECZTLJLQ+Z1g==
X-Received: by 2002:ac8:5892:0:b0:2e1:c997:a5f6 with SMTP id
 t18-20020ac85892000000b002e1c997a5f6mr29886327qta.357.1648578831700; 
 Tue, 29 Mar 2022 11:33:51 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id
 y11-20020ac85f4b000000b002e1e038a8fdsm15326134qta.13.2022.03.29.11.33.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Mar 2022 11:33:49 -0700 (PDT)
Received: from t560.minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:dcc2:ca6d:a437:b3e0])
 by serve.minyard.net (Postfix) with ESMTPA id 39F981817C1;
 Tue, 29 Mar 2022 18:33:48 +0000 (UTC)
From: minyard@acm.org
To: Chen Guanqiao <chen.chenchacha@foxmail.com>
Date: Tue, 29 Mar 2022 13:33:40 -0500
Message-Id: <20220329183340.471474-5-minyard@acm.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220329183340.471474-1-minyard@acm.org>
References: <20220329183340.471474-1-minyard@acm.org>
MIME-Version: 1.0
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  From: Corey Minyard <cminyard@mvista.com> Go through each
 user and add its message count to a total and print the total. It would be
 nice to have a per-user file, but there's no user sysfs entity at this point
 to hang it off of. Probably not worth the effort. 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.177 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.177 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1nZGfF-0002YK-K6
Subject: [Openipmi-developer] [PATCH 4/4] ipmi: Add a sysfs count of total
 outstanding messages for an interface
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
 openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

From: Corey Minyard <cminyard@mvista.com>

Go through each user and add its message count to a total and print the
total.

It would be nice to have a per-user file, but there's no user sysfs
entity at this point to hang it off of.  Probably not worth the effort.

Based on work by Chen Guanqiao <chen.chenchacha@foxmail.com>

Cc: Chen Guanqiao <chen.chenchacha@foxmail.com>
Signed-off-by: Corey Minyard <cminyard@mvista.com>
---
 drivers/char/ipmi/ipmi_msghandler.c | 29 +++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index 3ba188e05ca6..e30223763a2a 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -458,6 +458,7 @@ struct ipmi_smi {
 	struct srcu_struct users_srcu;
 	atomic_t nr_users;
 	struct device_attribute nr_users_devattr;
+	struct device_attribute nr_msgs_devattr;
 
 
 	/* Used for wake ups at startup. */
@@ -3519,6 +3520,25 @@ static ssize_t nr_users_show(struct device *dev,
 }
 static DEVICE_ATTR_RO(nr_users);
 
+static ssize_t nr_msgs_show(struct device *dev,
+			    struct device_attribute *attr,
+			    char *buf)
+{
+	struct ipmi_smi *intf = container_of(attr,
+			 struct ipmi_smi, nr_msgs_devattr);
+	struct ipmi_user *user;
+	int index;
+	unsigned int count = 0;
+
+	index = srcu_read_lock(&intf->users_srcu);
+	list_for_each_entry_rcu(user, &intf->users, link)
+		count += atomic_read(&user->nr_msgs);
+	srcu_read_unlock(&intf->users_srcu, index);
+
+	return sysfs_emit(buf, "%u\n", count);
+}
+static DEVICE_ATTR_RO(nr_msgs);
+
 static void redo_bmc_reg(struct work_struct *work)
 {
 	struct ipmi_smi *intf = container_of(work, struct ipmi_smi,
@@ -3647,6 +3667,14 @@ int ipmi_add_smi(struct module         *owner,
 	if (rv)
 		goto out_err_bmc_reg;
 
+	intf->nr_msgs_devattr = dev_attr_nr_msgs;
+	sysfs_attr_init(&intf->nr_msgs_devattr.attr);
+	rv = device_create_file(intf->si_dev, &intf->nr_msgs_devattr);
+	if (rv) {
+		device_remove_file(intf->si_dev, &intf->nr_users_devattr);
+		goto out_err_bmc_reg;
+	}
+
 	/*
 	 * Keep memory order straight for RCU readers.  Make
 	 * sure everything else is committed to memory before
@@ -3743,6 +3771,7 @@ void ipmi_unregister_smi(struct ipmi_smi *intf)
 
 	/* At this point no users can be added to the interface. */
 
+	device_remove_file(intf->si_dev, &intf->nr_msgs_devattr);
 	device_remove_file(intf->si_dev, &intf->nr_users_devattr);
 
 	/*
-- 
2.25.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 496F44EB365
	for <lists+openipmi-developer@lfdr.de>; Tue, 29 Mar 2022 20:34:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nZGfK-0003s7-8V; Tue, 29 Mar 2022 18:34:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tcminyard@gmail.com>) id 1nZGfH-0003s0-MB
 for openipmi-developer@lists.sourceforge.net; Tue, 29 Mar 2022 18:33:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pYh17+m9ZvxB94QZOjFlGLEILR7t0nVp9Jw8tjfjzHg=; b=LenkKGqjFEgmJYafu6lDn4zjZj
 a94nM/EPJFCerhKNC1+TjI5cIhN88J9cyKfWx8xdxC/ya+OMMQJSsBEOQbyYAxb5fsjxiTD3bCRGg
 KLv29eOjbc/7Y8I814UiBPfrNnmXZ2aGIt8k2bg0PYMXscRpCmXsT+nN9QoeFh3oRmBA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pYh17+m9ZvxB94QZOjFlGLEILR7t0nVp9Jw8tjfjzHg=; b=EdFzcuVzH2Dweuovdchi+oqdy4
 3zQWLYB3+9bHu1RunjGjeglnQ5kfVGiRJox0SQYafxO1mfrDmQz8nlCN4IfAIV9QqfVShGvByCVeK
 Vq7zOIA/vAF12FRd7LBIA9Cg5QxzbtftsxCwZAhPAOuDUaxuTk6mQdjc+jeJhckg1uOw=;
Received: from mail-qt1-f182.google.com ([209.85.160.182])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nZGfD-00G5jh-VT
 for openipmi-developer@lists.sourceforge.net; Tue, 29 Mar 2022 18:33:58 +0000
Received: by mail-qt1-f182.google.com with SMTP id j21so16094764qta.0
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 29 Mar 2022 11:33:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pYh17+m9ZvxB94QZOjFlGLEILR7t0nVp9Jw8tjfjzHg=;
 b=E5ysQicLK6/PS0w5N6+csC5X17whyf5UxpO207r5zL/7M3hWteMDQ/l6pb1KDMuysC
 3yXUAtvsTnUp5c2K5QXln/+wPnYu8ZCvqOEfibo5AQRGIsaJwq3CB1Y0oq8mAw2ay9FW
 Xdn9b8Sn9gdrJufk5JuWnn3Ejf2mWxVaY7H+0QL9UmDX5nhN0Iw4M14NwMrzdscHAak1
 BG/dJlUhpqDrgZROirne/j+jJU4h415Qc4Y1FA5X2RT6e6gbpklf4z9ZXISqNfPD6Wrk
 Qgrt020xavylPykNW6SqKP/VNGTEuuClxdoo/UN7hvo3OXN2CHhRgNdol1u+qFuIJVB+
 WlrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=pYh17+m9ZvxB94QZOjFlGLEILR7t0nVp9Jw8tjfjzHg=;
 b=y9lZ5Yv4P5meocAVzYMNQKj/ncSNVEM4yZ9qm0KpbxTomLmhhJiuvZSxAGf2oEPMwK
 v0/DUYOmknj0rmBGEo+olZXqO43xD9wZgH9oR/kz+2mzE0VgmC+rZxgEwqeCrd9JTYx9
 R31nVTratdl0BlGIElBYv0BByM8hVvP/zkUIdYJAi5U/EqgGODL9mcamPnXO1+GGVXu7
 Oo0Hxnr2pHetjPcU/wSuaXyMhzhC887+S9nojzUqxYShsSM9SBkIXS9PW8zWVN+rwSW/
 C+GdYDJQVywr0BTs5Jn6Q+lC27tuX3l/VIjmvDG20T+EZBUzqopTIVVJ+SXUwUNUGTFJ
 DkyA==
X-Gm-Message-State: AOAM5338ZSJ86uhtqGuqeOfbfBzQwOZKa5bnk+AobvwN3D1hRiaKhA5W
 gIo28CXPD+CMd5MYaFsYtw==
X-Google-Smtp-Source: ABdhPJyDgABbA4NUgp4AHQ6yq/6JO6cXsfhVZOKL8n+20PmhywEH7JMbsKjEg6HsqlHMi4lnNpY5cg==
X-Received: by 2002:a05:622a:1894:b0:2e1:cbdb:8b74 with SMTP id
 v20-20020a05622a189400b002e1cbdb8b74mr28825846qtc.643.1648578830008; 
 Tue, 29 Mar 2022 11:33:50 -0700 (PDT)
Received: from serve.minyard.net ([47.184.144.75])
 by smtp.gmail.com with ESMTPSA id
 h14-20020a05622a170e00b002e1a65754d8sm16175490qtk.91.2022.03.29.11.33.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Mar 2022 11:33:49 -0700 (PDT)
Received: from t560.minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:dcc2:ca6d:a437:b3e0])
 by serve.minyard.net (Postfix) with ESMTPA id 23FC21817C0;
 Tue, 29 Mar 2022 18:33:48 +0000 (UTC)
From: minyard@acm.org
To: Chen Guanqiao <chen.chenchacha@foxmail.com>
Date: Tue, 29 Mar 2022 13:33:39 -0500
Message-Id: <20220329183340.471474-4-minyard@acm.org>
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
 Content preview:  From: Corey Minyard <cminyard@mvista.com> A count of users
 is kept for each interface, allow it to be viewed. Based on work by Chen
 Guanqiao <chen.chenchacha@foxmail.com> 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.182 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.182 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1nZGfD-00G5jh-VT
Subject: [Openipmi-developer] [PATCH 3/4] ipmi: Add a sysfs interface to
 view the number of users
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

A count of users is kept for each interface, allow it to be viewed.

Based on work by Chen Guanqiao <chen.chenchacha@foxmail.com>

Cc: Chen Guanqiao <chen.chenchacha@foxmail.com>
Signed-off-by: Corey Minyard <cminyard@mvista.com>
---
 drivers/char/ipmi/ipmi_msghandler.c | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index 2a05199e8224..3ba188e05ca6 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -457,6 +457,8 @@ struct ipmi_smi {
 	struct list_head users;
 	struct srcu_struct users_srcu;
 	atomic_t nr_users;
+	struct device_attribute nr_users_devattr;
+
 
 	/* Used for wake ups at startup. */
 	wait_queue_head_t waitq;
@@ -3506,6 +3508,17 @@ void ipmi_poll_interface(struct ipmi_user *user)
 }
 EXPORT_SYMBOL(ipmi_poll_interface);
 
+static ssize_t nr_users_show(struct device *dev,
+			     struct device_attribute *attr,
+			     char *buf)
+{
+	struct ipmi_smi *intf = container_of(attr,
+			 struct ipmi_smi, nr_users_devattr);
+
+	return sysfs_emit(buf, "%d\n", atomic_read(&intf->nr_users));
+}
+static DEVICE_ATTR_RO(nr_users);
+
 static void redo_bmc_reg(struct work_struct *work)
 {
 	struct ipmi_smi *intf = container_of(work, struct ipmi_smi,
@@ -3628,6 +3641,12 @@ int ipmi_add_smi(struct module         *owner,
 	if (rv)
 		goto out_err_bmc_reg;
 
+	intf->nr_users_devattr = dev_attr_nr_users;
+	sysfs_attr_init(&intf->nr_users_devattr.attr);
+	rv = device_create_file(intf->si_dev, &intf->nr_users_devattr);
+	if (rv)
+		goto out_err_bmc_reg;
+
 	/*
 	 * Keep memory order straight for RCU readers.  Make
 	 * sure everything else is committed to memory before
@@ -3724,6 +3743,8 @@ void ipmi_unregister_smi(struct ipmi_smi *intf)
 
 	/* At this point no users can be added to the interface. */
 
+	device_remove_file(intf->si_dev, &intf->nr_users_devattr);
+
 	/*
 	 * Call all the watcher interfaces to tell them that
 	 * an interface is going away.
-- 
2.25.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

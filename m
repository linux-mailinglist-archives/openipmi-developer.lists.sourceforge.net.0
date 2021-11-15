Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C11D45052D
	for <lists+openipmi-developer@lfdr.de>; Mon, 15 Nov 2021 14:17:09 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mmbr5-0000lH-8W; Mon, 15 Nov 2021 13:17:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ioanna-maria.alifieraki@canonical.com>)
 id 1mmbr3-0000l1-FE
 for openipmi-developer@lists.sourceforge.net; Mon, 15 Nov 2021 13:17:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=K4Tpv8FhF+swF1QOJJDtTIl0jGfawRNMwuEF57mHnhA=; b=bIcOBKKR4pfnIPFgnhOEHDNtey
 HW9UHaNE95s45e2nEWmwpQ/9unqLfSmvlOHnlniDnjVWmro5fPWUOlTk7ygXpR+QAZ5DK44KEJTqj
 P89yn5nHcJfwxySx5f2esJeM56aIvwFrGvkxYEIjJ0zKqw15S1OgAzK5rpYJbcBL1IZM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=K4Tpv8FhF+swF1QOJJDtTIl0jGfawRNMwuEF57mHnhA=; b=TsGaVElp1QWYZ//cyVX+74Snoi
 BZsCdNdnccjerzVZytKZ9z1+rrDcYTnp12WdVf4Ow6gcTF+xjMvBuBeSzjI7yLShg4nPBCHp6QB59
 +4kRbF114kexi35PpXxr/WvZrbdm4Zt1UmqTTkKl5/9xPZh7Fvut2u5HpGxEAaCCmeIg=;
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mmbqz-00Dj5G-DF
 for openipmi-developer@lists.sourceforge.net; Mon, 15 Nov 2021 13:17:02 +0000
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id EA1E03F1B3
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 15 Nov 2021 13:16:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1636982208;
 bh=K4Tpv8FhF+swF1QOJJDtTIl0jGfawRNMwuEF57mHnhA=;
 h=From:To:Subject:Date:Message-Id;
 b=QKmVpnPgFIKCWYUEcsASTU0qVttnoT7rV10CiDU5fui43qbDbe5L6vnTBLUFTIrAU
 cffmJkBRNhyUJjihiSPQmIYp9agoNp7cKEBlIPPvFiMTnY3JTdZoSSBidn/SfcsQl+
 4if2/sgEeTd2qomS4xrvdTz1Fnafcf0StbGQKGdrTFQ73Y6klc+3QYbMgf61hV+5cn
 sMST7yqpMj+iHNIMhFAxTj8khxnrp8BVsaMrJMnXpRvzhhebbvbAU1vemLRZdvWXPO
 CVgI9wWfcpyzfExfQKKcdTZH9Vsjqt0ZmiBeKRd79osinuCoy8vY4LSrJZFCa/FXU+
 0jeauACAuXQZg==
Received: by mail-ed1-f70.google.com with SMTP id
 m8-20020a056402510800b003e29de5badbso13933598edd.18
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 15 Nov 2021 05:16:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=K4Tpv8FhF+swF1QOJJDtTIl0jGfawRNMwuEF57mHnhA=;
 b=FdHRHTVG5qsREe4OjaNVKYJN7Cg9rfKM9MBwpS21ZA86fAp5V3Peii8HyD73IGEV0B
 a7qeGp3ZGRwh2q3jcmP7Rd3aYDVnq+H6RYWzEb/e7ZVvxUihIizax/KLR8AjEitTXy3S
 jdfJTJCxDdhV7vyUMfWZWON54Ppmym15KBnTjZodZB3mU1/P9IMTTOT31s4tsceC1F6p
 cLKK3XgIT2vAKCSG8AWibEYkyNqG3hPKMEwlvqHEXS818/cxyyWONuAJSI1qqm26gQAp
 cT1eRvCOJR+9SivAeBBYwBinjgSlj9mj8zV4C+NNsFqGZ0IwTrsZ7geIzBS4baHJ1NfC
 1OJg==
X-Gm-Message-State: AOAM533MykYwph/fBbThe+367fbgqxVzVuPYS0hUfgeJzfIfJN1hTGlR
 ypoG7UV9xsYF7IIe+VDY09UbCbEQMPC+pD37VcQwr3WDrIXgrV50qB7EiiDGlFAFqwl7eAFBzTC
 IfwlBVyxEyFZO8qeDGInqae0NUyYxfQhu5Kr8f6htAjXjpLVrU+3HV2YYXw==
X-Received: by 2002:a05:6402:4381:: with SMTP id
 o1mr52408119edc.301.1636982207468; 
 Mon, 15 Nov 2021 05:16:47 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxXaUPsd1rpZtYTPzsBc/AAnTH0TNQ4iOT/8vDyX51rKauD7oN9OteTNh2f1jLRwuGbVkp2Vg==
X-Received: by 2002:a05:6402:4381:: with SMTP id
 o1mr52408090edc.301.1636982207232; 
 Mon, 15 Nov 2021 05:16:47 -0800 (PST)
Received: from localhost ([2001:67c:1560:8007::aac:c2e0])
 by smtp.gmail.com with ESMTPSA id r7sm7735220edd.5.2021.11.15.05.16.46
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 15 Nov 2021 05:16:46 -0800 (PST)
From: Ioanna Alifieraki <ioanna-maria.alifieraki@canonical.com>
To: linux-kernel@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 minyard@acm.org
Date: Mon, 15 Nov 2021 15:16:45 +0200
Message-Id: <20211115131645.25116-1-ioanna-maria.alifieraki@canonical.com>
X-Mailer: git-send-email 2.17.1
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Currently when removing an ipmi_user the removal is deferred
 as a work on the system's workqueue. Although this guarantees the free
 operation
 will occur in non atomic context, it can race with the ipm [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.125.188.122 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1mmbqz-00Dj5G-DF
Subject: [Openipmi-developer] [PATCH v2] ipmi: Move remove_work to dedicated
 workqueue
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Currently when removing an ipmi_user the removal is deferred as a work on
the system's workqueue. Although this guarantees the free operation will
occur in non atomic context, it can race with the ipmi_msghandler module
removal (see [1]) . In case a remove_user work is scheduled for removal
and shortly after ipmi_msghandler module is removed we can end up in a
situation where the module is removed fist and when the work is executed
the system crashes with :
BUG: unable to handle page fault for address: ffffffffc05c3450
PF: supervisor instruction fetch in kernel mode
PF: error_code(0x0010) - not-present page
because the pages of the module are gone. In cleanup_ipmi() there is no
easy way to detect if there are any pending works to flush them before
removing the module. This patch creates a separate workqueue and schedules
the remove_work works on it. When removing the module the workqueue is
drained when destroyed to avoid the race.

[1] https://bugs.launchpad.net/bugs/1950666

Cc: stable@vger.kernel.org
Fixes: 3b9a907223d7 (ipmi: fix sleep-in-atomic in free_user at cleanup SRCU user->release_barrier)
Signed-off-by: Ioanna Alifieraki <ioanna-maria.alifieraki@canonical.com>
---
 drivers/char/ipmi/ipmi_msghandler.c | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index deed355422f4..1ade72bfae0f 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -191,6 +191,8 @@ struct ipmi_user {
 	struct work_struct remove_work;
 };
 
+struct workqueue_struct *remove_work_wq;
+
 static struct ipmi_user *acquire_ipmi_user(struct ipmi_user *user, int *index)
 	__acquires(user->release_barrier)
 {
@@ -1297,7 +1299,7 @@ static void free_user(struct kref *ref)
 	struct ipmi_user *user = container_of(ref, struct ipmi_user, refcount);
 
 	/* SRCU cleanup must happen in task context. */
-	schedule_work(&user->remove_work);
+	queue_work(remove_work_wq, &user->remove_work);
 }
 
 static void _ipmi_destroy_user(struct ipmi_user *user)
@@ -5383,6 +5385,13 @@ static int ipmi_init_msghandler(void)
 
 	atomic_notifier_chain_register(&panic_notifier_list, &panic_block);
 
+	remove_work_wq = create_singlethread_workqueue("ipmi-msghandler-remove-wq");
+	if (!remove_work_wq) {
+		pr_err("unable to create ipmi-msghandler-remove-wq workqueue");
+		rv = -ENOMEM;
+		goto out;
+	}
+
 	initialized = true;
 
 out:
@@ -5408,6 +5417,8 @@ static void __exit cleanup_ipmi(void)
 	int count;
 
 	if (initialized) {
+		destroy_workqueue(remove_work_wq);
+
 		atomic_notifier_chain_unregister(&panic_notifier_list,
 						 &panic_block);
 
-- 
2.17.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

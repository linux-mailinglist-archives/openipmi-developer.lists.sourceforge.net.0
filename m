Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C1AFF44EBD0
	for <lists+openipmi-developer@lfdr.de>; Fri, 12 Nov 2021 18:09:38 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mla3S-00050t-UV; Fri, 12 Nov 2021 17:09:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ioanna-maria.alifieraki@canonical.com>)
 id 1mlZon-0000cr-Cg
 for openipmi-developer@lists.sourceforge.net; Fri, 12 Nov 2021 16:54:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Y/bAo0SDjZGHNLG0oYIbJ4ke5jmML832/GVhH0WD5jo=; b=Jr6LrsCYmIW8B5AgtkWOTiscKt
 rG6z+ksBrPKDzkM9zvOnvBsmUNvfZal68vJsb9lAp3Qcrr0BMu7xTdsN+VaOAVmFgtwodcYgmuMtJ
 cnBIN3mYymk+q2z+yqn7mzA6NO4bOE9xDTJyZPQN5+YtSzJ9EsX7QsvRTZtD7tX+WOKo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Y/bAo0SDjZGHNLG0oYIbJ4ke5jmML832/GVhH0WD5jo=; b=l0tAHNLJRzzYRcf92nCP1kLEn0
 B06aeUdfr+SuLk6iYeNNul7QjqNIq6LgDfhV2OTzpiAjXLoSF422TfHaDhOegLiBAxC8Taxmy3aWd
 0I/af6EjTYXKojm+hOrvOrJ/sfprHbXBXiVeOZ64KC+xZnZO/V1V+jGwzLJTUaxr500U=;
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mlZom-00AyzT-Av
 for openipmi-developer@lists.sourceforge.net; Fri, 12 Nov 2021 16:54:26 +0000
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 343303F1A0
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 12 Nov 2021 16:54:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1636736056;
 bh=Y/bAo0SDjZGHNLG0oYIbJ4ke5jmML832/GVhH0WD5jo=;
 h=From:To:Subject:Date:Message-Id;
 b=A/1DugZfb/wRrW+03b653wA2pyjx/oIZBna10J17ldvu7C9g3rELip04Lm5ChHbXe
 PyxAucQuwoZSqBuXMv5jOrIWrwotEMshADYL/ka341H30rPI23o7/YqeoZpWGptxi9
 l8bkezF+fDR/02B2WXrZs8fusZn1C6WD6ftekiC3shpoT8jqQV0oLCVB+o/Occng2F
 7Q6kNYXmoKHYoj3BMaNvnSiUY6VNFmnnn0WX5Alnmekh8I46SDmHJN7IcxrfoR4uqW
 DbM3FCl9wFAeXkF07eiIJmGJQM3zzRt9zrOB9wv7LWXhdzFojmglAidM5kFJIBU5Sz
 /DSDt4EPIitPA==
Received: by mail-wm1-f69.google.com with SMTP id
 201-20020a1c04d2000000b003335bf8075fso3629494wme.0
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 12 Nov 2021 08:54:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=Y/bAo0SDjZGHNLG0oYIbJ4ke5jmML832/GVhH0WD5jo=;
 b=lp/r9+7TlKeIBhtK4XemgXc6dFgTDhr33aOC0+SaMom1E2ejv8m4a7b4dezmFs/4qV
 IBXg4rcJxZM/1N70/1y9yBFOvLC/b7u0THjD2YLnnao4NjtdNQbSokgrL/TubHswVufs
 9B1U3Uktk5dSLahAlFvPf3jEU2eG+yEc0kGLlm2IscYk6UOVkTsuUHRyU7k+6v5mkGAb
 QevZN61s1YAf5A1imL/ww0xuTDLVw+LhAbRJ/S1BdOixsTTyZQduPDTddfd4impI6Izj
 X7S7lO69c559BviRoZe+Fjez97sfdhHv/DBp/qdo03ytSVbXXBag1ZKgpzWCtUURSqa2
 RwxA==
X-Gm-Message-State: AOAM532vUiPD3HVyp0AfY4H2HrKd0cIh+W42M5pdvxjPNw9VU2ySG2q4
 PkJIxfvoUrvTWAHqhwLn5PdD+v4Y/OZUeBOlVMzPSD+2v4Qd9PF7smrhq1c90TBPuOXB3oeCpoo
 vCZztEX5uGnJ4GS5gYVT2q0BxXcjVxsStCyjiLNvo3syFAEzoQQKqL7vqvA==
X-Received: by 2002:adf:ca05:: with SMTP id o5mr20302337wrh.7.1636736055651;
 Fri, 12 Nov 2021 08:54:15 -0800 (PST)
X-Google-Smtp-Source: ABdhPJy2dRTmDY3BwfEIJtHI/Hdal6tFLaJCXm9rAXKIQXdG53F20asemuEbcQ1oyNio7ZR9YfpGJQ==
X-Received: by 2002:adf:ca05:: with SMTP id o5mr20302316wrh.7.1636736055445;
 Fri, 12 Nov 2021 08:54:15 -0800 (PST)
Received: from localhost ([2001:67c:1560:8007::aac:c2e0])
 by smtp.gmail.com with ESMTPSA id 8sm4503314wmg.24.2021.11.12.08.54.14
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 12 Nov 2021 08:54:14 -0800 (PST)
From: Ioanna Alifieraki <ioanna-maria.alifieraki@canonical.com>
To: linux-kernel@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 minyard@acm.org, ioanna.alifieraki@gmail.com
Date: Fri, 12 Nov 2021 18:54:13 +0200
Message-Id: <20211112165413.7747-1-ioanna-maria.alifieraki@canonical.com>
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
 medium trust [185.125.188.123 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1mlZom-00AyzT-Av
X-Mailman-Approved-At: Fri, 12 Nov 2021 17:09:32 +0000
Subject: [Openipmi-developer] [PATCH] ipmi: Move remove_work to dedicated
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
flushed to avoid the race.

[1] https://bugs.launchpad.net/bugs/1950666

Cc: stable@vger.kernel.org
Fixes: 3b9a907223d7 (ipmi: fix sleep-in-atomic in free_user at cleanup SRCU user->release_barrier)
Signed-off-by: Ioanna Alifieraki <ioanna-maria.alifieraki@canonical.com>
---
 drivers/char/ipmi/ipmi_msghandler.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index deed355422f4..9e0ad2ccd3e0 100644
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
@@ -5383,6 +5385,8 @@ static int ipmi_init_msghandler(void)
 
 	atomic_notifier_chain_register(&panic_notifier_list, &panic_block);
 
+	remove_work_wq = create_singlethread_workqueue("ipmi-msghandler-remove-wq");
+
 	initialized = true;
 
 out:
@@ -5408,6 +5412,9 @@ static void __exit cleanup_ipmi(void)
 	int count;
 
 	if (initialized) {
+		flush_workqueue(remove_work_wq);
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

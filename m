Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 629C4AEF843
	for <lists+openipmi-developer@lfdr.de>; Tue,  1 Jul 2025 14:23:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Mime-Version:Date:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=HUh2QPIUFI3+m9F3gDrMsygF+Lc1imbjBPPOZ5PFd4o=; b=f8C7FThbpXKU/2ziJrd3bMIuyH
	7gXMdfOfW8pSicEgzrpB9b32WIfxN+GxNrEdcYsVGCUoFBkMrm12K8hvH+Ydcd0t1nFIZu1A4boxM
	pYH9KP6yNFQsq+6+W7g+aofsNU6OpHA+L1PdE9eia5JxUS3XBEIh6XoVbk/9ChFmu1sM=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1uWa0u-0003TH-Ny;
	Tue, 01 Jul 2025 12:23:04 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3vcRiaAgKABwB24CE2F38GG8D6.4GE@flex--jackmanb.bounces.google.com>)
 id 1uWIOs-0000mI-Pf for openipmi-developer@lists.sourceforge.net;
 Mon, 30 Jun 2025 17:34:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:From:Subject:Message-ID:
 Mime-Version:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kM+poFmpKItXkYaDEhmuFa89I8i1fFFkiIMelce0Oe4=; b=Ii5b7gi6ggJFUdnxq4WjMAUGxX
 fCR39mBPijpdIB8JxBrGLguu74bI8eZC+olJzwXLAk3fXIt4hciU+NkCobY9QhC4Ku9nckW5PoYaL
 EQySOcim9VrAMcQWbsBilDDRLJhlu2VU+0ZqTuZKLxoz8R0F0PJvAqdfeev3cWKOYnuU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:From:Subject:Message-ID:Mime-Version:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=kM+poFmpKItXkYaDEhmuFa89I8i1fFFkiIMelce0Oe4=; b=M
 prBRkRk7ogXuI4uPE/QMBUpAFqoNg0rOlc2DNr8GeutPkWxQhDIwplz7M68tuit6zwCjGhVw0hUhs
 /+48rruKSDbQaJotUJgS1nR+9vnZwnj5yYQROEhAVoqgXi+c55uKGSPGe0XAcp7EWaO7fjbBKdFw0
 nR6ABVRc3GH1koMU=;
Received: from mail-lj1-f202.google.com ([209.85.208.202])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uWIOs-0008CY-Dk for openipmi-developer@lists.sourceforge.net;
 Mon, 30 Jun 2025 17:34:38 +0000
Received: by mail-lj1-f202.google.com with SMTP id
 38308e7fff4ca-32b88283ecdso8804771fa.3
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 30 Jun 2025 10:34:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1751304867; x=1751909667;
 darn=lists.sourceforge.net; 
 h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
 :date:message-id:reply-to;
 bh=kM+poFmpKItXkYaDEhmuFa89I8i1fFFkiIMelce0Oe4=;
 b=Py/103JcOBqmGFcX/+Im8bHaQtZKHRv6Luseipo/TgjktIr3XETd9M2PmILiZp+xKk
 SVAlqHP2tV+Zam/1evJ1hbkf1VGOtOP85fYLdbiHh0Y1WUmEuQCnitBHBCCnzATx5VMq
 3geQmx+j1X8QrdITdO8FqoUaX2FtTO5Q6pwNLrFDwIQYZGkA77aikY7wLX3GeyJjZqI0
 vreS43vKdIsCs+DptMynDKnyAEoS1azKsLppiD1mfkoDEYT/UJjbA36rsZYkA/p3mt7p
 Ul+fwYTQQrwNruMXrM5PVkxzSiyJNzKna4Mdg2PtEtKfwtkTud9JFvNrokX2lzBqpZWD
 TgRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1751304867; x=1751909667;
 h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=kM+poFmpKItXkYaDEhmuFa89I8i1fFFkiIMelce0Oe4=;
 b=tl1FuL9bYizgbo11DyNFat+79N0uwZTIcDjeFtd/lIRIT1kWNt/DOOKYKw4n/SEQyO
 KQegBUyejA1u3fLAmAlI2X7ofNBHs2Aw8DFDf/H2zGz1kbhkAAe/YQUmtoGQM0saV8wh
 N42FbSd9GnRwsKZXQ0OP27waxNxd6daa1M2YO5wKwBVzUzYFreT201BdQzyleHrSbE64
 vcmJOkJ7zVflzDxCk9xsSb0FRN5Fhrqw8I4rPcPgA0I+5F+kwamul59qP2HOTZAVI9Bw
 D4Dw+65tahs78UoMOMQ93oS2Wb95bzCu07kyOnCSrmhR9hQYpjmxwzlBDtmo+F9qeIdq
 I6ww==
X-Forwarded-Encrypted: i=1;
 AJvYcCWyQR1JFJbbHjK7W+paAVT8PF0MFOfIkfqmCxWLo/VNV6o6GUGHaUgsbSGxuGH7YrMoJt+CMG3ocBxtzLflkTLG9EA=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YxvZWrbh15g/byW/qDLsjYw/hg+sxATLPG7hYVhhFgFIVk28lCf
 mkRXJUamjY6LZwodnwZChfpC/xz8gCabk2dpuq31RlIjWc9UmJ6VrR3tBdJ+yCNVy2XH+mAm6aP
 kI3lgw+XhPCNm/Q==
X-Google-Smtp-Source: AGHT+IFZGpWbed6vexGOhMFfsFnZUtmsDJtWbg/hA2nciuk/aGV5FLxw5JHySasMeCX1Yv92C2NXaTWKwGhhHQ==
X-Received: from wmbeq14.prod.google.com
 ([2002:a05:600c:848e:b0:442:ea0c:c453])
 (user=jackmanb job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:600c:4fd1:b0:453:6f1:bdba with SMTP id
 5b1f17b1804b1-4538ee60a60mr116785185e9.20.1751303357487; 
 Mon, 30 Jun 2025 10:09:17 -0700 (PDT)
Date: Mon, 30 Jun 2025 17:09:02 +0000
Mime-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAK3EYmgC/x2MWwqAIBAAryL7nWCG9rhK9GG21kJZaEQg3j3pc
 4ZhEkQMhBEGliDgQ5FOX6CuGNjN+BU5LYVBCqmEbgSn6yDu6OVWaeVa0XfGLVDyK2DR/2qEeJt
 5R5hy/gD2RrruYgAAAA==
X-Change-Id: 20250630-ipmi-fix-c565f7098afd
X-Mailer: b4 0.14.2
Message-ID: <20250630-ipmi-fix-v1-1-2d496de3c856@google.com>
To: stable@vger.kernel.org, Corey Minyard <minyard@acm.org>
X-Spam-Score: -7.7 (-------)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Dan Carpenter <dan.carpenter@linaro.org> commit
 fa332f5dc6fc662ad7d3200048772c96b861cf6b
 upstream The "intf" list iterator is an invalid pointer if the correct
 "intf->intf_num"
 is not found. Calling atomic_dec(&intf->nr_users) on and invalid pointer
 will lead to memory corruption. 
 Content analysis details:   (-7.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -7.5 USER_IN_DEF_DKIM_WL From: address is in the default DKIM welcome-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.202 listed in wl.mailspike.net]
 -0.1 DKIMWL_WL_MED          DKIMwl.org - Medium trust sender
X-Headers-End: 1uWIOs-0008CY-Dk
X-Mailman-Approved-At: Tue, 01 Jul 2025 12:23:02 +0000
Subject: [Openipmi-developer] [PATCH stable] ipmi:msghandler: Fix potential
 memory corruption in ipmi_create_user()
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
From: Brendan Jackman via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Brendan Jackman <jackmanb@google.com>
Cc: Corey Minyard <cminyard@mvista.com>, Brendan Jackman <jackmanb@google.com>,
 linux-kernel@vger.kernel.org, Corey Minyard <corey@minyard.net>,
 openipmi-developer@lists.sourceforge.net,
 Dan Carpenter <dan.carpenter@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

From: Dan Carpenter <dan.carpenter@linaro.org>

commit fa332f5dc6fc662ad7d3200048772c96b861cf6b upstream

The "intf" list iterator is an invalid pointer if the correct
"intf->intf_num" is not found.  Calling atomic_dec(&intf->nr_users) on
and invalid pointer will lead to memory corruption.

We don't really need to call atomic_dec() if we haven't called
atomic_add_return() so update the if (intf->in_shutdown) path as well.

Fixes: 8e76741c3d8b ("ipmi: Add a limit on the number of users that may use IPMI")
Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
Message-ID: <aBjMZ8RYrOt6NOgi@stanley.mountain>
Signed-off-by: Corey Minyard <corey@minyard.net>
Signed-off-by: Brendan Jackman <jackmanb@google.com>
---
I have tested this in 6.12 with Google's platform drivers added to
reproduce the bug.  The bug causes the panic notifier chain to get
corrupted leading to a crash. With the fix this goes away.

Applies to 6.6 too but I haven't tested it there.

Backport changes:

- Dropped change to the `if (intf->in_shutdown)` block since that logic
  doesn't exist yet.
- Modified out_unlock to release the srcu lock instead of the mutex
  since we don't have the mutex here yet.
---
 drivers/char/ipmi/ipmi_msghandler.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index e12b531f5c2f338008a42dc2c35b0a62395c9f3c..6a4a8ecd0edd02793eda70f9f9ae578e37da477f 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -1241,7 +1241,7 @@ int ipmi_create_user(unsigned int          if_num,
 	}
 	/* Not found, return an error */
 	rv = -EINVAL;
-	goto out_kfree;
+	goto out_unlock;
 
  found:
 	if (atomic_add_return(1, &intf->nr_users) > max_users) {
@@ -1283,6 +1283,7 @@ int ipmi_create_user(unsigned int          if_num,
 
 out_kfree:
 	atomic_dec(&intf->nr_users);
+out_unlock:
 	srcu_read_unlock(&ipmi_interfaces_srcu, index);
 	vfree(new_user);
 	return rv;

---
base-commit: 783cd2c3dca8b6c434e955b84c20c8940588dc68
change-id: 20250630-ipmi-fix-c565f7098afd

Best regards,
-- 
Brendan Jackman <jackmanb@google.com>



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

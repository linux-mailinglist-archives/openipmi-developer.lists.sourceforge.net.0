Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EFAED62DD55
	for <lists+openipmi-developer@lfdr.de>; Thu, 17 Nov 2022 14:54:43 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1ovfLi-0001fk-T9;
	Thu, 17 Nov 2022 13:54:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <error27@gmail.com>) id 1ouvp8-0008Fl-QA
 for openipmi-developer@lists.sourceforge.net;
 Tue, 15 Nov 2022 13:17:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cn4oLeM4/WSor+vqTKerVOxO2dOWJ/t8ipQ7qyGi7iM=; b=iPmc4Nms8jzoGKRSzpFJ/JXzzO
 +idM55EcoLDkKsMDMxOsWK4Wr/E8hrCSfFVKCsWdgxfwezchjTKjVkPCUPUvQgsStM3X+EBO1uMI8
 BWApqDTLMikVAqsrGwuf+vs9FBD16mg1KBADmaCJ6wVoK1GWRg8wgzOqEaZBqUrTnY+I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=cn4oLeM4/WSor+vqTKerVOxO2dOWJ/t8ipQ7qyGi7iM=; b=F
 RUXx/mmnFQwXwqY6uzXjZB3fle9aFa+bsw+wEBWp3QycsOEtcYqa3eCrd/4yovfSzRkuW+32M3G3Z
 POhAM44WMvRVIEgpXyYIMK+3M0z3qWKb9JplJ0ltR+9H1rG1LDMlxpv/damY0XlhaGEuDEDyUgt/m
 FCpldOhj4dD8JY2c=;
Received: from mail-wr1-f44.google.com ([209.85.221.44])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ouvp7-0096MV-0t for openipmi-developer@lists.sourceforge.net;
 Tue, 15 Nov 2022 13:17:58 +0000
Received: by mail-wr1-f44.google.com with SMTP id k8so24240767wrh.1
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 15 Nov 2022 05:17:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=cn4oLeM4/WSor+vqTKerVOxO2dOWJ/t8ipQ7qyGi7iM=;
 b=kWYN6PxkAflBd15vSFdttht7EfigImbUQzfKGyxcUPUbBiEw/u4FFGR6KVOTQlWSmo
 bOBev3q23PDFztJRb+kHIhU4tnuYqD7/UVXh7G42lgyHTqT9RFmyWoh9ETTblMGQGgej
 V/VMBJ8XgRaTlr6Jgdtu7JWegfbMRnBAkul3ObUyL/0KbXuIoMFWfoRqE2n36yxWjybF
 Wmo8FUqRPhY7HXZ6ttZtBUpg3hhUne0tYssztbL4O/XMLC5OCZxj/sXsmG2rTU6njRYs
 K2AlIiqfiS1k6qwogD6dk7fBd+oK1yAKsZhHvpBpTO18+hfshcvt5qQG87U7aAlHEzM5
 GsWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=cn4oLeM4/WSor+vqTKerVOxO2dOWJ/t8ipQ7qyGi7iM=;
 b=pmQ0b5BVaV/yqo9mY2vZy3/wTWrB98tLY0xJRmtc21Wup50sHzXFzD+kjeqec0ZhuG
 Y1NnTijO86D0u0Zs+CexOvCeFv0PdPyvpe+HC79duBjKqE85t5OvBB3kTysDlSwxEkHM
 UG2N5SCAq2oHr7IAqbmZnZcK/VJL9p1DuWPQFg4jtyjBDmPbMh2j/vgDEabDx9xgSddC
 4f+N/WzRLyeKIY9KSzbA3xe1fGCPEGdjGlpfhF3BYss6E9k7hMyZA0jcJ9iQQ4IzylxV
 g8ygNOKd0cxytES3t0CdoTYrbUfotNjV2mbWEORIJF+BEJ4n4ElXE75bNnDCsTXBICJm
 I2nw==
X-Gm-Message-State: ANoB5pk5tr5melTvTMMLGMVs9+AoXss8hWMOO/8NSb64fNKqk52xHXA6
 GrVajnPu8/qRek44JtpyxKs=
X-Google-Smtp-Source: AA0mqf64msYfNMwbczePvjjicKTeoUkmhKEBKtvKTt1Ic4ny8v1TZUm4BIO1uXn9GSIqfcPNe+EHWw==
X-Received: by 2002:adf:ebc9:0:b0:236:57f5:5d8a with SMTP id
 v9-20020adfebc9000000b0023657f55d8amr10247357wrn.460.1668518270620; 
 Tue, 15 Nov 2022 05:17:50 -0800 (PST)
Received: from localhost ([102.36.222.112]) by smtp.gmail.com with ESMTPSA id
 t17-20020a05600c199100b003b4fdbb6319sm21993263wmq.21.2022.11.15.05.17.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Nov 2022 05:17:50 -0800 (PST)
Date: Tue, 15 Nov 2022 16:17:43 +0300
From: Dan Carpenter <error27@gmail.com>
To: Corey Minyard <minyard@acm.org>
Message-ID: <Y3M8xa1drZv4CToE@kili>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The intf_free() function frees the "intf" pointer so we
 cannot
 dereference it again on the next line. Fixes: cbb79863fc31 ("ipmi: Don't
 allow device module unload when in use") Signed-off-by: Dan Carpenter ---
 drivers/char/ipmi/ipmi_msghandler.c | 4 +++- 1 file changed, 3 insertions(+), 
 1 deletion(- [...] 
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [error27[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [error27[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.44 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.44 listed in wl.mailspike.net]
X-Headers-End: 1ouvp7-0096MV-0t
X-Mailman-Approved-At: Thu, 17 Nov 2022 13:54:31 +0000
Subject: [Openipmi-developer] [PATCH] ipmi: fix use after free in
 _ipmi_destroy_user()
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
Cc: openipmi-developer@lists.sourceforge.net, kernel-janitors@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

The intf_free() function frees the "intf" pointer so we cannot
dereference it again on the next line.

Fixes: cbb79863fc31 ("ipmi: Don't allow device module unload when in use")
Signed-off-by: Dan Carpenter <error27@gmail.com>
---
 drivers/char/ipmi/ipmi_msghandler.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index f6b8ca6df9b5..186f1fee7534 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -1330,6 +1330,7 @@ static void _ipmi_destroy_user(struct ipmi_user *user)
 	unsigned long    flags;
 	struct cmd_rcvr  *rcvr;
 	struct cmd_rcvr  *rcvrs = NULL;
+	struct module    *owner;
 
 	if (!acquire_ipmi_user(user, &i)) {
 		/*
@@ -1392,8 +1393,9 @@ static void _ipmi_destroy_user(struct ipmi_user *user)
 		kfree(rcvr);
 	}
 
+	owner = intf->owner;
 	kref_put(&intf->refcount, intf_free);
-	module_put(intf->owner);
+	module_put(owner);
 }
 
 int ipmi_destroy_user(struct ipmi_user *user)
-- 
2.35.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

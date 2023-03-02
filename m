Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DD1F6A8ABE
	for <lists+openipmi-developer@lfdr.de>; Thu,  2 Mar 2023 21:47:11 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1pXppS-00089O-LZ;
	Thu, 02 Mar 2023 20:47:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mcgrof@infradead.org>) id 1pXppQ-00089B-L8
 for openipmi-developer@lists.sourceforge.net;
 Thu, 02 Mar 2023 20:47:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dtfyNVshuDQIj+dlbLKUh3FrBpHjPuB+OiDl4kHMg0w=; b=SBfhmLQpiEGGwtm1e6L/itp1Wz
 e0gKhk5KrKK9mOcvSzwTxeS9ynL22w0kwVVoOF0IQ6P4jTgi+JhsQ/Lvr25XNZB5httMQO9Hw99vW
 lwnNQyDIyozosvFr4KuNQ/2ZgMdv29Hpcit2pBNOJZg/JDwDvsUMHPFzHv4H2h/3mRsw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=dtfyNVshuDQIj+dlbLKUh3FrBpHjPuB+OiDl4kHMg0w=; b=FGR2L0gC484/J2qAC0Putec6SN
 c11RTvs47zvuvFZ5TVqQdSQ7iy33oZNuneaXoZlKd07tGHuOoDdXD5otcJy/mUW+337Ik58LVSaCg
 2ABXiSBvLdSx0rkPh2GD3mIWeZgesNvX8I5aKKpq6uciqU9d7f7qhh9ytMBTuCcT847U=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pXppM-00069z-3u for openipmi-developer@lists.sourceforge.net;
 Thu, 02 Mar 2023 20:47:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Sender:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 Reply-To:Content-Type:Content-ID:Content-Description;
 bh=dtfyNVshuDQIj+dlbLKUh3FrBpHjPuB+OiDl4kHMg0w=; b=y+/KNE5d+TW3hH8L9Iql5pMuDY
 mtQ2q1980lq3pkwG/xQP1LmilCyPNzezGqF7q0DG5V7xsGEwDTYwL1JvJCDFTe/zRXH57HGHD5QW/
 O8UeGtO2rrvC7q1JiYXTkhaSl2XwOkiMf9u7Bw475hl1I50DYfKypH7bafzPo/5auQO5nAWWpyMzo
 gGUrJvFV6cuTyc3hE4lyn5hDmXOrOPtNk1IXXmXNQPVhLjpjwJ7GPmbWttNzvSv3PP/4O3nghH0oh
 Q9RypKa5XuLJaNXMpBIQPO6xY6fjA5jHIzzVMBlTxnFZ6w8BOSv37SOKMsJSXJC05q7iNhPjFZil9
 SHo+B+Mg==;
Received: from mcgrof by bombadil.infradead.org with local (Exim 4.94.2 #2
 (Red Hat Linux)) id 1pXpoc-003HXY-T5; Thu, 02 Mar 2023 20:46:14 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: ebiederm@xmission.com, keescook@chromium.org, yzaikin@google.com,
 jejb@linux.ibm.com, martin.petersen@oracle.com, minyard@acm.org,
 kys@microsoft.com, haiyangz@microsoft.com, wei.liu@kernel.org,
 decui@microsoft.com, song@kernel.org, robinmholt@gmail.com,
 steve.wahl@hpe.com, mike.travis@hpe.com, arnd@arndb.de,
 gregkh@linuxfoundation.org, jirislaby@kernel.org, jgross@suse.com,
 sstabellini@kernel.org, oleksandr_tyshchenko@epam.com,
 xen-devel@lists.xenproject.org
Date: Thu,  2 Mar 2023 12:46:12 -0800
Message-Id: <20230302204612.782387-8-mcgrof@kernel.org>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20230302204612.782387-1-mcgrof@kernel.org>
References: <20230302204612.782387-1-mcgrof@kernel.org>
MIME-Version: 1.0
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: register_sysctl_table() is a deprecated compatibility
 wrapper.
 register_sysctl_init() can do the directory creation for you so just use
 that. Signed-off-by: Luis Chamberlain <mcgrof@kernel.org> ---
 drivers/xen/balloon.c
 | 20 + 1 file changed, 1 insertion(+), 19 deletions(-) 
 Content analysis details:   (-2.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.137.202.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1pXppM-00069z-3u
Subject: [Openipmi-developer] [PATCH 7/7] xen: simplify sysctl registration
 for balloon
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
Cc: j.granados@samsung.com, linux-hyperv@vger.kernel.org,
 linux-scsi@vger.kernel.org, sujiaxun@uniontech.com, tangmeng@uniontech.com,
 apparmor@lists.ubuntu.com, patches@lists.linux.dev, willy@infradead.org,
 linux-kernel@vger.kernel.org, linux-raid@vger.kernel.org,
 Luis Chamberlain <mcgrof@kernel.org>, zhangpeng362@huawei.com,
 linux-fsdevel@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 nixiaoming@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

register_sysctl_table() is a deprecated compatibility wrapper.
register_sysctl_init() can do the directory creation for you so just
use that.

Signed-off-by: Luis Chamberlain <mcgrof@kernel.org>
---
 drivers/xen/balloon.c | 20 +-------------------
 1 file changed, 1 insertion(+), 19 deletions(-)

diff --git a/drivers/xen/balloon.c b/drivers/xen/balloon.c
index 617a7f4f07a8..586a1673459e 100644
--- a/drivers/xen/balloon.c
+++ b/drivers/xen/balloon.c
@@ -97,24 +97,6 @@ static struct ctl_table balloon_table[] = {
 	{ }
 };
 
-static struct ctl_table balloon_root[] = {
-	{
-		.procname	= "balloon",
-		.mode		= 0555,
-		.child		= balloon_table,
-	},
-	{ }
-};
-
-static struct ctl_table xen_root[] = {
-	{
-		.procname	= "xen",
-		.mode		= 0555,
-		.child		= balloon_root,
-	},
-	{ }
-};
-
 #else
 #define xen_hotplug_unpopulated 0
 #endif
@@ -747,7 +729,7 @@ static int __init balloon_init(void)
 #ifdef CONFIG_XEN_BALLOON_MEMORY_HOTPLUG
 	set_online_page_callback(&xen_online_page);
 	register_memory_notifier(&xen_memory_nb);
-	register_sysctl_table(xen_root);
+	register_sysctl_init("xen/balloon", balloon_table);
 #endif
 
 	balloon_add_regions();
-- 
2.39.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

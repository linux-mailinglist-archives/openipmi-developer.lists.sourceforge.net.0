Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 524DA6A8AC2
	for <lists+openipmi-developer@lfdr.de>; Thu,  2 Mar 2023 21:47:14 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1pXppW-0008AO-Tx;
	Thu, 02 Mar 2023 20:47:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mcgrof@infradead.org>) id 1pXppT-00089e-1u
 for openipmi-developer@lists.sourceforge.net;
 Thu, 02 Mar 2023 20:47:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=71lfCsPo7yFKiIAEzb7+CVhOSJuKqCJLiCYyMEP1nX8=; b=m5O6HOcxT6Z4tOjxree6GRIbuQ
 KATacTMmExLsizoJjZhmGSKeycLv/OwDnnOQx4kXmZYsmsdV4B7VCBiNbOUHwpcuBqoiiNeEdxojU
 VOA8CCsAE/2EKg6Wg/pYv4/bcHOYU0l0p6/DBjK2HHoBzfT39z1MWVayoyB+iZKOOKQ4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=71lfCsPo7yFKiIAEzb7+CVhOSJuKqCJLiCYyMEP1nX8=; b=fyVBSbea17ud6SU/MK1C/eId4K
 rTfHT1HoKpNyDY60P3SCewdQgpFiaCcGmUKUm48QPXeSviY1hNB4LNf3vHLc06pLcCaJww95ISUQY
 NuVorjF7HbpeD01goxhB6UW8O2r9b869vHGrwqv2dxCKJFCSXZ7ylwpWqLSMo3XJfwlg=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pXppN-00E0dc-M7 for openipmi-developer@lists.sourceforge.net;
 Thu, 02 Mar 2023 20:47:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Sender:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 Reply-To:Content-Type:Content-ID:Content-Description;
 bh=71lfCsPo7yFKiIAEzb7+CVhOSJuKqCJLiCYyMEP1nX8=; b=p6Yel5Hfld+1FW2EBNV5366POq
 vJPcZmFCSoBMiHWsnzV+jFaz/uDjYDZKCSMVih6k7yTXZeK0esG+XoqGZm9PRwj7XoUWz1rJk2q/E
 W+/FxaL2XVpQFgwiqiS/BLSFmuYGCiJ2RytjR/MyXk6RSB5u/Gb6pD9cbTP3FOuh/IUlWNVZg9nlC
 ae1SW5g3A+R91mMBWyCJsTKqh3vMrYlSFc91+9y4TqjqjC2hXi5zZKAl59br57tm1NS/Si0Gk8WIN
 4LHLL8b5jmRCk45aZvhVhNvYHw+agvS23gBr87drZJxFTEPUWGT0jgdOq4ItcyYm6kfRP8hHNOmNG
 e/bvQgIQ==;
Received: from mcgrof by bombadil.infradead.org with local (Exim 4.94.2 #2
 (Red Hat Linux)) id 1pXpoc-003HXU-Mw; Thu, 02 Mar 2023 20:46:14 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: ebiederm@xmission.com, keescook@chromium.org, yzaikin@google.com,
 jejb@linux.ibm.com, martin.petersen@oracle.com, minyard@acm.org,
 kys@microsoft.com, haiyangz@microsoft.com, wei.liu@kernel.org,
 decui@microsoft.com, song@kernel.org, robinmholt@gmail.com,
 steve.wahl@hpe.com, mike.travis@hpe.com, arnd@arndb.de,
 gregkh@linuxfoundation.org, jirislaby@kernel.org, jgross@suse.com,
 sstabellini@kernel.org, oleksandr_tyshchenko@epam.com,
 xen-devel@lists.xenproject.org
Date: Thu,  2 Mar 2023 12:46:10 -0800
Message-Id: <20230302204612.782387-6-mcgrof@kernel.org>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20230302204612.782387-1-mcgrof@kernel.org>
References: <20230302204612.782387-1-mcgrof@kernel.org>
MIME-Version: 1.0
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Although this driver is a good use case for having a
 directory
 that is not other directories and then subdirectories with more entries,
 the usage of register_sysctl_table() can recurse and increases c [...] 
 Content analysis details:   (-2.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.137.202.133 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1pXppN-00E0dc-M7
Subject: [Openipmi-developer] [PATCH 5/7] sgi-xp: simplify sysctl
 registration
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

Although this driver is a good use case for having a directory
that is not other directories and then subdirectories with more
entries, the usage of register_sysctl_table() can recurse and
increases complexity so to avoid that just split out the
registration to each directory with its own entries.

register_sysctl_table() is a deprecated compatibility wrapper.
register_sysctl() can do the directory creation for you so just use
that.

Signed-off-by: Luis Chamberlain <mcgrof@kernel.org>
---
 drivers/misc/sgi-xp/xpc_main.c | 24 ++++++++++--------------
 1 file changed, 10 insertions(+), 14 deletions(-)

diff --git a/drivers/misc/sgi-xp/xpc_main.c b/drivers/misc/sgi-xp/xpc_main.c
index b2c3c22fc13c..6da509d692bb 100644
--- a/drivers/misc/sgi-xp/xpc_main.c
+++ b/drivers/misc/sgi-xp/xpc_main.c
@@ -93,7 +93,7 @@ int xpc_disengage_timelimit = XPC_DISENGAGE_DEFAULT_TIMELIMIT;
 static int xpc_disengage_min_timelimit;	/* = 0 */
 static int xpc_disengage_max_timelimit = 120;
 
-static struct ctl_table xpc_sys_xpc_hb_dir[] = {
+static struct ctl_table xpc_sys_xpc_hb[] = {
 	{
 	 .procname = "hb_interval",
 	 .data = &xpc_hb_interval,
@@ -112,11 +112,7 @@ static struct ctl_table xpc_sys_xpc_hb_dir[] = {
 	 .extra2 = &xpc_hb_check_max_interval},
 	{}
 };
-static struct ctl_table xpc_sys_xpc_dir[] = {
-	{
-	 .procname = "hb",
-	 .mode = 0555,
-	 .child = xpc_sys_xpc_hb_dir},
+static struct ctl_table xpc_sys_xpc[] = {
 	{
 	 .procname = "disengage_timelimit",
 	 .data = &xpc_disengage_timelimit,
@@ -127,14 +123,9 @@ static struct ctl_table xpc_sys_xpc_dir[] = {
 	 .extra2 = &xpc_disengage_max_timelimit},
 	{}
 };
-static struct ctl_table xpc_sys_dir[] = {
-	{
-	 .procname = "xpc",
-	 .mode = 0555,
-	 .child = xpc_sys_xpc_dir},
-	{}
-};
+
 static struct ctl_table_header *xpc_sysctl;
+static struct ctl_table_header *xpc_sysctl_hb;
 
 /* non-zero if any remote partition disengage was timed out */
 int xpc_disengage_timedout;
@@ -1041,6 +1032,8 @@ xpc_do_exit(enum xp_retval reason)
 
 	if (xpc_sysctl)
 		unregister_sysctl_table(xpc_sysctl);
+	if (xpc_sysctl_hb)
+		unregister_sysctl_table(xpc_sysctl_hb);
 
 	xpc_teardown_partitions();
 
@@ -1243,7 +1236,8 @@ xpc_init(void)
 		goto out_1;
 	}
 
-	xpc_sysctl = register_sysctl_table(xpc_sys_dir);
+	xpc_sysctl = register_sysctl("xpc", xpc_sys_xpc);
+	xpc_sysctl_hb = register_sysctl("xpc/hb", xpc_sys_xpc_hb);
 
 	/*
 	 * Fill the partition reserved page with the information needed by
@@ -1308,6 +1302,8 @@ xpc_init(void)
 	(void)unregister_die_notifier(&xpc_die_notifier);
 	(void)unregister_reboot_notifier(&xpc_reboot_notifier);
 out_2:
+	if (xpc_sysctl_hb)
+		unregister_sysctl_table(xpc_sysctl_hb);
 	if (xpc_sysctl)
 		unregister_sysctl_table(xpc_sysctl);
 
-- 
2.39.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

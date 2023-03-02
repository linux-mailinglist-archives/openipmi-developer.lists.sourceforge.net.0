Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E5F6B6A8ABC
	for <lists+openipmi-developer@lfdr.de>; Thu,  2 Mar 2023 21:47:10 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1pXppS-00089W-VG;
	Thu, 02 Mar 2023 20:47:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mcgrof@infradead.org>) id 1pXppQ-00089C-Lq
 for openipmi-developer@lists.sourceforge.net;
 Thu, 02 Mar 2023 20:47:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FdfA4hbd8rob4fQ8ALRTamLZAV/vYtVA6accqcc3SkE=; b=da4liRX99hkvdWvYXJhb0+PRja
 UcOMog4lxVGG8RXRNsvZDTTHfqQ+4zypUbuGFRT8GdmaHJ/Nr8q3xQc7hcEXd8/1WSPfrGbgb80qY
 mkPJfqdxf/nkUiuol0FmzBUBiG8pWo0VxiBOx4dZSL2e2aaG+ZnWluHgdZGucjz4yAxI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=FdfA4hbd8rob4fQ8ALRTamLZAV/vYtVA6accqcc3SkE=; b=Z/xciaMnbnHSyDkpeMSVmwmUiY
 IuqXt/Ml4vgmqK6ramRe7k5r6nj1ICL28d9C9L+FGDuvcAZXYWUWFi5VcAdu9sZdkPqG+o4NFtLJa
 1J89Ji1BXji4wnL1x+6MklbgdEB9NqdYeRedgYY6XdCP60dD23g905FCR8vxn7ai6PSE=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pXppM-0006A6-3v for openipmi-developer@lists.sourceforge.net;
 Thu, 02 Mar 2023 20:47:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Sender:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 Reply-To:Content-Type:Content-ID:Content-Description;
 bh=FdfA4hbd8rob4fQ8ALRTamLZAV/vYtVA6accqcc3SkE=; b=fhFYPSITeZQoANR5nzpZq4Y0OT
 BQwHzsCAGMKWCiIoSIoIot7NNKjVrWJ2csclbdX/OOhLJYxICH7Q27IOcnWVnqBV6tXuU8kS52aj/
 YqHN4NX4N7fDDw4Ys9oApL+1jemtpaghDeLGYs3gvxuvAl+0KPuQkX4VoZYK3yKfBN3VTD7lR+L5y
 zoheqXVFYPGrL8npa41ZLEY4CWXClu94akdIDtt8HOvD3vZ7MVf6ahgT4td72SzQ/DFF6hyJSXBYo
 SVjTazXdtUIiOEkwWaBbVYO6PEJRqGYpTuZBgGoMQZtE1KOOqHJdw0x9dSfjUV+NG5jW2pzVBmTGb
 MxuTRIgg==;
Received: from mcgrof by bombadil.infradead.org with local (Exim 4.94.2 #2
 (Red Hat Linux)) id 1pXpoc-003HXS-K5; Thu, 02 Mar 2023 20:46:14 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: ebiederm@xmission.com, keescook@chromium.org, yzaikin@google.com,
 jejb@linux.ibm.com, martin.petersen@oracle.com, minyard@acm.org,
 kys@microsoft.com, haiyangz@microsoft.com, wei.liu@kernel.org,
 decui@microsoft.com, song@kernel.org, robinmholt@gmail.com,
 steve.wahl@hpe.com, mike.travis@hpe.com, arnd@arndb.de,
 gregkh@linuxfoundation.org, jirislaby@kernel.org, jgross@suse.com,
 sstabellini@kernel.org, oleksandr_tyshchenko@epam.com,
 xen-devel@lists.xenproject.org
Date: Thu,  2 Mar 2023 12:46:09 -0800
Message-Id: <20230302204612.782387-5-mcgrof@kernel.org>
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
 Content preview: register_sysctl_table() is a deprecated compatibility
 wrapper.
 register_sysctl() can do the directory creation for you so just use that.
 Signed-off-by: Luis Chamberlain <mcgrof@kernel.org> --- drivers/md/md.c |
 22 + 1 file changed, 1 insertion(+), 21 deletions(-) 
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
X-Headers-End: 1pXppM-0006A6-3v
Subject: [Openipmi-developer] [PATCH 4/7] md: simplify sysctl registration
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
register_sysctl() can do the directory creation for you so just use
that.

Signed-off-by: Luis Chamberlain <mcgrof@kernel.org>
---
 drivers/md/md.c | 22 +---------------------
 1 file changed, 1 insertion(+), 21 deletions(-)

diff --git a/drivers/md/md.c b/drivers/md/md.c
index 927a43db5dfb..546b1b81eb28 100644
--- a/drivers/md/md.c
+++ b/drivers/md/md.c
@@ -322,26 +322,6 @@ static struct ctl_table raid_table[] = {
 	{ }
 };
 
-static struct ctl_table raid_dir_table[] = {
-	{
-		.procname	= "raid",
-		.maxlen		= 0,
-		.mode		= S_IRUGO|S_IXUGO,
-		.child		= raid_table,
-	},
-	{ }
-};
-
-static struct ctl_table raid_root_table[] = {
-	{
-		.procname	= "dev",
-		.maxlen		= 0,
-		.mode		= 0555,
-		.child		= raid_dir_table,
-	},
-	{  }
-};
-
 static int start_readonly;
 
 /*
@@ -9650,7 +9630,7 @@ static int __init md_init(void)
 	mdp_major = ret;
 
 	register_reboot_notifier(&md_notifier);
-	raid_table_header = register_sysctl_table(raid_root_table);
+	raid_table_header = register_sysctl("dev/raid", raid_table);
 
 	md_geninit();
 	return 0;
-- 
2.39.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

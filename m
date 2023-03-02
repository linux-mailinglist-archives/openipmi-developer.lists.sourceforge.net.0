Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 046056A8ABD
	for <lists+openipmi-developer@lfdr.de>; Thu,  2 Mar 2023 21:47:11 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1pXppS-00011t-4q;
	Thu, 02 Mar 2023 20:47:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mcgrof@infradead.org>) id 1pXppR-00011m-II
 for openipmi-developer@lists.sourceforge.net;
 Thu, 02 Mar 2023 20:47:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vfrPqlpwv8UtDJtEckddNe/7V4TGRdI///FWzG6Y790=; b=WnoFQZIg/XG1fI/hONRA2bWpSO
 yOp3oOqnxEYzsJun0BthqYZoWbjjwSvpbookDdK2HhlUf5XompSNHc/Tga4ulHkRu42LlbjeB62HO
 fKyuqCfNpFR8+oq2RNjYvt4MRyTHPnpDLEpvMHawv32E9PDRKYS+nR8S52gTle+3JlvU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vfrPqlpwv8UtDJtEckddNe/7V4TGRdI///FWzG6Y790=; b=DLcb3xdQPdpA8Jms513dDzUdc+
 29Q9dxheJrNNlDQA4pU5eEjSjkxvmKt3R+4lhdvfUAZpUNAoMw3eF6apUk3kOMAD3Y4F/gQ58tkQF
 jCUGgs3XDJKegDzB8qS+d+m9U6p7OCG+bDbzyCbT+mDDgu/GlMUby3l+RQw/MB7RgVDE=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pXppM-0006A4-3w for openipmi-developer@lists.sourceforge.net;
 Thu, 02 Mar 2023 20:47:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Sender:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 Reply-To:Content-Type:Content-ID:Content-Description;
 bh=vfrPqlpwv8UtDJtEckddNe/7V4TGRdI///FWzG6Y790=; b=1CcCUGLBcs0TG5syyZ+Ce28wnZ
 TxulkQAu2Jm0WRJA6sb0GzobJ5R2x0XtLkbJm7zUd+adTEbOuyDoBktLQaR6+NEjbd3hP800Zv4ab
 CP94tMtVo225TVDQQpPfR4eKirU6KAgyGAv7UhKUNv+tsNT8dKsrw7xAeorlwpNtCx/ojqVajYfJ8
 TyL5KCOZWwicnmes7WAvAKy3iK6h57YsUSyGiVJDO7nGE50XaEzfpHPHXTpGghPM2rtIyQHyCvtPl
 lFxB/iKwkZSDU6fgE+Job9uIOTovRK96UQqV0J9jEUh9JHRAQp8aC/33h166ouZa/n2rgQvbbVdx6
 eEuIbxjQ==;
Received: from mcgrof by bombadil.infradead.org with local (Exim 4.94.2 #2
 (Red Hat Linux)) id 1pXpoc-003HXM-Ao; Thu, 02 Mar 2023 20:46:14 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: ebiederm@xmission.com, keescook@chromium.org, yzaikin@google.com,
 jejb@linux.ibm.com, martin.petersen@oracle.com, minyard@acm.org,
 kys@microsoft.com, haiyangz@microsoft.com, wei.liu@kernel.org,
 decui@microsoft.com, song@kernel.org, robinmholt@gmail.com,
 steve.wahl@hpe.com, mike.travis@hpe.com, arnd@arndb.de,
 gregkh@linuxfoundation.org, jirislaby@kernel.org, jgross@suse.com,
 sstabellini@kernel.org, oleksandr_tyshchenko@epam.com,
 xen-devel@lists.xenproject.org
Date: Thu,  2 Mar 2023 12:46:06 -0800
Message-Id: <20230302204612.782387-2-mcgrof@kernel.org>
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
 register_sysctl() can do the directory creation for you so just use that.
 Signed-off-by: Luis Chamberlain <mcgrof@kernel.org> ---
 drivers/scsi/scsi_sysctl.c
 | 16 + 1 file changed, 1 insertion(+), 15 deletions(-) 
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
X-Headers-End: 1pXppM-0006A4-3w
Subject: [Openipmi-developer] [PATCH 1/7] scsi: simplify sysctl registration
 with register_sysctl()
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
register_sysctl() can do the directory creation for you so just use that.

Signed-off-by: Luis Chamberlain <mcgrof@kernel.org>
---
 drivers/scsi/scsi_sysctl.c | 16 +---------------
 1 file changed, 1 insertion(+), 15 deletions(-)

diff --git a/drivers/scsi/scsi_sysctl.c b/drivers/scsi/scsi_sysctl.c
index 7259704a7f52..7f0914ea168f 100644
--- a/drivers/scsi/scsi_sysctl.c
+++ b/drivers/scsi/scsi_sysctl.c
@@ -21,25 +21,11 @@ static struct ctl_table scsi_table[] = {
 	{ }
 };
 
-static struct ctl_table scsi_dir_table[] = {
-	{ .procname	= "scsi",
-	  .mode		= 0555,
-	  .child	= scsi_table },
-	{ }
-};
-
-static struct ctl_table scsi_root_table[] = {
-	{ .procname	= "dev",
-	  .mode		= 0555,
-	  .child	= scsi_dir_table },
-	{ }
-};
-
 static struct ctl_table_header *scsi_table_header;
 
 int __init scsi_init_sysctl(void)
 {
-	scsi_table_header = register_sysctl_table(scsi_root_table);
+	scsi_table_header = register_sysctl("dev/scsi", scsi_table);
 	if (!scsi_table_header)
 		return -ENOMEM;
 	return 0;
-- 
2.39.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

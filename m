Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0455A6A8AC0
	for <lists+openipmi-developer@lfdr.de>; Thu,  2 Mar 2023 21:47:14 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1pXppX-00012X-Ef;
	Thu, 02 Mar 2023 20:47:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mcgrof@infradead.org>) id 1pXppU-000129-In
 for openipmi-developer@lists.sourceforge.net;
 Thu, 02 Mar 2023 20:47:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TtTbUH5PQh3QevctuMber+EjZGKoMVpZ7Bm0T6SOQ6g=; b=T8ex8f23bG0L/pj9RYDVhD5Jwt
 MCxSAGW4Yjc47fWQ1lpV3qP4xrqWLtT5H5xHwcDrSRmxxTb6G8INVP7YCiEAZigDuBkF2MXKHxD3u
 03xOYlK6LBsH0p0TU9s0f6nC1VfLnbykmoVjM4CIcVacPSSc9WVQZ4fRUWhdciow9XrI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TtTbUH5PQh3QevctuMber+EjZGKoMVpZ7Bm0T6SOQ6g=; b=EGKpBajQnx2KgoT225Aqt7E9T3
 Ng4ZdJNjby5VJMMT/VVVF3ht3tI6cq5VwoRVPxmTatHnP4yWnhmQXEUmvR/CHZARxu0NIjf7osOmT
 a7Y/5iS3493KOELvEgDvNQI651LXhVSg2MTYOePWRex09D0bUr98VdKAU9HM+q7wiGlk=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pXppN-00E0di-M8 for openipmi-developer@lists.sourceforge.net;
 Thu, 02 Mar 2023 20:47:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Sender:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 Reply-To:Content-Type:Content-ID:Content-Description;
 bh=TtTbUH5PQh3QevctuMber+EjZGKoMVpZ7Bm0T6SOQ6g=; b=houTJrT5MUluykuM7s1Uc148K3
 GhLI9ASwlgAnteOvFMS4cTsCdKtG82GtTT4Zcr9HncBDiN2PA/JjUo9peW7g1cx2BhR4//0t/yscv
 5IpFo0vcRylXz5s7cE4j0GUn5BKxF1V3uGlaVF0kLGgZuReSbCP/VPJVjuNYboAkpG/PiDxNyDUra
 cVS+I7dVkXOuXr7xnABfgxQLYK8/WfVd3pUiuNrtYXMwDKui183PRS9ebugKbOpGbY3Y5TBFq3kbQ
 ndzN/NkOUhn281UgUQr5UWaEuzp2/EgEHwN9hb5K87XzVbBxcVXtt+E3QheP8aaBbeZpR/TXb+Prl
 oswf6iaA==;
Received: from mcgrof by bombadil.infradead.org with local (Exim 4.94.2 #2
 (Red Hat Linux)) id 1pXpoc-003HXQ-HE; Thu, 02 Mar 2023 20:46:14 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: ebiederm@xmission.com, keescook@chromium.org, yzaikin@google.com,
 jejb@linux.ibm.com, martin.petersen@oracle.com, minyard@acm.org,
 kys@microsoft.com, haiyangz@microsoft.com, wei.liu@kernel.org,
 decui@microsoft.com, song@kernel.org, robinmholt@gmail.com,
 steve.wahl@hpe.com, mike.travis@hpe.com, arnd@arndb.de,
 gregkh@linuxfoundation.org, jirislaby@kernel.org, jgross@suse.com,
 sstabellini@kernel.org, oleksandr_tyshchenko@epam.com,
 xen-devel@lists.xenproject.org
Date: Thu,  2 Mar 2023 12:46:08 -0800
Message-Id: <20230302204612.782387-4-mcgrof@kernel.org>
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
 Signed-off-by: Luis Chamberlain <mcgrof@kernel.org> --- drivers/hv/vmbus_drv.c
 | 11 + 1 file changed, 1 insertion(+), 10 deletions(-) 
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
X-Headers-End: 1pXppN-00E0di-M8
Subject: [Openipmi-developer] [PATCH 3/7] hv: simplify sysctl registration
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
 drivers/hv/vmbus_drv.c | 11 +----------
 1 file changed, 1 insertion(+), 10 deletions(-)

diff --git a/drivers/hv/vmbus_drv.c b/drivers/hv/vmbus_drv.c
index d24dd65b33d4..229353f1e9c2 100644
--- a/drivers/hv/vmbus_drv.c
+++ b/drivers/hv/vmbus_drv.c
@@ -1460,15 +1460,6 @@ static struct ctl_table hv_ctl_table[] = {
 	{}
 };
 
-static struct ctl_table hv_root_table[] = {
-	{
-		.procname	= "kernel",
-		.mode		= 0555,
-		.child		= hv_ctl_table
-	},
-	{}
-};
-
 /*
  * vmbus_bus_init -Main vmbus driver initialization routine.
  *
@@ -1547,7 +1538,7 @@ static int vmbus_bus_init(void)
 		 * message recording won't be available in isolated
 		 * guests should the following registration fail.
 		 */
-		hv_ctl_table_hdr = register_sysctl_table(hv_root_table);
+		hv_ctl_table_hdr = register_sysctl("kernel", hv_ctl_table);
 		if (!hv_ctl_table_hdr)
 			pr_err("Hyper-V: sysctl table register error");
 
-- 
2.39.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

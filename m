Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BD3B3C4DB67
	for <lists+openipmi-developer@lfdr.de>; Tue, 11 Nov 2025 13:28:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Message-ID:Date:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/rvagi4esGY1Tw0pJCbjRPf9gywpwd0xxCcyeuadPWg=; b=VXnkCgrUQavf+G0OXvGcg0d5zg
	3l8TfNhT+DOu8UmgbkcBB1SixGv3x7bsqG15vyO6+IJGIq7hXYVbFerzLSJngWXB7VVyKEhjl7MKg
	fkEThiExx/1sll6eZR8YxThfCozakNwHh2f6Ou0yNWQpqJ+3qZG9enzKgeoPKafVs0s4=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vInTu-0003R0-8Y;
	Tue, 11 Nov 2025 12:28:18 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1vInTo-0003Pf-B9 for openipmi-developer@lists.sourceforge.net;
 Tue, 11 Nov 2025 12:28:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FQfO/dHUT8H9AOfSYNXpwXKL8bDmxr6R3xHM72+WK9w=; b=I7ihiBQ+4XMg674uGoQ2bnH/+Z
 GkxmlbS04XAjwYFaCG6/YDKvoXwx81cv2iIdSwTSoCHYSdkDVx1SyrP3ZidVe63pr75qGH+vpbn/h
 hLWaKa5jnO5gKfDocP1DTYdyGRX5zCbLuBznqp+dT20ju3PBMdcAKb1TxuZu/1NIxb/E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=FQfO/dHUT8H9AOfSYNXpwXKL8bDmxr6R3xHM72+WK9w=; b=D3pdmrejukP1SjtPdeaF3zJMaz
 waTy7jZaJ6CPo6RGm/tZmbQY9wvqaF4LECUtTPsTSSkWmpf9A7NfqbFasD+69X3+ceyxZdhLpRuJ7
 jZ83O0NuoKcEbl8PxzpOWNR3EK3vwZIlXu8B7I+sIZgolGOj7WkY5MLnyX3nncGdwZco=;
Received: from mgamail.intel.com ([192.198.163.9])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vInTn-0005AZ-S8 for openipmi-developer@lists.sourceforge.net;
 Tue, 11 Nov 2025 12:28:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762864092; x=1794400092;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GOmlU8+AxY4qiyUG0euFaX4L/EDMDObrk8lwMAMh1Z8=;
 b=jMgLc2WBxSHMoXM371XSE3aFEPn7AZEqM+QEh9zObSDBv1NHJKMasdak
 SKkx7C9Cc+RJG8Q63pgqaWjLHt+sf4GLQJQ64C7uGIk0Zg2Rg7NbvJBDq
 fmxlOIe/Q5tpl2FtGTfW0nGAU1QpiPjgopZprS0Xml2JqfbyfEs8TbmBi
 Tk3ZMDFCQZNB33zYUqT/ExaXieZPkxnEFyWnZo8Y2uV9ZK2bknK6eGfej
 nzHvJUVLjB3rZXv5O2359ayjaSAj6bjY2I3ejHajamdug3dyaHoIp6KoI
 hjAdyWkdRdjHbFScsnn1Xoa9quJliBMoFV9XGVe/0RepaKE+B7GLY7MQP g==;
X-CSE-ConnectionGUID: lkEZVMHwRgq/KMhp2Rkd0g==
X-CSE-MsgGUID: T995TAP4Rn2x2zHEmX/nZg==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="75607159"
X-IronPort-AV: E=Sophos;i="6.19,296,1754982000"; d="scan'208";a="75607159"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 04:28:11 -0800
X-CSE-ConnectionGUID: yia3IgRZTfCq+ASYpaMpdQ==
X-CSE-MsgGUID: GuUz5Yd9Su+K/4bCpbkVwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,296,1754982000"; d="scan'208";a="188592928"
Received: from black.igk.intel.com ([10.91.253.5])
 by fmviesa007.fm.intel.com with ESMTP; 11 Nov 2025 04:28:04 -0800
Received: by black.igk.intel.com (Postfix, from userid 1003)
 id 44FE2A7; Tue, 11 Nov 2025 13:27:38 +0100 (CET)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Corey Minyard <corey@minyard.net>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 "Dr. David Alan Gilbert" <linux@treblig.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Rob Clark <robin.clark@oss.qualcomm.com>,
 Matthew Brost <matthew.brost@intel.com>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Vitaly Lifshits <vitaly.lifshits@intel.com>,
 Manivannan Sadhasivam <mani@kernel.org>, Niklas Cassel <cassel@kernel.org>,
 Calvin Owens <calvin@wbinvd.org>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Sagi Maimon <maimon.sagi@gmail.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Karan Tilak Kumar <kartilak@cisco.com>,
 Hans Verkuil <hverkuil+cisco@kernel.org>,
 Casey Schaufler <casey@schaufler-ca.com>,
 Steven Rostedt <rostedt@goodmis.org>, Petr Mladek <pmladek@suse.com>,
 Viacheslav Dubeyko <Slava.Dubeyko@ibm.com>,
 Max Kellermann <max.kellermann@ionos.com>, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org,
 linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, linux-mmc@vger.kernel.org,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-pci@vger.kernel.org, linux-s390@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-staging@lists.linux.dev,
 ceph-devel@vger.kernel.org, linux-trace-kernel@vger.kernel.org
Date: Tue, 11 Nov 2025 13:20:17 +0100
Message-ID: <20251111122735.880607-18-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20251111122735.880607-1-andriy.shevchenko@linux.intel.com>
References: <20251111122735.880607-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Use %ptSp instead of open coded variants to print content
 of struct timespec64 in human readable format. While at it, fix wrong use
 of %ptT against struct timespec64. It's kinda lucky that it worked just
 because
 the first member there 64-bit and it's of time64_t type. Now with %ptS it
 may be used correct [...] 
 Content analysis details:   (-0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1vInTn-0005AZ-S8
Subject: [Openipmi-developer] [PATCH v2 17/21] ptp: ocp: Switch to use %ptSp
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
Cc: Andrew Lunn <andrew@lunn.ch>, Jan Hoeppner <hoeppner@linux.ibm.com>,
 Gustavo Padovan <gustavo@padovan.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 Alexander Gordeev <agordeev@linux.ibm.com>, David Airlie <airlied@gmail.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
 Simona Vetter <simona@ffwll.ch>, Xiubo Li <xiubli@redhat.com>,
 Jonathan Corbet <corbet@lwn.net>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Ilya Dryomov <idryomov@gmail.com>,
 Paolo Abeni <pabeni@redhat.com>, Konrad Dybcio <konradybcio@kernel.org>,
 Heiko Carstens <hca@linux.ibm.com>, Masami Hiramatsu <mhiramat@kernel.org>,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Satish Kharat <satishkh@cisco.com>,
 Vasily Gorbik <gor@linux.ibm.com>,
 Sergey Senozhatsky <senozhatsky@chromium.org>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Abhinav Kumar <abhinav.kumar@linux.dev>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Stefan Haberland <sth@linux.ibm.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Sean Paul <sean@poorly.run>,
 Rodolfo Giometti <giometti@enneenne.com>,
 Christian Borntraeger <borntraeger@linux.ibm.com>,
 Dmitry Baryshkov <lumag@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sesidhar Baddela <sebaddel@cisco.com>, Jessica Zhang <jesszhan0024@gmail.com>,
 Sven Schnelle <svens@linux.ibm.com>, Jonathan Lemon <jonathan.lemon@gmail.com>,
 Andrew Morton <akpm@linux-foundation.org>, Vladimir Oltean <olteanv@gmail.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Use %ptSp instead of open coded variants to print content of
struct timespec64 in human readable format.

While at it, fix wrong use of %ptT against struct timespec64.
It's kinda lucky that it worked just because the first member
there 64-bit and it's of time64_t type. Now with %ptS it may
be used correctly.

Acked-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>
Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/ptp/ptp_ocp.c | 13 +++++--------
 1 file changed, 5 insertions(+), 8 deletions(-)

diff --git a/drivers/ptp/ptp_ocp.c b/drivers/ptp/ptp_ocp.c
index eeebe4d149f7..21a8109fae34 100644
--- a/drivers/ptp/ptp_ocp.c
+++ b/drivers/ptp/ptp_ocp.c
@@ -4293,11 +4293,9 @@ ptp_ocp_summary_show(struct seq_file *s, void *data)
 		ns += (s64)bp->utc_tai_offset * NSEC_PER_SEC;
 		sys_ts = ns_to_timespec64(ns);
 
-		seq_printf(s, "%7s: %lld.%ld == %ptT TAI\n", "PHC",
-			   ts.tv_sec, ts.tv_nsec, &ts);
-		seq_printf(s, "%7s: %lld.%ld == %ptT UTC offset %d\n", "SYS",
-			   sys_ts.tv_sec, sys_ts.tv_nsec, &sys_ts,
-			   bp->utc_tai_offset);
+		seq_printf(s, "%7s: %ptSp == %ptS TAI\n", "PHC", &ts, &ts);
+		seq_printf(s, "%7s: %ptSp == %ptS UTC offset %d\n", "SYS",
+			   &sys_ts, &sys_ts, bp->utc_tai_offset);
 		seq_printf(s, "%7s: PHC:SYS offset: %lld  window: %lld\n", "",
 			   timespec64_to_ns(&ts) - ns,
 			   post_ns - pre_ns);
@@ -4505,9 +4503,8 @@ ptp_ocp_phc_info(struct ptp_ocp *bp)
 		 ptp_clock_index(bp->ptp));
 
 	if (!ptp_ocp_gettimex(&bp->ptp_info, &ts, NULL))
-		dev_info(&bp->pdev->dev, "Time: %lld.%ld, %s\n",
-			 ts.tv_sec, ts.tv_nsec,
-			 bp->sync ? "in-sync" : "UNSYNCED");
+		dev_info(&bp->pdev->dev, "Time: %ptSp, %s\n",
+			 &ts, bp->sync ? "in-sync" : "UNSYNCED");
 }
 
 static void
-- 
2.50.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

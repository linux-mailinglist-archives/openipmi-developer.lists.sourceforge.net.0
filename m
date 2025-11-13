Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 540DAC582A4
	for <lists+openipmi-developer@lfdr.de>; Thu, 13 Nov 2025 16:03:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Message-ID:Date:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/rvagi4esGY1Tw0pJCbjRPf9gywpwd0xxCcyeuadPWg=; b=GRoV/4YecpTpPvLsRLFh7i0gLH
	Ai6HifoQYci140Qm5tVTNbWl7bZW1zFkgsUlR+kwkzpl2imEPJANd0o3KZm0si5h3JSMxwAfhNvjp
	dZ4zWLIHmBFSCXNy8wxsW2mqXn+fDwAmoECiaGmqXxIXdEL3zWhBZNx3ugjU8zHiVjRg=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vJYqz-0000B8-MR;
	Thu, 13 Nov 2025 15:03:17 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1vJYqg-00009h-QI for openipmi-developer@lists.sourceforge.net;
 Thu, 13 Nov 2025 15:02:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FQfO/dHUT8H9AOfSYNXpwXKL8bDmxr6R3xHM72+WK9w=; b=cB3rW9gv2ZrKG1LCSuLT942ckA
 Aw1FFvrP2k6l7D0D74AzLcoZQPwm3C7LUtnP3lOrX6hqjTTmWETiFy1akAtfXsJCstT5H7b5EDhLo
 eCgcRpJ4QVPansBIS1USnutX49ImvvtVUjzsC/CPD/s0oRi50OHszZs6MAnvzeUbiQX0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=FQfO/dHUT8H9AOfSYNXpwXKL8bDmxr6R3xHM72+WK9w=; b=DC2ON7Lu1Rk+WCmA59fPDContM
 juWLZ0kKzzHIODczmEGRvFTTDNp5nyZrWyHYVHfMRgwGabmIPON363R1TRGMIAYKTPsP2/i4sdKzK
 RPKk9wC9+JN/oQsWYJF4S6m1iAnEeW3fpfWj4AXhkE7cDkVZhPxhXBNY/5S4MrITik6c=;
Received: from mgamail.intel.com ([192.198.163.12])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vJYqg-0000Jt-D7 for openipmi-developer@lists.sourceforge.net;
 Thu, 13 Nov 2025 15:02:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763046179; x=1794582179;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GOmlU8+AxY4qiyUG0euFaX4L/EDMDObrk8lwMAMh1Z8=;
 b=YiLnhQ3otwj+Bhyk6lMOGhMM8k0i9kJJ3XTuEbUmt/CAMg63EUE2EmoR
 AVL7Pmlj7QCx7ACahUlxSXKbM8RJqVNQzV1x11jQJyvDH/X8AZXHNzsl6
 s1PwIbu7WzELbUTqKSLT9JuU7DinhYKCXDVKHeJMFM/7RVZt8Xw5zPUPx
 GqCBfN4RGLUHKCNIda0tqNlhSWSbALgNmyUeSxddn+ZnGSux3WFFcAKeQ
 UY3Y2lg08QflNsvA1O4x2+GKxYUYGMjyUXmn676K9fgXaJ8L/NqS55gJA
 vM9H6rb9LgcyXd9uu4iCDXnAwaREt/V+8QhUCloHBAk7sBY1M3Okfodhh w==;
X-CSE-ConnectionGUID: OpIaN3PbQv2KwVNXH0efZg==
X-CSE-MsgGUID: TTOm4KTxT8ykKoBKaPWehw==
X-IronPort-AV: E=McAfee;i="6800,10657,11612"; a="68991735"
X-IronPort-AV: E=Sophos;i="6.19,302,1754982000"; d="scan'208";a="68991735"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 07:02:58 -0800
X-CSE-ConnectionGUID: VoHVivOhTuuJ8F2T91fvwQ==
X-CSE-MsgGUID: aM4vg+x7RCGNGIIJNMHExw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,302,1754982000"; d="scan'208";a="188810329"
Received: from black.igk.intel.com ([10.91.253.5])
 by orviesa010.jf.intel.com with ESMTP; 13 Nov 2025 07:02:48 -0800
Received: by black.igk.intel.com (Postfix, from userid 1003)
 id 6DC70A7; Thu, 13 Nov 2025 16:02:19 +0100 (CET)
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
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
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
Date: Thu, 13 Nov 2025 15:32:31 +0100
Message-ID: <20251113150217.3030010-18-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20251113150217.3030010-1-andriy.shevchenko@linux.intel.com>
References: <20251113150217.3030010-1-andriy.shevchenko@linux.intel.com>
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
X-Headers-End: 1vJYqg-0000Jt-D7
Subject: [Openipmi-developer] [PATCH v3 17/21] ptp: ocp: Switch to use %ptSp
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

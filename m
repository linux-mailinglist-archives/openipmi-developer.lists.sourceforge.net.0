Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 36446C48AC9
	for <lists+openipmi-developer@lfdr.de>; Mon, 10 Nov 2025 19:48:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Message-ID:Date:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xQBd6prSdAtuIzyxjjKb260K+68qZdtlUQt0pl5twOY=; b=OAaiGf6t35i3iI26baBB8lfuTC
	UjLk5Jk4KVfo9SspSv5oLlT+aD35JWT8JX8Z+99jHFDJ+EUfZ37KGHBWZkVTcGDlf4QS0mVbcos67
	hQ3KrJfjARCBu4I6Xk/6EPJRQUM8tZflNgrh55/4Oz9L/IXvqhG/U7BbHj6psMdAskb0=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vIWw7-0006Dz-Re;
	Mon, 10 Nov 2025 18:48:20 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1vIWw5-0006Dh-Ve for openipmi-developer@lists.sourceforge.net;
 Mon, 10 Nov 2025 18:48:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fev22V9iEM+EDM3W+F2uH+0Nb8oyiqA1OG2Kas0zJ/k=; b=lq0b42z6NuEvJLHEIxP7cm00nR
 XR2FmQK5x7Pp0I4GBTGokpXYWJKYnRBCB9lNzD9KKpdM9I0vy4ztJsEy+fHJDgFJLHoR6n/KHTe5Q
 ItSrAucl87/7+79HpHduGBfXRmxsJHFoRvjA/A64KpA8MNQUUkC2dT9HJHnvjEhuif40=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fev22V9iEM+EDM3W+F2uH+0Nb8oyiqA1OG2Kas0zJ/k=; b=jnX6IAZd231OP/jmZKW3cffBVE
 SuvlqQpH+7WDeY6ubvCrfsZ+W4YP9cZirDqzAjoyrkBHUTlEoC+l6mMWjXEaPk5Y+IVqQ78JoiaJr
 Ojhj0IfLyta9d2+cw4GBTnFx1TyUlC+v5KxeJUskS4ialfuZwBUhI5p24GfSRaj6qqCQ=;
Received: from mgamail.intel.com ([198.175.65.14])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vIWw6-0002sG-5t for openipmi-developer@lists.sourceforge.net;
 Mon, 10 Nov 2025 18:48:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762800498; x=1794336498;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=N6ej1S2Oe19sN5Q2t2DX/aJ/MSv694AtxQx/bMLeQmA=;
 b=SQJdAbVRN5VtMX6NbimnmFaNZQgdohdgGVq2eV9QpUtLwEdzUrPrp/c0
 8w0g/ckHYOgaPHn27AtGaFCWpnN6PWk8uRuA0zNT9zpUfLptefQv8ugBo
 zzZhvMTvrsagFS2gpDi+FjGi0j7ipjbBL+lagN+svDc6mAAbl78X90wLl
 YCum2xR8iiWUa9P6Un+BHzGeQFPqQdSYb1oW8XPXkieAlVySDvg7X15Up
 6w08nomV4PzPG59BL/dHi5GvjbYFiBLmhovBqH4p0Z6oK3IGW4BO9xcoj
 m5hezo9Q58+EzKPFXysk0DTnWSU1N3JXA727s1Mnm6SVo7UJdrRXXjP0H w==;
X-CSE-ConnectionGUID: HQoPJACbTR2NHJjS+M037A==
X-CSE-MsgGUID: TjOQBvchTG+bz6YuXWiYLw==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="68705420"
X-IronPort-AV: E=Sophos;i="6.19,294,1754982000"; d="scan'208";a="68705420"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 10:48:08 -0800
X-CSE-ConnectionGUID: 5EQNr+dBT1mFhBPrqIbALw==
X-CSE-MsgGUID: Ed9K1qb4RTaMZeoskf5q3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,294,1754982000"; d="scan'208";a="219402038"
Received: from black.igk.intel.com ([10.91.253.5])
 by orviesa002.jf.intel.com with ESMTP; 10 Nov 2025 10:47:59 -0800
Received: by black.igk.intel.com (Postfix, from userid 1003)
 id 7F0ACAA; Mon, 10 Nov 2025 19:47:29 +0100 (CET)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Corey Minyard <corey@minyard.net>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 "Dr. David Alan Gilbert" <linux@treblig.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Rob Clark <robin.clark@oss.qualcomm.com>,
 Matthew Brost <matthew.brost@intel.com>,
 Hans Verkuil <hverkuil@kernel.org>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Vitaly Lifshits <vitaly.lifshits@intel.com>,
 Manivannan Sadhasivam <mani@kernel.org>, Niklas Cassel <cassel@kernel.org>,
 Calvin Owens <calvin@wbinvd.org>, Sagi Maimon <maimon.sagi@gmail.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Karan Tilak Kumar <kartilak@cisco.com>,
 Casey Schaufler <casey@schaufler-ca.com>,
 Steven Rostedt <rostedt@goodmis.org>, Petr Mladek <pmladek@suse.com>,
 Max Kellermann <max.kellermann@ionos.com>, Takashi Iwai <tiwai@suse.de>,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net, linux-media@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 amd-gfx@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
 freedreno@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 linux-mmc@vger.kernel.org, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-pci@vger.kernel.org,
 linux-s390@vger.kernel.org, linux-scsi@vger.kernel.org,
 linux-staging@lists.linux.dev, ceph-devel@vger.kernel.org,
 linux-trace-kernel@vger.kernel.org, linux-sound@vger.kernel.org
Date: Mon, 10 Nov 2025 19:40:40 +0100
Message-ID: <20251110184727.666591-22-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20251110184727.666591-1-andriy.shevchenko@linux.intel.com>
References: <20251110184727.666591-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Use %ptS instead of open coded variants to print content of
 struct timespec64 in human readable format. Signed-off-by: Andy Shevchenko
 <andriy.shevchenko@linux.intel.com> --- drivers/scsi/fnic/fnic_trace.c |
 46 +++++++++++++++ 1 file changed, 20 insertions(+), 26 deletions(-) 
 Content analysis details:   (-0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1vIWw6-0002sG-5t
Subject: [Openipmi-developer] [PATCH v1 21/23] scsi: fnic: Switch to use %ptS
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
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, Jaroslav Kysela <perex@perex.cz>,
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
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Dmitry Baryshkov <lumag@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Takashi Iwai <tiwai@suse.com>,
 Sesidhar Baddela <sebaddel@cisco.com>, Jessica Zhang <jesszhan0024@gmail.com>,
 Sven Schnelle <svens@linux.ibm.com>, Jonathan Lemon <jonathan.lemon@gmail.com>,
 Andrew Morton <akpm@linux-foundation.org>, Vladimir Oltean <olteanv@gmail.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Use %ptS instead of open coded variants to print content of
struct timespec64 in human readable format.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/scsi/fnic/fnic_trace.c | 46 +++++++++++++++-------------------
 1 file changed, 20 insertions(+), 26 deletions(-)

diff --git a/drivers/scsi/fnic/fnic_trace.c b/drivers/scsi/fnic/fnic_trace.c
index cdc6b12b1ec2..f5543bb92ee4 100644
--- a/drivers/scsi/fnic/fnic_trace.c
+++ b/drivers/scsi/fnic/fnic_trace.c
@@ -138,9 +138,8 @@ int fnic_get_trace_data(fnic_dbgfs_t *fnic_dbgfs_prt)
 			 */
 			len += scnprintf(fnic_dbgfs_prt->buffer + len,
 				  (trace_max_pages * PAGE_SIZE * 3) - len,
-				  "%16llu.%09lu %-50s %8x %8x %16llx %16llx "
-				  "%16llx %16llx %16llx\n", (u64)val.tv_sec,
-				  val.tv_nsec, str, tbp->host_no, tbp->tag,
+				  "%ptSp %-50s %8x %8x %16llx %16llx %16llx %16llx %16llx\n",
+				  &val, str, tbp->host_no, tbp->tag,
 				  tbp->data[0], tbp->data[1], tbp->data[2],
 				  tbp->data[3], tbp->data[4]);
 			rd_idx++;
@@ -180,9 +179,8 @@ int fnic_get_trace_data(fnic_dbgfs_t *fnic_dbgfs_prt)
 			 */
 			len += scnprintf(fnic_dbgfs_prt->buffer + len,
 				  (trace_max_pages * PAGE_SIZE * 3) - len,
-				  "%16llu.%09lu %-50s %8x %8x %16llx %16llx "
-				  "%16llx %16llx %16llx\n", (u64)val.tv_sec,
-				  val.tv_nsec, str, tbp->host_no, tbp->tag,
+				  "%ptSp %-50s %8x %8x %16llx %16llx %16llx %16llx %16llx\n",
+				  &val, str, tbp->host_no, tbp->tag,
 				  tbp->data[0], tbp->data[1], tbp->data[2],
 				  tbp->data[3], tbp->data[4]);
 			rd_idx++;
@@ -225,20 +223,16 @@ int fnic_get_stats_data(struct stats_debug_info *debug,
 		"------------------------------------------\n");
 
 	len += scnprintf(debug->debug_buffer + len, buf_size - len,
-		"Current time :          [%lld:%ld]\n"
-		"Last stats reset time:  [%lld:%09ld]\n"
-		"Last stats read time:   [%lld:%ld]\n"
-		"delta since last reset: [%lld:%ld]\n"
-		"delta since last read:  [%lld:%ld]\n",
-	(s64)val1.tv_sec, val1.tv_nsec,
-	(s64)stats->stats_timestamps.last_reset_time.tv_sec,
-	stats->stats_timestamps.last_reset_time.tv_nsec,
-	(s64)stats->stats_timestamps.last_read_time.tv_sec,
-	stats->stats_timestamps.last_read_time.tv_nsec,
-	(s64)timespec64_sub(val1, stats->stats_timestamps.last_reset_time).tv_sec,
-	timespec64_sub(val1, stats->stats_timestamps.last_reset_time).tv_nsec,
-	(s64)timespec64_sub(val1, stats->stats_timestamps.last_read_time).tv_sec,
-	timespec64_sub(val1, stats->stats_timestamps.last_read_time).tv_nsec);
+		"Current time :          [%ptSp]\n"
+		"Last stats reset time:  [%ptSp]\n"
+		"Last stats read time:   [%ptSp]\n"
+		"delta since last reset: [%ptSp]\n"
+		"delta since last read:  [%ptSp]\n",
+	&val1,
+	&stats->stats_timestamps.last_reset_time,
+	&stats->stats_timestamps.last_read_time,
+	&timespec64_sub(val1, stats->stats_timestamps.last_reset_time),
+	&timespec64_sub(val1, stats->stats_timestamps.last_read_time));
 
 	stats->stats_timestamps.last_read_time = val1;
 
@@ -416,8 +410,8 @@ int fnic_get_stats_data(struct stats_debug_info *debug,
 	jiffies_to_timespec64(stats->misc_stats.last_ack_time, &val2);
 
 	len += scnprintf(debug->debug_buffer + len, buf_size - len,
-		  "Last ISR time: %llu (%8llu.%09lu)\n"
-		  "Last ACK time: %llu (%8llu.%09lu)\n"
+		  "Last ISR time: %llu (%ptSp)\n"
+		  "Last ACK time: %llu (%ptSp)\n"
 		  "Max ISR jiffies: %llu\n"
 		  "Max ISR time (ms) (0 denotes < 1 ms): %llu\n"
 		  "Corr. work done: %llu\n"
@@ -438,9 +432,9 @@ int fnic_get_stats_data(struct stats_debug_info *debug,
 		 "Number of receive frame errors: %lld\n"
 		 "Port speed (in Mbps): %lld\n",
 		  (u64)stats->misc_stats.last_isr_time,
-		  (s64)val1.tv_sec, val1.tv_nsec,
+		  &val1,
 		  (u64)stats->misc_stats.last_ack_time,
-		  (s64)val2.tv_sec, val2.tv_nsec,
+		  &val2,
 		  (u64)atomic64_read(&stats->misc_stats.max_isr_jiffies),
 		  (u64)atomic64_read(&stats->misc_stats.max_isr_time_ms),
 		  (u64)atomic64_read(&stats->misc_stats.corr_work_done),
@@ -857,8 +851,8 @@ void copy_and_format_trace_data(struct fc_trace_hdr *tdata,
 	len = *orig_len;
 
 	len += scnprintf(fnic_dbgfs_prt->buffer + len, max_size - len,
-			 "%ptTs.%09lu ns%8x       %c%8x\t",
-			 &tdata->time_stamp.tv_sec, tdata->time_stamp.tv_nsec,
+			 "%ptSs ns%8x       %c%8x\t",
+			 &tdata->time_stamp,
 			 tdata->host_no, tdata->frame_type, tdata->frame_len);
 
 	fc_trace = (char *)FC_TRACE_ADDRESS(tdata);
-- 
2.50.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

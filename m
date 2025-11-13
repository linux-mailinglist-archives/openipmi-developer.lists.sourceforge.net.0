Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C068CC582D7
	for <lists+openipmi-developer@lfdr.de>; Thu, 13 Nov 2025 16:03:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Message-ID:Date:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Uxb9cz6tuWFoeE+WowIJShYOQSy6ZT3HGOj7H9oQPdk=; b=JLECfsHUDl13drwVRVQ7WAeLhf
	EK9Zcd54TnjWRvwGpqrR02A1uCCUAT6vfM/kYmprwBQntA/GX6qsOcXkyjjViX7+iTYTRlaWTyyHB
	pJ90VruOgydvi8Tnq2DqO4/CmEJzA6OuGoULQityo1QFSUe93SITXRD0mGCQVmjlGVl0=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vJYrC-0002Wk-Dt;
	Thu, 13 Nov 2025 15:03:30 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1vJYrB-0002Wa-8z for openipmi-developer@lists.sourceforge.net;
 Thu, 13 Nov 2025 15:03:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BSwxvWhvMwrpXR9kO8jPhQc+4MnpGo44XTF8/qGci0s=; b=T5c4wgJJGEsE9I5pexOf0rVnw8
 JrgAZgNdvI7E6CfhX7xgnG1Iw2L4SoHuNQ8mGn6xstDJoxqfdy2EQkziXnXqxH1zdKgLNysDvmYeS
 wV4oD6J73b9rzanhigTP+c7SVb3Dqj5j8aWNH91qbVMQN9/g26BIRRE0GmH4OntB3yIU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BSwxvWhvMwrpXR9kO8jPhQc+4MnpGo44XTF8/qGci0s=; b=L0XO357yl2AFaVnCVhV8HxH5yp
 8TamG4uTRdP3nXVOF8Nxb0P+4xJCWKGZZSBKeGcKabe3gNQYom70Akkvff9o3pmCRmHwYUkbWEuy1
 8qfgm85wx6eURf2As4j/HczspSwWlpki3eZscZQuzs4Yt3h89HCeeNP2xpY9vw61TdDc=;
Received: from mgamail.intel.com ([198.175.65.21])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vJYrA-0000Ml-LJ for openipmi-developer@lists.sourceforge.net;
 Thu, 13 Nov 2025 15:03:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763046209; x=1794582209;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rml3ckj6WdvqCWJSsraCv9TD4b9UeGEJUCuDsF2dQ+c=;
 b=hEfsw36uEf9qAFbZaB5dlLLNf1DJHO/47m1rFzZQo4fsdUTiKemCJUsz
 ml4oyvdbfAMFPAfE3EE+fC7AV6hr03/YXC2n8xdYpK5IGMUwrTpdkaBVp
 FDyJVDpnHkrZYLNJWZn7oMRxjrS+ntul8ttSiybyPjlp1h9XXkWIUk72L
 G0aQxjJf13KGnZSZLMZv7TXGzOn1owvU6A/CW4+G7Nyw8KnITrES+5g7v
 DNALWB4aBDDvdkKMii7o0FieHtxQa7T2QsCuk3pt6TeXhBdlr9tuipwIc
 S3hc4/ZixlZfwNgRRuUZ0KMchPvGXHJ8cYC9EzawdY9X5osL9kF1THeLq g==;
X-CSE-ConnectionGUID: lKfVbY7hRsuK2bSuwyOkRQ==
X-CSE-MsgGUID: UGjL7v+9Qh2hgp5AvyFDsQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="65054680"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="65054680"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 07:03:02 -0800
X-CSE-ConnectionGUID: Lk6390cSTuy1iyCSEXsOKw==
X-CSE-MsgGUID: zFe0AInXSZ2BK9lh5MsEcA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,302,1754982000"; d="scan'208";a="220325210"
Received: from black.igk.intel.com ([10.91.253.5])
 by fmviesa001.fm.intel.com with ESMTP; 13 Nov 2025 07:02:52 -0800
Received: by black.igk.intel.com (Postfix, from userid 1003)
 id 7B381A9; Thu, 13 Nov 2025 16:02:19 +0100 (CET)
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
Date: Thu, 13 Nov 2025 15:32:33 +0100
Message-ID: <20251113150217.3030010-20-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20251113150217.3030010-1-andriy.shevchenko@linux.intel.com>
References: <20251113150217.3030010-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Use %ptSp instead of open coded variants to print content
 of struct timespec64 in human readable format. Reviewed-by: Martin K. Petersen
 <martin.petersen@oracle.com> Signed-off-by: Andy Shevchenko
 <andriy.shevchenko@linux.intel.com>
 --- drivers/scsi/fnic/fnic_trace.c | 52 ++++++++++++++ [...] 
 Content analysis details:   (-0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1vJYrA-0000Ml-LJ
Subject: [Openipmi-developer] [PATCH v3 19/21] scsi: fnic: Switch to use
 %ptSp
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

Reviewed-by: Martin K. Petersen <martin.petersen@oracle.com>
Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/scsi/fnic/fnic_trace.c | 52 ++++++++++++++--------------------
 1 file changed, 22 insertions(+), 30 deletions(-)

diff --git a/drivers/scsi/fnic/fnic_trace.c b/drivers/scsi/fnic/fnic_trace.c
index cdc6b12b1ec2..0a849a195a8e 100644
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
@@ -215,30 +213,26 @@ int fnic_get_stats_data(struct stats_debug_info *debug,
 {
 	int len = 0;
 	int buf_size = debug->buf_size;
-	struct timespec64 val1, val2;
+	struct timespec64 val, val1, val2;
 	int i = 0;
 
-	ktime_get_real_ts64(&val1);
+	ktime_get_real_ts64(&val);
 	len = scnprintf(debug->debug_buffer + len, buf_size - len,
 		"------------------------------------------\n"
 		 "\t\tTime\n"
 		"------------------------------------------\n");
 
+	val1 = timespec64_sub(val, stats->stats_timestamps.last_reset_time);
+	val2 = timespec64_sub(val, stats->stats_timestamps.last_read_time);
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
+			 "Current time :          [%ptSp]\n"
+			 "Last stats reset time:  [%ptSp]\n"
+			 "Last stats read time:   [%ptSp]\n"
+			 "delta since last reset: [%ptSp]\n"
+			 "delta since last read:  [%ptSp]\n",
+			 &val,
+			 &stats->stats_timestamps.last_reset_time, &val1,
+			 &stats->stats_timestamps.last_read_time, &val2);
 
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
@@ -437,10 +431,8 @@ int fnic_get_stats_data(struct stats_debug_info *debug,
 		  "Number of rport not ready: %lld\n"
 		 "Number of receive frame errors: %lld\n"
 		 "Port speed (in Mbps): %lld\n",
-		  (u64)stats->misc_stats.last_isr_time,
-		  (s64)val1.tv_sec, val1.tv_nsec,
-		  (u64)stats->misc_stats.last_ack_time,
-		  (s64)val2.tv_sec, val2.tv_nsec,
+		  (u64)stats->misc_stats.last_isr_time, &val1,
+		  (u64)stats->misc_stats.last_ack_time, &val2,
 		  (u64)atomic64_read(&stats->misc_stats.max_isr_jiffies),
 		  (u64)atomic64_read(&stats->misc_stats.max_isr_time_ms),
 		  (u64)atomic64_read(&stats->misc_stats.corr_work_done),
@@ -857,8 +849,8 @@ void copy_and_format_trace_data(struct fc_trace_hdr *tdata,
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

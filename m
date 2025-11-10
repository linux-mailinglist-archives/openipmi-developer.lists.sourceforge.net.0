Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D73AC48A93
	for <lists+openipmi-developer@lfdr.de>; Mon, 10 Nov 2025 19:48:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Message-ID:Date:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sXfTrxgWIe6F2/4VBA+n1QESaas8ez8aDYFXHUpC3Ls=; b=WRz4hwwASS9PqRtw2HNHFJrfRk
	zWAlt/DUkxfKklMuWhNLdvEi2G4aJGhc0GF/IY4KTRK5AW+FWcaXquTdqMgbdJvMSrRXhMzaXfNwW
	n4gqwX13uoZBNm9TBbRg8knLFtqNOI781hvu3TAWe0nrA2G7W+213DuyvjTG6HdCJp5w=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vIWvv-0007Yf-AV;
	Mon, 10 Nov 2025 18:48:07 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1vIWvk-0007Xz-KO for openipmi-developer@lists.sourceforge.net;
 Mon, 10 Nov 2025 18:47:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BmhmneHN1JPoXedmJW7NDfLTP9E1AX6jddhXfmE1LuI=; b=IoXbgNFEpncaRsMD1kHWjECUTR
 MMqB0/Qg2iicwsAzHy70tgy39N6ZbGUUInmwkqfzIxT69ch4LXDv7/zM2ney50B3/YVTjvCs3iCTo
 Nzfk10KOyWLL/z1hcC0eY8Rw645D0iRt27/Psg4qDYBKXgmbDwwfRxx2JqKFpCHP5+Gc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BmhmneHN1JPoXedmJW7NDfLTP9E1AX6jddhXfmE1LuI=; b=D4N88HIq9+J+JhBhnzFWH4wS6X
 4OT/8ZXge5wJVH5UGpdmNqNiCLnKrwRJQn9MiT/aq3JKcctga74bkbU4fwRmgcbbuEapjGcIf0DWM
 0ICopmrZqxyZbq/Lz65C5q6/eiUXp1DPTlSxrubZoRhMNS6k/P85+o3FL+vBMza17U7Y=;
Received: from mgamail.intel.com ([198.175.65.17])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vIWvh-0002qK-Dd for openipmi-developer@lists.sourceforge.net;
 Mon, 10 Nov 2025 18:47:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762800474; x=1794336474;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fCt0uZJtXQzZViSDNcneyMtrnn/y5yDZ8tsLO9qgG3A=;
 b=HOlTzOVR/Jh3EHGYxAj+DHV6rWdZlWd4aQeIXAFH3XHPaog1HEF4k2tY
 JLIWQBigxvyS7RErzcZASCeupOSYl/JdKSB/gjIaMdsEWYDohbCX6Gmi+
 2ZyZ7JC5UMrQzpEpbOKmKp8RHhHebA1KQdw5kHevxZXwlKGtl5iOFntkP
 o00epiqNmAuAz22yntdPpztZqdKal8KRGp4CciCmOaU/GVVDHFC1P1TRf
 v0U3yzEWSOy352lpv8YFXddKyqNlmlQf+YDYCuRN1fOexs+BlVoxNUSpr
 ooLBig/AuQ9oLuUADrQrPll/uaYnxlqKtif6YdObXGuNYrLoVJNcQvEV2 w==;
X-CSE-ConnectionGUID: M844HepOQwK8EGVgRZhKQg==
X-CSE-MsgGUID: q3gJfbCIScO9NXuA7ZRZug==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="64786347"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="64786347"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 10:47:48 -0800
X-CSE-ConnectionGUID: vLwpzXxWTlqMkVe0jU7QSA==
X-CSE-MsgGUID: vqdaBx3wRd2oCOgUpZsMtg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,294,1754982000"; d="scan'208";a="189190196"
Received: from black.igk.intel.com ([10.91.253.5])
 by fmviesa009.fm.intel.com with ESMTP; 10 Nov 2025 10:47:39 -0800
Received: by black.igk.intel.com (Postfix, from userid 1003)
 id 0116B97; Mon, 10 Nov 2025 19:47:28 +0100 (CET)
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
Date: Mon, 10 Nov 2025 19:40:21 +0100
Message-ID: <20251110184727.666591-3-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20251110184727.666591-1-andriy.shevchenko@linux.intel.com>
References: <20251110184727.666591-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Use %ptSp instead of open coded variants to print content
 of struct timespec64 in human readable format. Signed-off-by: Andy Shevchenko
 <andriy.shevchenko@linux.intel.com> --- sound/core/seq/seq_queue.c | 2 +-
 sound/core/seq/seq_timer.c | 6 +++--- 2 files changed, 4 insertions(+), 4
 deletions(-) 
 Content analysis details:   (-0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1vIWvh-0002qK-Dd
Subject: [Openipmi-developer] [PATCH v1 02/23] ALSA: seq: Switch to use %ptSp
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

Use %ptSp instead of open coded variants to print content of
struct timespec64 in human readable format.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 sound/core/seq/seq_queue.c | 2 +-
 sound/core/seq/seq_timer.c | 6 +++---
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/sound/core/seq/seq_queue.c b/sound/core/seq/seq_queue.c
index f5c0e401c8ae..f6e86cbf38bc 100644
--- a/sound/core/seq/seq_queue.c
+++ b/sound/core/seq/seq_queue.c
@@ -699,7 +699,7 @@ void snd_seq_info_queues_read(struct snd_info_entry *entry,
 		snd_iprintf(buffer, "current tempo      : %d\n", tmr->tempo);
 		snd_iprintf(buffer, "tempo base         : %d ns\n", tmr->tempo_base);
 		snd_iprintf(buffer, "current BPM        : %d\n", bpm);
-		snd_iprintf(buffer, "current time       : %d.%09d s\n", tmr->cur_time.tv_sec, tmr->cur_time.tv_nsec);
+		snd_iprintf(buffer, "current time       : %ptSp s\n", &tmr->cur_time);
 		snd_iprintf(buffer, "current tick       : %d\n", tmr->tick.cur_tick);
 		snd_iprintf(buffer, "\n");
 	}
diff --git a/sound/core/seq/seq_timer.c b/sound/core/seq/seq_timer.c
index 29b018a212fc..06074d822bae 100644
--- a/sound/core/seq/seq_timer.c
+++ b/sound/core/seq/seq_timer.c
@@ -442,7 +442,7 @@ void snd_seq_info_timer_read(struct snd_info_entry *entry,
 	int idx;
 	struct snd_seq_timer *tmr;
 	struct snd_timer_instance *ti;
-	unsigned long resolution;
+	struct timespec64 resolution;
 	
 	for (idx = 0; idx < SNDRV_SEQ_MAX_QUEUES; idx++) {
 		struct snd_seq_queue *q __free(snd_seq_queue) = queueptr(idx);
@@ -457,8 +457,8 @@ void snd_seq_info_timer_read(struct snd_info_entry *entry,
 			if (!ti)
 				break;
 			snd_iprintf(buffer, "Timer for queue %i : %s\n", q->queue, ti->timer->name);
-			resolution = snd_timer_resolution(ti) * tmr->ticks;
-			snd_iprintf(buffer, "  Period time : %lu.%09lu\n", resolution / 1000000000, resolution % 1000000000);
+			resolution = ns_to_timespec64(snd_timer_resolution(ti) * tmr->ticks);
+			snd_iprintf(buffer, "  Period time : %ptSp\n", &resolution);
 			snd_iprintf(buffer, "  Skew : %u / %u\n", tmr->skew, tmr->skew_base);
 		}
  	}
-- 
2.50.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

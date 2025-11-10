Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DB9BDC48A8A
	for <lists+openipmi-developer@lfdr.de>; Mon, 10 Nov 2025 19:48:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Message-ID:Date:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Z4G6/JEzdoFkflTgWiR6nrNPZnDT6Jl1IpeJevEqo+s=; b=d6KrGU49rnMoTkRNa2ObrJRlmE
	EnznPaUVyevfxDecv/70W582wfSlD+vPVmSRFvaa7RtwzG/afIJPDaZ0E4LyoA8IevwSRiGgET8H5
	UK4SAn5EPRIFrQH7QS4v7dprcXAH+JICNlW0x+fEdahFVOUnrRiGCMfea8IgR2tRRKrk=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vIWvr-0006Ad-Bj;
	Mon, 10 Nov 2025 18:48:04 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1vIWvh-00069m-Mt for openipmi-developer@lists.sourceforge.net;
 Mon, 10 Nov 2025 18:47:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=u4th3mRUcMpIyerAmbWbkW7h8oCP1/ZppdqwC6KHt1A=; b=SqMCz058GFIWIhuNaiq/RH3qJM
 UMU7EYKKYqINEKeqz21EZWMQabnDNt+jCqbcAL2dzEOrQ3RywZqtox2fqya2F5FahouykPn2xupVc
 2KLM8/1DsBRTfa3JMGjeL8aSq/7lEp3ypx9bXHOJHOaQBKiRKZv0h/Hnpw2J/GH6apWQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=u4th3mRUcMpIyerAmbWbkW7h8oCP1/ZppdqwC6KHt1A=; b=lBeJO3XblHWpGiQ2wnbxu4N4KF
 jxVxk8U0dQBMrtN1WO/uWfN9le00UKz3aY9XDJduq1oaSliYPxR1HfOsMztOOL1iPkgYPYV/himx1
 L74dQo4UD+Nb38EmWlZWEiEuqQ4hPqpgr2FZ/FgikT84HOmXZPUQb6g+0ege8xmiujzw=;
Received: from mgamail.intel.com ([198.175.65.17])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vIWvi-0002qK-1G for openipmi-developer@lists.sourceforge.net;
 Mon, 10 Nov 2025 18:47:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762800474; x=1794336474;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IGdEkd/jBvqKgZjw7w5+yaG8DDD/mA6muB0zmivTRgc=;
 b=FsFsQeHFGuCEL3EAx2VCGYmKF5KnJnwGY/nggDDOjwA6h6KZurtntv1A
 tkJN41TU0buAMf9IoFTupiAZBJYnT/6bV6TExXQl7SU8OfRzdAO5U595u
 M/8uh831foWJ1fUqVdzx0vbZ+39xQqzNo7zd8EoOVNA+luzPoIAiAUnH5
 vlwayOvl4wxlWyyylnkXphk/m69iXeF0+3w+pCRrnhumbZsRTD/R8m/yr
 VftwL/a/IFPMJamaa9LaYxXSajoXHq1yXv2Zlrv4n/LzPtzJ2Tdfv0SNr
 TmqTPSpWPiDNQsYOPeuUmmHcC9giRa6cDoGlpyOQWDwXLxW8V3E10yL7L w==;
X-CSE-ConnectionGUID: jaKu9ju9S5qLKjzyBNDPHg==
X-CSE-MsgGUID: zhSB7cpDQWGhXG2Su/dbrQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="64786351"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="64786351"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 10:47:49 -0800
X-CSE-ConnectionGUID: LkgqeFEXSlGGOQhcCKfx+g==
X-CSE-MsgGUID: Fl2BvAN5TXur7aO2d4V6ng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,294,1754982000"; d="scan'208";a="189190200"
Received: from black.igk.intel.com ([10.91.253.5])
 by fmviesa009.fm.intel.com with ESMTP; 10 Nov 2025 10:47:39 -0800
Received: by black.igk.intel.com (Postfix, from userid 1003)
 id 1487D9A; Mon, 10 Nov 2025 19:47:29 +0100 (CET)
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
Date: Mon, 10 Nov 2025 19:40:24 +0100
Message-ID: <20251110184727.666591-6-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20251110184727.666591-1-andriy.shevchenko@linux.intel.com>
References: <20251110184727.666591-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Use %ptSp instead of open coded variants to print content
 of struct timespec64 in human readable format. Signed-off-by: Andy Shevchenko
 <andriy.shevchenko@linux.intel.com> --- drivers/dma-buf/sync_debug.c | 2
 +- 1 file changed, 1 insertion(+), 1 deletion(-) 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to DNSWL
 was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#DnsBlocklists-dnsbl-block
 for more information. [198.175.65.17 listed in list.dnswl.org]
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1vIWvi-0002qK-1G
Subject: [Openipmi-developer] [PATCH v1 05/23] dma-buf: Switch to use %ptSp
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
 drivers/dma-buf/sync_debug.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/dma-buf/sync_debug.c b/drivers/dma-buf/sync_debug.c
index 67cd69551e42..9e5d662cd4e8 100644
--- a/drivers/dma-buf/sync_debug.c
+++ b/drivers/dma-buf/sync_debug.c
@@ -59,7 +59,7 @@ static void sync_print_fence(struct seq_file *s,
 		struct timespec64 ts64 =
 			ktime_to_timespec64(fence->timestamp);
 
-		seq_printf(s, "@%lld.%09ld", (s64)ts64.tv_sec, ts64.tv_nsec);
+		seq_printf(s, "@%ptSp", &ts64);
 	}
 
 	seq_printf(s, ": %lld", fence->seqno);
-- 
2.50.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B49EDC48DB2
	for <lists+openipmi-developer@lfdr.de>; Mon, 10 Nov 2025 20:03:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Message-ID:Date:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=f3SWVx2SfJANfHqgVeZRLEAGP334M6UbOOdJGcOiI0U=; b=K/xD+Psla3v3waFUDJRHS28RGR
	vQpI7Z911NZDYXOdoXLqMWXan2vSqoOhjNe30U2srNZIydGl+T3rkcgQV63aYW711zX0qngobxG0p
	8qv8nIUlAt9NJJH9Rr3YXbWpT0uSvEAvl2rySgKAS7ps0UJKHydj/3GhToTZVGi2fnXM=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vIXBB-0007aI-H0;
	Mon, 10 Nov 2025 19:03:54 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1vIXBA-0007a6-4T for openipmi-developer@lists.sourceforge.net;
 Mon, 10 Nov 2025 19:03:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XCSsWSSNqrpntKkBGuaNB4YTl+3iN8/j8/I1mo+ynG0=; b=VdIjbadBvmaIeIWdL/i3ej7gnh
 Y7wPL9H6xmJRaQaOPHa/BprrgQTwATZ8prsPjIXO/DKDJqYAwK6QJeExt4G/jwOjy+IHsWPSbOi/E
 c9wFJB5kAtdOR2KgruqRUnDLpbD4OCOpvPX+fnr15ZE1x9h1QLMAb63rTso709/HVFnE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XCSsWSSNqrpntKkBGuaNB4YTl+3iN8/j8/I1mo+ynG0=; b=h7ee5r6tsZRswymSvVX1EFrDb+
 uf0KyDadXrZByM3zzf8WXdL9vKt+VoCS/MqfyamfQrsNkIIDMlFqnOFx7aZWB4XPj6fmNmmjjSeFW
 FLGAGGSXA2m8vS+7J1rdr8l1zitrDi+3lkL6vwB+oe20ABVfr68hfrtCN/y0tBlh+Kow=;
Received: from mgamail.intel.com ([192.198.163.16])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vIXBA-0003gb-AY for openipmi-developer@lists.sourceforge.net;
 Mon, 10 Nov 2025 19:03:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762801432; x=1794337432;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YuuhpJa8h+mS5FP9iFl2OF8B4HsCdqZzZ4FbWXfXXs4=;
 b=lNG6pk6Hn/w0APTIyuAf4JfVxYrbQD33rHFNOiUdjxA8nARSk78WIGhE
 jU58HX3zEF2zeL7LsUMq6su8WpYXH4j1Mx3srfFGHJe17u3kORmGRX14x
 hbmmiMA5dAuUHkjRpZ9Ej69yqJDQvQCI4FV4Klvb8HNqbep5jsj0+BfQE
 oOGT+h+z2yUfST3JoEKspZz0YfNH4XqduTmWGeSrPNyKQDBw564ZlQTHN
 84tDgYp5sSds8UERMDf8voZAAan0saryDx9AGPsxJaSWXLWxNB1FCNbsq
 x9pljzm0w3YPOeMpSqw9xqFlvXz0ZnTVZY+2ZB4dQhShDqLKxcrBTv5tm g==;
X-CSE-ConnectionGUID: CDff1mbbQQa1xHF/CEExag==
X-CSE-MsgGUID: K91klHouSsiFrvygz7PJCw==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="52415048"
X-IronPort-AV: E=Sophos;i="6.19,294,1754982000"; d="scan'208";a="52415048"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 10:47:58 -0800
X-CSE-ConnectionGUID: weCrH1MNRO222E88YEZ8PA==
X-CSE-MsgGUID: r2m5eMmlTr2CnIHbY/ceKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,294,1754982000"; d="scan'208";a="189472117"
Received: from black.igk.intel.com ([10.91.253.5])
 by fmviesa010.fm.intel.com with ESMTP; 10 Nov 2025 10:47:49 -0800
Received: by black.igk.intel.com (Postfix, from userid 1003)
 id 42C43A1; Mon, 10 Nov 2025 19:47:29 +0100 (CET)
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
Date: Mon, 10 Nov 2025 19:40:31 +0100
Message-ID: <20251110184727.666591-13-andriy.shevchenko@linux.intel.com>
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
 Content preview:  Use %ptSp instead of open coded variants to print content
 of struct timespec64 in human readable format. Signed-off-by: Andy Shevchenko
 <andriy.shevchenko@linux.intel.com> --- drivers/char/ipmi/ipmi_si_intf.c
 | 3 +-- drivers/char/ipmi/ipmi_ssif.c | 6 ++---- 2 files changed,
 3 insertions(+), 6 deletions(- [...] 
 Content analysis details:   (-0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1vIXBA-0003gb-AY
Subject: [Openipmi-developer] [PATCH v1 12/23] ipmi: Switch to use %ptSp
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
 drivers/char/ipmi/ipmi_si_intf.c | 3 +--
 drivers/char/ipmi/ipmi_ssif.c    | 6 ++----
 2 files changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_si_intf.c b/drivers/char/ipmi/ipmi_si_intf.c
index 70e55f5ff85e..5459ffdde8dc 100644
--- a/drivers/char/ipmi/ipmi_si_intf.c
+++ b/drivers/char/ipmi/ipmi_si_intf.c
@@ -275,8 +275,7 @@ void debug_timestamp(struct smi_info *smi_info, char *msg)
 	struct timespec64 t;
 
 	ktime_get_ts64(&t);
-	dev_dbg(smi_info->io.dev, "**%s: %lld.%9.9ld\n",
-		msg, t.tv_sec, t.tv_nsec);
+	dev_dbg(smi_info->io.dev, "**%s: %ptSp\n", msg, &t);
 }
 #else
 #define debug_timestamp(smi_info, x)
diff --git a/drivers/char/ipmi/ipmi_ssif.c b/drivers/char/ipmi/ipmi_ssif.c
index 1b63f7d2fcda..ef1582a029f4 100644
--- a/drivers/char/ipmi/ipmi_ssif.c
+++ b/drivers/char/ipmi/ipmi_ssif.c
@@ -1083,10 +1083,8 @@ static int sender(void *send_info, struct ipmi_smi_msg *msg)
 		struct timespec64 t;
 
 		ktime_get_real_ts64(&t);
-		dev_dbg(&ssif_info->client->dev,
-			"**Enqueue %02x %02x: %lld.%6.6ld\n",
-			msg->data[0], msg->data[1],
-			(long long)t.tv_sec, (long)t.tv_nsec / NSEC_PER_USEC);
+		dev_dbg(&ssif_info->client->dev, "**Enqueue %02x %02x: %ptSp\n",
+			msg->data[0], msg->data[1], &t);
 	}
 	return IPMI_CC_NO_ERROR;
 }
-- 
2.50.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

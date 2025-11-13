Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F7F6C5824B
	for <lists+openipmi-developer@lfdr.de>; Thu, 13 Nov 2025 16:03:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Message-ID:Date:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3q7yd4wMrgsAc9Hb1HRZOpYOFd6zItfU3inx/irUqzc=; b=VjW+2Iq2lbi5nOC82582je7cjD
	rUUY2EUa04gCRnkNSkvUKmGL9P3dQmrx1fS3P687PWcky1odAQ2U58TuyVFR9fx+g+Ja+gwfIeuCr
	qYiI/9GHz3fmHPZdEbGOmaiqDG2vHAnEVWu9u3fPZwaj6iqDtgbJsuuyBgvTWxkSjYbY=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vJYqg-0002Ty-36;
	Thu, 13 Nov 2025 15:02:58 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1vJYqe-0002Tj-S6 for openipmi-developer@lists.sourceforge.net;
 Thu, 13 Nov 2025 15:02:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=o72IIuYiDD380WOtn6WlmYYiTrpSLcgpIZ4ZT1R5+NY=; b=JAMoVSckojJW9iFWu3DvwBh9ga
 4uHodYKbgM1DaJKZHxG0FoQnjiWVyRBuVh6IXY8jnAd7CsAigq6H+fQdpIJX155nCh7Mv9PwIRuoM
 eHbJQNBrTSHOK95AoKiqUEVqtW+HwN1WPwT5fUHnJZb2NrJ3AkTtgZU1TIxMcD26T8no=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=o72IIuYiDD380WOtn6WlmYYiTrpSLcgpIZ4ZT1R5+NY=; b=GXyh9NSipBbNgO3C/sjvP+5cfL
 a6IgQubFSkFVG7OkZHkT+CXzdTP9j3zhO71J/XlZoOnD2KNDXGrFihud9Z+zqVPtyARxpTaNx3Cv7
 mSzRmoCpg6OMujccEG4/WG3vRmArG/7KagAKKziyxj3RT3qX4NbWDnFBzGntxGDSkU1g=;
Received: from mgamail.intel.com ([198.175.65.21])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vJYqe-0000Jf-0L for openipmi-developer@lists.sourceforge.net;
 Thu, 13 Nov 2025 15:02:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763046176; x=1794582176;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EefPNFQBUNuGlR0DgULcxn8v9QseDyeQnp72XVg7OAg=;
 b=nAiivghCKIht6NpCBhexZr0t1ge7Ldu2nftWd6ZZN1dUgAQLFWcbVNu2
 vf46OJUvTMMa/WqBiGKIDG1q5wVGde3Jl93zbMpM21d+Aepf4C2+9Q9g0
 sI9QiYFctMt+jFa4t209RZ0VzJDKXKYxNPUhY02P7JDtR0JTQhAaIirco
 tNZawBWSj/XfaxCA/lwMmBQp8OGymORtjql7oK4fVECtR1hrOxl9Ibgjf
 C6z+TpQPyqG6YYyrSlZDFpPmvVQy8QySK9H8FWBgjeWDaUtzifW297f/o
 th4ThVtGww2RzMruaw4na0lJFy60hk3Z5K8Az/cO8DM8alP0297mhCm2s w==;
X-CSE-ConnectionGUID: J4fbZeXBRbqfcX1DYe/Qjg==
X-CSE-MsgGUID: BGdbZvfWQ++/xlxqJfq1Fg==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="65054317"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="65054317"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 07:02:50 -0800
X-CSE-ConnectionGUID: t3LH8vXXT7maKnUeZlI+Ig==
X-CSE-MsgGUID: oTk1ntIWRFul66CPsbOOZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,302,1754982000"; d="scan'208";a="220324984"
Received: from black.igk.intel.com ([10.91.253.5])
 by fmviesa001.fm.intel.com with ESMTP; 13 Nov 2025 07:02:37 -0800
Received: by black.igk.intel.com (Postfix, from userid 1003)
 id 2D4249D; Thu, 13 Nov 2025 16:02:19 +0100 (CET)
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
Date: Thu, 13 Nov 2025 15:32:21 +0100
Message-ID: <20251113150217.3030010-8-andriy.shevchenko@linux.intel.com>
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
 of struct timespec64 in human readable format. Signed-off-by: Andy Shevchenko
 <andriy.shevchenko@linux.intel.com> --- drivers/gpu/drm/drm_vblank.c | 6
 ++---- 1 file changed, 2 insertions(+), 4 deletions(-) 
 Content analysis details:   (-0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1vJYqe-0000Jf-0L
Subject: [Openipmi-developer] [PATCH v3 07/21] drm/vblank: Switch to use
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

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/gpu/drm/drm_vblank.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/drm_vblank.c b/drivers/gpu/drm/drm_vblank.c
index 32d013c5c8fc..5c14140cd0c2 100644
--- a/drivers/gpu/drm/drm_vblank.c
+++ b/drivers/gpu/drm/drm_vblank.c
@@ -806,10 +806,8 @@ drm_crtc_vblank_helper_get_vblank_timestamp_internal(
 	ts_vblank_time = ktime_to_timespec64(*vblank_time);
 
 	drm_dbg_vbl(dev,
-		    "crtc %u : v p(%d,%d)@ %lld.%06ld -> %lld.%06ld [e %d us, %d rep]\n",
-		    pipe, hpos, vpos,
-		    (u64)ts_etime.tv_sec, ts_etime.tv_nsec / 1000,
-		    (u64)ts_vblank_time.tv_sec, ts_vblank_time.tv_nsec / 1000,
+		    "crtc %u : v p(%d,%d)@ %ptSp -> %ptSp [e %d us, %d rep]\n",
+		    pipe, hpos, vpos, &ts_etime, &ts_vblank_time,
 		    duration_ns / 1000, i);
 
 	return true;
-- 
2.50.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

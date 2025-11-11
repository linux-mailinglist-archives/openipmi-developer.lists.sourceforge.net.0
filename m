Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A1858C4DB2E
	for <lists+openipmi-developer@lfdr.de>; Tue, 11 Nov 2025 13:28:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Message-ID:Date:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zJUlUnbGBYXi9R5zZtvoswX8C0avyaX3ASzHrZft1UM=; b=Jdw0yi0HM3sOygFMzpEpv8o5yX
	/ykdAYLIbRfio5T0O8ZlnuQDFXCHf/cvXxdGZ5V/yiUFTzwgGnkCtVO9XSV5LOu/ls0GOTbzZ2pFI
	+6ZzLkM/GooI+uVeM3hxxgnoa8+AJAfaO/+rZzlrZ5Hst4ep2fOSzuIBavaPBN+IAmzs=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vInTn-0005hI-Dv;
	Tue, 11 Nov 2025 12:28:12 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1vInTj-0005gu-Pj for openipmi-developer@lists.sourceforge.net;
 Tue, 11 Nov 2025 12:28:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fB3vSFUuDz+Q3AKsurTBqbREB7p9/3PjSYMX28sunTY=; b=fGKPsP11cOMcQc+0yvJ6fAIf3k
 txQM9dteygDLIHBvVMyS2TR70lxdRqjqf1qe07FGoOXZtWJqYxErJeMN3BWlNVIjMIT/5b5YabmU4
 MGfWRn1/0ntiypleDTd8lj8183qUusU5h4i5EBvUeAcp/Aw9H7SFwFj++h6PFOXBcdek=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fB3vSFUuDz+Q3AKsurTBqbREB7p9/3PjSYMX28sunTY=; b=ePUNlZKkKtneCAsNKm5rsEL0vU
 YA4Ix9mjM3xZbzJQYiano8IlkmcOiCzmaGW272N6oExPpk3Xac6aI1wpNgJeVnIedTzFwdH8SJ+j1
 /Z6U09bbZRuN4mczJ/NZCBQAVFJXcDzggxYUpqODk2mMPnEIY3GjsefcEGnH2tIIObyk=;
Received: from mgamail.intel.com ([192.198.163.9])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vInTk-0005AZ-40 for openipmi-developer@lists.sourceforge.net;
 Tue, 11 Nov 2025 12:28:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762864088; x=1794400088;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=e8WeGxOtZtcbZrMvs9n+wJZzGptxfxh9oxsAvrP2sMQ=;
 b=SU6Sy+CHPkEnhB5+AQMey4bbuAwrjV6dBGAgbXLObNQ0nyINoxYk21qJ
 6Rt01X874ClybQZKXH/3j0fsYqMp7qcMZ5wstoLnbrJQ4+YgN+uIuoCY7
 uKXEnsI54YBvgyUzigGJ0sxO6dDQhPGzHRHgmjPYhAUTrk5wTUIqo05z/
 0A3H2gk66wh62bS7bOvsNKXHi70CWdVaA9O+VmnalB2a3Ep/SAc3qHhcF
 hT0tbbTHKSuG18ZZ/53P2Cqg9WUna/lMcqUlcQ3et/fS1PYZlw4htJhgi
 NQB440Kf4kHUllN76SGhwzWADJKsRXpattYPCuAGZFLBhUdwnS+5HAZBq g==;
X-CSE-ConnectionGUID: fyivE2f9R5mwZMFjIiZgwg==
X-CSE-MsgGUID: YwFtNvD3RT2BN3tVICTzgg==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="75607057"
X-IronPort-AV: E=Sophos;i="6.19,296,1754982000"; d="scan'208";a="75607057"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 04:28:06 -0800
X-CSE-ConnectionGUID: YHDSoTq9Rr+aZdtO+8m67w==
X-CSE-MsgGUID: KCI6LE1SS0+Hf144PvkzVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,296,1754982000"; d="scan'208";a="188592922"
Received: from black.igk.intel.com ([10.91.253.5])
 by fmviesa007.fm.intel.com with ESMTP; 11 Nov 2025 04:27:58 -0800
Received: by black.igk.intel.com (Postfix, from userid 1003)
 id 30E48A4; Tue, 11 Nov 2025 13:27:38 +0100 (CET)
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
Date: Tue, 11 Nov 2025 13:20:14 +0100
Message-ID: <20251111122735.880607-15-andriy.shevchenko@linux.intel.com>
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
 of struct timespec64 in human readable format. Signed-off-by: Andy Shevchenko
 <andriy.shevchenko@linux.intel.com> --- drivers/net/dsa/sja1105/sja1105_tas.c
 | 8 +++----- 1 file changed, 3 insertions(+), 5 deletions(-) 
 Content analysis details:   (-0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1vInTk-0005AZ-40
Subject: [Openipmi-developer] [PATCH v2 14/21] net: dsa: sja1105: Switch to
 use %ptSp
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
 drivers/net/dsa/sja1105/sja1105_tas.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/net/dsa/sja1105/sja1105_tas.c b/drivers/net/dsa/sja1105/sja1105_tas.c
index d7818710bc02..d5949d2c3e71 100644
--- a/drivers/net/dsa/sja1105/sja1105_tas.c
+++ b/drivers/net/dsa/sja1105/sja1105_tas.c
@@ -775,9 +775,8 @@ static void sja1105_tas_state_machine(struct work_struct *work)
 		base_time_ts = ns_to_timespec64(base_time);
 		now_ts = ns_to_timespec64(now);
 
-		dev_dbg(ds->dev, "OPER base time %lld.%09ld (now %lld.%09ld)\n",
-			base_time_ts.tv_sec, base_time_ts.tv_nsec,
-			now_ts.tv_sec, now_ts.tv_nsec);
+		dev_dbg(ds->dev, "OPER base time %ptSp (now %ptSp)\n",
+			&base_time_ts, &now_ts);
 
 		break;
 
@@ -798,8 +797,7 @@ static void sja1105_tas_state_machine(struct work_struct *work)
 		if (now < tas_data->oper_base_time) {
 			/* TAS has not started yet */
 			diff = ns_to_timespec64(tas_data->oper_base_time - now);
-			dev_dbg(ds->dev, "time to start: [%lld.%09ld]",
-				diff.tv_sec, diff.tv_nsec);
+			dev_dbg(ds->dev, "time to start: [%ptSp]", &diff);
 			break;
 		}
 
-- 
2.50.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

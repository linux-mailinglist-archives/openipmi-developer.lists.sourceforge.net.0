Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 35D5CC582C9
	for <lists+openipmi-developer@lfdr.de>; Thu, 13 Nov 2025 16:03:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Message-ID:Date:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nYNhShfS4euL6Y1Fwfl7SJTMjFVKDy+mH+KeBmHd1Dg=; b=VpDOjeQWP4XY6cntcrW4KIhjBs
	HgQsU/mrvmwtyiXBqmjmD4ek0WTO+YmMNFQtvwuajBDohzUIRjzjytTwfHB1j/mZtpIv11LCUPMmL
	tRd+n6Jl6UaMRUdYkbAvd4VIlNtbvwF3evYDOh6sK0iWWffUopTcj+JN9szBmCjpNbOs=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vJYr6-0000Bt-1j;
	Thu, 13 Nov 2025 15:03:24 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1vJYqt-0000Av-Bg for openipmi-developer@lists.sourceforge.net;
 Thu, 13 Nov 2025 15:03:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ox3zoOLFWy5JaDxIDeyCO8/KhRCydmvNBf8yrADzjwo=; b=acyqNRkr01hQ4X/94/DnVy1Bdj
 3nI7WDNYTEAcqs+cZCT06z1QRtJxa0eaL/RytXTb6vc7LAsBcbnZPqjdOaC88PJv/tTxiURyZpjsR
 vfhPi8OaEim/GaSK340XR2wkoKNt1Jm3yMH0vpXWF0/MkXgKbLyXXfI/0+X/iU+lJNqw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Ox3zoOLFWy5JaDxIDeyCO8/KhRCydmvNBf8yrADzjwo=; b=VyXrgJ5/Y27+CzyFGCEoI9Db5w
 O+JlpnELIfGHi6DwopZr8lzuqXdIJERosr5GXcT5PAdTAXuAHMGZyruQqCQY3Ec5XFwwfr7FVqxUt
 NKTX5u1kgsRV1IyJ+i1iKv73AC4NsXy5RG9qVB+bRS4mcFgJmb8EZWGO+eeSfPAPeW/g=;
Received: from mgamail.intel.com ([198.175.65.21])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vJYqs-0000Jf-NW for openipmi-developer@lists.sourceforge.net;
 Thu, 13 Nov 2025 15:03:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763046191; x=1794582191;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=o4N7T+qVK77oOwqrK9kudMEIR18gnJzq4LSbPHl39rw=;
 b=TAFplN1z+AeYC1VwI21ar76wDoXWKeX4Ch9OxlOP9ouRnXvLHshF5c8W
 UArSk46Ad4FKzENQAcBPsqXI272JjBM7MJhv+sT7JqqoRBQYvGX+v8/Nb
 WUOWQ0qlHfQUY8RVtqUHt202P4/Ty0iHpou7gWoRTI6iVa7TEqtzPjx66
 3vbRv05qO9ajt/X7jSDl3ebTXjETlTCS4O+qKNJ6zZxOTCZkIbvptRnMT
 GRExY+jz8bBH6fxAHP/xDlVzBErOzGikDeb1UFiCYcQGqYMM2dl964Syx
 F1NOcqpMxzz42ao/hdcj/l47+Te15t1D4+cNPUML3ZJxP7Rfoh8UNbifN w==;
X-CSE-ConnectionGUID: OTCyx/5QTu2yX5MZHS7EBg==
X-CSE-MsgGUID: O/MtWKC0RkOtAhkdQlkHDg==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="65054594"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="65054594"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 07:02:58 -0800
X-CSE-ConnectionGUID: cRt8JpLrQ+2Mar8fig0Szg==
X-CSE-MsgGUID: 58dBm0YDQsaIwzqwvxDHqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,302,1754982000"; d="scan'208";a="220325119"
Received: from black.igk.intel.com ([10.91.253.5])
 by fmviesa001.fm.intel.com with ESMTP; 13 Nov 2025 07:02:45 -0800
Received: by black.igk.intel.com (Postfix, from userid 1003)
 id 60B69A5; Thu, 13 Nov 2025 16:02:19 +0100 (CET)
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
Date: Thu, 13 Nov 2025 15:32:29 +0100
Message-ID: <20251113150217.3030010-16-andriy.shevchenko@linux.intel.com>
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
 of struct timespec64 in human readable format. Acked-by: Bjorn Helgaas
 <bhelgaas@google.com>
 Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com> ---
 drivers/pci/endpoint/functions/pci-epf-test.c
 | 5 ++--- 1 file changed, 2 insertion [...] 
 Content analysis details:   (-0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1vJYqs-0000Jf-NW
Subject: [Openipmi-developer] [PATCH v3 15/21] PCI: epf-test: Switch to use
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

Acked-by: Bjorn Helgaas <bhelgaas@google.com>
Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/pci/endpoint/functions/pci-epf-test.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/pci/endpoint/functions/pci-epf-test.c b/drivers/pci/endpoint/functions/pci-epf-test.c
index b05e8db575c3..debd235253c5 100644
--- a/drivers/pci/endpoint/functions/pci-epf-test.c
+++ b/drivers/pci/endpoint/functions/pci-epf-test.c
@@ -331,9 +331,8 @@ static void pci_epf_test_print_rate(struct pci_epf_test *epf_test,
 		rate = div64_u64(size * NSEC_PER_SEC, ns * 1000);
 
 	dev_info(&epf_test->epf->dev,
-		 "%s => Size: %llu B, DMA: %s, Time: %llu.%09u s, Rate: %llu KB/s\n",
-		 op, size, dma ? "YES" : "NO",
-		 (u64)ts.tv_sec, (u32)ts.tv_nsec, rate);
+		 "%s => Size: %llu B, DMA: %s, Time: %ptSp s, Rate: %llu KB/s\n",
+		 op, size, dma ? "YES" : "NO", &ts, rate);
 }
 
 static void pci_epf_test_copy(struct pci_epf_test *epf_test,
-- 
2.50.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

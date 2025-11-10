Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EE34AC48D89
	for <lists+openipmi-developer@lfdr.de>; Mon, 10 Nov 2025 20:03:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Message-ID:Date:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XotZK7AuYnX+Me0baoLbVZQuTdTNm/AlDsu06GVMZXo=; b=VEL+tWaEL9pjnEUscrcAUIKSFz
	9EyJ3MDKB7P2WRRX5C59VHQdV+YIDCT4YxyaN/P/LbDefb280YSc9BLyrKAHrD3knDZhcKkc/EyWn
	tD/qqjHDzESKsUJlcLJiEM1Gyx47PdASknIUtT7tznqICnaIDVE5BkHVuxOMvrRXVRkE=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vIXAb-0007zz-IU;
	Mon, 10 Nov 2025 19:03:17 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1vIXAa-0007zq-1T for openipmi-developer@lists.sourceforge.net;
 Mon, 10 Nov 2025 19:03:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3zOvIfKnKvUP8qi8Z/y9jterh7JNN1WDHTSs0hx1am8=; b=Or7TDyh1qGXl5DJpSmx0BxIr01
 ugD76jAUxdJu2FqNq33HmSLxg32rsQFeqeWipDG/VZ+1wlCrVSWghFzBQZg9t2Zx5IAFtoujrTTSM
 AxF+7QbJTl7+ucmqUW2YNc7UNws74YWWqw+735NONuPpdvn+RranCm73caPoXA2m2gZs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3zOvIfKnKvUP8qi8Z/y9jterh7JNN1WDHTSs0hx1am8=; b=nArqGk6fQ28pgh476nA9FQzIOM
 ip89ExFNsSginPYzpmvAKHeRF+nGx7pm8+n722g0pEKDTwIzelcQw0TGZyP3/GfxSPAxaAfCUxloG
 vD02CStB0XuKQaDVvUGbtQ9GWqx0ZUkHZDbmHSul5KdfZ7bHTn02Y0JcyHjiSsT//nok=;
Received: from mgamail.intel.com ([192.198.163.7])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vIXAZ-0003ea-FD for openipmi-developer@lists.sourceforge.net;
 Mon, 10 Nov 2025 19:03:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762801395; x=1794337395;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Kew62E3E6IXuZlcG7gu+P9XzNY1zD9FK9bnTsI2boF4=;
 b=mSEOdtJHbnbc9cFfVOt18lQW4maeXxPGIRJa+MbNv4Iotweex+yy51G6
 AAPUKLs0khUxxxKA/jzkjEoXnzZFwLIunbfybQr1g70N9ClWyBmKDOlG4
 pfZIccbG2/0gItGYR4Oihw2XEF4f8Qs1Yjg3b4qN8Q3F/v+FUF7ZYkcAs
 lU3inSs3BTJs5WlHoGgcYIKqsWW0hY3Nw36SUrKaHy/sJR0wPI8JXv/Ol
 my8LdDMyDcXwl5nZ85+LrJ3QnQa0U7OIWUiKslJl0hCWmvxonIYw+k/wv
 nDa953Jk1x4msrqrhu+3dyQ40znvhOAj+7st2i61NP7i+w9krw9EFrNyr Q==;
X-CSE-ConnectionGUID: Rx0lUsj+QLiL6UdJrLgcew==
X-CSE-MsgGUID: /EBxwq/LQrqjQklRea+z5w==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="90327147"
X-IronPort-AV: E=Sophos;i="6.19,294,1754982000"; d="scan'208";a="90327147"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 10:47:38 -0800
X-CSE-ConnectionGUID: tjBTfSXPSK+R85GBxnBx7Q==
X-CSE-MsgGUID: icFeQ/OWQnuNNObR45nQtA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,294,1754982000"; d="scan'208";a="193749559"
Received: from black.igk.intel.com ([10.91.253.5])
 by fmviesa004.fm.intel.com with ESMTP; 10 Nov 2025 10:47:29 -0800
Received: by black.igk.intel.com (Postfix, from userid 1003)
 id EEA2B96; Mon, 10 Nov 2025 19:47:28 +0100 (CET)
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
Date: Mon, 10 Nov 2025 19:40:20 +0100
Message-ID: <20251110184727.666591-2-andriy.shevchenko@linux.intel.com>
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
 Content preview: A handful drivers want to print a content of the struct
 timespec64
 in a format of %lld:%09ld. In order to make their lives easier,
 add the respecting
 specifier directly to the printf() implementation. 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URI: intel.com]
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1vIXAZ-0003ea-FD
Subject: [Openipmi-developer] [PATCH v1 01/23] lib/vsprintf: Add specifier
 for printing struct timespec64
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

A handful drivers want to print a content of the struct timespec64
in a format of %lld:%09ld. In order to make their lives easier, add
the respecting specifier directly to the printf() implementation.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 Documentation/core-api/printk-formats.rst | 11 ++++++++--
 lib/tests/printf_kunit.c                  |  4 ++++
 lib/vsprintf.c                            | 25 +++++++++++++++++++++++
 3 files changed, 38 insertions(+), 2 deletions(-)

diff --git a/Documentation/core-api/printk-formats.rst b/Documentation/core-api/printk-formats.rst
index 7f2f11b48286..6fdb417f5140 100644
--- a/Documentation/core-api/printk-formats.rst
+++ b/Documentation/core-api/printk-formats.rst
@@ -547,11 +547,13 @@ Time and date
 	%pt[RT]s		YYYY-mm-dd HH:MM:SS
 	%pt[RT]d		YYYY-mm-dd
 	%pt[RT]t		HH:MM:SS
-	%pt[RT][dt][r][s]
+	%ptSp			<seconds>.<nanoseconds>
+	%pt[RST][dt][r][s]
 
 For printing date and time as represented by::
 
-	R  struct rtc_time structure
+	R  content of struct rtc_time
+	S  content of struct timespec64
 	T  time64_t type
 
 in human readable format.
@@ -563,6 +565,11 @@ The %pt[RT]s (space) will override ISO 8601 separator by using ' ' (space)
 instead of 'T' (Capital T) between date and time. It won't have any effect
 when date or time is omitted.
 
+The %ptSp is equivalent to %lld.%09ld for the content of the struct timespec64.
+When the other specifiers given, it becomes the respective equivalent of
+%ptT[dt][r][s].%09ld. In other words, the seconds are being printed in the
+human readable format followed by dot and nanoseconds.
+
 Passed by reference.
 
 struct clk
diff --git a/lib/tests/printf_kunit.c b/lib/tests/printf_kunit.c
index bc54cca2d7a6..7617e5b8b02c 100644
--- a/lib/tests/printf_kunit.c
+++ b/lib/tests/printf_kunit.c
@@ -504,6 +504,7 @@ time_and_date(struct kunit *kunittest)
 	};
 	/* 2019-01-04T15:32:23 */
 	time64_t t = 1546615943;
+	struct timespec64 ts = { .tv_sec = t, .tv_nsec = 11235813 };
 
 	test("(%pt?)", "%pt", &tm);
 	test("2018-11-26T05:35:43", "%ptR", &tm);
@@ -522,6 +523,9 @@ time_and_date(struct kunit *kunittest)
 	test("0119-00-04 15:32:23", "%ptTsr", &t);
 	test("15:32:23|2019-01-04", "%ptTts|%ptTds", &t, &t);
 	test("15:32:23|0119-00-04", "%ptTtrs|%ptTdrs", &t, &t);
+
+	test("2019-01-04T15:32:23.011235813", "%ptS", &ts);
+	test("1546615943.011235813", "%ptSp", &ts);
 }
 
 static void
diff --git a/lib/vsprintf.c b/lib/vsprintf.c
index 3f99834fd788..f29eb6368891 100644
--- a/lib/vsprintf.c
+++ b/lib/vsprintf.c
@@ -1989,6 +1989,28 @@ char *time64_str(char *buf, char *end, const time64_t time,
 	return rtc_str(buf, end, &rtc_time, spec, fmt);
 }
 
+static noinline_for_stack
+char *timespec64_str(char *buf, char *end, const struct timespec64 *ts,
+                     struct printf_spec spec, const char *fmt)
+{
+	static const struct printf_spec default_dec09_spec = {
+		.base = 10,
+		.field_width = 9,
+		.precision = -1,
+		.flags = ZEROPAD,
+	};
+
+	if (fmt[2] == 'p')
+		buf = number(buf, end, ts->tv_sec, default_dec_spec);
+	else
+		buf = time64_str(buf, end, ts->tv_sec, spec, fmt);
+	if (buf < end)
+		*buf = '.';
+	buf++;
+
+	return number(buf, end, ts->tv_nsec, default_dec09_spec);
+}
+
 static noinline_for_stack
 char *time_and_date(char *buf, char *end, void *ptr, struct printf_spec spec,
 		    const char *fmt)
@@ -1999,6 +2021,8 @@ char *time_and_date(char *buf, char *end, void *ptr, struct printf_spec spec,
 	switch (fmt[1]) {
 	case 'R':
 		return rtc_str(buf, end, (const struct rtc_time *)ptr, spec, fmt);
+	case 'S':
+		return timespec64_str(buf, end, (const struct timespec64 *)ptr, spec, fmt);
 	case 'T':
 		return time64_str(buf, end, *(const time64_t *)ptr, spec, fmt);
 	default:
@@ -2464,6 +2488,7 @@ early_param("no_hash_pointers", no_hash_pointers_enable);
  * - 'g' For block_device name (gendisk + partition number)
  * - 't[RT][dt][r][s]' For time and date as represented by:
  *      R    struct rtc_time
+ *      S    struct timespec64
  *      T    time64_t
  * - 'C' For a clock, it prints the name (Common Clock Framework) or address
  *       (legacy clock framework) of the clock
-- 
2.50.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

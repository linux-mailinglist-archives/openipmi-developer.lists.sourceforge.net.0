Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E6251F5837
	for <lists+openipmi-developer@lfdr.de>; Fri,  8 Nov 2019 21:41:43 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1iTB4g-0005gl-HZ; Fri, 08 Nov 2019 20:41:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <arnd@arndb.de>) id 1iTB4e-0005gb-Lw
 for openipmi-developer@lists.sourceforge.net; Fri, 08 Nov 2019 20:41:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lTwlL6UTv3w6PPy2PU/pmLBX5Tt3HdqSKCsb19DB07w=; b=SW0hju9RciYP1KcfAe2SFsq8Ku
 D8c3xk+GbBpG/nBx0tvXGLSEPmUDlwxzT3rVpmq4fq/KFUjFp+x+phbDVZwS1bJbwwhUMptSEBFXq
 0mU9mxsu2wHh/48jqx8jWp7HlA39l+EYYU19bWbC5NOYAN6DHf2VbOzrMpUIJeSURglQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lTwlL6UTv3w6PPy2PU/pmLBX5Tt3HdqSKCsb19DB07w=; b=FWhEKFmz1JJLLh+N8lsUmVTq1s
 JdsPdXxTvpDLeE7ZeLm0DssY0qy15BI7U1hYZUoTLdrggvNeW4xKWwMG6VRXbA6z8stwnVSPXaLpY
 x5RYc0bi3wi3LxoEuHNarXg7VQWQI5+a9FstoOLwDyuoCNrZ0j6JOpquWtDczgx0RV78=;
Received: from mout.kundenserver.de ([217.72.192.73])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iTB4c-006HHb-Ea
 for openipmi-developer@lists.sourceforge.net; Fri, 08 Nov 2019 20:41:40 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.145]) with ESMTPA (Nemesis) id
 1N7yuz-1hpfJe1Cz5-014yOw; Fri, 08 Nov 2019 21:35:57 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: y2038@lists.linaro.org, Corey Minyard <minyard@acm.org>,
 Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Date: Fri,  8 Nov 2019 21:34:27 +0100
Message-Id: <20191108203435.112759-5-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191108203435.112759-1-arnd@arndb.de>
References: <20191108203435.112759-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:5h5zjTJTFS7NU7dR3OxD3RGZD81MiMNfiSZHg3//WQd5cEspSJc
 LIApSfiSz9Te28wkEE3ctR6BIBgRSUZv+L8WoFHniGGNul2rk23RWvU9J1joypQooUlQ9/Y
 DGmmNTguceLb02Y1evbVHD9ZTU8F11CtM7iKaUrqM2+zVzRGt7fUWskVkjFrWQxFHRWNCDP
 Wk8+4Q6wKeQ6K8pK07LrA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:KdUBDn3nyGc=:UVoh4MCHJjgUN14cDD8wMD
 9NeIDkHr9hJAnxZKqIYS19ivqgqp3zXHUeEYdDIakUr28SozYZ1uzgfuSc59SHoA67P6+ZuUH
 H6jo2Tn12gB/B1g8pmQmughYT1d+rhcZxf7PpSvbwpfMpQwPUFBbb1GoaQhdzZRbPjrFy0W3m
 5yZqoxpXZgDLSM8rZsm3m3KfSuZAUlAz3cC91b/jGaqJPLB3Lq1cnO+LRIxyrK0+lDj/WF936
 SfCB2HzLh9GDZpZGNACQYPdobQgYlZ06QNI9iq56jCRYQwlGnp404m4aK+dzM8o68FNj4a9sl
 mDr2T5mFhfel//to8qRO+oLE15YULe7XJMtfocLDHO1NMi+h0+CNCggtssldUTlCjV6DCATmJ
 5CQIANr8nqzk6C2GZ4LfYjgARlAKWKOrjFFFpTyaW4tgGxn/w/va0HdYebFg9SBub6k7O8bul
 YIHT0iduWLi93JEFQnakjg9TtPbptp/SUnf1NztaqCBmoBO3M4t3gWaX6mH4vA7kBN431oGzV
 u0kXFJpxeFklt7fXYiw1Pk3xrHLwG5byTqQWyft3iR80utJJkpW8c8xlmeYCQPoIFDf1BEOTZ
 /Mav+76CT6ExbttTJGnRiuFrdzRZRcH6ZMp1XvG3Cy4BnaGdqJ5NfqTdnl3gCelw5Kb51z6fk
 V1txqFdB+Y6pNgBmqZ6sMUF3rwRa4HaKRimognjtzUN12VevdT0uq+mzslJ7yT/kcynYZAXvw
 p2vcFo5z11KjKPAeEOsinkKoqRLoyPWHeR6qDLJZUVNC8YIOY/5F/a4NorQMw1E1G79Ky9E0e
 sCMSmTsevde1VWkdYuc3+0KoOeMb2WNzxru+yeRWsGXI0rizb/vFkRXg8qbP2wWRXktWFOFyb
 jFaSzVsa5s2dFYXrpv/Q==
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [217.72.192.73 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: arndb.de]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iTB4c-006HHb-Ea
Subject: [Openipmi-developer] [PATCH 4/8] ipmi: kill off 'timespec' usage
 again
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
Cc: Corey Minyard <cminyard@mvista.com>,
 openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

'struct timespec' is getting removed from the kernel. The usage in ipmi
was fixed before in commit 48862ea2ce86 ("ipmi: Update timespec usage
to timespec64"), but unfortunately it crept back in.

The busy looping code can better use ktime_t anyway, so use that
there to simplify the implementation.

Fixes: cbb19cb1eef0 ("ipmi_si: Convert timespec64 to timespec")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/char/ipmi/ipmi_si_intf.c | 40 +++++++++++---------------------
 1 file changed, 13 insertions(+), 27 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_si_intf.c b/drivers/char/ipmi/ipmi_si_intf.c
index 6b9a0593d2eb..c7cc8538b84a 100644
--- a/drivers/char/ipmi/ipmi_si_intf.c
+++ b/drivers/char/ipmi/ipmi_si_intf.c
@@ -265,10 +265,10 @@ static void cleanup_ipmi_si(void);
 #ifdef DEBUG_TIMING
 void debug_timestamp(char *msg)
 {
-	struct timespec t;
+	struct timespec64 t;
 
-	ktime_get_ts(&t);
-	pr_debug("**%s: %ld.%9.9ld\n", msg, (long) t.tv_sec, t.tv_nsec);
+	ktime_get_ts64(&t);
+	pr_debug("**%s: %lld.%9.9ld\n", msg, t.tv_sec, t.tv_nsec);
 }
 #else
 #define debug_timestamp(x)
@@ -935,38 +935,25 @@ static void set_run_to_completion(void *send_info, bool i_run_to_completion)
 }
 
 /*
- * Use -1 in the nsec value of the busy waiting timespec to tell that
- * we are spinning in kipmid looking for something and not delaying
- * between checks
+ * Use -1 as a special constant to tell that we are spinning in kipmid
+ * looking for something and not delaying between checks
  */
-static inline void ipmi_si_set_not_busy(struct timespec *ts)
-{
-	ts->tv_nsec = -1;
-}
-static inline int ipmi_si_is_busy(struct timespec *ts)
-{
-	return ts->tv_nsec != -1;
-}
-
+#define IPMI_TIME_NOT_BUSY ns_to_ktime(-1ull)
 static inline bool ipmi_thread_busy_wait(enum si_sm_result smi_result,
 					 const struct smi_info *smi_info,
-					 struct timespec *busy_until)
+					 ktime_t *busy_until)
 {
 	unsigned int max_busy_us = 0;
 
 	if (smi_info->si_num < num_max_busy_us)
 		max_busy_us = kipmid_max_busy_us[smi_info->si_num];
 	if (max_busy_us == 0 || smi_result != SI_SM_CALL_WITH_DELAY)
-		ipmi_si_set_not_busy(busy_until);
-	else if (!ipmi_si_is_busy(busy_until)) {
-		ktime_get_ts(busy_until);
-		timespec_add_ns(busy_until, max_busy_us * NSEC_PER_USEC);
+		*busy_until = IPMI_TIME_NOT_BUSY;
+	else if (*busy_until == IPMI_TIME_NOT_BUSY) {
+		*busy_until = ktime_get() + max_busy_us * NSEC_PER_USEC;
 	} else {
-		struct timespec now;
-
-		ktime_get_ts(&now);
-		if (unlikely(timespec_compare(&now, busy_until) > 0)) {
-			ipmi_si_set_not_busy(busy_until);
+		if (unlikely(ktime_get() > *busy_until)) {
+			*busy_until = IPMI_TIME_NOT_BUSY;
 			return false;
 		}
 	}
@@ -988,9 +975,8 @@ static int ipmi_thread(void *data)
 	struct smi_info *smi_info = data;
 	unsigned long flags;
 	enum si_sm_result smi_result;
-	struct timespec busy_until = { 0, 0 };
+	ktime_t busy_until = IPMI_TIME_NOT_BUSY;
 
-	ipmi_si_set_not_busy(&busy_until);
 	set_user_nice(current, MAX_NICE);
 	while (!kthread_should_stop()) {
 		int busy_wait;
-- 
2.20.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

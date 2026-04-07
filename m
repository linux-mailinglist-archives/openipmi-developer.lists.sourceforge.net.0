Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WCgWN0lE1WnY3wcAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Tue, 07 Apr 2026 19:52:09 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BA4C3B2996
	for <lists+openipmi-developer@lfdr.de>; Tue, 07 Apr 2026 19:52:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=slzN0qQXqXiHmACe991jAuwh4spQUfBh3PanLxi0k7E=; b=VGgxhdnBpljy8tSBoiPMscRE6W
	pDCoaXN4uG9ew3u67LioJrrfptEy4sUmMLP2T2LUPBV1+PXW5AajCKqvxpzjNGMbClVMb5+OdVgev
	51vLJdSy8oEerMcJXRhJPqhAoZaHvSdl+DyPwFallu753G+kRb6Do2CBpcqfR2rL6pts=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wAAan-0001NK-02;
	Tue, 07 Apr 2026 17:52:01 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcamuso@redhat.com>) id 1wAAak-0001N7-Dv
 for openipmi-developer@lists.sourceforge.net;
 Tue, 07 Apr 2026 17:51:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=content-type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=f+twoVwdNXfHf13CedAqdMJEXuMqs/2V95Av5J0U1Bg=; b=eUGlQ/76Od0yNcOGWmZiffKXjP
 Id3CNk5bl4pU/NJT9lI87yj8SZ4pzn/RASTk4mvgRs+6iorHsrslRsB11S+Thm8NYGUgbxsK5rtPM
 /cvMwygmlTWA7+FIaNAs0xyqW3sY1lbUzShrVkWEpvIELkFX+PIGr8riz2kpIeDQcGHk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=content-type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=f+twoVwdNXfHf13CedAqdMJEXuMqs/2V95Av5J0U1Bg=; b=iu1qD3ckeIdbuyN87G9koFjy57
 agmePMP6DCWNKeFaraagKdiT4wQawNz5EDqvak4F4vohAgjWj2dsIGwEJvgiqglLXw4IPr0dK3mnZ
 4IN0UoiiRUq1juDk70yyEoT4x1oUO2bK+20Qb/6Fx50z1/w+xIwBpOiln5K4mSdWpuAs=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1wAAad-0000Hv-QZ for openipmi-developer@lists.sourceforge.net;
 Tue, 07 Apr 2026 17:51:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1775584301;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=f+twoVwdNXfHf13CedAqdMJEXuMqs/2V95Av5J0U1Bg=;
 b=Lg22aHq416/8oEx5zmh55fXN0kxrHuh77OauPYybTRYC7XSxeuC1/9OqA1Tl1tgtyiu3pu
 fmzic/aVkA47AQZFxZOv+E2xL5w4/6mmM9gS21RkOrIdDVDz9kINkaPqidn1fYD8PHXJqm
 JeaTsogMd/uieU21Tk6ZlUUAuNWjaHw=
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-657-4ErzDG65Ob2CKKvEEJLIHw-1; Tue,
 07 Apr 2026 13:51:37 -0400
X-MC-Unique: 4ErzDG65Ob2CKKvEEJLIHw-1
X-Mimecast-MFC-AGG-ID: 4ErzDG65Ob2CKKvEEJLIHw_1775584297
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id E15CF1956059; Tue,  7 Apr 2026 17:51:36 +0000 (UTC)
Received: from hp-dl380pgen9-07.khw.eng.rdu2.dc.redhat.com
 (hp-dl380pgen9-07.khw.eng.rdu2.dc.redhat.com [10.6.10.143])
 by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 50F55300019F; Tue,  7 Apr 2026 17:51:36 +0000 (UTC)
To: openipmi-developer@lists.sourceforge.net,
	linux-kernel@vger.kernel.org
Date: Tue,  7 Apr 2026 13:51:33 -0400
Message-ID: <20260407175134.3367345-2-tcamuso@redhat.com>
In-Reply-To: <20260407175134.3367345-1-tcamuso@redhat.com>
References: <20260407175134.3367345-1-tcamuso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-MFC-PROC-ID: uYrPAOGTabH-64GPOaDHgZSfG6jSXQo7CCDsI6ko1ho_1775584297
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.7 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  When the BMC resets while the IPMI watchdog is active, three
 problems can occur: 1. The static smi_msg and recv_msg structures remain
 queued in the IPMI layer after a response timeout. If the watchdog daemon
 retries, the code reuses these structures while still on the IPMI layer's
 [...] Content analysis details:   (-0.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1wAAad-0000Hv-QZ
Subject: [Openipmi-developer] [PATCH 1/2] ipmi:watchdog: Reboot cleanly on
 BMC reset
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
From: Tony Camuso via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Tony Camuso <tcamuso@redhat.com>
Cc: minyard@acm.org, tcamuso@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Spamd-Result: default: False [-8.61 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_MIXED(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,redhat.com:s=mimecast20190719];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,redhat.com:-];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	TAGGED_RCPT(0.00)[openipmi-developer];
	HAS_REPLYTO(0.00)[tcamuso@redhat.com];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:helo,lists.sourceforge.net:rdns,lists.sourceforge.net:dkim]
X-Rspamd-Queue-Id: 7BA4C3B2996
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

When the BMC resets while the IPMI watchdog is active, three problems
can occur:

1. The static smi_msg and recv_msg structures remain queued in the IPMI
   layer after a response timeout. If the watchdog daemon retries, the
   code reuses these structures while still on the IPMI layer's internal
   lists, causing:

     list_add double add: new=ffffffffc10063e0, prev=ffffffffc10063e0, ...
     kernel BUG at lib/list_debug.c:29!

2. Both __ipmi_heartbeat() and _ipmi_set_timeout() use
   wait_for_completion() with no timeout, blocking indefinitely if the
   BMC is unresponsive, leaving tasks stuck in D state.

3. When the BMC loses the watchdog timer state, the driver's internal
   state becomes inconsistent, causing subsequent writes to /dev/watchdog
   to return -EINVAL, leaving the system without watchdog protection.

Fix all three issues:

- Add msg_in_flight atomic flag to prevent re-entry into
  __ipmi_heartbeat() and _ipmi_set_timeout() while message structures
  are still queued in the IPMI layer.

- Convert wait_for_completion() to wait_for_completion_timeout() in
  both functions to prevent indefinite blocking.

- Add reinit_completion() before each use to prevent stale completion
  events from allowing premature wakeup.

- Detect BMC communication failure in ipmi_wdog_msg_handler() via
  non-zero completion codes and initiate orderly_reboot() when the
  watchdog is active.  This ensures the system reboots cleanly rather
  than being left without watchdog protection.  Error classification
  distinguishes TIMER_NOT_INIT (0x80), vendor-specific codes
  (0x81-0xBE), and standard IPMI completion codes.

- Guard all BMC communication paths (_ipmi_set_timeout,
  __ipmi_heartbeat, wdog_reboot_handler) with bmc_reset_shutdown flag
  to prevent further IPMI operations during shutdown.

Signed-off-by: Tony Camuso <tcamuso@redhat.com>
---
 drivers/char/ipmi/ipmi_watchdog.c | 101 ++++++++++++++++++++++++------
 1 file changed, 83 insertions(+), 18 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_watchdog.c b/drivers/char/ipmi/ipmi_watchdog.c
index a013ddbf1466..1d8277cbe598 100644
--- a/drivers/char/ipmi/ipmi_watchdog.c
+++ b/drivers/char/ipmi/ipmi_watchdog.c
@@ -123,6 +123,16 @@
 
 #define IPMI_WDOG_TIMER_NOT_INIT_RESP	0x80
 
+/* Timeout for waiting for a heartbeat response (in jiffies). */
+#define IPMI_HEARTBEAT_WAIT_TIMEOUT	(HZ * 5)
+
+/*
+ * Set when the BMC becomes unreachable while the watchdog is active.
+ * Once set, all BMC communication is skipped and an orderly reboot
+ * is in progress.
+ */
+static bool bmc_reset_shutdown;
+
 static DEFINE_MUTEX(ipmi_watchdog_mutex);
 static bool nowayout = WATCHDOG_NOWAYOUT;
 
@@ -339,12 +349,14 @@ static int __ipmi_heartbeat(void);
  * and freed when both the send and receive messages are free.
  */
 static atomic_t msg_tofree = ATOMIC_INIT(0);
+static atomic_t msg_in_flight = ATOMIC_INIT(0);
 static DECLARE_COMPLETION(msg_wait);
 static void msg_free_smi(struct ipmi_smi_msg *msg)
 {
 	if (atomic_dec_and_test(&msg_tofree)) {
 		if (!oops_in_progress)
 			complete(&msg_wait);
+		atomic_set(&msg_in_flight, 0);
 	}
 }
 static void msg_free_recv(struct ipmi_recv_msg *msg)
@@ -352,6 +364,7 @@ static void msg_free_recv(struct ipmi_recv_msg *msg)
 	if (atomic_dec_and_test(&msg_tofree)) {
 		if (!oops_in_progress)
 			complete(&msg_wait);
+		atomic_set(&msg_in_flight, 0);
 	}
 }
 static struct ipmi_smi_msg smi_msg = INIT_IPMI_SMI_MSG(msg_free_smi);
@@ -429,19 +442,34 @@ static int _ipmi_set_timeout(int do_heartbeat)
 {
 	int send_heartbeat_now;
 	int rv;
+	unsigned long ret;
 
 	if (!watchdog_user)
 		return -ENODEV;
 
+	if (bmc_reset_shutdown)
+		return -ENODEV;
+
+	if (atomic_read(&msg_in_flight))
+		return -EBUSY;
+
+	reinit_completion(&msg_wait);
+	atomic_set(&msg_in_flight, 1);
 	atomic_set(&msg_tofree, 2);
 
 	rv = __ipmi_set_timeout(&smi_msg, &recv_msg, &send_heartbeat_now);
 	if (rv) {
 		atomic_set(&msg_tofree, 0);
+		atomic_set(&msg_in_flight, 0);
 		return rv;
 	}
 
-	wait_for_completion(&msg_wait);
+	ret = wait_for_completion_timeout(&msg_wait,
+					  IPMI_HEARTBEAT_WAIT_TIMEOUT);
+	if (ret == 0) {
+		atomic_set(&msg_tofree, 0);
+		return -ETIMEDOUT;
+	}
 
 	if ((do_heartbeat == IPMI_SET_TIMEOUT_FORCE_HB)
 		|| ((send_heartbeat_now)
@@ -510,10 +538,17 @@ static int __ipmi_heartbeat(void)
 {
 	struct kernel_ipmi_msg msg;
 	int rv;
+	unsigned long ret;
 	struct ipmi_system_interface_addr addr;
 	int timeout_retries = 0;
 
 restart:
+	if (bmc_reset_shutdown)
+		return -ENODEV;
+
+	if (atomic_read(&msg_in_flight))
+		return -EBUSY;
+
 	/*
 	 * Don't reset the timer if we have the timer turned off, that
 	 * re-enables the watchdog.
@@ -521,6 +556,8 @@ static int __ipmi_heartbeat(void)
 	if (ipmi_watchdog_state == WDOG_TIMEOUT_NONE)
 		return 0;
 
+	reinit_completion(&msg_wait);
+	atomic_set(&msg_in_flight, 1);
 	atomic_set(&msg_tofree, 2);
 
 	addr.addr_type = IPMI_SYSTEM_INTERFACE_ADDR_TYPE;
@@ -541,14 +578,17 @@ static int __ipmi_heartbeat(void)
 				      1);
 	if (rv) {
 		atomic_set(&msg_tofree, 0);
-		pr_warn("heartbeat send failure: %d\n", rv);
+		atomic_set(&msg_in_flight, 0);
 		return rv;
 	}
 
-	/* Wait for the heartbeat to be sent. */
-	wait_for_completion(&msg_wait);
+	ret = wait_for_completion_timeout(&msg_wait, IPMI_HEARTBEAT_WAIT_TIMEOUT);
+	if (ret == 0) {
+		atomic_set(&msg_tofree, 0);
+		return -ETIMEDOUT;
+	}
 
-	if (recv_msg.msg.data[0] == IPMI_WDOG_TIMER_NOT_INIT_RESP)  {
+	if (recv_msg.msg.data[0] >= 0x80) {
 		timeout_retries++;
 		if (timeout_retries > 3) {
 			pr_err("Unable to restore the IPMI watchdog's settings, giving up\n");
@@ -557,12 +597,11 @@ static int __ipmi_heartbeat(void)
 		}
 
 		/*
-		 * The timer was not initialized, that means the BMC was
-		 * probably reset and lost the watchdog information.  Attempt
-		 * to restore the timer's info.  Note that we still hold
-		 * the heartbeat lock, to keep a heartbeat from happening
-		 * in this process, so must say no heartbeat to avoid a
-		 * deadlock on this mutex
+		 * The BMC was probably reset and lost the watchdog
+		 * information.  Attempt to restore the timer's info.
+		 * Note that we still hold the heartbeat lock, to keep
+		 * a heartbeat from happening in this process, so must
+		 * say no heartbeat to avoid a deadlock on this mutex.
 		 */
 		rv = _ipmi_set_timeout(IPMI_SET_TIMEOUT_NO_HB);
 		if (rv) {
@@ -876,15 +915,38 @@ static struct miscdevice ipmi_wdog_miscdev = {
 static void ipmi_wdog_msg_handler(struct ipmi_recv_msg *msg,
 				  void                 *handler_data)
 {
-	if (msg->msg.cmd == IPMI_WDOG_RESET_TIMER &&
-			msg->msg.data[0] == IPMI_WDOG_TIMER_NOT_INIT_RESP)
-		pr_info("response: The IPMI controller appears to have been reset, will attempt to reinitialize the watchdog timer\n");
-	else if (msg->msg.data[0] != 0)
-		pr_err("response: Error %x on cmd %x\n",
-		       msg->msg.data[0],
-		       msg->msg.cmd);
+	if (msg->msg.data[0] != 0) {
+		if (msg->msg.data[0] == IPMI_WDOG_TIMER_NOT_INIT_RESP)
+			pr_crit("BMC error: watchdog timer not initialized "
+				"(0x%02x on cmd 0x%02x)\n",
+				msg->msg.data[0], msg->msg.cmd);
+		else if (msg->msg.data[0] > 0x80 &&
+			 msg->msg.data[0] <= 0xBE)
+			pr_crit("BMC error: vendor-specific completion code "
+				"0x%02x on cmd 0x%02x\n",
+				msg->msg.data[0], msg->msg.cmd);
+		else
+			pr_crit("BMC error: completion code 0x%02x "
+				"on cmd 0x%02x\n",
+				msg->msg.data[0], msg->msg.cmd);
+
+		if (ipmi_watchdog_state != WDOG_TIMEOUT_NONE &&
+		    !bmc_reset_shutdown) {
+			bmc_reset_shutdown = true;
+			pr_crit("BMC communication lost with watchdog active, "
+				"initiating system reboot\n");
+			orderly_reboot();
+		}
+	}
 
 	ipmi_free_recv_msg(msg);
+	/*
+	 * Ensure the in-flight flag is cleared after the message is freed.
+	 * In the normal path this is redundant (already cleared by the
+	 * recv_msg destructor). For late responses arriving after a
+	 * completion timeout, this is the only path that clears the flag.
+	 */
+	atomic_set(&msg_in_flight, 0);
 }
 
 static void ipmi_wdog_pretimeout_handler(void *handler_data)
@@ -1106,6 +1168,9 @@ static int wdog_reboot_handler(struct notifier_block *this,
 		/* Make sure we only do this once. */
 		reboot_event_handled = 1;
 
+		if (bmc_reset_shutdown)
+			return NOTIFY_OK;
+
 		if (code == SYS_POWER_OFF || code == SYS_HALT) {
 			/* Disable the WDT if we are shutting down. */
 			ipmi_watchdog_state = WDOG_TIMEOUT_NONE;
-- 
2.53.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

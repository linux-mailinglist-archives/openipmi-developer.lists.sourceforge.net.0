Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gAR/JIzYjWng7wAAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Thu, 12 Feb 2026 14:41:32 +0100
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BBBCA12DE7C
	for <lists+openipmi-developer@lfdr.de>; Thu, 12 Feb 2026 14:41:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=J0xYhBdCtO6p3LHmUPtrwoyoVpvjDZQTPfSguAMZRfE=; b=U+q+y5zqAH2zAOhriKehsvTaPa
	T+xZxjdW5ykabWYNWSu7bzXA7tk+vTSXb6YuDTsutjoboFd6piUFitvXbI2RD3fbZbeggbrLvF8mL
	duB79hfQfwC80gctC0zsjLsC2cevNc+F++K/qxltZAuyal7y3hM+DMzzo2A6PNhAmQKs=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vqWwa-00032g-Sy;
	Thu, 12 Feb 2026 13:41:20 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <rafael@kernel.org>) id 1vqWwZ-00032a-MX
 for openipmi-developer@lists.sourceforge.net;
 Thu, 12 Feb 2026 13:41:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=F/66BIVDsP7YPTomOpWaNwhD7sdKC5xP9C4sNRSstxo=; b=eWZO5RCLwAHLCGnTqCaBZ8b4Cj
 5uJKDEv27FFDGj/meCbFmSB6xsg0RCMA8zPKUfYQOHEN31dfp6yaTsKHV02+YM9lN8KI7e6pk4EwU
 BRxx5iGVj3/12ZBmAFsXhICY4WZcMvl/WiUDAGAv7o3S++RP1vZ2lMdcMPYqCWODeZ7Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=F/66BIVDsP7YPTomOpWaNwhD7sdKC5xP9C4sNRSstxo=; b=k
 atfoS/1Yh01HSwQ27aQgkoPlCHoG72aMmApZRZ/5fa8Dxy4MePQDZ4QIOPlF36BoqUBraVYtcP1bw
 rmzGXyKOa004RHqctA9BSrCA0w7aQfHvGrPUb3hBHorbOBy794dwGLdT4xA3YgAid3KaK4O15//Jn
 XQTnesP7g6GVtknI=;
Received: from sea.source.kernel.org ([172.234.252.31])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vqWwZ-0004jc-5n for openipmi-developer@lists.sourceforge.net;
 Thu, 12 Feb 2026 13:41:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id CF30644465;
 Thu, 12 Feb 2026 13:41:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 07F61C16AAE;
 Thu, 12 Feb 2026 13:41:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1770903673;
 bh=eAko90GRKuDabjJmZ8Ccxjj5nzFmGO0UGhMpq6ntqLo=;
 h=From:To:Cc:Subject:Date:From;
 b=RgCyU4BxxwYFwWYlc3nWbqgsU/IKiAc2im9W4+c/eLYayvTmBnLIWVeDjRMskRXwW
 v2UqjF9cXYa2PQTe1WdJPvOJbbrOSZ5cKcS02d4YXZQbKKjJU8KMwvTUqq7dpaIBG/
 +FH1kKxbli066HQYD8ox+aI7xPpsmo936zwKMZJ9bMRd0UTdB8/q08whF1u22krbdR
 9HVXmo4OuigxpTBhh4YlLkP8GNxYcm7eIfF3eDfNiEurqUaUA6d+hsXC3MloagLegV
 UcA/3JbaFt/fApgtBFKkXAHuLhnlebjFWoq5cW96TsZQ93fwdnmPlBj/pN69A3XYF4
 Mt/8McnYOvpgQ==
To: Linux ACPI <linux-acpi@vger.kernel.org>, Corey Minyard <corey@minyard.net>
Date: Thu, 12 Feb 2026 14:41:08 +0100
Message-ID: <10802540.nUPlyArG6x@rafael.j.wysocki>
Organization: Linux Kernel Development
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Rafael J. Wysocki <rafael.j.wysocki@intel.com> Revert
 commit bc3a9d217755 ("ipmi:si: Gracefully handle if the BMC is
 non-functional")
 that attempted to improve the handling of the cases in which the BMC was
 not responsive, but did not succeed. 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1vqWwZ-0004jc-5n
Subject: [Openipmi-developer] [PATCH v1] Revert "ipmi:si: Gracefully handle
 if the BMC is non-functional"
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
From: "Rafael J. Wysocki via Openipmi-developer"
 <openipmi-developer@lists.sourceforge.net>
Reply-To: "Rafael J. Wysocki" <rafael@kernel.org>
Cc: linux-hwmon@vger.kernel.org, regressions@lists.linux.dev,
 Linux PM <linux-pm@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 openipmi-developer@lists.sourceforge.net,
 Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>,
 Igor Raits <igor@gooddata.com>, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-8.21 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:linux-acpi@vger.kernel.org,m:corey@minyard.net,m:linux-hwmon@vger.kernel.org,m:regressions@lists.linux.dev,m:linux-pm@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:openipmi-developer@lists.sourceforge.net,m:jaroslav.pulchart@gooddata.com,m:igor@gooddata.com,m:linux@roeck-us.net,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	DKIM_MIXED(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,kernel.org:s=k20201202];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,kernel.org:-];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	HAS_REPLYTO(0.00)[rafael@kernel.org];
	TAGGED_RCPT(0.00)[openipmi-developer];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,lists.sourceforge.net:rdns,lists.sourceforge.net:helo,lists.sourceforge.net:dkim]
X-Rspamd-Queue-Id: BBBCA12DE7C
X-Rspamd-Action: no action

From: Rafael J. Wysocki <rafael.j.wysocki@intel.com>

Revert commit bc3a9d217755 ("ipmi:si: Gracefully handle if the BMC is
non-functional") that attempted to improve the handling of the cases
in which the BMC was not responsive, but did not succeed.

Instead, it introduced a regression causing AML in ACPI tables that use
IMPI operation regions to block indefinitely on the tx_msg->tx_complete
completion in acpi_ipmi_space_handler(), which may affect ACPI control
methods on any system where IPMI is involved resulting in various types
of breakage that is not straightforward to diagnose.

For example, on the system where the regression was first observed, it
caused sysfs accesses to attributes exposed by the acpi_power_meter
driver to block because they involved AML evaluation which is not
super-easy to connect to IPMI.

This is a nasty and rather urgent problem with no viable fix in sight.

Note that AI was involved in diagnosing it, but didn't help much.

Fixes: bc3a9d217755 ("ipmi:si: Gracefully handle if the BMC is non-functional")
Closes: https://lore.kernel.org/linux-acpi/CAK8fFZ6Vi4xayvdKh-_eLi-nDNMLuEoMsvwEnb33QqnwS7o4BA@mail.gmail.com/
Reported-by: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
Tested-by: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
Cc: All applicable <stable@vger.kernel.org>
Signed-off-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
---
 drivers/char/ipmi/ipmi_si_intf.c |   29 ++++++-----------------------
 1 file changed, 6 insertions(+), 23 deletions(-)

--- a/drivers/char/ipmi/ipmi_si_intf.c
+++ b/drivers/char/ipmi/ipmi_si_intf.c
@@ -53,7 +53,6 @@
 #define SI_TIMEOUT_JIFFIES	(SI_TIMEOUT_TIME_USEC/SI_USEC_PER_JIFFY)
 #define SI_SHORT_TIMEOUT_USEC  250 /* .25ms when the SM request a
 				      short timeout */
-#define SI_TIMEOUT_HOSED	(HZ) /* 1 second when in hosed state. */
 
 enum si_intf_state {
 	SI_NORMAL,
@@ -62,8 +61,7 @@ enum si_intf_state {
 	SI_CLEARING_FLAGS,
 	SI_GETTING_MESSAGES,
 	SI_CHECKING_ENABLES,
-	SI_SETTING_ENABLES,
-	SI_HOSED
+	SI_SETTING_ENABLES
 	/* FIXME - add watchdog stuff. */
 };
 
@@ -754,8 +752,6 @@ static void handle_transaction_done(stru
 		}
 		break;
 	}
-	case SI_HOSED: /* Shouldn't happen. */
-		break;
 	}
 }
 
@@ -770,10 +766,6 @@ static enum si_sm_result smi_event_handl
 	enum si_sm_result si_sm_result;
 
 restart:
-	if (smi_info->si_state == SI_HOSED)
-		/* Just in case, hosed state is only left from the timeout. */
-		return SI_SM_HOSED;
-
 	/*
 	 * There used to be a loop here that waited a little while
 	 * (around 25us) before giving up.  That turned out to be
@@ -797,20 +789,18 @@ restart:
 
 		/*
 		 * Do the before return_hosed_msg, because that
-		 * releases the lock.  We just disable operations for
-		 * a while and retry in hosed state.
+		 * releases the lock.
 		 */
-		smi_info->si_state = SI_HOSED;
+		smi_info->si_state = SI_NORMAL;
 		if (smi_info->curr_msg != NULL) {
 			/*
 			 * If we were handling a user message, format
 			 * a response to send to the upper layer to
 			 * tell it about the error.
 			 */
-			return_hosed_msg(smi_info, IPMI_BUS_ERR);
+			return_hosed_msg(smi_info, IPMI_ERR_UNSPECIFIED);
 		}
-		smi_mod_timer(smi_info, jiffies + SI_TIMEOUT_HOSED);
-		goto out;
+		goto restart;
 	}
 
 	/*
@@ -908,7 +898,7 @@ static void flush_messages(void *send_in
 	 * mode.  This means we are single-threaded, no need for locks.
 	 */
 	result = smi_event_handler(smi_info, 0);
-	while (result != SI_SM_IDLE && result != SI_SM_HOSED) {
+	while (result != SI_SM_IDLE) {
 		udelay(SI_SHORT_TIMEOUT_USEC);
 		result = smi_event_handler(smi_info, SI_SHORT_TIMEOUT_USEC);
 	}
@@ -921,9 +911,6 @@ static int sender(void *send_info, struc
 
 	debug_timestamp(smi_info, "Enqueue");
 
-	if (smi_info->si_state == SI_HOSED)
-		return IPMI_BUS_ERR;
-
 	if (smi_info->run_to_completion) {
 		/*
 		 * If we are running to completion, start it.  Upper
@@ -1104,10 +1091,6 @@ static void smi_timeout(struct timer_lis
 	spin_lock_irqsave(&(smi_info->si_lock), flags);
 	debug_timestamp(smi_info, "Timer");
 
-	if (smi_info->si_state == SI_HOSED)
-		/* Try something to see if the BMC is now operational. */
-		start_get_flags(smi_info);
-
 	jiffies_now = jiffies;
 	time_diff = (((long)jiffies_now - (long)smi_info->last_timeout_jiffies)
 		     * SI_USEC_PER_JIFFY);





_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

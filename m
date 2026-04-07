Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WK2eLklE1WnY3wcAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Tue, 07 Apr 2026 19:52:09 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 588DE3B2995
	for <lists+openipmi-developer@lfdr.de>; Tue, 07 Apr 2026 19:52:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IhG40y2lq/uhzqzLfUWGNGIy+7iinShQyhEu9X6GANM=; b=gJbJo6++Guqj6XH+YohPGnxGDL
	q4tlJOHbOd6Ll1wSH9kVqCOkjpZx6O1wyP14aZWPJDzjrk292tbqY6vOj0GISPGGVN3VmuTpqgEF5
	BoqCmA5AkdfnPV64NCAIAEW/nCsBoKvyv+vJNTiHv3yDq/EYzg7/lTkPZNj/tkWJs2pk=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wAAaj-00051N-IW;
	Tue, 07 Apr 2026 17:51:58 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcamuso@redhat.com>) id 1wAAaZ-00050I-T3
 for openipmi-developer@lists.sourceforge.net;
 Tue, 07 Apr 2026 17:51:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=content-type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5ASjBu3QvMlzkMJwSBe8z5P/+CHNBllSdP3WKPgRQhY=; b=Oa1aOlWYw5XgYpZpLmLwQkuQi6
 cnNnLKMqgkpVgVLwCoUcU6RbUrQxv1PUnIpwxdnkM29bZvd3VcVVoUK2GYP7cEY6i3qQb4uhsMewq
 HUXLRWSJkGVIaSuEWaX+8FPMHYvu+CNksYDHm/RcYfoBPZgJT+eZXrkUaYKsXw2bveTU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=content-type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5ASjBu3QvMlzkMJwSBe8z5P/+CHNBllSdP3WKPgRQhY=; b=N3WkLX0wrP44xohdi1zfi9x9ME
 d7EkUTEo2QmP5cSgBZeCwWXQG7cT9ufoZsNykRW3Xc5ANPvrTRtkEDwBfXTDUQGddsazhhVcIdf33
 3uzdeyQLndVqyQnXWikilN/hWtdk7UTRE2AQaXG/L83jVbSh7vF5+1eFXvlvrMW/zLSs=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1wAAaa-0000HJ-0E for openipmi-developer@lists.sourceforge.net;
 Tue, 07 Apr 2026 17:51:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1775584301;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=5ASjBu3QvMlzkMJwSBe8z5P/+CHNBllSdP3WKPgRQhY=;
 b=MP+B4/vG4SQZ52+/C+FFqGUX+F1QJMdWbJVUI2+AfqgGFIGVdDgCG4jxOzolAjpvyjRjSO
 PdG3XihjZqkVNO8+CGjywh+CyMTxVCPuwIYwKX5qsQCDKrlEMXWJxj9Zjan++yDBtjfR3u
 Z4Jtt04UP/PK6hinGXu6EkWdboxMkLU=
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-582-KSZ3tVLoOqaMA4JWU3LfDA-1; Tue,
 07 Apr 2026 13:51:38 -0400
X-MC-Unique: KSZ3tVLoOqaMA4JWU3LfDA-1
X-Mimecast-MFC-AGG-ID: KSZ3tVLoOqaMA4JWU3LfDA_1775584297
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 9E0021956058; Tue,  7 Apr 2026 17:51:37 +0000 (UTC)
Received: from hp-dl380pgen9-07.khw.eng.rdu2.dc.redhat.com
 (hp-dl380pgen9-07.khw.eng.rdu2.dc.redhat.com [10.6.10.143])
 by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 14661300019F; Tue,  7 Apr 2026 17:51:36 +0000 (UTC)
To: openipmi-developer@lists.sourceforge.net,
	linux-kernel@vger.kernel.org
Date: Tue,  7 Apr 2026 13:51:34 -0400
Message-ID: <20260407175134.3367345-3-tcamuso@redhat.com>
In-Reply-To: <20260407175134.3367345-1-tcamuso@redhat.com>
References: <20260407175134.3367345-1-tcamuso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-MFC-PROC-ID: qVd9mfo_YfP5zKM6wYeEvK_2E6GEgGvlfXfcV5Gex0U_1775584297
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.7 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Update the IPMI watchdog BMC reset documentation to describe
 the current behavior: when the BMC resets while the watchdog is active, the
 driver detects the communication failure and initiates an order [...] 
 Content analysis details:   (-0.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to DNSWL
 was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#DnsBlocklists-dnsbl-block
 for more information. [170.10.133.124 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1wAAaa-0000HJ-0E
Subject: [Openipmi-developer] [PATCH 2/2] Documentation: ipmi: Update BMC
 reset behavior for watchdog
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_MIXED(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,redhat.com:s=mimecast20190719];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
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
X-Rspamd-Queue-Id: 588DE3B2995
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Update the IPMI watchdog BMC reset documentation to describe the
current behavior: when the BMC resets while the watchdog is active,
the driver detects the communication failure and initiates an orderly
system reboot rather than attempting to retry and recover.

Document the panic and hang prevention mechanisms, BMC failure
detection via completion code classification in the message handler,
the bmc_reset_shutdown guard that prevents further IPMI operations
during shutdown, and the late response handling for the msg_in_flight
flag.

Signed-off-by: Tony Camuso <tcamuso@redhat.com>
---
 Documentation/driver-api/ipmi.rst | 61 +++++++++++++++++++++++++++++++
 1 file changed, 61 insertions(+)

diff --git a/Documentation/driver-api/ipmi.rst b/Documentation/driver-api/ipmi.rst
index f52ab2df2569..dbdc1440d16e 100644
--- a/Documentation/driver-api/ipmi.rst
+++ b/Documentation/driver-api/ipmi.rst
@@ -734,6 +734,67 @@ device to close it, or the timer will not stop.  This is a new semantic
 for the driver, but makes it consistent with the rest of the watchdog
 drivers in Linux.
 
+BMC Reset Behavior
+------------------
+
+When the BMC (Baseboard Management Controller) resets while the IPMI
+watchdog is active, the hardware watchdog timer state on the BMC is
+lost.  The driver detects this condition and initiates a clean system
+reboot rather than leaving the system running without watchdog
+protection.
+
+The driver handles BMC resets as follows:
+
+1. **Panic prevention:** The static message structures (``smi_msg`` and
+   ``recv_msg``) are guarded by an ``msg_in_flight`` atomic flag.  If a
+   previous message is still queued in the IPMI layer, new operations
+   return ``-EBUSY`` instead of reusing the structures (which would cause
+   a ``list_add`` corruption BUG).
+
+2. **Hang prevention:** ``wait_for_completion_timeout()`` with a 5-second
+   timeout replaces the indefinite ``wait_for_completion()`` in both
+   ``__ipmi_heartbeat()`` and ``_ipmi_set_timeout()``.  This prevents
+   tasks from blocking in D state when the BMC is unresponsive.
+
+3. **BMC failure detection:** When ``ipmi_wdog_msg_handler()`` receives
+   a non-zero completion code while the watchdog is active, it sets the
+   ``bmc_reset_shutdown`` flag and calls ``orderly_reboot()``.  Error
+   classification distinguishes three categories:
+
+   - ``TIMER_NOT_INIT`` (0x80): the BMC lost the watchdog timer state.
+   - Vendor-specific codes (0x81-0xBE): BMC-specific error responses.
+   - Standard IPMI completion codes (0xC0+): general BMC errors.
+
+   All produce a critical-level log message::
+
+     IPMI Watchdog: BMC error: watchdog timer not initialized (0x80 on cmd 0x22)
+     IPMI Watchdog: BMC communication lost with watchdog active, initiating system reboot
+
+4. **Clean shutdown:** Once ``bmc_reset_shutdown`` is set, all BMC
+   communication paths (``_ipmi_set_timeout()``, ``__ipmi_heartbeat()``,
+   ``wdog_reboot_handler()``) return immediately without attempting
+   further IPMI operations.  This prevents panics, stack traces, and
+   hangs during the reboot sequence.
+
+5. **Late response handling:** The ``msg_in_flight`` flag is cleared in
+   ``ipmi_wdog_msg_handler()`` after the message is freed.  This handles
+   late responses arriving after a completion timeout, ensuring the flag
+   does not remain set permanently.
+
+The system reboot after a BMC reset is the expected and correct
+behavior.  The hardware watchdog timer lives on the BMC, and when
+that timer state is lost, the system must be restarted to restore
+watchdog protection.
+
+Administrators performing supervised BMC maintenance (firmware updates,
+manual resets) should disarm the watchdog before the operation::
+
+  systemctl stop watchdog
+
+And restart it after the BMC has fully recovered::
+
+  systemctl start watchdog
+
 
 Panic Timeouts
 --------------
-- 
2.53.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2M11DElE1WnY3wcAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Tue, 07 Apr 2026 19:52:09 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 612233B298E
	for <lists+openipmi-developer@lfdr.de>; Tue, 07 Apr 2026 19:52:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=JeKT+zoB4yorTho6X2z393MPWBsTZefsdh/yLZyMbVM=; b=FCyWHLGRNwBkGpPMmWuzuT3tBJ
	yxvIft7wJ0v9aRT/kRFcT30NIGyFiQfeHnU9v/pVfGX5HQSLlrUK8xIIFLErVy3TbVjASZZstzpce
	9VdDNPHk3tJ3IFOW0NUYcEJDLTJVjwhsrZr9upKyr66EqLY3IgFQlw+4v2MDeoK5prZY=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wAAam-0002wU-7b;
	Tue, 07 Apr 2026 17:52:00 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcamuso@redhat.com>) id 1wAAak-0002wF-Do
 for openipmi-developer@lists.sourceforge.net;
 Tue, 07 Apr 2026 17:51:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=content-type:Content-Transfer-Encoding:MIME-Version
 :Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CMYKKJ0/5vsZICXPLv3GetDWZ5/nNXf8fikSV9fvaKU=; b=WyJ3HaxeGtLgaYnTiKCLf/2nrR
 5MWbikXyKEykZTrnq3Bv4W/rPK9HoYXQQihU5RDTQmGSPZlWRtltvXC3kBbB2nMjyyNGnhstUAQk/
 nhiqFRE1q3FRNfLE4ZnzoW4exP1kAsdBl0FJ0YCCD8aPrUbgKN077JX8kD91CANxM38c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=content-type:Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=CMYKKJ0/5vsZICXPLv3GetDWZ5/nNXf8fikSV9fvaKU=; b=M
 wuSLHDs56RTo7HE0wGKXbml/Uv2NKUeYoPo3+TQd0K8cteW1kLcYhpyyPAfgRUpc4WxWWX6yEFedy
 6wkTlLGxKQ/UCpQNgIrXDWVoGF5P0RZmsUuV02OuR/pMRTsS4Wy7/0c6/PE4V5hwU0wR9ZfHIdYyp
 QCZI3CsgLdneWC/w=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1wAAad-0000Hr-6U for openipmi-developer@lists.sourceforge.net;
 Tue, 07 Apr 2026 17:51:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1775584300;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=CMYKKJ0/5vsZICXPLv3GetDWZ5/nNXf8fikSV9fvaKU=;
 b=W/Wffnw12lpiYqzgQyCF16UitGhpDwJnCz0WHkPurYmVVvcp4C9QDxOV4KWMFUKaNqTjGM
 N9oFTumQjRhYfwRviYspsEGHgLxA72todrwXsiQtBBvGZdIq2rNP3PlBmIgqFv4tNI6qYG
 zdCqA/mdOlRbYMjZ32UKeJcXWmGMIdM=
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-651-0zcLQDsiOCu33GuLoDabIw-1; Tue,
 07 Apr 2026 13:51:37 -0400
X-MC-Unique: 0zcLQDsiOCu33GuLoDabIw-1
X-Mimecast-MFC-AGG-ID: 0zcLQDsiOCu33GuLoDabIw_1775584296
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 2869719560B0; Tue,  7 Apr 2026 17:51:36 +0000 (UTC)
Received: from hp-dl380pgen9-07.khw.eng.rdu2.dc.redhat.com
 (hp-dl380pgen9-07.khw.eng.rdu2.dc.redhat.com [10.6.10.143])
 by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 8B9EC300019F; Tue,  7 Apr 2026 17:51:35 +0000 (UTC)
To: openipmi-developer@lists.sourceforge.net,
	linux-kernel@vger.kernel.org
Date: Tue,  7 Apr 2026 13:51:32 -0400
Message-ID: <20260407175134.3367345-1-tcamuso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-MFC-PROC-ID: IrsnaEVyWX54Bhxpz-TOomys98suoOYDlkHnlnEDD_Y_1775584296
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.7 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  When the BMC resets while the IPMI watchdog is active, the
 driver has three failure modes depending on timing: 1. list_add double add
 panic -- the watchdog daemon retries while the static smi_msg/recv_msg
 structures
 are still queued in the IPMI layer from the previous (unanswered) request.
 Content analysis details:   (-0.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.129.124 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1wAAad-0000Hr-6U
Subject: [Openipmi-developer] [PATCH 0/2] ipmi:watchdog: Fix panic,
 D-state hang, and lost protection on BMC reset
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
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,redhat.com:s=mimecast20190719];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_MIXED(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,redhat.com:-];
	RCVD_COUNT_FIVE(0.00)[6];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	TAGGED_RCPT(0.00)[openipmi-developer];
	HAS_REPLYTO(0.00)[tcamuso@redhat.com];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:helo,lists.sourceforge.net:rdns,lists.sourceforge.net:dkim]
X-Rspamd-Queue-Id: 612233B298E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

When the BMC resets while the IPMI watchdog is active, the driver has
three failure modes depending on timing:

 1. list_add double add panic -- the watchdog daemon retries while the
    static smi_msg/recv_msg structures are still queued in the IPMI
    layer from the previous (unanswered) request.

 2. D-state hang -- wait_for_completion() blocks indefinitely because
    the BMC never delivers a response.

 3. Silent loss of watchdog protection -- the BMC returns a non-zero
    completion code, the driver's internal state becomes inconsistent,
    writes to /dev/watchdog return -EINVAL, and the daemon gives up.
    The system continues running without hardware watchdog coverage.

All three stem from the same root cause: the static message structures
and unbounded completion waits were never designed for a BMC that
disappears mid-transaction.

This has been independently reported by Kenta Akagi on a Dell PowerEdge
R640 running 6.18.7, also triggered by a BMC reset with the watchdog
active:

  https://sourceforge.net/p/openipmi/mailman/message/59292850/

The fix takes a simple, deterministic approach: detect the failure via
BMC error response, guard against structure reuse (msg_in_flight) and
indefinite waits (completion timeout), then initiate orderly_reboot()
when the watchdog is active.  This produces the same outcome the
hardware watchdog would have -- a system reset -- but through a
controlled path with clear logging and no panics or hangs.

If the watchdog is stopped when the BMC resets, no reboot occurs and
the system continues normally.

Tested on Dell PowerEdge R640 with kernel 5.14 (RHEL 9) and verified
against mainline (both patches apply cleanly).

Corey Minyard's recent fix for list corruption in smi_work()
(ipmi_msghandler.c) addresses a related but separate code path.  The
watchdog driver's own static structure reuse requires this fix.

Tony Camuso (2):
  ipmi:watchdog: Reboot cleanly on BMC reset
  Documentation: ipmi: Update BMC reset behavior for watchdog

 Documentation/driver-api/ipmi.rst |  61 ++++++++++++++++++
 drivers/char/ipmi/ipmi_watchdog.c | 101 ++++++++++++++++++++++++------
 2 files changed, 144 insertions(+), 18 deletions(-)

-- 
2.53.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

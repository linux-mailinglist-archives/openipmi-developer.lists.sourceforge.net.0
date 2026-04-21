Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SLglJfh652mZ9QEAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Tue, 21 Apr 2026 15:26:16 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E326B43B4F8
	for <lists+openipmi-developer@lfdr.de>; Tue, 21 Apr 2026 15:26:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Message-ID:Date:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UqI8+/HcVtH8LA7Qb7b8xR1mUZnTymvpVnSOGbf5ZGU=; b=UKtdmepYChXE4oHR0NRCSHvAXw
	VR39B3Q5MUKNmzfuSDQkMiJU8Cr38Z1Wd+dInCCK7LyJxdgXZK2e94Y9esGEUiqv4Jxq7No58Q9cp
	l4Aa/hBDKqaICM1pRPxmvg1slMZhonSMIEiZ9jFtDy/gmV4+6V9eFevDVy+AyB/EAUnQ=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wFB78-0001CV-3c;
	Tue, 21 Apr 2026 13:26:06 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1wFB76-0001CK-NX
 for openipmi-developer@lists.sourceforge.net;
 Tue, 21 Apr 2026 13:26:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=v32D4Ihg8m4TlUZ9/Ylii2aIdih85JiynNfKmLVnqEM=; b=SVGT1EuFZ8bTz3DzMJa43nWz15
 NGPLqMWxsGRpKmIb0jIYLU8a3/FSYkkDTk+U+3tQQOKtEU6ZauqLLPja42LVbRHkVo0QjtosyMqiO
 Ajr1mem3qN2EIvK1LgZs94gR9yGn6TaAGt836iasAQLH9avQmzmyJWQ1hMRN25Qmhjpw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=v32D4Ihg8m4TlUZ9/Ylii2aIdih85JiynNfKmLVnqEM=; b=RL6bBqCAt9LNWZxKvrsjW2N4V2
 QzWB/psSc+rzmVKHJZHse39swp9RxtyaHWwBB4mguuAPI6tlYUfa1JMJRq7EuMyxKhLQPcpeZ5WLt
 A7xlt8FWCdDPMDqtdHgdtYMa9iLKTR4lVIaPcRS1ra+W0GSwDVZuzkhrT+tYExHzZU4I=;
Received: from mail-ot1-f48.google.com ([209.85.210.48])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1wFB76-0005pm-5F for openipmi-developer@lists.sourceforge.net;
 Tue, 21 Apr 2026 13:26:04 +0000
Received: by mail-ot1-f48.google.com with SMTP id
 46e09a7af769-7dbcb467f2bso4129830a34.3
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 21 Apr 2026 06:26:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard.net; s=google; t=1776777953; x=1777382753; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=v32D4Ihg8m4TlUZ9/Ylii2aIdih85JiynNfKmLVnqEM=;
 b=C3dDkGCU8T83R9jigYv/dhF3cHH6ABLmWPQzc7bE9yOAD73Caqlu0/6REK/H4gJTHc
 LTTdRrboHFQ43JVt5Bv8GpvkszRGdyB/VGKQQRZsz4DDj2yG7iIzb7+s2ersmpZCxiP9
 o7Yuma6YA+2UJ4784Y48eJfh5F1NvW02fVx09VdkkR79pyOHfS2HfiTDXEp5qWexA2eJ
 cDQmFLhPRiTQyAFm3AJMgam5zt3XiAF+2EdVZo84j8QJA33Os0X2X7jDm/G+zsvBAkFe
 wnF4c+QOoTCtNNhIL8d7GucO+St4cW7+vC3CI43uxxdpnVKf9x/1tk0pw7EQSHYq1wIc
 i6Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1776777953; x=1777382753;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=v32D4Ihg8m4TlUZ9/Ylii2aIdih85JiynNfKmLVnqEM=;
 b=rrCcYTYhqe2P9zItadwfOM6sXcwvNUeeEYARllmt7hp0vDLO8WfBxyxw7hemoPU5oH
 BlD5HnTn6wZcJQTGoz+fpKV1WTtVIeY6s6MsHNRgefUoq0Sh6pNJh4SovmKhlUw6l48M
 fpO0KFRxKKmeEKOKqB5W3DSwb2kf8thHl+l43pPVynd5wQJUJ4nyHH3esQSGJMeMNycU
 0IKkviibWQ3T0WmkqIrUTuWyJTqSIxVIB1Z5IiOHGhOWo080ljUF3Yw1HD/3OTpUYgzp
 wRe5JBOyOE+sXAdcQ74LYcz4xL7B9e7TCg1LZocxKS/+ib1vJZIygT6MmCFL07bWh5u1
 k4kw==
X-Gm-Message-State: AOJu0Yx1R4Gp13lj7dNdqp7tQhgCnqPJmq1k4266QBCD3+nq/MXpex12
 4cTVlgrClcDpTWUlUl3vVk63Tyz0rdqizmCohbgXf9vLP4xaHA2C/HfpB4JjzG+r79c=
X-Gm-Gg: AeBDiesJZYuf9hQo6IAjGj1b0nwK/Cxb1EMmNKZG8fiscdvSdQdjMj8tq0KsTvCA4gj
 n28/6FDSjf94gY/WtDlJ+JIBrHZuzmGBB2gsRTY9LTEXQIMpsMMCy8icEfTN15vaKNtob/qmoeR
 uk2CM+G37cYww8i5xYH1NOuN3junmORzmYZ0/ln4woZn1HvKBQG8L2lcPvJOoyl95gl1hW6ILSy
 okajQsXKBi0YnWMrqHu70V4Qoil/q5FIAme8SvkJVl0GjvB2TxdnPI1/rDPH2XL4OWDFo+FF5hy
 IvNYQ1eAz62J1KcIXaotclL3gETvcmYCVigoGQG36K5JPRmN5UKAPa93BAxYrBHXmnguGsxYFLe
 Dx1G8fooMd4AvQyLbVGbXQYUtr40jhUuWWVwFpv7dzxXtdKsScNCkUppX8wqQt1XX4dHdOnb1VT
 4pGYISWTuI0KqFBmW/gHL9F5w+1sMF0/ovppsNpyejYuf05FECc/obud38hFjSpIabgnPdUM9UD
 5W49b7IscXka4pv
X-Received: by 2002:a05:6830:82ae:b0:7dc:cbaa:d730 with SMTP id
 46e09a7af769-7dccbaaf733mr4263878a34.8.1776777953394; 
 Tue, 21 Apr 2026 06:25:53 -0700 (PDT)
Received: from localhost ([2001:470:b8f6:1b:376f:c507:59cb:4749])
 by smtp.gmail.com with UTF8SMTPSA id
 46e09a7af769-7dcd9a0847esm1641699a34.17.2026.04.21.06.25.52
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 21 Apr 2026 06:25:52 -0700 (PDT)
From: Corey Minyard <corey@minyard.net>
To: Matt Fleming <mfleming@cloudflare.com>
Date: Tue, 21 Apr 2026 07:42:44 -0500
Message-ID: <20260421132544.2666174-3-corey@minyard.net>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260421132544.2666174-1-corey@minyard.net>
References: <20260421132544.2666174-1-corey@minyard.net>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The driver would just fetch events and receive messages until
 the BMC said it was done. To avoid issues with BMCs that never say they are
 done, add a limit of 10 fetches at a time. This is a more general fix than
 the previous fix for the specific bad BMC, but should fix the more general
 issue of a BMC that won't stop saying it has data. 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.48 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1wFB76-0005pm-5F
Subject: [Openipmi-developer] [PATCH 2/2] ipmi: Add limits to event and
 receive message requests
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
Cc: kernel-team@cloudflare.com, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, Tony Camuso <tcamuso@redhat.com>,
 Corey Minyard <corey@minyard.net>, openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Spamd-Result: default: False [-0.01 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[minyard.net : SPF not aligned (strict), DKIM not aligned (strict),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	RCVD_TLS_LAST(0.00)[];
	DKIM_MIXED(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
	FORGED_RECIPIENTS(0.00)[m:mfleming@cloudflare.com,m:kernel-team@cloudflare.com,m:linux-kernel@vger.kernel.org,m:stable@vger.kernel.org,m:tcamuso@redhat.com,m:corey@minyard.net,m:openipmi-developer@lists.sourceforge.net,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,minyard.net:s=google];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,minyard.net:-];
	PREVIOUSLY_DELIVERED(0.00)[openipmi-developer@lists.sourceforge.net];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[openipmi-developer];
	RCPT_COUNT_SEVEN(0.00)[7];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:dkim,lists.sourceforge.net:helo,lists.sourceforge.net:rdns,minyard.net:mid,minyard.net:email,cloudflare.com:email]
X-Rspamd-Queue-Id: E326B43B4F8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The driver would just fetch events and receive messages until the
BMC said it was done.  To avoid issues with BMCs that never say they are
done, add a limit of 10 fetches at a time.

This is a more general fix than the previous fix for the specific bad
BMC, but should fix the more general issue of a BMC that won't stop
saying it has data.

This has been there from the beginning of the driver.

Reported-by: Matt Fleming <mfleming@cloudflare.com>
Closes: https://lore.kernel.org/lkml/20260415115930.3428942-1-matt@readmodwrite.com/
Fixes: <1da177e4c3f4> ("Linux-2.6.12-rc2")
Cc: stable@vger.kernel.org
Signed-off-by: Corey Minyard <corey@minyard.net>
---
 drivers/char/ipmi/ipmi_si_intf.c | 15 +++++++++++++++
 drivers/char/ipmi/ipmi_ssif.c    | 15 +++++++++++++++
 2 files changed, 30 insertions(+)

diff --git a/drivers/char/ipmi/ipmi_si_intf.c b/drivers/char/ipmi/ipmi_si_intf.c
index 08c208cc64c5..a705aae29867 100644
--- a/drivers/char/ipmi/ipmi_si_intf.c
+++ b/drivers/char/ipmi/ipmi_si_intf.c
@@ -168,6 +168,9 @@ struct smi_info {
 			     OEM2_DATA_AVAIL)
 	unsigned char       msg_flags;
 
+	/* When requesting events and messages, don't do it forever. */
+	unsigned int        num_requests_in_a_row;
+
 	/* Does the BMC have an event buffer? */
 	bool		    has_event_buffer;
 
@@ -410,6 +413,7 @@ static void start_getting_msg_queue(struct smi_info *smi_info)
 
 	start_new_msg(smi_info, smi_info->curr_msg->data,
 		      smi_info->curr_msg->data_size);
+	smi_info->num_requests_in_a_row = 0;
 	smi_info->si_state = SI_GETTING_MESSAGES;
 }
 
@@ -421,6 +425,7 @@ static void start_getting_events(struct smi_info *smi_info)
 
 	start_new_msg(smi_info, smi_info->curr_msg->data,
 		      smi_info->curr_msg->data_size);
+	smi_info->num_requests_in_a_row = 0;
 	smi_info->si_state = SI_GETTING_EVENTS;
 }
 
@@ -646,6 +651,11 @@ static void handle_transaction_done(struct smi_info *smi_info)
 		} else {
 			smi_inc_stat(smi_info, events);
 
+			smi_info->num_requests_in_a_row++;
+			if (smi_info->num_requests_in_a_row > 10)
+				/* Stop if we do this too many times. */
+				smi_info->msg_flags &= ~EVENT_MSG_BUFFER_FULL;
+
 			/*
 			 * Do this before we deliver the message
 			 * because delivering the message releases the
@@ -684,6 +694,11 @@ static void handle_transaction_done(struct smi_info *smi_info)
 		} else {
 			smi_inc_stat(smi_info, incoming_messages);
 
+			smi_info->num_requests_in_a_row++;
+			if (smi_info->num_requests_in_a_row > 10)
+				/* Stop if we do this too many times. */
+				smi_info->msg_flags &= ~RECEIVE_MSG_AVAIL;
+
 			/*
 			 * Do this before we deliver the message
 			 * because delivering the message releases the
diff --git a/drivers/char/ipmi/ipmi_ssif.c b/drivers/char/ipmi/ipmi_ssif.c
index b49500a1bd36..547447f304ba 100644
--- a/drivers/char/ipmi/ipmi_ssif.c
+++ b/drivers/char/ipmi/ipmi_ssif.c
@@ -225,6 +225,9 @@ struct ssif_info {
 	bool		    has_event_buffer;
 	bool		    supports_alert;
 
+	/* When requesting events and messages, don't do it forever. */
+	unsigned int        num_requests_in_a_row;
+
 	/*
 	 * Used to tell what we should do with alerts.  If we are
 	 * waiting on a response, read the data immediately.
@@ -413,6 +416,7 @@ static void start_event_fetch(struct ssif_info *ssif_info, unsigned long *flags)
 	}
 
 	ssif_info->curr_msg = msg;
+	ssif_info->num_requests_in_a_row = 0;
 	ssif_info->ssif_state = SSIF_GETTING_EVENTS;
 	ipmi_ssif_unlock_cond(ssif_info, flags);
 
@@ -436,6 +440,7 @@ static void start_recv_msg_fetch(struct ssif_info *ssif_info,
 	}
 
 	ssif_info->curr_msg = msg;
+	ssif_info->num_requests_in_a_row = 0;
 	ssif_info->ssif_state = SSIF_GETTING_MESSAGES;
 	ipmi_ssif_unlock_cond(ssif_info, flags);
 
@@ -843,6 +848,11 @@ static void msg_done_handler(struct ssif_info *ssif_info, int result,
 			ssif_info->msg_flags &= ~EVENT_MSG_BUFFER_FULL;
 			handle_flags(ssif_info, flags);
 		} else {
+			ssif_info->num_requests_in_a_row++;
+			if (ssif_info->num_requests_in_a_row > 10)
+				/* Stop if we do this too many times. */
+				ssif_info->msg_flags &= ~EVENT_MSG_BUFFER_FULL;
+
 			handle_flags(ssif_info, flags);
 			ssif_inc_stat(ssif_info, events);
 			deliver_recv_msg(ssif_info, msg);
@@ -876,6 +886,11 @@ static void msg_done_handler(struct ssif_info *ssif_info, int result,
 			ssif_info->msg_flags &= ~RECEIVE_MSG_AVAIL;
 			handle_flags(ssif_info, flags);
 		} else {
+			ssif_info->num_requests_in_a_row++;
+			if (ssif_info->num_requests_in_a_row > 10)
+				/* Stop if we do this too many times. */
+				ssif_info->msg_flags &= ~RECEIVE_MSG_AVAIL;
+
 			ssif_inc_stat(ssif_info, incoming_messages);
 			handle_flags(ssif_info, flags);
 			deliver_recv_msg(ssif_info, msg);
-- 
2.43.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

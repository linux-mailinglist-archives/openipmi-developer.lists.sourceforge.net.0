Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WP9VKliermmqGwIAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Mon, 09 Mar 2026 11:18:00 +0100
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EA8D1236DEB
	for <lists+openipmi-developer@lfdr.de>; Mon, 09 Mar 2026 11:17:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-Id:MIME-Version:Date:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ifHwFhUibRlNfY8Gj/1Ba6cbl4DgmVsgLKn/GDVrYg0=; b=FWo6BprG2VDBwwOt/7XJgE4b8M
	ln4hEPrcrjrlYpFaNQQUKcn8CWQNf1oMrZt/wQycDxkn9MdZ2ICCFnRgmEyQR+pV+MBH+fO2yWc2B
	5KpLPxMR9wPg1BCj0RrMQRNAyite/kTth1kWjrwXZAWBjgN2peXYTcnCaItrv/0s5H74=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vzXgL-0007G3-04;
	Mon, 09 Mar 2026 10:17:49 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <leitao@debian.org>) id 1vzXgI-0007Fu-TS
 for openipmi-developer@lists.sourceforge.net;
 Mon, 09 Mar 2026 10:17:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Message-Id:Content-Transfer-Encoding:
 Content-Type:MIME-Version:Subject:Date:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DrEYVGuudogEhHZtJ/Az32hXqOkfqaHHWKEnaGG5YC4=; b=FYVBGS+WW9DgzJZjlJ4+HR9vla
 g5SBRHvwKie5aEpYWxNW1WTzSnSK4Gi18XNjWQi1WK/Hej4lyvxjOaDpdOh9mXozyllLvE+fJMVLn
 msioQ2TBEoG4qzqFomoU8dtlb86IyUZuekLod27OTOc13T2unt9LEzqOa1X/4+8PezBw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
 Subject:Date:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=DrEYVGuudogEhHZtJ/Az32hXqOkfqaHHWKEnaGG5YC4=; b=j
 3vUbX1z3W0zZul57hk4cIFKst17qArmnk3mxFljc/Ivm9irz8+N8ta+FEjPpAacqws+90PEAgEiHO
 X+CQLUZPnMjhK3AGFYZCW2xpBsIEDtuuadl7XLOmOtRd12ItpcxI6VhrQpjhLuJokikdATupGkQUE
 Gw/A/G62SD0YqmlY=;
Received: from stravinsky.debian.org ([82.195.75.108])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vzXgI-0007Bm-Bd for openipmi-developer@lists.sourceforge.net;
 Mon, 09 Mar 2026 10:17:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org; 
 s=smtpauto.stravinsky; h=X-Debian-User:Cc:To:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
 Reply-To:Content-ID:Content-Description:In-Reply-To:References;
 bh=DrEYVGuudogEhHZtJ/Az32hXqOkfqaHHWKEnaGG5YC4=; b=dR6g7QigspSkR0JZHr+cRxhAv2
 JnUroU/SbdsUSSlDEDMSN4hkkspIYdv40DXZ42KFFD0z+Z1YCKhpvwWCrbuwX6WxB9G47JwiM1FAD
 /SDZNxjNoNmrWd9wXn953Lzz5X0darVK27BK6+mhAsBDRMK0TNn9MYKmKyDPh2iIpzodRqgUUm+r0
 SLFgqUHeF1nTlH1qgLRt2TDRg14u9gEt4sNJL+VV7wLKB0rFweoXJFMtNlrTo2ibGogZgdbRunZLD
 v05DnBm9tYK/Btiaaq1eAAxFv8NRr6jVvEnCwK+Z3GnfXYuhSmoYb/0TIYScVuuBcwrrj9MiI+e0K
 fCQrknVg==;
Received: from authenticated user by stravinsky.debian.org with esmtpsa
 (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.94.2) (envelope-from <leitao@debian.org>)
 id 1vzXg3-0029Du-Lg; Mon, 09 Mar 2026 10:17:32 +0000
From: Breno Leitao <leitao@debian.org>
Date: Mon, 09 Mar 2026 03:16:13 -0700
MIME-Version: 1.0
Message-Id: <20260309-ipmi_stable-v1-1-be09c9686671@debian.org>
X-B4-Tracking: v=1; b=H4sIAO2drmkC/yXMUQqDQAxF0a2E9+3AqCh2tlKKGI2a0lqZqBTEv
 Zfq7+VydphEFUOgHVE2Nf1MCJQmhHZspkGcdgiEzGelz/3N6fzW2paGX+K4k5S5L6oiL5EQ5ii
 9fk/tjuvB4+q28lPa5U/hOH4M26szdwAAAA==
X-Change-ID: 20260309-ipmi_stable-bde1bbf58536
To: stable@kernel.org, Sasha Levin <sashal@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-Mailer: b4 0.15-dev-363b9
X-Developer-Signature: v=1; a=openpgp-sha256; l=2667; i=leitao@debian.org;
 h=from:subject:message-id; bh=RRSZISaBjsFC609Wiw9cIM591rHRlNy72ILWPcDiQoQ=;
 b=owEBbQKS/ZANAwAIATWjk5/8eHdtAcsmYgBprp44Bzhtgo2F8yIrnQCic9okRq6bX0+OSsxOw
 b2av9GdvsqJAjMEAAEIAB0WIQSshTmm6PRnAspKQ5s1o5Of/Hh3bQUCaa6eOAAKCRA1o5Of/Hh3
 bZVeD/9fJV+zm8uE086rCRcqVndYw7inNb24WYntELsUbAI7lcWSN7xnOFypBP08qOz+91AlrSN
 3v5xukGmJUoW8npTpWbFw5DhGA8l/quddwL0h29gvx+ydjL3vOHmKWFfni/YsnVrrOuVAnoWv2e
 q8pVGbf+VM75p4pocf27WK6ycbhJ8RMzn5qDFoyuaif8nmpCs/rUim/+gIzbJ9KpiBRk2BiWcsO
 sfTXAq0DNjfS8G1QREvSMhxdG0CCqIFQN72KrlmNMSyHqV4yqQ0K55X7P5Oc0kZvzZD4wG7gmae
 a5KL8VR2w70yyy/hWjSYcHz7fxIHFcV2AGh1FiwqG8oUIQbfHSR4mMXEqCSTG65LSyaGS6H50/e
 qAiZtutwwnG+fh7oBuMgXGXyvgA74hQwgKgO3dBXOFhl/1+ws9NwQ5SkthLok52PvOrQFdiJSUK
 QpBgCg+WR2kk47ce8dLYwJm6h8wFkBHW+tsQ5ReZhfA6oX58jaI7NIriQmSGDg3jfNeGiJAQ8+Q
 ZQa/sXG79a1rJNRj/Bd/qVhijzkFn7ofWZeURuZlrvGs/Vp6wJVLKFRV88GSzQ0AffBrlmoYmVb
 66I8d952HZCxQL8PKSce08Akh2GKV2vhnEFHBwfaRc6YV3y5NSvXTPUiNvXrJ7SvJpL7cFrF4jy
 WtzLpk8kBr2tLig==
X-Developer-Key: i=leitao@debian.org; a=openpgp;
 fpr=AC8539A6E8F46702CA4A439B35A3939FFC78776D
X-Debian-User: leitao
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  From: Corey Minyard <corey@minyard.net> [ Upstream commit
 f9323a44994c2ccd5e0d582bac6f2b2a662e5603 ] The analysis from Breno: 
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
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1vzXgI-0007Bm-Bd
Subject: [Openipmi-developer] [PATCH stable] ipmi: Fix use-after-free and
 list corruption on sender error
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
Cc: Vlad Poenaru <thevlad@meta.com>, kernel-team@meta.com,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Corey Minyard <corey@minyard.net>, Breno Leitao <leitao@debian.org>,
 openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Rspamd-Queue-Id: EA8D1236DEB
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.11 / 15.00];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[debian.org];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:stable@kernel.org,m:sashal@kernel.org,m:gregkh@linuxfoundation.org,m:thevlad@meta.com,m:kernel-team@meta.com,m:linux-kernel@vger.kernel.org,m:stable@vger.kernel.org,m:corey@minyard.net,m:leitao@debian.org,m:openipmi-developer@lists.sourceforge.net,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[leitao@debian.org,openipmi-developer-bounces@lists.sourceforge.net];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,debian.org:s=smtpauto.stravinsky];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,debian.org:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-0.954];
	FROM_NEQ_ENVFROM(0.00)[leitao@debian.org,openipmi-developer-bounces@lists.sourceforge.net];
	FROM_HAS_DN(0.00)[];
	DKIM_MIXED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	TAGGED_RCPT(0.00)[openipmi-developer];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:dkim,lists.sourceforge.net:rdns,lists.sourceforge.net:helo]
X-Rspamd-Action: no action

From: Corey Minyard <corey@minyard.net>

[ Upstream commit f9323a44994c2ccd5e0d582bac6f2b2a662e5603 ]

The analysis from Breno:

When the SMI sender returns an error, smi_work() delivers an error
response but then jumps back to restart without cleaning up properly:

1. intf->curr_msg is not cleared, so no new message is pulled
2. newmsg still points to the message, causing sender() to be called
   again with the same message
3. If sender() fails again, deliver_err_response() is called with
   the same recv_msg that was already queued for delivery

This causes list_add corruption ("list_add double add") because the
recv_msg is added to the user_msgs list twice. Subsequently, the
corrupted list leads to use-after-free when the memory is freed and
reused, and eventually a NULL pointer dereference when accessing
recv_msg->done.

The buggy sequence:

  sender() fails
    -> deliver_err_response(recv_msg)  // recv_msg queued for delivery
    -> goto restart                    // curr_msg not cleared!
  sender() fails again (same message!)
    -> deliver_err_response(recv_msg)  // tries to queue same recv_msg
    -> LIST CORRUPTION

Fix this by freeing the message and setting it to NULL on a send error.
Also, always free the newmsg on a send error, otherwise it will leak.

Reported-by: Breno Leitao <leitao@debian.org>
Closes: https://lore.kernel.org/lkml/20260127-ipmi-v1-0-ba5cc90f516f@debian.org/
Fixes: 9cf93a8fa9513 ("ipmi: Allow an SMI sender to return an error")
Cc: stable@vger.kernel.org # 4.18
Reviewed-by: Breno Leitao <leitao@debian.org>
Signed-off-by: Corey Minyard <corey@minyard.net>
Signed-off-by: Breno Leitao <leitao@debian.org>
---
 drivers/char/ipmi/ipmi_msghandler.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index 0a886399f9daf..5ed8e95589fb7 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -4848,8 +4848,15 @@ static void smi_work(struct work_struct *t)
 			if (newmsg->recv_msg)
 				deliver_err_response(intf,
 						     newmsg->recv_msg, cc);
-			else
-				ipmi_free_smi_msg(newmsg);
+			if (!run_to_completion)
+				spin_lock_irqsave(&intf->xmit_msgs_lock,
+						  flags);
+			intf->curr_msg = NULL;
+			if (!run_to_completion)
+				spin_unlock_irqrestore(&intf->xmit_msgs_lock,
+						       flags);
+			ipmi_free_smi_msg(newmsg);
+			newmsg = NULL;
 			goto restart;
 		}
 	}

---
base-commit: 6258e292d7463f96d0f06dff2a39093a54c9d16f
change-id: 20260309-ipmi_stable-bde1bbf58536

Best regards,
--  
Breno Leitao <leitao@debian.org>



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

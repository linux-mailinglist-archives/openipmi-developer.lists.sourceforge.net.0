Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eEuHFHMDD2oaEQYAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Thu, 21 May 2026 15:06:59 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C8285A55F3
	for <lists+openipmi-developer@lfdr.de>; Thu, 21 May 2026 15:06:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=I/HHfV+MOrduuy9oYv80bWsnwY3wq6IJ4xVE4v3S+3g=; b=GT5PWvGiyTx/FaCykRojTIKinZ
	FksO1e9o8N6vVqNxf9jiA92Y3rtiw8Yzw9TAVXfO8dqXCzEupeALXk9QC6Q87TfbU16E+AmTTUCQ2
	IsVkchdEvUyQtJYnKV2f6gGp8hoaWLOPU1DlThQo3t7lej1TMG/ZMVnAh5Z5egl8Mxfw=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wQ36r-0006ex-7D;
	Thu, 21 May 2026 13:06:45 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <matt@readmodwrite.com>) id 1wQ36p-0006ep-Us
 for openipmi-developer@lists.sourceforge.net;
 Thu, 21 May 2026 13:06:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lxyMlG8EwUtEsp3NYwSblykgw5/x0TK+TVpqnBy/4gY=; b=AV/Mk9fQioqwfD+0ea+QglZSdE
 7x6UH2ZdfYhI9YpLpElaRHk7tds7hV/fB4ExlRbjdEN4HfYBkejd/nEdWQiZWrEtoxYzmD/Q5AiDB
 E/7jpATc+jzdL96DCAgLzwP64ZGnvAOW1syi4//7HMIy7RY7g1ffhKFI9h/tvLdObWIU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=lxyMlG8EwUtEsp3NYwSblykgw5/x0TK+TVpqnBy/4gY=; b=j
 L5732CPRKao//goLXaonPe/RhhWR4VyUHwlyc9XqrKPjj7uDUIpUCz1aOPmNIr18SEe4dHOyngLl5
 Ee3VTYR+H5D7EPoLLXCM+mj/U7/JOhrzse0vSP0rMzVDvVcmWZDT08VAzHBV2OYbS2KW1+LMW2DPn
 35o26iDoTUJ3l69U=;
Received: from mail-wm1-f49.google.com ([209.85.128.49])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1wQ36p-0002tl-CU for openipmi-developer@lists.sourceforge.net;
 Thu, 21 May 2026 13:06:44 +0000
Received: by mail-wm1-f49.google.com with SMTP id
 5b1f17b1804b1-4891c00e7aeso45464905e9.2
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 21 May 2026 06:06:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=readmodwrite-com.20251104.gappssmtp.com; s=20251104; t=1779368792;
 x=1779973592; darn=lists.sourceforge.net; 
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=lxyMlG8EwUtEsp3NYwSblykgw5/x0TK+TVpqnBy/4gY=;
 b=WovtjaukMTv8U3xpDuJWz0CeP9yHH03WTUsUE8HijqTtUNG60qrbcQU+pmhEqXT2ii
 DlZ1HtFC5ic1g8c7FpSyG7OpmXJcXO+VBqEO5Kz3kLXm9j93CkqNQQnZV59Tq5ZkmJe1
 g3cyeRgb7FtfVWDwjLuoJ/COK5ql8iQvaM+2Xm1UC1nNf0Lr1CtjRLP69UTjUEc8EUjD
 Kw+zSoGFZqRWBm9mch7NzOZ28Dy31GhoIkjvMJ5H/6J4E4DFbmheCc1U5WpgLUO82Zyy
 xaTG/pQXbmLdr8HHCu++PsoOb0YgrBmXarL0Vz+GfJgofgfx91lXeApYxqtu1YMW7gRB
 DQ/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1779368792; x=1779973592;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=lxyMlG8EwUtEsp3NYwSblykgw5/x0TK+TVpqnBy/4gY=;
 b=QlNPc7mYSy0RIeIAxS6s5AKWcQi7pgkFoUvxV1NYIn4Qt3TBAetSwVcVyLiGvwefbQ
 wKkFDkcJWU21DqwduGUVKrsOZVHulmEg5pWqjrZY2wDr2OC4iBQbFObabloVD+5wuEPo
 0HNbnK6zxxFs6iEojvS1NFeR6zW4TqKGbWX0LY18RJVCci0pwdbp09hsMZTK1cTHdXLV
 8XgDoHkyoOIKBqcNbUVWRLbTGWJjYYi6N4GPtv9EDAtal87lnukVjVCmgG6hjCT5TwmB
 Hm0aHw5sTbAt5v0+zcew0saHyV1UTJDm/uGa4tQ9LsVeU0x7M/y7qxMX2f9D0j21m2VS
 3KUA==
X-Forwarded-Encrypted: i=1;
 AFNElJ+rQnSbwjfuO6gMaP8/yhtV1IC95YO++igoOVssmOq86Fyu+Ei9/1J5DihPjj2CM8LalzVSWumczjTXmjCSWOoHjm8=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YxpStRgxHQ9Ze8XgZVmlF4uPgVD8DzQFil2GikszSwLkZClUU3U
 8b27MjirMybmM2C4uQD/EyBM+jxGtiH9v7pyM8r6tl+dk/KCI9rgQJ6oQhf0lmRZIsU=
X-Gm-Gg: Acq92OFAo0el6P6r37xDG4+cVa2Nscuzs8BADTOdN2tcJFqiCx0uTp/2oUFKdpHQWXv
 dMU4y5ifB4IYHoBzFEKCFBLCPD6dxZ7CicbWlr/Y2Wasp8R6dFOr0eoGVwr/BKpZD3+1ehJBU1U
 cQ9sOP6C6lpbO9eILsxmIa4E1HhAWoW2ixG5BdTdIzEptXDQ9omirX8cZWy+lfJraWUlzM+kt2v
 +AKaQOEsgtNUfaHcAgXV6DQJrvdD7WUcQjmQf8RyIIXFHFgnrydLvxPiE3QWuRx710UNC4IkfxR
 TS/00f1DJS6Dn8HjLILEBjDgS9RVgrKhTPuR7ggfRDyz2VAX4vZA3Ia2weDQTQRTMLdO29hdsaS
 aLk06jdvOEWQThn1JkyUcDJGl+UTk1usjieoCeiz6s7bmDHuGhCOqFykNZ8WW7jiUeNaw6VSRWF
 HwqLqcavQTvGGLtrVSv2EZEmVFdFSNcYzZofo=
X-Received: by 2002:a05:600c:468b:b0:490:b07:5f27 with SMTP id
 5b1f17b1804b1-490360c9534mr32130495e9.24.1779368791147; 
 Thu, 21 May 2026 06:06:31 -0700 (PDT)
Received: from matt-Precision-5490.. ([2a09:bac6:37a8:26dc::3df:8])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-45eaa93cea9sm2582382f8f.35.2026.05.21.06.06.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 May 2026 06:06:30 -0700 (PDT)
From: Matt Fleming <matt@readmodwrite.com>
To: Corey Minyard <corey@minyard.net>
Date: Thu, 21 May 2026 14:06:27 +0100
Message-ID: <20260521130628.3641050-1-matt@readmodwrite.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Matt Fleming <mfleming@cloudflare.com>
 ipmi_alloc_recv_msg(user)
 takes the temporary user reference owned by the receive message,
 and ipmi_free_recv_msg()
 drops it again. If event delivery fails after allocating receive messages
 for earlie [...] 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.49 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1wQ36p-0002tl-CU
Subject: [Openipmi-developer] [PATCH] ipmi: Fix user refcount underflow in
 event delivery
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
Cc: Matt Fleming <mfleming@cloudflare.com>, kernel-team@cloudflare.com,
 Gilles BULOZ <gilles.buloz@kontron.com>, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Spamd-Result: default: False [-0.11 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_MIXED(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:corey@minyard.net,m:mfleming@cloudflare.com,m:kernel-team@cloudflare.com,m:gilles.buloz@kontron.com,m:linux-kernel@vger.kernel.org,m:stable@vger.kernel.org,m:openipmi-developer@lists.sourceforge.net,s:lists@lfdr.de];
	DMARC_NA(0.00)[readmodwrite.com];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,readmodwrite-com.20251104.gappssmtp.com:s=20251104];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[matt@readmodwrite.com,openipmi-developer-bounces@lists.sourceforge.net];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[openipmi-developer@lists.sourceforge.net];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[matt@readmodwrite.com,openipmi-developer-bounces@lists.sourceforge.net];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,readmodwrite-com.20251104.gappssmtp.com:-];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[openipmi-developer];
	DBL_BLOCKED_OPENRESOLVER(0.00)[cloudflare.com:email,readmodwrite.com:mid]
X-Rspamd-Queue-Id: 7C8285A55F3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Matt Fleming <mfleming@cloudflare.com>

ipmi_alloc_recv_msg(user) takes the temporary user reference owned by the
receive message, and ipmi_free_recv_msg() drops it again. If event delivery
fails after allocating receive messages for earlier users,
handle_read_event_rsp() rolls those messages back with
ipmi_free_recv_msg().

That rollback path still drops user->refcount explicitly after freeing each
message. The extra put can free a user that remains linked on intf->users,
so later event delivery may dereference a freed user or trip refcount_t's
addition-on-zero warning when ipmi_alloc_recv_msg() tries to acquire
another reference.

Remove the stale explicit put and the now-dead user assignment. Keep the
list_del() and ipmi_free_recv_msg() calls; they are the required rollback
operations.

Fixes: b52da4054ee0 ("ipmi: Rework user message limit handling")
Cc: stable@vger.kernel.org
Signed-off-by: Matt Fleming <mfleming@cloudflare.com>
---
 drivers/char/ipmi/ipmi_msghandler.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index 869ac87a4b6a..52561a880e54 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -4477,10 +4477,8 @@ static int handle_read_event_rsp(struct ipmi_smi *intf,
 			mutex_unlock(&intf->users_mutex);
 			list_for_each_entry_safe(recv_msg, recv_msg2, &msgs,
 						 link) {
-				user = recv_msg->user;
 				list_del(&recv_msg->link);
 				ipmi_free_recv_msg(recv_msg);
-				kref_put(&user->refcount, free_ipmi_user);
 			}
 			/*
 			 * We couldn't allocate memory for the
-- 
2.43.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2OQVCqLGeGlYtQEAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Tue, 27 Jan 2026 15:07:30 +0100
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6181295562
	for <lists+openipmi-developer@lfdr.de>; Tue, 27 Jan 2026 15:07:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Message-ID:Date:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WLFHHMDmiIarDnL4WjQnZaOIFKi6IZ7BvDn+ag4qIzo=; b=UZ2QQPQDMmtguen/2weYk0nbnN
	3Igr98oxBNbWVFXTwJrbmrnHSr8kfKgIdC4adqF7SdXsIr567AVn+1MDKHzuJuu2vZCRRORUfMWiV
	mS99nT/xOA/LWl25wuSUbsTMFf85A5m6xETMvSj7ElvKa8G9q2+MNEFnerSU3+8zrHTQ=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vkjiz-0000w6-Bi;
	Tue, 27 Jan 2026 14:07:21 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1vkjiy-0000vy-CM
 for openipmi-developer@lists.sourceforge.net;
 Tue, 27 Jan 2026 14:07:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wzzEevdAZzt1nXO9szlER+ciqn2pWS6swN7VnsinsFo=; b=BLao8+YpYlel1dcK7zLcrPa/bY
 s4o7eM2O3QhrMMDjvtLnQh5F9x2KcQdN/WJ8EMb7UDb/p+NPE4IhrTJ2jJosU4CDJV33YHzSeHTsK
 yaOKjSiT5mXTRPFWMWKqrLHv9YSqgys4vD9V4PkVI3spq8o32U1mHAvpPko9kEmCUwvM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wzzEevdAZzt1nXO9szlER+ciqn2pWS6swN7VnsinsFo=; b=M/zX9a6GUv1zRJHuKaT0g3STC/
 IrlIENq8A17nihWs/c+n2EaOjRHqajdNGxPKvwm0bkEiMwz0BKhDECiFJRSLWMZVvxD/zAyrTP+cF
 vSFrVcoHbiLwf/3v3cOotz1pxfpcvTI7DmC1+hFeJ1fu5FmZdrLioCeUhAtn1NIN1z1I=;
Received: from mail-ua1-f52.google.com ([209.85.222.52])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vkjix-0005mx-UU for openipmi-developer@lists.sourceforge.net;
 Tue, 27 Jan 2026 14:07:20 +0000
Received: by mail-ua1-f52.google.com with SMTP id
 a1e0cc1a2514c-9480a1f77d5so3481061241.0
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 27 Jan 2026 06:07:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard.net; s=google; t=1769522834; x=1770127634; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=wzzEevdAZzt1nXO9szlER+ciqn2pWS6swN7VnsinsFo=;
 b=Rm1p1SV4Ti5JYcCkM090SwEaGB6UAY3o4iJ+X3uW//JZ60KANKhdCvzPD9IRUueXfd
 zErAWVHYIS5X2GnfH2r5/C0vpr/9gYH8YHI98dXraplojhGb9roX932dPk4ZRzLHg3fP
 XmJpw8Lcl2hwyQ7ykDxIHZ73OezDHQ/fQJ5rpFAvVEQIu90d5EzR5nowCBWB32RIyTY1
 AoYFUTNe2lgOXuK0ujmenyyFzNj/ePLhBvSFA6/vX1tZw9yuO92bEwP9FcGXAhDiq8h1
 dcSKaqd9x3tm6qO53cqFdJs2oVkgeFEkadkcWefQAFi3PHRjnQ1P0USWImHkDv6Ldm9C
 g2cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1769522834; x=1770127634;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=wzzEevdAZzt1nXO9szlER+ciqn2pWS6swN7VnsinsFo=;
 b=RA5crrZ4eLLwTbm0zoBWGYtPKLWro4G+kXUbPtVvKLGca6a4SuwLIfOeT2KxVUly1R
 tq+O0ctnHwo6B7fKlztQKb3FNGwaOMLy0DKpch6pCGKT57o6YPUJAQACSlzq1zOAWhaV
 pNJZkW3+3DfmsHXSOHL6WqxsP0jSC734cbXaDOl68yAQXOJSwb8AIBGC4sZlhY1q9sqY
 71PqcdFMoUzGnbiofiZ6MvtKTqBTVJH0iKV2jVSIWIjIHLd7qTVukFZLfinGbZzcOZBM
 WvSXffF15wW44T08CFmJNRCE/URcRKzGIprxRG+aS0nDLbrX9lrhreRZx7FMGP1cl6PO
 2O8g==
X-Gm-Message-State: AOJu0YxE73uLGkrYeIHEceZhib7ed8Atk/12igQECVLU5prPl2WWdBTD
 UIAcTrmWI9FpkwstoFyX6S5FJrMxdCObuy+nzn6NWRZNco8p0Im35zNCaoNEDfNf8dhsKmp4dpr
 KIH5ekhc=
X-Gm-Gg: AZuq6aJKUpie3UtPCuoJgIP2Z6V+UfAdmpyun9RB88QLCzC6jnYn4KGcUPQp/Z3xgP3
 O2eIDqKZItNOm1Hmn5syGWsPnJqj0NIS8j21ry4VVLhGPaP9y/9KIN2VYZXOWVdXgVunDFUfTnD
 mj+1TxZQth7GFbrJNO6rV18y/O1/tfECyPvvVkhjmYIbTOBzlnDjrl7XLy9eyMDF97eWU2t3pgP
 Yy3TXdPtzJRrZglNGQ/YaDV4nek2JHu0BwcLPrmNzTUsT3od/uCi4L54S4TUpSq254f8qAN1+zL
 VRjM7Oq/W+LTHEm3VvhWFbufUmAJpmz3OWXofwAEinjvFvdmRm7iTh5j/CoV0DHV8SgyOTL7Zb5
 8gRzgmK7kQysg2lVHmTTA2OFzN03DlPp6ifQoHwiUAZJCLJqlQiqdrBRYau1hXDCYXx6L2u8IRe
 ZRfemiFBHDetl6NXmSqEfqVos1UgnivuAREpeZTpk/PqGN6bkFq1r3zrIa9pDIZRoJtAl+wQgXJ
 snA
X-Received: by 2002:a05:6830:4184:b0:7c7:6bb4:1197 with SMTP id
 46e09a7af769-7d1850e6378mr1117433a34.24.1769522365402; 
 Tue, 27 Jan 2026 05:59:25 -0800 (PST)
Received: from localhost ([2001:470:b8f6:1b:a1a5:d807:e7a1:53eb])
 by smtp.gmail.com with UTF8SMTPSA id
 46e09a7af769-7d15b346e03sm9854283a34.1.2026.01.27.05.59.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 27 Jan 2026 05:59:24 -0800 (PST)
From: Corey Minyard <corey@minyard.net>
To: Breno Leitao <leitao@debian.org>, Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <nick.desaulniers+lkml@gmail.com>,
 Bill Wendling <morbo@google.com>, Justin Stitt <justinstitt@google.com>
Date: Tue, 27 Jan 2026 07:54:39 -0600
Message-ID: <20260127135917.1597762-2-corey@minyard.net>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260127135917.1597762-1-corey@minyard.net>
References: <20260127-ipmi-v1-0-ba5cc90f516f@debian.org>
 <20260127135917.1597762-1-corey@minyard.net>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The analysis from Breno: When the SMI sender returns an error,
 smi_work() delivers an error response but then jumps back to restart without
 cleaning up properly: 1. intf->curr_msg is not cleared, so no new message
 is pulled 2. newmsg still points to the message, causing sender() to be called
 again with the same message 3. If sender() fails again, deliver_err_r [...]
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.52 listed in wl.mailspike.net]
X-Headers-End: 1vkjix-0005mx-UU
Subject: [Openipmi-developer] [PATCH 1/2] ipmi: Fix use-after-free and list
 corruption on sender error
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
Cc: Corey Minyard <corey@minyard.net>, kernel-team@meta.com,
 openipmi-developer@lists.sourceforge.net, llvm@lists.linux.dev,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[minyard.net : SPF not aligned (strict), DKIM not aligned (strict),none];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_MIXED(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:leitao@debian.org,m:nathan@kernel.org,m:nick.desaulniers+lkml@gmail.com,m:morbo@google.com,m:justinstitt@google.com,m:corey@minyard.net,m:kernel-team@meta.com,m:openipmi-developer@lists.sourceforge.net,m:llvm@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:nickdesaulniers@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[debian.org,kernel.org,gmail.com,google.com];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[openipmi-developer@lists.sourceforge.net];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
	FORGED_SENDER_FORWARDING(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,minyard.net:s=google];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[openipmi-developer,lkml];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,minyard.net:-];
	RCPT_COUNT_SEVEN(0.00)[10];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[minyard.net:mid,minyard.net:email]
X-Rspamd-Queue-Id: 6181295562
X-Rspamd-Action: no action

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
Fixes: 9cf93a8fa9513 ("ipmi: Allow an SMI sender to return an error")
Signed-off-by: Corey Minyard <corey@minyard.net>
---
 drivers/char/ipmi/ipmi_msghandler.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index 3f48fc6ab596..a590a67294e2 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -4852,8 +4852,15 @@ static void smi_work(struct work_struct *t)
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
-- 
2.43.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

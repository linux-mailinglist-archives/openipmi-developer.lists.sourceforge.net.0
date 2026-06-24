Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 38hwHsEnPGpukggAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Wed, 24 Jun 2026 20:53:53 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A2AE96C0CEA
	for <lists+openipmi-developer@lfdr.de>; Wed, 24 Jun 2026 20:53:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lists.sourceforge.net header.s=beta header.b=O7aX+9nc;
	dkim=fail ("body hash did not verify") header.d=sourceforge.net header.s=x header.b=T8PJ4M95;
	dkim=fail ("body hash did not verify") header.d=sf.net header.s=x header.b="h y27RfE";
	dkim=fail ("body hash did not verify") header.d=gmail.com header.s=20251104 header.b=qFpxdbfV;
	spf=pass (mail.lfdr.de: domain of openipmi-developer-bounces@lists.sourceforge.net designates 216.105.38.7 as permitted sender) smtp.mailfrom=openipmi-developer-bounces@lists.sourceforge.net;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=gmail.com (policy=none)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=4Keio0VC1w4aCDgUXksj0F9fACldJ31jHaIwh3ad51w=; b=O7aX+9ncZbHksRG/1MLckDA5/V
	4mAEXe/25LKLyCecTU3DJJcukR8scAF21gzrcRc9wIULeltcBIfdhDM+qIvyXlH9urOghggwiRCua
	tFxTH0sYMwDwsnWagNUa8u67QHGlHpgt/Bt9KHL1fMr7/OBQ/pk2gNLPTA0SCty/24YE=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wcSjA-0000HF-WE;
	Wed, 24 Jun 2026 18:53:37 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <alhouseenyousef@gmail.com>) id 1wcRoH-0007kK-03
 for openipmi-developer@lists.sourceforge.net;
 Wed, 24 Jun 2026 17:54:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yCZEX2R6bEaNN/h2EUsAowUugoqXu39Vr1FkL1z6cW4=; b=T8PJ4M95Gntislf7NyUrIbfqaR
 MIeNl+8rnSS+qHsF+tdd9PjLSnHiPJdsPoDxts5lvlSXR+STPJV/bmgEJBbTkqPLjFHEONx12wMTR
 OUAXFVaGJdWzvxkQEb2lCvwyGUveE6R+BhD1ulFIDcfkVUe1AA8ZMU4t2BQP06nh1Qi4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=yCZEX2R6bEaNN/h2EUsAowUugoqXu39Vr1FkL1z6cW4=; b=h
 y27RfEcO4DXcH8LOsI4wD1ZimVeuVZ2WEnI0670p/6kq55Szf+nZTa6Ug/nqiEsm/Vd0AZHX91r2e
 vaaqfBbvUCs+1f31skaRN1eJ7p0dVHEVVKkiAvyYrVSbl7o6cxZLtoNFJr5TST4Lr6YbpvEjrRy7P
 i5uiQ/bIGQ4u3Fzw=;
Received: from mail-wr1-f42.google.com ([209.85.221.42])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1wcRoD-0001q8-MQ for openipmi-developer@lists.sourceforge.net;
 Wed, 24 Jun 2026 17:54:46 +0000
Received: by mail-wr1-f42.google.com with SMTP id
 ffacd0b85a97d-46caaa805b2so530371f8f.0
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 24 Jun 2026 10:54:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1782323675; x=1782928475; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=yCZEX2R6bEaNN/h2EUsAowUugoqXu39Vr1FkL1z6cW4=;
 b=qFpxdbfVKLpvav1CJXrR6IUwMl64DE3KZQyA2zPIPt6K+9it8jrWQcs8eeaeRTVMX7
 YPdyhcogWfzgRYdT8to1Yf5A6Ho5lH3zJJKKfgukqAkStZLbN2XEd/F5YNHccgZcxPkg
 WlBNEdXXyuq/VxG66X1iZvpaqYBAMg6B2oD1mmzFGeneoCa4KOc3aiR7IsUzLmN+CVHT
 MNvxNGOFcfYkD585cB15zZm+2d/oRBfLlPqB4Z7RWAFYSmCi1RAdm2s8nhKVbRgAIdll
 folxiAUBpKgn9y/qGnF7Z1MvuZYsYgtHelpo6Q6XBCxM4d6AMTGACm/MTIfVNVaHvX13
 Zo8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1782323675; x=1782928475;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=yCZEX2R6bEaNN/h2EUsAowUugoqXu39Vr1FkL1z6cW4=;
 b=NMWHW9eaFqgwm2w6qjkJH8dJm519dxoCU7oV59rmmzYsnhPaefiUOvYpO64UUKnwfe
 T+Bz9uyLOKP1mYRjixnKMtq7ucIzCeQRXiQzqguvBypz/z/2bTKai8PbJM5ylv9pT1NE
 M79WVmwufzelYx+b/uXJ0osgcqwdG+gOdD3NxAy1dZtWzDi7oWb6ODjp4LNJ2bWAyJhE
 zK4UPlzO/g/+XUeDEv+Yt7myQg0i7ZxWDddZnYRh4Xigkes79izncg2yH5VFhrfM/xQv
 YnMUSMbjtyy/hDRkVg5V5yh7TZk+NDZ+ljF1pPnfGw3zio9v9j/PHOtBRD6ubemiIUip
 6RFw==
X-Gm-Message-State: AOJu0YzOoITldu2QuZIJstGg9sNQsEUDAKUtiofHPHWB4jkX/emxkYH0
 O8Qp7s1egEHmW/ljrxQ6e9vHmZBQsraby4+5aJ6Wzgg5uCwmlHzEYMgy
X-Gm-Gg: AfdE7cnCf5HT4bzlMEJGh1TdKk7uZRfoL/wnyjSSubWSeaQ67m2gkemPywypt3I/m8d
 Q0ZigepySsm9xirLJNQ1z6XkS9hR9L9zxtQs26Nl4yQNiUND6PRzHGWhpa7OtPrVUr51dvU2Zgi
 ECFEPlalpVMEb0pZhyK2ByHOXT2Y5mGkZ1GaiMPgoo479K9sCZYPVHGKHYYjuYgx/6WzBfdzV0N
 mT6OgUGeg58Emrajl7l7C92W3oxU8guqFE4O7lbcx495gFAS9tTlFbgBK0FCLbNCurGKbBIw7Dz
 biFjhmP2loDxJHB7778gKvWjMCcys5sv7MbdE5bi5vq6oKroDKG53hOo3HgvGYKzcfQyn6KkDC9
 Ho4AHGHt/Uxh4ANYRjZIqr/FUckQNY+4K7IITTDUD96hZ67Ewi5hceeBFMo2i+ggjpnpJjPiPk6
 tN6uQqdlECj+LPuwNWDFjunbdLBQ==
X-Received: by 2002:a05:600c:a010:b0:492:3754:15f2 with SMTP id
 5b1f17b1804b1-492608794b0mr57788945e9.32.1782323674462; 
 Wed, 24 Jun 2026 10:54:34 -0700 (PDT)
Received: from Dev-Null-MSI ([2a0d:3344:52ac:a808:98a4:4381:be45:536f])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-49264011e9asm10731845e9.3.2026.06.24.10.54.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 24 Jun 2026 10:54:34 -0700 (PDT)
From: Yousef Alhouseen <alhouseenyousef@gmail.com>
To: Corey Minyard <corey@minyard.net>
Date: Wed, 24 Jun 2026 19:53:53 +0200
Message-ID: <20260624175353.8592-1-alhouseenyousef@gmail.com>
X-Mailer: git-send-email 2.54.0
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: ipmb_write() read message fields before validating the length
 byte. A zero or short write can read uninitialized stack bytes. A length
 smaller than the SMBus header underflows the block write length. 
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
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [alhouseenyousef(at)gmail.com]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.42 listed in wl.mailspike.net]
X-Headers-End: 1wcRoD-0001q8-MQ
X-Mailman-Approved-At: Wed, 24 Jun 2026 18:53:36 +0000
Subject: [Openipmi-developer] [PATCH] ipmi: ipmb: validate write message
 length
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
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Yousef Alhouseen <alhouseenyousef@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.01 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:corey@minyard.net,m:openipmi-developer@lists.sourceforge.net,m:linux-kernel@vger.kernel.org,m:alhouseenyousef@gmail.com,s:lists@lfdr.de];
	DKIM_MIXED(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alhouseenyousef@gmail.com,openipmi-developer-bounces@lists.sourceforge.net];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER(0.00)[alhouseenyousef@gmail.com,openipmi-developer-bounces@lists.sourceforge.net];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[lists.sourceforge.net,vger.kernel.org,gmail.com];
	FROM_HAS_DN(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[openipmi-developer@lists.sourceforge.net];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,gmail.com:s=20251104];
	TAGGED_RCPT(0.00)[openipmi-developer];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,gmail.com:-];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:dkim,lists.sourceforge.net:helo,lists.sourceforge.net:rdns,lists.sourceforge.net:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A2AE96C0CEA

ipmb_write() read message fields before validating the length byte.

A zero or short write can read uninitialized stack bytes.

A length smaller than the SMBus header underflows the block write length.

Require a non-empty buffer and the minimum IPMB request length.

Also require the length byte plus payload before parsing the message.

Signed-off-by: Yousef Alhouseen <alhouseenyousef@gmail.com>
---
 drivers/char/ipmi/ipmb_dev_int.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/char/ipmi/ipmb_dev_int.c b/drivers/char/ipmi/ipmb_dev_int.c
index 2fe1d205c..dd750392c 100644
--- a/drivers/char/ipmi/ipmb_dev_int.c
+++ b/drivers/char/ipmi/ipmb_dev_int.c
@@ -141,13 +141,14 @@ static ssize_t ipmb_write(struct file *file, const char __user *buf,
 	u8 msg[MAX_MSG_LEN];
 	ssize_t ret;
 
-	if (count > sizeof(msg))
+	if (!count || count > sizeof(msg))
 		return -EINVAL;
 
 	if (copy_from_user(&msg, buf, count))
 		return -EFAULT;
 
-	if (count < msg[0])
+	if (msg[IPMB_MSG_LEN_IDX] < IPMB_REQUEST_LEN_MIN ||
+	    count < (size_t)msg[IPMB_MSG_LEN_IDX] + 1)
 		return -EINVAL;
 
 	rq_sa = GET_7BIT_ADDR(msg[RQ_SA_8BIT_IDX]);
-- 
2.54.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

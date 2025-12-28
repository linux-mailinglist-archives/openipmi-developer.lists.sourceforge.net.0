Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C37DACE5880
	for <lists+openipmi-developer@lfdr.de>; Mon, 29 Dec 2025 00:08:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:MIME-Version:Sender:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=P3VMQVKBCjx+muAc6mIYX4h9e5QC6TRLrT0dMSdm1ps=; b=SouM7Z/OVG7HPQLKYKbc+GMsyM
	g8Y8/65EZNbXD3KJN1gqXBx7EXl5z9ynhkLxM3GIC56uAaUbaNL9lVh3S4FxOZENaRTT27ZXX4BY3
	J+PPnzDpgTvDrk6N509U+6gswxnwi6cXPXZwmsk0Ea967PXMrAE3/sLVlSBuK7INxBj8=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vZzsK-00007N-Cr;
	Sun, 28 Dec 2025 23:08:36 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <michallinuxstuff@gmail.com>) id 1vZzsI-00007H-Un
 for openipmi-developer@lists.sourceforge.net;
 Sun, 28 Dec 2025 23:08:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IXvdGFrrJyqq0NGmk7JkaGBqvRy9O+4JhyuYEOlzgUI=; b=X+yeUCDOvyAwil9e9f9qKLY7UZ
 g4RkgbrpZTn4RhG1K+6ocTuIfOZ8JtHxEdRb3612eMV5ceH9KIc6mePHsYtb60Y72EBQ7T/k56MXn
 Ai+zwRPs9WGoy+ugGtV6vasfWdAseBASOJwfPIkBuzPaEwsxIWECDE0PYsI+Jh07HBu8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=IXvdGFrrJyqq0NGmk7JkaGBqvRy9O+4JhyuYEOlzgUI=; b=l
 rPwkgaHtdpe8a6FA7pxiLwosP3ILzDbJXwqP00eHHuIbHKkxxdXCdNju/rj0xfsrtij5opnJa/zsh
 rj942oxTWqkJ5qzULB7FWDqYMdQ+auvw7may3RusApxg8s8PwsAzJNuYtP8iEBT9QChoxNAxKjT5p
 PKbEg1Ity+Kq694E=;
Received: from mail-ej1-f54.google.com ([209.85.218.54])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vZzsI-00061L-L7 for openipmi-developer@lists.sourceforge.net;
 Sun, 28 Dec 2025 23:08:34 +0000
Received: by mail-ej1-f54.google.com with SMTP id
 a640c23a62f3a-b79af62d36bso1468426966b.3
 for <openipmi-developer@lists.sourceforge.net>;
 Sun, 28 Dec 2025 15:08:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1766963303; x=1767568103; darn=lists.sourceforge.net;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=IXvdGFrrJyqq0NGmk7JkaGBqvRy9O+4JhyuYEOlzgUI=;
 b=EDrAtwOPp8v7kIRzQRAqKR9WfxhzRElPPhBF5IKccQoCb86vdUFUT1xVtB4E5n94SQ
 VbyEHcEcfTu59UVspBuB3l+uPbBHMuvHbIC3xojwBiLsWEcaQ74vuf9G9RWNE7infM1x
 k8nDLLoDReBNTSSJ7EPvscZGx/ai4klYL5I6njiMwIDmTMPRLpI0ouw7G10piU1Uxdaw
 0QGMuQEY++uCpa9m0FiO90qlfoMC7sqoEgLBUifu2oSk8EH40KshoM0+cgVSVWOEHHkP
 9yvpJ8ju46US0FiD1yPx+w65aL9QgX3xYyOEZrTFtcJR/+FcVXjBFwBgkUlh0AyIlCog
 nYAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1766963303; x=1767568103;
 h=to:subject:message-id:date:from:mime-version:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=IXvdGFrrJyqq0NGmk7JkaGBqvRy9O+4JhyuYEOlzgUI=;
 b=ZUwnxxGRTUFCCmMQaqMdTQb3IoYfUa40rN77qEKtK+744dFQFdLVdtuQGnKk3dI9f6
 G9/EcvQ6MvjYs+3PqQoMrghnNfPE+MHmwp0xW/rROtuyLnSJrtXaikhglaZoYXXCrY+S
 zJn5Kw2Jf4FE9ZP2lEvCyzLyWsJp67EzAV2AVZi2O8upeJJfef0Evtpq2AZfxOlHKvqf
 birHj7NLTLi7ZAKCSCa4K0o3Mx3m0vHze6KBAcGyUcHTQ4kRWrveQLYFISCZjBQDdB6Y
 UzZ3dfd/upSy/LG0KyArxZpXh5oV6ryAaFjEjb3ke8vpaUaIDR5NDVPSw0ctRM9EMwcW
 +2jQ==
X-Gm-Message-State: AOJu0Yw1AFpw2rgjOAkcMLA3kjpuobj7tgf5OyNnHWwCvlBoAouB4TMP
 WHSb6cDILS9b6hspKQYp6JN+72FIhb7hW88P6nH4PkjV7F/YzcvFvd+C6PBlXdeBZMCfVF9ot21
 K3wVcWrXlDEeLJUR5CFicbGWbzLHnLeWiOm1NXE6aRw==
X-Gm-Gg: AY/fxX7R137ccVoCNUrhoC+bfQpR5C253pJAccx68ly+1dMzCQz3jlqXh1oE8L1EjdX
 Qfu7VUl3z9OhgrcF/hX0HmcgPxE8cTVonv93n5zpEIS9kbTbWL5e83KaL4elddrIr1/r8WIgXtR
 c5gDhIEZ9j5UZD/KJu7b9klgEQnXmFZn0hnzzsjv2LdGYzycOcXp4Muz7E0mDRng3MmneOTNHDU
 4IFYcN8hitngC1UeFuE9c1eO4J1qvMA1b4Xkxztj7bJpH2D+Z5ttlJ0n2KWrAf567O4fg==
X-Google-Smtp-Source: AGHT+IFtq4o3TXlRZ6r/e0yjMdNSMaHhV43mDXKmfS2gNBOJsE4pJdeGufcZtfJGdEvec0tXqFZS2rWzfcvqFOq/nuI=
X-Received: by 2002:a17:907:9686:b0:b4b:dd7e:65f2 with SMTP id
 a640c23a62f3a-b8036ecbb91mr3163222966b.5.1766963302677; Sun, 28 Dec 2025
 15:08:22 -0800 (PST)
MIME-Version: 1.0
From: Michal Berger <michallinuxstuff@gmail.com>
Date: Mon, 29 Dec 2025 00:08:11 +0100
X-Gm-Features: AQt7F2qWa-_GgdRzlnMQy7h8UeiYbwdcSIm006lfRg3838oEyJF6CRKmfBuO4Ac
Message-ID: <CACosJgzgNiNxuqs7JP2So0STmV-5iKzGUk2GhpazY-1MdMR5Fw@mail.gmail.com>
To: openipmi-developer@lists.sourceforge.net
X-Spam-Score: 1.9 (+)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Wrong data is used to determine the record_id - instead of
 the rdata, msg data should be used instead. Reproducible with: $ ipmitool
 raw 0xa 0x22 01 00 $ ipmitool raw 0xa 0x26 0x1 0x0 0x1 0x0 Unable to send
 RAW command (...): Requested sensor, data, or record not found 
 Content analysis details:   (1.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [michallinuxstuff(at)gmail.com]
 0.0 LOTS_OF_MONEY          Huge... sums of money
 2.1 MONEY_NOHTML           Lots of money in plain text
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.218.54 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1vZzsI-00061L-L7
Subject: [Openipmi-developer] [PATCH] lanserv/bmc_storage: Fix record_id in
 handle_delete_sdr
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Wrong data is used to determine the record_id - instead of the
rdata, msg data should be used instead. Reproducible with:

 $ ipmitool raw 0xa 0x22
 01 00
 $ ipmitool raw 0xa 0x26 0x1 0x0 0x1 0x0
 Unable to send RAW command (...): Requested sensor, data, or record not found

ipmi_sim is not able to find the record in the SDR since the
record_id is set to a "garbage" value.
---
lanserv/bmc_storage.c | 2 +-
1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lanserv/bmc_storage.c b/lanserv/bmc_storage.c
index dda663da..021d0118 100644
--- a/lanserv/bmc_storage.c
+++ b/lanserv/bmc_storage.c
@@ -1292,7 +1292,7 @@ handle_delete_sdr(lmc_data_t    *mc,
       }
    }

-    record_id = ipmi_get_uint16(rdata+2);
+    record_id = ipmi_get_uint16(msg->data+2);

    if (record_id == 0) {
       entry = mc->main_sdrs.sdrs;
--
2.43.0


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

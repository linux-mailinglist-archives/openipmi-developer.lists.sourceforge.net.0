Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D3E7979DCDD
	for <lists+openipmi-developer@lfdr.de>; Wed, 13 Sep 2023 01:51:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qgD9t-00086t-94;
	Tue, 12 Sep 2023 23:51:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3ivcAZQsKAKsUfdeTYdeTeeRZZRWP.NZX@flex--justinstitt.bounces.google.com>)
 id 1qgD9s-00086m-JO for openipmi-developer@lists.sourceforge.net;
 Tue, 12 Sep 2023 23:51:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:From:Subject:Message-ID:
 Mime-Version:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yNUsumri2UZDwpZg4M25MzHoYyNv/o7N3O07+7K4l9w=; b=OlohkLWrtBJFffgWpuz5mg76Gk
 3n9WCPbYv+UZnl5hNeVmSCfbZnTMqpixBpgzcKX4W+LXMl5kknKyKXnW+qVMhGmbE7nm7mf1X3DCz
 oW6WLggrwnuU4bQMqIGYWTZVJGVk3BU4McsoajhDtI9KqGgU/cRJxqQNndVnvz8ruXYA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:From:Subject:Message-ID:Mime-Version:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=yNUsumri2UZDwpZg4M25MzHoYyNv/o7N3O07+7K4l9w=; b=N
 6Pa8t+98AKJ1dp3ezaGrW+zzc5RCVM7tQaG2NPTWk/rXanvhhMOTsAq1KIZWlI/XO7umFs1ar3EZk
 hHHYwtQusGXE0yMWE5nRWVSeOEw0Ul53m5CdigNz3aTpH/08SimrUeNK539p15gLFm++r2IchBhzD
 Y+ultwk6E1l1hyng=;
Received: from mail-io1-f73.google.com ([209.85.166.73])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qgD9m-002Vmr-2W for openipmi-developer@lists.sourceforge.net;
 Tue, 12 Sep 2023 23:51:04 +0000
Received: by mail-io1-f73.google.com with SMTP id
 ca18e2360f4ac-79524453b83so416714439f.1
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 12 Sep 2023 16:50:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1694562650; x=1695167450;
 darn=lists.sourceforge.net; 
 h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
 :date:message-id:reply-to;
 bh=yNUsumri2UZDwpZg4M25MzHoYyNv/o7N3O07+7K4l9w=;
 b=dZvgYYWrXbmGSwpkHkRJ509KMCKxzR10uNj3EjqaaVVgNBmE5iwr3PddC6S7/KwKWs
 Pv8zXUBFutlqrqYiCApS6Mg3ZqF3V4Aee8SwzabAx9qdb8r2cdwgjhpDryvChUOMKLlh
 Sgouo7p/Iv3WLnxDIoNwPZ8otsCChP3LRva6GPr4YEkVCxjCNw1RKnhkwFJeS+ybeNtl
 UXunOQIT0M3LzrtfQ+Yf09SXKgZrMSv8fiFB/tn4qm7fdHFaZlIYHo8YiB9I6nMc6BQb
 5vM/TBHVlFlj9Aq3+7Iz6Ixeqvi6Q9W0AxLSo9MKV48S0zkE4uYSmsh0xBahRwC4drjZ
 XSXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1694562650; x=1695167450;
 h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=yNUsumri2UZDwpZg4M25MzHoYyNv/o7N3O07+7K4l9w=;
 b=meI9jFKRErsTEkoBnXQDbhoByri2+FqsgotQP9fmsAxPZMn3sel3yomkbbqYWVzJWj
 qSLCdbpGO05OsCSXKNhQbMiVvyKk9HzauWAXzWHaULj2eAYtKn9O8j05lWmd2zml2rdj
 IpNBiR2NuyClOWnTicC2Kyop+yxmyrWdsQtWyzJ+dCq8e/5PWvlK4Ak6slE5IpV7Xga9
 JjmYNRwSkfyUZDBqQ9Q8s1TiaU74K4b6XNd7pmCUwePHPhBc7KNlP8aw/BPPYzXJ6yd4
 nJm298up/5HnnLnhHd8JghoLSz/zDM8+0UcKazQP59cOo5e0/XIZWiuxB+X4E1+H19Wl
 JiQA==
X-Gm-Message-State: AOJu0YwE0g/CGiMCRdKFuAPwMaaGeza9XUxubDCfX3pHff1cw1lOzoXE
 skJpkMKmsBHow42ChBtefjiuOf7mlZWFWF86Hg==
X-Google-Smtp-Source: AGHT+IH6SifBPntdJajOqDoIl0d+wzT81RxzJmUw5FruJ/HVH/OU8IAMaIS62QrQtsH5yMq0xGUrXRssB9QCNYiyng==
X-Received: from jstitt-linux1.c.googlers.com
 ([fda3:e722:ac3:cc00:2b:ff92:c0a8:23b5])
 (user=justinstitt job=sendgmr) by 2002:a25:dac4:0:b0:d11:6816:2d31 with SMTP
 id n187-20020a25dac4000000b00d1168162d31mr19901ybf.7.1694562186031; Tue, 12
 Sep 2023 16:43:06 -0700 (PDT)
Date: Tue, 12 Sep 2023 23:43:05 +0000
Mime-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAIj3AGUC/yWNywqDQAxFf0WybmAehcH+irhQEzULp0NSRBH/v
 UO7OXDgcO8Fxips8GouUN7F5J2r+EcD0zrkhVGoOgQXomt9QPtonsqJpLKzGtZKUcomfxANzzT
 GlOJMUEeK8izH76Dr7/sL24jtpnAAAAA=
X-Developer-Key: i=justinstitt@google.com; a=ed25519;
 pk=tC3hNkJQTpNX/gLKxTNQKDmiQl6QjBNCGKJINqAdJsE=
X-Developer-Signature: v=1; a=ed25519-sha256; t=1694562185; l=2602;
 i=justinstitt@google.com; s=20230717; h=from:subject:message-id;
 bh=OIAMVV96NW5a8b/nTfJAZD/DTUfCZOJLgk+SCG3GQBk=;
 b=ckzKCq3t3UA3eFuuHAx+JY/jr5F0GucpbypzVAzaul87I5QvwxTn5nJ9flbz2PKRvdeLmF0Ch
 QziNcx/Hv5MCYxScI73E/uFcjMuLcWfYcNnqi2LEzSVTrSSoydInSaC
X-Mailer: b4 0.12.3
Message-ID: <20230912-strncpy-drivers-char-ipmi-ipmi-v1-1-cc43e0d1cae6@google.com>
To: Corey Minyard <minyard@acm.org>
X-Spam-Score: -7.7 (-------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: `strncpy` is deprecated for use on NUL-terminated destination
 strings [1]. In this case,
 strncpy is being used specifically for its NUL-padding
 behavior (and has been commented as such). We can use a more robust and less
 ambiguous interface in `strscpy_pad` which makes the c [...] 
 Content analysis details:   (-7.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 welcome-list
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.73 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.73 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium trust sender
X-Headers-End: 1qgD9m-002Vmr-2W
Subject: [Openipmi-developer] [PATCH] ipmi: refactor deprecated strncpy
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
From: Justin Stitt via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Justin Stitt <justinstitt@google.com>
Cc: openipmi-developer@lists.sourceforge.net,
 Justin Stitt <justinstitt@google.com>, linux-kernel@vger.kernel.org,
 Kees Cook <keescook@chromium.org>, linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

`strncpy` is deprecated for use on NUL-terminated destination strings [1].

In this case, strncpy is being used specifically for its NUL-padding
behavior (and has been commented as such). We can use a more robust and
less ambiguous interface in `strscpy_pad` which makes the code more
readable and even eliminates the need for that comment.

Let's also use `strnlen` instead of `strlen()` with an upper-bounds
check as this is intrinsically a part of `strnlen`.

Also included in this patch is a simple 1:1 change of `strncpy` to
`strscpy` for ipmi_ssif.c. If NUL-padding is wanted here as well then we
should opt again for `strscpy_pad`.

Link: https://www.kernel.org/doc/html/latest/process/deprecated.html#strncpy-on-nul-terminated-strings [1]
Link: https://github.com/KSPP/linux/issues/90
Cc: linux-hardening@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>
Signed-off-by: Justin Stitt <justinstitt@google.com>
---
 drivers/char/ipmi/ipmi_msghandler.c | 11 +++--------
 drivers/char/ipmi/ipmi_ssif.c       |  2 +-
 2 files changed, 4 insertions(+), 9 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index 186f1fee7534..04f7622cb703 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -5377,20 +5377,15 @@ static void send_panic_events(struct ipmi_smi *intf, char *str)
 
 	j = 0;
 	while (*p) {
-		int size = strlen(p);
+		int size = strnlen(p, 11);
 
-		if (size > 11)
-			size = 11;
 		data[0] = 0;
 		data[1] = 0;
 		data[2] = 0xf0; /* OEM event without timestamp. */
 		data[3] = intf->addrinfo[0].address;
 		data[4] = j++; /* sequence # */
-		/*
-		 * Always give 11 bytes, so strncpy will fill
-		 * it with zeroes for me.
-		 */
-		strncpy(data+5, p, 11);
+
+		strscpy_pad(data+5, p, 11);
 		p += size;
 
 		ipmi_panic_request_and_wait(intf, &addr, &msg);
diff --git a/drivers/char/ipmi/ipmi_ssif.c b/drivers/char/ipmi/ipmi_ssif.c
index 3b921c78ba08..edcb83765dce 100644
--- a/drivers/char/ipmi/ipmi_ssif.c
+++ b/drivers/char/ipmi/ipmi_ssif.c
@@ -1940,7 +1940,7 @@ static int new_ssif_client(int addr, char *adapter_name,
 		}
 	}
 
-	strncpy(addr_info->binfo.type, DEVICE_NAME,
+	strscpy(addr_info->binfo.type, DEVICE_NAME,
 		sizeof(addr_info->binfo.type));
 	addr_info->binfo.addr = addr;
 	addr_info->binfo.platform_data = addr_info;

---
base-commit: 2dde18cd1d8fac735875f2e4987f11817cc0bc2c
change-id: 20230912-strncpy-drivers-char-ipmi-ipmi-dda47b3773fd

Best regards,
--
Justin Stitt <justinstitt@google.com>



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

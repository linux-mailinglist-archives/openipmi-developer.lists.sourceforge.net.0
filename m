Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 465F879F1C3
	for <lists+openipmi-developer@lfdr.de>; Wed, 13 Sep 2023 21:10:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qgVG5-0007Wc-V7;
	Wed, 13 Sep 2023 19:10:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3ou0BZQsKALMcnlmbglmbmmZhhZeX.Vhf@flex--justinstitt.bounces.google.com>)
 id 1qgVG5-0007WV-Ap for openipmi-developer@lists.sourceforge.net;
 Wed, 13 Sep 2023 19:10:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:From:Subject:Message-ID:
 Mime-Version:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TycX59E5b3dlFgGY1L+jzKDgDIrRQ3+jS2g/Ms9VN9A=; b=Vk+5+LjVioyqDzwC0j6Ntbwy+8
 bK2WYy/py7tJouW/hMCXaud9MX8wytpkdeF+i/IAlaOSV0HteeB5fR8AxKLtEG/XLOQI80dGQnZ1v
 /WFI1iTw5CC0jrRCFPUwJsrnyXGxYFAo+QvoHhVFHwgVtC/OIoZ3bTrBGdBzdC6Y7HR4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:From:Subject:Message-ID:Mime-Version:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=TycX59E5b3dlFgGY1L+jzKDgDIrRQ3+jS2g/Ms9VN9A=; b=C
 h6lhRRpPyE83bvCQ43cPEPs9uRLHYwB9BUFX8iBUfMztu2O6xnJLKWquLlb52W6I69Z7XIKDabe/5
 brbsMtnJazxP6y7OL9DlDfIxwOoddHuEq8sWQgJIq0lisGcmkz01LSqtvLCYNth51uqiei8gN/h2I
 cnry+uiliMpA+gzY=;
Received: from mail-pj1-f74.google.com ([209.85.216.74])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qgVG1-00055W-Qp for openipmi-developer@lists.sourceforge.net;
 Wed, 13 Sep 2023 19:10:41 +0000
Received: by mail-pj1-f74.google.com with SMTP id
 98e67ed59e1d1-26d50941f68so159736a91.1
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 13 Sep 2023 12:10:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1694632232; x=1695237032;
 darn=lists.sourceforge.net; 
 h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
 :date:message-id:reply-to;
 bh=TycX59E5b3dlFgGY1L+jzKDgDIrRQ3+jS2g/Ms9VN9A=;
 b=nuNHTxUqqK0KdJukd0OIT0Ub6reGSm699cWAkQFOeJkGsDJkII+kdT4F0h/46Qy6eH
 rM7OtobLg+HzmJYKNG6jIgLjoqsiiU0PwQXjNwiJfy/o5eyIKcsfW0g7VPHQCs9RbGBn
 qFK7pKM+g7qycEHgwTsLyltx9jPzxcAzASVDZ34Q5/63xFWs4Y90DEP9eGWxvrs7ZpK2
 x/JFROubds6uMkgx8+0ET4SLrI2/V6BOFPhPl7pDz3S8h34SMxgyF+x5/m0I+Wk3cw+6
 wtaYBP95L92cFKJjcEoj3c5/mIyZR7bIZwi/HDLsOJweOQsQzwF/NoJ8rdryMh4I8+pv
 OEUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1694632232; x=1695237032;
 h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=TycX59E5b3dlFgGY1L+jzKDgDIrRQ3+jS2g/Ms9VN9A=;
 b=e8dcv00Fm3o09q7Fzm/P/2Yt0vV6qyPjb39wUsC69giUTjGAynA3kI2iI/6bhZBZYa
 +08ecbdEq/tW+H5yHzizGNbJ92No4f7Dumj2xECV7ojiG+AHlGaU9NzOu9w6NDElw1Zc
 vFujnaQ4G5ch24ouShLSxrPNDcDs29ndOgt2OjMWOirJC4qnqTl0HNCSXy3EnvWtqvUT
 ZIXLRE6Rqcp8Omd4X2f9XntqZKTKf945Fc+r5gEfrlinJi53Li4o0lIw8rqhsr4BJH+r
 E8ITaprC6JbmE7bamZ4DcFlDoeYyDUjFi9NTe/EVaNR5rhZshFCMU2ICfNDPc5Xk7p47
 /4tg==
X-Gm-Message-State: AOJu0YwyIdw9kz2i2HDlF+EUivICncuN2gwu3H+bHxW/pF9dcV6T1lWt
 GQ6GhjDT9UMHkf8XRO69V6onZYmBPDn3C69kyQ==
X-Google-Smtp-Source: AGHT+IGpv77TMcvUEUVSFcCbF4UPPntDMLB3+Kcq3GEi15wPVZGQhJZUau9yW/l4BvE2Ks/L2ADHNSyMWbN06O58bw==
X-Received: from jstitt-linux1.c.googlers.com
 ([fda3:e722:ac3:cc00:2b:ff92:c0a8:23b5])
 (user=justinstitt job=sendgmr) by 2002:a05:6808:1443:b0:397:f54a:22d6 with
 SMTP id x3-20020a056808144300b00397f54a22d6mr1310455oiv.9.1694625186953; Wed,
 13 Sep 2023 10:13:06 -0700 (PDT)
Date: Wed, 13 Sep 2023 17:13:04 +0000
Mime-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAJ/tAWUC/42NQQqDMBBFryKz7hSTSEO76j2KC5uMcaAamUioi
 Hdvai/QzYf3+by/QSJhSnCrNhDKnDhOBfSpAjd0UyBkXxh0rU19VRrTIpObV/TCmSRhWQnyPPI
 vvO8a+zTWmt5DkcxCPb+Pg0dbeOC0RFmPv6y+7d/qrFChc42h2ivX0eUeYgwvOrs4Qrvv+wdjT
 2SwzQAAAA==
X-Developer-Key: i=justinstitt@google.com; a=ed25519;
 pk=tC3hNkJQTpNX/gLKxTNQKDmiQl6QjBNCGKJINqAdJsE=
X-Developer-Signature: v=1; a=ed25519-sha256; t=1694625185; l=2941;
 i=justinstitt@google.com; s=20230717; h=from:subject:message-id;
 bh=FDmfRrAoS66Rbbc25XcYmCZjZlwmE2RZWNS4Ok/5S0k=;
 b=E2uwLU3YiJUf5HxNMMXdX8SkcKNpi07uqk0WHe0v9DIfto0Upi/ltttoRVU6rUSIFiESIwDYh
 nM6tsROJ+DDDhGrrDYB1vZqhyjHrUVXazVor5thhRkpcNSlrEop/x7D
X-Mailer: b4 0.12.3
Message-ID: <20230913-strncpy-drivers-char-ipmi-ipmi-v2-1-e3bc0f6e599f@google.com>
To: Corey Minyard <minyard@acm.org>
X-Spam-Score: -7.7 (-------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: `strncpy` is deprecated for use on NUL-terminated destination
 strings [1]. In this case,
 strncpy is being used specifically for its NUL-padding
 behavior (and has been commented as such). Moreover, the destination string
 is not required to be NUL-terminated [2]. 
 Content analysis details:   (-7.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 welcome-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.74 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.74 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium trust sender
X-Headers-End: 1qgVG1-00055W-Qp
Subject: [Openipmi-developer] [PATCH v2] ipmi: refactor deprecated strncpy
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
behavior (and has been commented as such). Moreover, the destination
string is not required to be NUL-terminated [2].

We can use a more robust and less ambiguous interface in
`memcpy_and_pad` which makes the code more readable and even eliminates
the need for that comment.

Let's also use `strnlen` instead of `strlen()` with an upper-bounds
check as this is intrinsically a part of `strnlen`.

Also included in this patch is a simple 1:1 change of `strncpy` to
`strscpy` for ipmi_ssif.c. If NUL-padding is wanted here as well then we
should opt again for `strscpy_pad`.

Link: https://www.kernel.org/doc/html/latest/process/deprecated.html#strncpy-on-nul-terminated-strings [1]
Link: https://lore.kernel.org/all/ZQEADYBl0uZ1nX60@mail.minyard.net/ [2]
Link: https://github.com/KSPP/linux/issues/90
Cc: linux-hardening@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>
Signed-off-by: Justin Stitt <justinstitt@google.com>
---
Changes in v2:
- use memcpy_and_pad (thanks Corey)
- Link to v1: https://lore.kernel.org/r/20230912-strncpy-drivers-char-ipmi-ipmi-v1-1-cc43e0d1cae6@google.com
---
 drivers/char/ipmi/ipmi_msghandler.c | 11 +++--------
 drivers/char/ipmi/ipmi_ssif.c       |  2 +-
 2 files changed, 4 insertions(+), 9 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index 186f1fee7534..d6f14279684d 100644
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
+		memcpy_and_pad(data+5, 11, p, size, '\0');
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

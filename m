Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BF673776E1B
	for <lists+openipmi-developer@lfdr.de>; Thu, 10 Aug 2023 04:35:07 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qTvVo-0000gV-1m;
	Thu, 10 Aug 2023 02:34:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3mf_TZAsKABY5GEF49EF4FF2AA270.yA8@flex--justinstitt.bounces.google.com>)
 id 1qTt4E-0003NO-FY for openipmi-developer@lists.sourceforge.net;
 Wed, 09 Aug 2023 23:58:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:From:Subject:Message-ID:
 Mime-Version:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6lWbhl7iPJrKFXOG4ZaXM/5SQTR9KDU65oXklH1K4hU=; b=bvZea1K1RJzijOWLISZdRkohHV
 78GMdXzhy5nveTQR+60c/xfoiHP9zt59VYVO0X9qv/E/V6vZh8HC9ZQykTqONGf7s6RFNIF9Yl6vS
 Kafz1NsDfimYnrpAee3mOGrmG2YgodFUcyKiB3yspgMHtIrUTbroDnL8ohqjw0Bta2SI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:From:Subject:Message-ID:Mime-Version:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=6lWbhl7iPJrKFXOG4ZaXM/5SQTR9KDU65oXklH1K4hU=; b=P
 3jv3dayWFT2KV2RiLKzUxCF7KqssuOa+BemQcTtYk0cGLCxezBIltWP5vNm8slsA82SdPQvse1ljy
 Yr2Yact2rquBwDbzeFz3UaS6a7kv0MA373vVn2788tQmEghJtAaN2Uh1sLKkP1dr7GMZDWPJ2G8Jb
 7MXQRIqu2fRaOSZE=;
Received: from mail-il1-f201.google.com ([209.85.166.201])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qTt4C-000ww0-Mu for openipmi-developer@lists.sourceforge.net;
 Wed, 09 Aug 2023 23:58:17 +0000
Received: by mail-il1-f201.google.com with SMTP id
 e9e14a558f8ab-3492f67e474so2897845ab.1
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 09 Aug 2023 16:58:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20221208; t=1691625491; x=1692230291;
 h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
 :date:message-id:reply-to;
 bh=6lWbhl7iPJrKFXOG4ZaXM/5SQTR9KDU65oXklH1K4hU=;
 b=EgqNt8YyplpJE+9Cd7APkzHEGOwtq3Qu/S2UERcehl+h3pX+hN86bQ6TFAnfspjZ68
 h3qXYFEYWPpc1v77IDQDzqG33NicxR1cynJVb3nrt6OFxhQyUCkkGqNfcdB+edgLgQZL
 nGjIJj5YUg7kNrMwypVbxM7yP562/s59+4Va40k3rqu+MrJmgT0cuHqhh7XSsfFncLJZ
 jfsEhP/qVeHKZEbJh5sTAzyTf8vAT2rxfrCGVK18ZSbz23Mpj/geh/DxYKNCxuh7we8H
 MT/M0aQm4vuxAZ0fnARCTlN3gRF3ERTT8Nq+8MX/Bhqgksjy2PmBXQyDjGWOTYQ/fevG
 fb5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1691625491; x=1692230291;
 h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=6lWbhl7iPJrKFXOG4ZaXM/5SQTR9KDU65oXklH1K4hU=;
 b=Bh0wi5ibRupmEmnDhfjrE2tTIcKGA50s34gzpBE3K/G1lXjlE0Aij5n8To9sHA8rWk
 ye9UGB64PYFizXFYuVLj4MMl43cCgclKvcCMXL634AYlmmK36MFfTnuK6BTF0P5eOlzR
 EounzK4hYiPUt3QAxnTUlxdcB0koPMlE1HFKqf0qRq1Fm5PU0Ri2R8eQwW3qQ4WuegTa
 hH5n5LNSTtRjurb5VM3yhhLWiIWLelF9efvIfIeJlJ2lAd9r2kKokh0pUglSYFMiJvVm
 gsVzUUZV95Dy/+xLMZIHk+2kAhMyCCIoBuP4awhPewpeZHzn98/eJIx+0e9aeP35EKly
 ka5Q==
X-Gm-Message-State: AOJu0YyrlOveWCE3XvgvDNCggqzwWNrKb2yXkvk3JOHjKn1IiYNo3O14
 wquTuT1R7rtXOAjUOBoTekhsq6jh8PlXHDX6/w==
X-Google-Smtp-Source: AGHT+IFQmgkrI8VuWgIDNLZ7KR+fil6n5jwemxgi5ftyxtUzT4A3cLkr7PSGk7zkzAE0NI22zP0CK8uKN2at/Sddxw==
X-Received: from jstitt-linux1.c.googlers.com
 ([fda3:e722:ac3:cc00:2b:ff92:c0a8:23b5])
 (user=justinstitt job=sendgmr) by 2002:a81:b654:0:b0:589:a974:d7ef with SMTP
 id h20-20020a81b654000000b00589a974d7efmr8012ywk.6.1691615129773; Wed, 09 Aug
 2023 14:05:29 -0700 (PDT)
Date: Wed, 09 Aug 2023 21:05:17 +0000
Mime-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAIz/02QC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI2MDCwNL3eSkHF1DSwMjXXNTY6NEcxPzJHNjQyWg8oKi1LTMCrBR0bG1tQA
 Yc43mWgAAAA==
X-Developer-Key: i=justinstitt@google.com; a=ed25519;
 pk=tC3hNkJQTpNX/gLKxTNQKDmiQl6QjBNCGKJINqAdJsE=
X-Developer-Signature: v=1; a=ed25519-sha256; t=1691615128; l=2051;
 i=justinstitt@google.com; s=20230717; h=from:subject:message-id;
 bh=4fwVtNGUzPaNWTNSFgWLMCLfJmRtOqh+bfG+cBvU9Fc=;
 b=1gU3hL/wzLUxNjg0CNumlzju0uyRaxlNZsxZ08WyrI5v/J6HMXXm2wvDibGpMK6pZ8L477ovJ
 1qI9WLjjLnMASiKba2+k6n9m7GYjszkKfxYisHrJgpVROBN/gFLtblp
X-Mailer: b4 0.12.3
Message-ID: <20230809-cbl-1902-v1-1-92def12d1dea@google.com>
To: Corey Minyard <minyard@acm.org>, Nathan Chancellor <nathan@kernel.org>, 
 Nick Desaulniers <ndesaulniers@google.com>, Tom Rix <trix@redhat.com>
X-Spam-Score: -7.7 (-------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: With W=1 we see the following warning: |
 drivers/char/ipmi/ipmi_si_platform.c:272:15:
 error: \ | cast to smaller integer type 'enum si_type' from \ | 'const void
 *' [-Werror,-Wvoid-pointer-to-enum-cast] | 272 | io.si_type = (enum si_type)
 [...] Content analysis details:   (-7.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 welcome-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.201 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.201 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium trust sender
X-Headers-End: 1qTt4C-000ww0-Mu
X-Mailman-Approved-At: Thu, 10 Aug 2023 02:34:56 +0000
Subject: [Openipmi-developer] [PATCH] ipmi_si: fix
 -Wvoid-pointer-to-enum-cast warning
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
Cc: kernel test robot <lkp@intel.com>, Arnd Bergmann <arnd@arndb.de>,
 llvm@lists.linux.dev, linux-kernel@vger.kernel.org,
 Justin Stitt <justinstitt@google.com>,
 openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

With W=1 we see the following warning:

|  drivers/char/ipmi/ipmi_si_platform.c:272:15: error: \
|       cast to smaller integer type 'enum si_type' from \
|       'const void *' [-Werror,-Wvoid-pointer-to-enum-cast]
|    272 |         io.si_type      = (enum si_type) match->data;
|        |                           ^~~~~~~~~~~~~~~~~~~~~~~~~~

This is due to the fact that the `si_type` enum members are int-width
and a cast from pointer-width down to int will cause truncation and
possible data loss. Although in this case `si_type` has only a few
enumerated fields and thus there is likely no data loss occurring.
Nonetheless, this patch is necessary to the goal of promoting this
warning out of W=1.

Link: https://github.com/ClangBuiltLinux/linux/issues/1902
Link: https://lore.kernel.org/llvm/202308081000.tTL1ElTr-lkp@intel.com/
Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Justin Stitt <justinstitt@google.com>
---
Note:
Arnd had mentioned that there perhaps may be some semantic differences
between GCC and Clang regarding this warning or family of warnings. For
now, this patch (and others following) will yield less noisy W=1 builds
and hopefully materialize into this warning getting promoted out of W=1
to an always-on warning.
---
 drivers/char/ipmi/ipmi_si_platform.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/char/ipmi/ipmi_si_platform.c b/drivers/char/ipmi/ipmi_si_platform.c
index 505cc978c97a..0d509d683c0f 100644
--- a/drivers/char/ipmi/ipmi_si_platform.c
+++ b/drivers/char/ipmi/ipmi_si_platform.c
@@ -269,7 +269,7 @@ static int of_ipmi_probe(struct platform_device *pdev)
 	}
 
 	memset(&io, 0, sizeof(io));
-	io.si_type	= (enum si_type) match->data;
+	io.si_type	= (unsigned long) match->data;
 	io.addr_source	= SI_DEVICETREE;
 	io.irq_setup	= ipmi_std_irq_setup;
 

---
base-commit: c1a515d3c0270628df8ae5f5118ba859b85464a2
change-id: 20230809-cbl-1902-7532a747b731

Best regards,
--
Justin Stitt <justinstitt@google.com>



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

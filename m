Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YE+9C2/d4mnw/QAAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Sat, 18 Apr 2026 03:25:03 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 73FC841F995
	for <lists+openipmi-developer@lfdr.de>; Sat, 18 Apr 2026 03:25:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:MIME-Version:Message-ID:To:From:Date:Sender:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=yWgiYXy0Zn+mHvunTyS5aqmMY759CgckGR3jhTG3iS8=; b=hnD+6HBwyV+u2Jc0lUqYLyBzYD
	8AAivY2qVmsNyV9MSpSKqZR0wERyhOvk9csSPQVrbO9BFVCcAL5Js6CDfUR1ozafBcC9M3qWqgzje
	48A/zP/DsCc1apwvsOOabd2q0PFxoGyZzQoSl3STd3M84naRAUjJK0poP3Ry+2/SxhVw=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wDuQV-0001wU-Nr;
	Sat, 18 Apr 2026 01:24:51 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1wDuQV-0001wM-1x
 for openipmi-developer@lists.sourceforge.net;
 Sat, 18 Apr 2026 01:24:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DsGwzmdt1ycST269r6z5E0FMNwLPVPbvB6QizOUsfSQ=; b=XO1eLCmp34G7YkKDCFnhKIZeBI
 Wd3AvJySEdlvuyymTsR8k7tdZbxttigXop3ZYyje+cUaf74cMSOLIyN3DIuB+xMKILPu/7Zj2O4w5
 g0VDZtWsTRZcEXXyFhkNWhY002mJNVSEtcobVXAXQxVohyIojRwqhOrNHlx/kox4n3xw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Reply-To:Message-ID:Subject:Cc:To:From:Date:
 Sender:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=DsGwzmdt1ycST269r6z5E0FMNwLPVPbvB6QizOUsfSQ=; b=O
 CFUiO4Uxy6ZFbNBk3kzIRyqKej06tjW3JOaG9j1fWAvDGhZHWBQgJg4ghrAg+cxQ4lgAoalnNe3Xu
 KX99tT8wu97m5rgV/5MoFx6YSsETOrKkhuBE9MgJ48NqrpP1uGUT9HOtS1VD1ZdW5eJW7zHhzrNVD
 oQq1Nh31LaSgE418=;
Received: from mail-oa1-f45.google.com ([209.85.160.45])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1wDuQU-0005DU-HO for openipmi-developer@lists.sourceforge.net;
 Sat, 18 Apr 2026 01:24:50 +0000
Received: by mail-oa1-f45.google.com with SMTP id
 586e51a60fabf-40ef10ec84cso1154227fac.2
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 17 Apr 2026 18:24:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard.net; s=google; t=1776475480; x=1777080280; darn=lists.sourceforge.net;
 h=content-disposition:mime-version:reply-to:message-id:subject:cc:to
 :from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=DsGwzmdt1ycST269r6z5E0FMNwLPVPbvB6QizOUsfSQ=;
 b=GL8Rzo0Mc/TZoqFAAh+58QUtFDq47PJKbF0rwYwZW/H1H4K6GqHvMzJXIwWgVFxRB2
 nRX6pBhZmZcznqKJ7/jl6Y2SPSkPGfy+E/qCKNNzrErG3PvU6mbDftePYTTN0fqNQkFU
 u7UXdHCnB+C6hpUDwn5yilxTIOdHwakrDT7MY1tIKPO0x8xFMLiJnTl9GL9/9BHdkB1U
 APqv0DTO4FSEWwbx3l6nBNdnWw3Dw9eMPKRGmQNp/rQHvYrIlwLua81chw3INJaWbVrp
 3SPQtH7VeGfWIxI1OBjZRqjqHJ8bhjnQQPdqL5kg+J2RZW1E3wiAvsjMNZSkzUBX67e0
 xeHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1776475480; x=1777080280;
 h=content-disposition:mime-version:reply-to:message-id:subject:cc:to
 :from:date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=DsGwzmdt1ycST269r6z5E0FMNwLPVPbvB6QizOUsfSQ=;
 b=MZEGw1yczFtUYlmU3vAO8F9O7MQbxnLEw49daqoP84hHeMA0MMODEK4ngYEPqsFpqw
 zK41Xuvxqy0V6s2+CF9GYPSu36Mzl8q7Vk0oaNbYw9sWx4tkTzpq66sQL2FnENKoWqjH
 JIODPs5mscaMgk33B0IQ6oRwfRc4YQL3k4vC12Nw5DRmRf72eb6TSyd+GH1XyRkb+w2t
 jtyENChCybxyWUJXNZzvuYE2tBILYdcyQXIah7AsI7GaB4RsRdmbdei6rsA5YVuC3a5n
 5n549QyrPFoJliotv+jK3Yq9S9IYamhP9f7TU2cHDVFvfllpMH1zxlQpQqZqcNuxiaqU
 eWwQ==
X-Forwarded-Encrypted: i=1;
 AFNElJ/pDnqXFDI55t8HSuUnWx65X/EwK7j8p0LU6925uhsOt60DuOo5Yzv1Tfyl54zECtZ+9ad/Sc1pVGtqUiEp023A7V0=@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yzc6RTAU8LUJFaJ5BM1f4OzArjZf0OjEAuDk5wHjggonc0LVo0j
 E4hvIST9DPim1qOFCn4XUzrC5lrKgYgmB6GVufZDhvMKGofA4+oh8Xvk0I5avDX7cWU=
X-Gm-Gg: AeBDievwrlnYMflGRyEqctkDjrFbPQwFsi5FJ6EzRJPZsRKSpF4b7Pz66JEZ+lAIjRf
 lSB3eoA1O7b/hB211Pv5n9P+0p1MR2KI3ATJCOmFlsXs48vQYs+CywUZhKLVSX7CWHYbCU9Rq6O
 2XHN3ABBPb3DMR+fUI61M2eMethnT03OxdVGO4uOaXrTDRWf+smhLDS/N4xvm3pe47rTp5Fk24N
 TgJPnK/41pSVMbnEICE/2wEdNQCN2ivN6x3UW40dr0xucGQL5WILJAcfxrZfWzrGxbH+4VAp7qk
 iUTjvoiozvMhxZsVKK/D5pKeiLvnXgKA3tvaY2+DtbK+RDzjfQ9C/l0POPhLHz1j2GxALh9UxEH
 uyaGBH7zVGoq20t0A6utsR0JW6Xs/sS+PdmGGBNZRmn3g01c1SerHz3YfZws1iMjQhpVUwcYmmG
 mj/f1uKx5s8PhR3aUaLH3kA7ICjwMTpANEA+eJ3mjeTMAELVlDR19sm/Sk6zYpPesy0Mz50uZXA
 qfTKrM3hmrGEr5D4sVt4F7+KA==
X-Received: by 2002:a05:6871:4b08:b0:409:bd2b:91a3 with SMTP id
 586e51a60fabf-42adeda9e44mr3256921fac.32.1776475479836; 
 Fri, 17 Apr 2026 18:24:39 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:257b:858d:a51e:d838])
 by smtp.gmail.com with ESMTPSA id
 586e51a60fabf-42b9acc056esm2833818fac.17.2026.04.17.18.24.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Apr 2026 18:24:38 -0700 (PDT)
Date: Fri, 17 Apr 2026 20:24:34 -0500
From: Corey Minyard <corey@minyard.net>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <aeLdUvLoy7LIBubq@mail.minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The following changes since commit
 af4e9ef3d78420feb8fe58cd9a1ab80c501b3c08:
 uaccess: Fix scoped_user_read_access() for 'pointer to const' (2026-03-02
 09:24:32 -0800) are available in the Git repository at: 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.45 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1wDuQU-0005DU-HO
Subject: [Openipmi-developer] [GIT PULL] IPMI bug fixes for 7.1
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
Reply-To: corey@minyard.net
Cc: openipmi-developer@lists.sourceforge.net,
 linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Spamd-Result: default: False [-1.01 / 15.00];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[minyard.net : SPF not aligned (strict), DKIM not aligned (strict),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,minyard.net:s=google];
	DKIM_MIXED(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:torvalds@linux-foundation.org,m:openipmi-developer@lists.sourceforge.net,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	HAS_REPLYTO(0.00)[corey@minyard.net];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[openipmi-developer@lists.sourceforge.net];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,minyard.net:-];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	TAGGED_RCPT(0.00)[openipmi-developer];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:dkim,lists.sourceforge.net:helo,lists.sourceforge.net:rdns,minyard.net:replyto,mail.minyard.net:mid]
X-Rspamd-Queue-Id: 73FC841F995
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The following changes since commit af4e9ef3d78420feb8fe58cd9a1ab80c501b3c08:

  uaccess: Fix scoped_user_read_access() for 'pointer to const' (2026-03-02 09:24:32 -0800)

are available in the Git repository at:

  https://github.com/cminyard/linux-ipmi.git tags/for-linus-7.1-1

for you to fetch changes up to 75c486cb1bcaa1a3ec3a6438498176a3a4998ae4:

  ipmi:ssif: Clean up kthread on errors (2026-04-17 06:47:40 -0500)

----------------------------------------------------------------
ipmi: Small updates and fixes

Mostly fixes to the BMC software.

Fix one issue in the host side driver where a kthread can be left
running on a specific memory allocation failre at probe time.

Replace system_wq with system_percpu_wq so system_wq can eventually go
away.

----------------------------------------------------------------
Corey Minyard (2):
      ipmi:ssif: Remove unnecessary indention
      ipmi:ssif: Clean up kthread on errors

Jian Zhang (6):
      ipmi: ssif_bmc: cancel response timer on remove
      ipmi: ssif_bmc: fix missing check for copy_to_user() partial failure
      ipmi: ssif_bmc: fix message desynchronization after truncated response
      ipmi: ssif_bmc: change log level to dbg in irq callback
      ipmi: ssif_bmc: add unit test for state machine
      ipmi: ssif_bmc: Fix KUnit test link failure when KUNIT=m

Marco Crivellari (1):
      ipmi: Replace use of system_wq with system_percpu_wq

 drivers/char/ipmi/Kconfig           |  10 +
 drivers/char/ipmi/ipmi_msghandler.c |  10 +-
 drivers/char/ipmi/ipmi_ssif.c       |  41 ++--
 drivers/char/ipmi/ssif_bmc.c        | 405 +++++++++++++++++++++++++++++++++++-
 4 files changed, 435 insertions(+), 31 deletions(-)



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

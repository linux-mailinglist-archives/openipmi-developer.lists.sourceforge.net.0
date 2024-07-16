Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 64B08932776
	for <lists+openipmi-developer@lfdr.de>; Tue, 16 Jul 2024 15:28:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1sTiEL-0001jJ-MA;
	Tue, 16 Jul 2024 13:28:33 +0000
Received: from [172.30.29.67] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1sTiEI-0001jD-3P
 for openipmi-developer@lists.sourceforge.net;
 Tue, 16 Jul 2024 13:28:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=M5Y3DFMUkca+3aGGLe2U7TcM6m5w8dx7JTp0lKK2DxI=; b=Fx0XL2vZS+ZXxVlPKjB910v1zr
 6bLzKCKXG5msR+g0RkUVJ3/1lE4AKj4aX6BFpoXlpC0tzYoP4u7MG27bhTVZ5qUitoBEkk8ekqn4P
 M14WuDRoxR8atQUyFSEHaNedDm4VQamf7wfCodpS3qgNDA8cgVgVRiJ4xbTIAGSP3FnU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=M5Y3DFMUkca+3aGGLe2U7TcM6m5w8dx7JTp0lKK2DxI=; b=C
 MvfkYF4bE4dzwPlVi/lO3FgMuqRqc+V772W65glJ6fDd9QbJVuU4z1p0EpOp5kK6F0MZshFdBXGSl
 wOVgbywgtCt1E6D51B11t9z5JuIYrjIer7SbJcxCgl2fNWC05wRvtqqlZNPJj9WfMMly2G2Z8BGS8
 oBA5vzZVSvbpN7fY=;
Received: from mail-oi1-f180.google.com ([209.85.167.180])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1sTiEI-0001rp-0r for openipmi-developer@lists.sourceforge.net;
 Tue, 16 Jul 2024 13:28:30 +0000
Received: by mail-oi1-f180.google.com with SMTP id
 5614622812f47-3d96365dc34so4403879b6e.2
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 16 Jul 2024 06:28:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1721136503; x=1721741303;
 darn=lists.sourceforge.net; 
 h=content-transfer-encoding:content-disposition:mime-version:reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=M5Y3DFMUkca+3aGGLe2U7TcM6m5w8dx7JTp0lKK2DxI=;
 b=1SR0WOpUveodnU1z+gllKpMtcckutPkSag4VNmkeLP3QSrw5CViLDLqpGpYOD4BA2E
 4jdDO9bjjh5KU9wdNtKz7n+ImapRs0oqPG7Dxvt8YfNQJbq9vyz+zScZEodD4mk3aJ4W
 602A7ZAX6FKUBWn/K7LlOQxkb5pwOPeOmYg5+lkP34BHTm6AxXDh8ztceAhtNKSS/41k
 K6gV83M2abhjzS82bWs1NwpuWn7LpXYJYdZx19BUCgTIfIzcNiJ3Q34OcTDAKCC0Njvo
 32U8D01zcbds8GZanbmdIaNIXQcGZq5yCmEByGcismHKHok+q0fhhCbRhjSnMQRZZvgt
 +79Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1721136503; x=1721741303;
 h=content-transfer-encoding:content-disposition:mime-version:reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=M5Y3DFMUkca+3aGGLe2U7TcM6m5w8dx7JTp0lKK2DxI=;
 b=j8K4F9CIEiURpYG/TQ+pRROJYTgFpmDMSQQGz3ZNdC8VqavqabLP8MAPxY70m1JpTb
 GNinkNRiz8CtcBQIdWbhtIAc6VtnAYnB736CMo6HQMLgXCo4m/3g+A/USGHEqeINAyIG
 9phrrscuoigtw/vHMuqTrchPn4UkUUmzGiUx8MbZP0tAZv1L4KehvJWofeltWxTqK05f
 +2x9+/UzB7HBIgfxzk/5hbdiRNijS+J3vhOK4xn/f2GsRX8BCct7b06Y2Ht+UzPkMNhH
 dqvICa5oT5Khlhoqpe/yVyobV2e3CLAT0hXM0cpGI016du6sXVpCiCHgWdoFO8wy3K2S
 iVjw==
X-Forwarded-Encrypted: i=1;
 AJvYcCV404IybIRbIabJBmRNNPpYcoFB0uRLjAgpCm5uUQ6nXG884u6XZlztq4dJgYKqwHvU4US4BRZoe69IellTsdg9mvenVJvvBuy4MmdWAqH9zcPJsHQL3iC5
X-Gm-Message-State: AOJu0Yx3q4upi27LpIGnbz0acELcHWFSIn2zBdSrTE0+EydUsCeJdDng
 28JG9A7kyREHGDHKz79ALYUH/tZfoo7AsFYXPfSq9YIWSjbO5qP6MQFWsHpf5h1Jfrk4AbostXM
 V
X-Google-Smtp-Source: AGHT+IE4nb+3a/pjodL0fJ7V33V1h/9FHB9Msgn1dowW0UJWXLG6hD1+mnuaIoyFvSnmLQTFPWn+uQ==
X-Received: by 2002:a05:6808:3a12:b0:3d9:2626:c64a with SMTP id
 5614622812f47-3dac7b8c175mr3372280b6e.18.1721136503518; 
 Tue, 16 Jul 2024 06:28:23 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:8570:9c29:577f:abfb])
 by smtp.gmail.com with ESMTPSA id
 5614622812f47-3dabc056869sm802192b6e.4.2024.07.16.06.28.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jul 2024 06:28:23 -0700 (PDT)
Date: Tue, 16 Jul 2024 08:28:21 -0500
From: Corey Minyard <corey@minyard.net>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <ZpZ1dVeLWUbAd89V@mail.minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The following changes since commit
 0cac73eb3875f6ecb6105e533218dba1868d04c9:
 Merge tag 'pm-6.10-rc4' of
 git://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm
 (2024-06-14 09:52:51 -0700) are available in the Git repository at: 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.180 listed in wl.mailspike.net]
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [209.85.167.180 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.167.180 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.167.180 listed in sa-trusted.bondedsender.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1sTiEI-0001rp-0r
Subject: [Openipmi-developer] [GIT PULL] IPMI bug fixes for 6.11
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

VGhlIGZvbGxvd2luZyBjaGFuZ2VzIHNpbmNlIGNvbW1pdCAwY2FjNzNlYjM4NzVmNmVjYjYxMDVl
NTMzMjE4ZGJhMTg2OGQwNGM5OgoKICBNZXJnZSB0YWcgJ3BtLTYuMTAtcmM0JyBvZiBnaXQ6Ly9n
aXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvcmFmYWVsL2xpbnV4LXBtICgy
MDI0LTA2LTE0IDA5OjUyOjUxIC0wNzAwKQoKYXJlIGF2YWlsYWJsZSBpbiB0aGUgR2l0IHJlcG9z
aXRvcnkgYXQ6CgogIGh0dHBzOi8vZ2l0aHViLmNvbS9jbWlueWFyZC9saW51eC1pcG1pLmdpdCB0
YWdzL2Zvci1saW51cy02LjExLTEKCmZvciB5b3UgdG8gZmV0Y2ggY2hhbmdlcyB1cCB0byAxOWEw
MTE1NWRkZmU1MjVlM2E0ZTdjZWY3MzRmMThjY2U2NDBiMWVmOgoKICBpcG1pOiBEcm9wIGV4cGxp
Y2l0IGluaXRpYWxpemF0aW9uIG9mIHN0cnVjdCBpMmNfZGV2aWNlX2lkOjpkcml2ZXJfZGF0YSB0
byAwICgyMDI0LTA3LTA4IDE1OjA1OjE4IC0wNTAwKQoKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpJUE1JOiBTbWFsbCB1cGRh
dGVzIGFuZCBmaXhlcwoKU29tZSBjbGVhbnVwcyBmb3IgZGV2aWNlIGNoYW5nZXMgY29taW5nLCBh
bmQgc29tZSByYW5nZSBjaGVja3Mgb24gZGF0YQpjb21pbmcgZnJvbSBhIGhvc3QgdG8gYSBCTUMu
CgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tCkRhbiBDYXJwZW50ZXIgKDEpOgogICAgICBpcG1pOiBzc2lmX2JtYzogcHJldmVu
dCBpbnRlZ2VyIG92ZXJmbG93IG9uIDMyYml0IHN5c3RlbXMKClV3ZSBLbGVpbmUtS8O2bmlnICgx
KToKICAgICAgaXBtaTogRHJvcCBleHBsaWNpdCBpbml0aWFsaXphdGlvbiBvZiBzdHJ1Y3QgaTJj
X2RldmljZV9pZDo6ZHJpdmVyX2RhdGEgdG8gMAoKIGRyaXZlcnMvY2hhci9pcG1pL2lwbWJfZGV2
X2ludC5jIHwgIDQgKystLQogZHJpdmVycy9jaGFyL2lwbWkvaXBtaV9pcG1iLmMgICAgfCAgNCAr
Ky0tCiBkcml2ZXJzL2NoYXIvaXBtaS9pcG1pX3NzaWYuYyAgICB8ICAyICstCiBkcml2ZXJzL2No
YXIvaXBtaS9zc2lmX2JtYy5jICAgICB8IDEwICsrKysrKy0tLS0KIDQgZmlsZXMgY2hhbmdlZCwg
MTEgaW5zZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMoLSkKCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KT3BlbmlwbWktZGV2ZWxvcGVyIG1haWxpbmcgbGlz
dApPcGVuaXBtaS1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMu
c291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL29wZW5pcG1pLWRldmVsb3Blcgo=

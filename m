Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id fYn8MGAUS2q/LgEAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Mon, 06 Jul 2026 04:35:12 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DEA670C236
	for <lists+openipmi-developer@lfdr.de>; Mon, 06 Jul 2026 04:35:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lists.sourceforge.net header.s=beta header.b=OwmlO5lF;
	dkim=fail ("body hash did not verify") header.d=sourceforge.net header.s=x header.b=OLw+2wra;
	dkim=fail ("body hash did not verify") header.d=sf.net header.s=x header.b=RQgdbYjI;
	dkim=fail ("body hash did not verify") header.d=kernel.org header.s=k20260515 header.b=gDil9Iro;
	dmarc=pass (policy=none) header.from=lists.sourceforge.net;
	spf=pass (mail.lfdr.de: domain of openipmi-developer-bounces@lists.sourceforge.net designates 216.105.38.7 as permitted sender) smtp.mailfrom=openipmi-developer-bounces@lists.sourceforge.net
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:In-Reply-To:References:
	MIME-Version:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=l6abldR8ymniX0ndkaruvQ9eKJWEdMRtBnXAiN0D0+I=; b=OwmlO5lFRsVHsxFlrewzx93YhS
	A8Tqn/FAvyQM8l5nJL6oUbxOUo1wG6JcCpX7AGC+m/LwnqwaIUTgf4lXztb45C787PN6RdcvTHLQx
	NVS24+68TUeSrpwz1lKdr0ZQxj6LwIHC/74tBs2yuC6661hM0OIlZmHSFWooiFMEm0mU=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wgZAm-0000mX-SX;
	Mon, 06 Jul 2026 02:35:05 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <chenhuacai@kernel.org>) id 1wgZAl-0000mK-D1
 for openipmi-developer@lists.sourceforge.net;
 Mon, 06 Jul 2026 02:35:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=22CkwgfrVerzyYBreK9SVLhFVeqTRhuZq9yxw53V0Wo=; b=OLw+2wra3dz3Np/6MJ5VdWg2sq
 PgdhyAcDGjAeRA/XrO5lUPAbGxWvfpyCD+RKqw32N4acbN6SVjcLRZpwSS2hnMAx2RREJ3oo+tqiq
 ewavtc0P87ADF+l1Dhrrezpr7CUi16/aHHjVYy4zMxDzDXCQBZ5lIYcIHD8YTXWxBits=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=22CkwgfrVerzyYBreK9SVLhFVeqTRhuZq9yxw53V0Wo=; b=RQgdbYjIvc6kQFW3TfRX8OtevS
 HsAkhoYkVltXrthDJw5H9VNs4DE5v0Vd+aBgwU3cOAr15XHalkIMK26bpadQsWoeHjnzRoWk34cz5
 uBc4xxEFHb8gUVUSH/A/LDqrUTZnTV3g5JxNUKz4Z0v0i6rm8ppYYiuLnsJ996/N6DP8=;
Received: from sea.source.kernel.org ([172.234.252.31])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1wgZAj-0002Gy-Ss for openipmi-developer@lists.sourceforge.net;
 Mon, 06 Jul 2026 02:35:04 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by sea.source.kernel.org (Postfix) with ESMTP id 0140843E34
 for <openipmi-developer@lists.sourceforge.net>;
 Mon,  6 Jul 2026 02:34:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DD61B1F00AC4
 for <openipmi-developer@lists.sourceforge.net>;
 Mon,  6 Jul 2026 02:34:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
 s=k20260515; t=1783305296;
 bh=22CkwgfrVerzyYBreK9SVLhFVeqTRhuZq9yxw53V0Wo=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc;
 b=gDil9IroSj8nU9nEJdL3sIKnUMJkBx5d9rQgu7Pa9CCnHGxcGm8JWWW5vg9MCe08j
 +0h1yWYaMfu4a5FQE/++J1Y3LbKkq97WoWzud2WWEKGUiBU5htsFMyagWfhPyevRyp
 GeSFMo2m5tjB6ikn9CnZJarHK+xDYjdIhaZFDXAs9qqQ1y6/zaQnot3v+CvG8aRvM4
 wv7TGGFK2yaU1nZK3dwfT05nkMdljdYM/21cxfpJLqVEAQs/Cuz2ige9uEq834hQiQ
 7+T+MDM/+MjqN148Arzlcr59tux43QEPAZ7Xv6A+W7aA6mPYVyBF0A71Sek9KGFnod
 l6cZb4qZ/0Ozw==
Received: by mail-ua1-f46.google.com with SMTP id
 a1e0cc1a2514c-9691ba8bc8aso1368595241.1
 for <openipmi-developer@lists.sourceforge.net>;
 Sun, 05 Jul 2026 19:34:56 -0700 (PDT)
X-Forwarded-Encrypted: i=1;
 AHgh+RqlvC9EJX3Fb46lozLJfaDfebGjEYoUjV8IX02f/6TR8kYwlEH0YrR8eFGZg6aRCr51Wx2VxV+wTH0gw4ZOlFffvFU=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YyXh6uSenrE5HdrKrle6jkGJhKIsIe8tAKVbCE1cT/zhicTKY/f
 DvQHPymTZY9zqSTmHJ9smG1Z5dxmDqm4xpHTjzLBZw7YpQcglLVXoOUVFpH39G+tEDA1k6yg06T
 EyqIdI/LCfmjlYOZAfwHUPUgDZB87Ra0=
X-Received: by 2002:a05:6102:1483:b0:631:4cda:3ebb with SMTP id
 ada2fe7eead31-7427e5f8144mr3352981137.24.1783305295988; Sun, 05 Jul 2026
 19:34:55 -0700 (PDT)
MIME-Version: 1.0
References: <20260706021909.2346535-1-zhoubinbin@loongson.cn>
In-Reply-To: <20260706021909.2346535-1-zhoubinbin@loongson.cn>
Date: Mon, 6 Jul 2026 10:35:19 +0800
X-Gmail-Original-Message-ID: <CAAhV-H5VUDCKAGKDFRNySzJYX9ok5j_VAmV_tBFkqBmfTQ_O8g@mail.gmail.com>
X-Gm-Features: AVVi8CeDWjQjxOKXJ_wTEeFwyOh_W_uaEHj9oKvjoc1VBbySFBXklB3GDeKd3-I
Message-ID: <CAAhV-H5VUDCKAGKDFRNySzJYX9ok5j_VAmV_tBFkqBmfTQ_O8g@mail.gmail.com>
To: Binbin Zhou <zhoubinbin@loongson.cn>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, Binbin, On Mon, Jul 6,
 2026 at 10:19 AM Binbin Zhou <zhoubinbin@loongson.cn>
 wrote: > > Use pointers annotated with the __iomem marker for all iomem map
 calls, > and creates a local copy of the mapped IO memo [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
X-Headers-End: 1wgZAj-0002Gy-Ss
Subject: Re: [Openipmi-developer] [PATCH v3] mfd: ls2kbmc: mfd: ls2kbmc: Fix
 iomem pointer handling in video mode parsing
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
From: Huacai Chen via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Huacai Chen <chenhuacai@kernel.org>
Cc: Chong Qiao <qiaochong@loongson.cn>, jeffbai@aosc.io, zhuyunfei@loongson.cn,
 kernel test robot <lkp@intel.com>, Corey Minyard <minyard@acm.org>,
 Binbin Zhou <zhoubb.aaron@gmail.com>, Lee Jones <lee@kernel.org>,
 mfd@lists.linux.dev, linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 loongarch@lists.linux.dev, Xuerui Wang <kernel@xen0n.name>,
 openipmi-developer@lists.sourceforge.net, Huacai Chen <chenhuacai@loongson.cn>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-7.01 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_MIXED(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:zhoubinbin@loongson.cn,m:qiaochong@loongson.cn,m:jeffbai@aosc.io,m:zhuyunfei@loongson.cn,m:lkp@intel.com,m:minyard@acm.org,m:zhoubb.aaron@gmail.com,m:lee@kernel.org,m:mfd@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:stable@vger.kernel.org,m:loongarch@lists.linux.dev,m:kernel@xen0n.name,m:openipmi-developer@lists.sourceforge.net,m:chenhuacai@loongson.cn,m:zhoubbaaron@gmail.com,s:lists@lfdr.de];
	FREEMAIL_CC(0.00)[loongson.cn,aosc.io,intel.com,acm.org,gmail.com,kernel.org,lists.linux.dev,vger.kernel.org,xen0n.name,lists.sourceforge.net];
	RCPT_COUNT_TWELVE(0.00)[15];
	TO_DN_SOME(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	ARC_NA(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,kernel.org:s=k20260515];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,kernel.org:-];
	RCVD_COUNT_FIVE(0.00)[6];
	PREVIOUSLY_DELIVERED(0.00)[openipmi-developer@lists.sourceforge.net];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_REPLYTO(0.00)[chenhuacai@kernel.org];
	TAGGED_RCPT(0.00)[openipmi-developer];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,loongson.cn:email,mail.gmail.com:mid,lists.sourceforge.net:from_smtp,lists.sourceforge.net:dkim,lists.sourceforge.net:helo,lists.sourceforge.net:rdns,lists.sourceforge.net:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0DEA670C236

SGksIEJpbmJpbiwKCk9uIE1vbiwgSnVsIDYsIDIwMjYgYXQgMTA6MTnigK9BTSBCaW5iaW4gWmhv
dSA8emhvdWJpbmJpbkBsb29uZ3Nvbi5jbj4gd3JvdGU6Cj4KPiBVc2UgcG9pbnRlcnMgYW5ub3Rh
dGVkIHdpdGggdGhlIF9faW9tZW0gbWFya2VyIGZvciBhbGwgaW9tZW0gbWFwIGNhbGxzLAo+IGFu
ZCBjcmVhdGVzIGEgbG9jYWwgY29weSBvZiB0aGUgbWFwcGVkIElPIG1lbW9yeSBmb3IgZnV0dXJl
IGFjY2VzcyBpbgo+IHRoZSBjb2RlLiBtZW1jcHlfZnJvbWlvKCkgYW5kIG1lbWNweV90b2lvKCkg
YXJlIHVzZWQgdG8gcmVhZC93cml0ZSBkYXRhCj4gZnJvbS90byBtYXBwZWQgSU8gbWVtb3J5Cj4K
PiBDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZyAjIHY2LjE4Kwo+IEZpeGVzOiAwZDY0ZjZkMWZm
ZTkgKCJtZmQ6IGxzMmtibWM6IEludHJvZHVjZSBMb29uZ3Nvbi0ySyBCTUMgY29yZSBkcml2ZXIi
KQo+IFJlcG9ydGVkLWJ5OiBrZXJuZWwgdGVzdCByb2JvdCA8bGtwQGludGVsLmNvbT4KPiBDbG9z
ZXM6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL29lLWtidWlsZC1hbGwvMjAyNjAzMDIxNzMwLll5
M1FYWVR3LWxrcEBpbnRlbC5jb20vCj4gQ2xvc2VzOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9v
ZS1rYnVpbGQtYWxsLzIwMjYwNjEyMDYzOS5XRzZlYjhWVS1sa3BAaW50ZWwuY29tLwo+IFJldmll
d2VkLWJ5OiBIdWFjYWkgQ2hlbiA8Y2hlbmh1YWNhaUBsb29uZ3Nvbi5jbj4KPiBTaWduZWQtb2Zm
LWJ5OiBCaW5iaW4gWmhvdSA8emhvdWJpbmJpbkBsb29uZ3Nvbi5jbj4KPiAtLS0KPiBWMzoKPiAg
LSBSZWR1Y2UgdGhlIHJhbmdlIG9mIGBpb3JlbWFwYCBmcm9tIGBTWl8xNk1gIHRvIGBTWl82NGA7
Cj4gIC0gRGVmaW5lIGEgbmV3IHZhcmlhYmxlIGBwb3NgIHRvIGl0ZXJhdGUgdGhyb3VnaCB0aGUg
c3RyaW5nOwo+ICAtIEFkZCBmYWlsdXJlIGhhbmRsaW5nIGZvciBgc3RybmNtcCgpYC4KPgo+IExp
bmsgdG8gVjI6Cj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjYwNjI0MDg1NTUwLjE1
MDg3NzEtMS16aG91YmluYmluQGxvb25nc29uLmNuLwo+Cj4gVjI6Cj4gIC0gQWRkIHRoZSBtaXNz
aW5nIG1lbWNweV9mcm9taW8oKTsKPiAgLSBEcm9wIHRoZSB1bm5lY2Vzc2FyeSBgYnVmYCB2YXJp
YWJsZS4KPgo+IExpbmsgdG8gVjE6Cj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjYw
NjE2MTE1NTMwLjQwMTI2NzUtMS16aG91YmluYmluQGxvb25nc29uLmNuLwo+Cj4gIGRyaXZlcnMv
bWZkL2xzMmstYm1jLWNvcmUuYyB8IDI5ICsrKysrKysrKysrKysrKysrKysrKystLS0tLS0tCj4g
IDEgZmlsZSBjaGFuZ2VkLCAyMiBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQo+Cj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvbWZkL2xzMmstYm1jLWNvcmUuYyBiL2RyaXZlcnMvbWZkL2xzMmst
Ym1jLWNvcmUuYwo+IGluZGV4IDQwODA1NmJmYjJmZS4uYTJhZWUyMTMxNTI5IDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvbWZkL2xzMmstYm1jLWNvcmUuYwo+ICsrKyBiL2RyaXZlcnMvbWZkL2xzMmst
Ym1jLWNvcmUuYwo+IEBAIC02Niw2ICs2Niw5IEBACj4gIC8qIE1heGltdW0gdGltZSB0byB3YWl0
IGZvciBVLUJvb3QgYW5kIEREUiB0byBiZSByZWFkeSB3aXRoIG1zLiAqLwo+ICAjZGVmaW5lIExT
MktfQk1DX1JFU0VUX1dBSVRfVElNRSAgICAgICAxMDAwMAo+Cj4gKy8qIFRoZSBsZW5ndGggb2Yg
dGhlIExTMksgQk1DIGRpc3BsYXkgcmVzb2x1dGlvbiBzdHJpbmcgc3RvcmVkIGluIFBDSSBCQVIw
ICovCj4gKyNkZWZpbmUgTFMyS19SRVNPTFVUSU9OX1NUUl9MRU4gICAgICAgICAgICAgICAgU1pf
NjQKPiArCj4gIC8qIEl0J3MgYW4gZXhwZXJpZW5jZSB2YWx1ZSAqLwo+ICAjZGVmaW5lIExTN0Ff
QkFSMF9DSEVDS19NQVhfVElNRVMgICAgICAyMDAwCj4KPiBAQCAtNDI3LDI3ICs0MzAsMzkgQEAg
c3RhdGljIGludCBsczJrX2JtY19pbml0KHN0cnVjdCBsczJrX2JtY19kZGF0YSAqZGRhdGEpCj4g
ICAqLwo+ICBzdGF0aWMgaW50IGxzMmtfYm1jX3BhcnNlX21vZGUoc3RydWN0IHBjaV9kZXYgKnBk
ZXYsIHN0cnVjdCBzaW1wbGVmYl9wbGF0Zm9ybV9kYXRhICpwZCkKPiAgewo+IC0gICAgICAgY2hh
ciAqbW9kZTsKPiArICAgICAgIGNoYXIgKm1vZGUgX19mcmVlKGtmcmVlKSA9IE5VTEw7Cj4gKyAg
ICAgICB2b2lkIF9faW9tZW0gKmJhc2U7Cj4gKyAgICAgICBjaGFyICpwb3MgPSBOVUxMOwpEb24n
dCBuZWVkIHRvIGluaXRpYWxpemUsIGFuZCB5b3UgY2FuIGRlZmluZSBpdCBpbiB0aGUgc2FtZSBs
aW5lIGFzIG1vZGUuCgo+ICAgICAgICAgaW50IGRlcHRoLCByZXQ7Cj4KPiAgICAgICAgIC8qIFRo
ZSBsYXN0IDE2TSBvZiBQQ0kgQkFSMCBpcyB1c2VkIHRvIHN0b3JlIHRoZSByZXNvbHV0aW9uIHN0
cmluZy4gKi8KPiAtICAgICAgIG1vZGUgPSBkZXZtX2lvcmVtYXAoJnBkZXYtPmRldiwgcGNpX3Jl
c291cmNlX3N0YXJ0KHBkZXYsIDApICsgU1pfMTZNLCBTWl8xNk0pOwo+ICsgICAgICAgYmFzZSA9
IGRldm1faW9yZW1hcCgmcGRldi0+ZGV2LCBwY2lfcmVzb3VyY2Vfc3RhcnQocGRldiwgMCkgKyBT
Wl8xNk0sCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgIExTMktfUkVTT0xVVElPTl9TVFJf
TEVOKTsKSU9SRU1BUCBpcyBwYWdlIGJhc2VkLCBzbyBqdXN0IHVzZSBQQUdFX1NJWkUgcmF0aGVy
IHRoYW4KTFMyS19SRVNPTFVUSU9OX1NUUl9MRU4uCgpIdWFjYWkKCj4gKyAgICAgICBpZiAoIWJh
c2UpCj4gKyAgICAgICAgICAgICAgIHJldHVybiAtRU5PTUVNOwo+ICsKPiArICAgICAgIG1vZGUg
PSBrbWFsbG9jKExTMktfUkVTT0xVVElPTl9TVFJfTEVOLCBHRlBfS0VSTkVMKTsKPiAgICAgICAg
IGlmICghbW9kZSkKPiAgICAgICAgICAgICAgICAgcmV0dXJuIC1FTk9NRU07Cj4KPiArICAgICAg
IG1lbWNweV9mcm9taW8obW9kZSwgYmFzZSwgTFMyS19SRVNPTFVUSU9OX1NUUl9MRU4pOwo+ICsK
PiAgICAgICAgIC8qIFRoZSByZXNvbHV0aW9uIGZpZWxkIHN0YXJ0cyB3aXRoIHRoZSBmbGFnICJ2
aWRlbz0iLiAqLwo+IC0gICAgICAgaWYgKCFzdHJuY21wKG1vZGUsICJ2aWRlbz0iLCA2KSkKPiAt
ICAgICAgICAgICAgICAgbW9kZSA9IG1vZGUgKyA2Owo+ICsgICAgICAgaWYgKHN0cm5jbXAobW9k
ZSwgInZpZGVvPSIsIDYpKSB7Cj4gKyAgICAgICAgICAgICAgIGRldl9lcnIoJnBkZXYtPmRldiwg
IlNpbXBsZWRybSByZXNvbHV0aW9uIG1pc3Npbmcgb3IgY29ycnVwdCFcbiIpOwo+ICsgICAgICAg
ICAgICAgICByZXR1cm4gLUVJTlZBTDsKPiArICAgICAgIH0KPgo+IC0gICAgICAgcmV0ID0ga3N0
cnRvaW50KHN0cnNlcCgmbW9kZSwgIngiKSwgMTAsICZwZC0+d2lkdGgpOwo+ICsgICAgICAgcG9z
ID0gbW9kZSArIDY7Cj4gKyAgICAgICByZXQgPSBrc3RydG9pbnQoc3Ryc2VwKCZwb3MsICJ4Iiks
IDEwLCAmcGQtPndpZHRoKTsKPiAgICAgICAgIGlmIChyZXQpCj4gICAgICAgICAgICAgICAgIHJl
dHVybiByZXQ7Cj4KPiAtICAgICAgIHJldCA9IGtzdHJ0b2ludChzdHJzZXAoJm1vZGUsICItIiks
IDEwLCAmcGQtPmhlaWdodCk7Cj4gKyAgICAgICByZXQgPSBrc3RydG9pbnQoc3Ryc2VwKCZwb3Ms
ICItIiksIDEwLCAmcGQtPmhlaWdodCk7Cj4gICAgICAgICBpZiAocmV0KQo+ICAgICAgICAgICAg
ICAgICByZXR1cm4gcmV0Owo+Cj4gLSAgICAgICByZXQgPSBrc3RydG9pbnQoc3Ryc2VwKCZtb2Rl
LCAiQCIpLCAxMCwgJmRlcHRoKTsKPiArICAgICAgIHJldCA9IGtzdHJ0b2ludChzdHJzZXAoJnBv
cywgIkAiKSwgMTAsICZkZXB0aCk7Cj4gICAgICAgICBpZiAocmV0KQo+ICAgICAgICAgICAgICAg
ICByZXR1cm4gcmV0Owo+Cj4KPiBiYXNlLWNvbW1pdDogZDVkMmQ3YThkOGJlMTg2ODFhMDg2NGY1
OGUzODc1ZjFjNjM5ZTExYwo+IC0tCj4gMi41Mi4wCj4KCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpPcGVuaXBtaS1kZXZlbG9wZXIgbWFpbGluZyBsaXN0
Ck9wZW5pcG1pLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5z
b3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vb3BlbmlwbWktZGV2ZWxvcGVyCg==

Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C7E62447E17
	for <lists+openipmi-developer@lfdr.de>; Mon,  8 Nov 2021 11:37:23 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mk21f-0001ad-NP; Mon, 08 Nov 2021 10:37:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <bp@alien8.de>) id 1mk21e-0001aX-F4
 for openipmi-developer@lists.sourceforge.net; Mon, 08 Nov 2021 10:37:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZSl40zXDlt+0/rSkoDA+/axSBICuEw4xrW9t+JeAzRg=; b=ZAlYKCgAui3YdNqB8WQXwoh0/V
 BoCd3b3Oap6Yw2QJ8UIN+JZxlb+AvH0JtTvR9IwPgdD1nR1JL+XWj4RxGURYVY17VO/Z4H0zY58Kb
 2YuJeWvOp+/pSIYI29YOMSpWuDTmiVn5euN7KcZhl1WMyrMUQL2zJ3V/Wwe7qmp9s9Cs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ZSl40zXDlt+0/rSkoDA+/axSBICuEw4xrW9t+JeAzRg=; b=mYyMnwa1qjZHgUX1foKibQf452
 2ycjOZURqvvETWbesS0KyrZLlbCLfB1INQLee5F/KC5JngHyvHepHOqYzbEWaEZp7esFzHR6T61Lx
 opiEZex2i01kNwpZO9N3JNrlRman99sXX67C6s+6JU/cVeKZIzTPVtvT4BmJeoyn+tPE=;
Received: from mail.skyhub.de ([5.9.137.197])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mk21a-005y6P-By
 for openipmi-developer@lists.sourceforge.net; Mon, 08 Nov 2021 10:37:18 +0000
Received: from zn.tnic (p200300ec2f33110088892b77bd117736.dip0.t-ipconnect.de
 [IPv6:2003:ec:2f33:1100:8889:2b77:bd11:7736])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 97BC51EC0535;
 Mon,  8 Nov 2021 11:12:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alien8.de; s=dkim;
 t=1636366361;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ZSl40zXDlt+0/rSkoDA+/axSBICuEw4xrW9t+JeAzRg=;
 b=O9utTH7kzvF0ogbSAjrVux8Q2NyGvuXt2DXX+lXMfGwQDD5NsnAlA7vS1HO+tdNI+F2ntn
 CZwfQStJuxv3i5Q66Ie7iUHTOBEhoA6pq6felnVAUxHBDq6LlMPMTRyA2hQo7p+FfRiqlX
 omkNlvF2ej63UhZNrO1CmPB0HckLABU=
From: Borislav Petkov <bp@alien8.de>
To: LKML <linux-kernel@vger.kernel.org>
Date: Mon,  8 Nov 2021 11:11:57 +0100
Message-Id: <20211108101157.15189-43-bp@alien8.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20211108101157.15189-1-bp@alien8.de>
References: <20211108101157.15189-1-bp@alien8.de>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Borislav Petkov <bp@suse.de> The notifier registration
 routine doesn't return a proper error value when a callback has already been
 registered, leading people to track whether that registration has happened
 at the call site: 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1mk21a-005y6P-By
Subject: [Openipmi-developer] [PATCH v0 42/42] notifier: Return an error
 when callback is already registered
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
Cc: alsa-devel@alsa-project.org, x86@kernel.org, linux-sh@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-remoteproc@vger.kernel.org,
 linux-fbdev@vger.kernel.org, netdev@vger.kernel.org,
 Ayush Sawal <ayush.sawal@chelsio.com>, sparclinux@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-leds@vger.kernel.org,
 linux-s390@vger.kernel.org, linux-scsi@vger.kernel.org,
 Rohit Maheshwari <rohitm@chelsio.com>, linux-staging@lists.linux.dev,
 bcm-kernel-feedback-list@broadcom.com,
 openipmi-developer@lists.sourceforge.net, xen-devel@lists.xenproject.org,
 linux-xtensa@linux-xtensa.org, Arnd Bergmann <arnd@arndb.de>,
 linux-pm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 Vinay Kumar Yadav <vinay.yadav@chelsio.com>, linux-um@lists.infradead.org,
 Steven Rostedt <rostedt@goodmis.org>, rcu@vger.kernel.org,
 linux-tegra@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 intel-gvt-dev@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-edac@vger.kernel.org, linux-parisc@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-mips@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 linux-hyperv@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-alpha@vger.kernel.org, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

RnJvbTogQm9yaXNsYXYgUGV0a292IDxicEBzdXNlLmRlPgoKVGhlIG5vdGlmaWVyIHJlZ2lzdHJh
dGlvbiByb3V0aW5lIGRvZXNuJ3QgcmV0dXJuIGEgcHJvcGVyIGVycm9yIHZhbHVlCndoZW4gYSBj
YWxsYmFjayBoYXMgYWxyZWFkeSBiZWVuIHJlZ2lzdGVyZWQsIGxlYWRpbmcgcGVvcGxlIHRvIHRy
YWNrCndoZXRoZXIgdGhhdCByZWdpc3RyYXRpb24gaGFzIGhhcHBlbmVkIGF0IHRoZSBjYWxsIHNp
dGU6CgogIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FtZC1nZngvMjAyMTA1MTIwMTMwNTguNjgy
Ny0xLW11a3VsLmpvc2hpQGFtZC5jb20vCgpXaGljaCBpcyB1bm5lY2Vzc2FyeS4KClJldHVybiAt
RUVYSVNUIHRvIHNpZ25hbCB0aGF0IGNhc2Ugc28gdGhhdCBjYWxsZXJzIGNhbiBhY3QgYWNjb3Jk
aW5nbHkuCkVuZm9yY2UgY2FsbGVycyB0byBjaGVjayB0aGUgcmV0dXJuIHZhbHVlLCBsZWFkaW5n
IHRvIGxvdWQgc2NyZWFtaW5nCmR1cmluZyBidWlsZDoKCiAgYXJjaC94ODYva2VybmVsL2NwdS9t
Y2UvY29yZS5jOiBJbiBmdW5jdGlvbiDigJhtY2VfcmVnaXN0ZXJfZGVjb2RlX2NoYWlu4oCZOgog
IGFyY2gveDg2L2tlcm5lbC9jcHUvbWNlL2NvcmUuYzoxNjc6MjogZXJyb3I6IGlnbm9yaW5nIHJl
dHVybiB2YWx1ZSBvZiBcCiAgIOKAmGJsb2NraW5nX25vdGlmaWVyX2NoYWluX3JlZ2lzdGVy4oCZ
LCBkZWNsYXJlZCB3aXRoIGF0dHJpYnV0ZSB3YXJuX3VudXNlZF9yZXN1bHQgWy1XZXJyb3I9dW51
c2VkLXJlc3VsdF0KICAgIGJsb2NraW5nX25vdGlmaWVyX2NoYWluX3JlZ2lzdGVyKCZ4ODZfbWNl
X2RlY29kZXJfY2hhaW4sIG5iKTsKICBefn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+
fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn4KCkRyb3AgdGhlIFdBUk4gdG9vLCB3aGlsZSBhdCBp
dC4KClN1Z2dlc3RlZC1ieTogVGhvbWFzIEdsZWl4bmVyIDx0Z2x4QGxpbnV0cm9uaXguZGU+ClNp
Z25lZC1vZmYtYnk6IEJvcmlzbGF2IFBldGtvdiA8YnBAc3VzZS5kZT4KQ2M6IEFybmQgQmVyZ21h
bm4gPGFybmRAYXJuZGIuZGU+CkNjOiBBeXVzaCBTYXdhbCA8YXl1c2guc2F3YWxAY2hlbHNpby5j
b20+CkNjOiBHcmVnIEtyb2FoLUhhcnRtYW4gPGdyZWdraEBsaW51eGZvdW5kYXRpb24ub3JnPgpD
YzogUm9oaXQgTWFoZXNod2FyaSA8cm9oaXRtQGNoZWxzaW8uY29tPgpDYzogU3RldmVuIFJvc3Rl
ZHQgPHJvc3RlZHRAZ29vZG1pcy5vcmc+CkNjOiBWaW5heSBLdW1hciBZYWRhdiA8dmluYXkueWFk
YXZAY2hlbHNpby5jb20+CkNjOiBhbHNhLWRldmVsQGFsc2EtcHJvamVjdC5vcmcKQ2M6IGJjbS1r
ZXJuZWwtZmVlZGJhY2stbGlzdEBicm9hZGNvbS5jb20KQ2M6IGludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKQ2M6IGludGVsLWd2dC1kZXZAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCkNjOiBs
aW51eC1hbHBoYUB2Z2VyLmtlcm5lbC5vcmcKQ2M6IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpDYzogbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCkNjOiBs
aW51eC1jbGtAdmdlci5rZXJuZWwub3JnCkNjOiBsaW51eC1jcnlwdG9Admdlci5rZXJuZWwub3Jn
CkNjOiBsaW51eC1lZGFjQHZnZXIua2VybmVsLm9yZwpDYzogbGludXgtZmJkZXZAdmdlci5rZXJu
ZWwub3JnCkNjOiBsaW51eC1oeXBlcnZAdmdlci5rZXJuZWwub3JnCkNjOiBsaW51eC1paW9Admdl
ci5rZXJuZWwub3JnCkNjOiBsaW51eC1sZWRzQHZnZXIua2VybmVsLm9yZwpDYzogbGludXgtbWlw
c0B2Z2VyLmtlcm5lbC5vcmcKQ2M6IGxpbnV4LXBhcmlzY0B2Z2VyLmtlcm5lbC5vcmcKQ2M6IGxp
bnV4LXBtQHZnZXIua2VybmVsLm9yZwpDYzogbGludXhwcGMtZGV2QGxpc3RzLm96bGFicy5vcmcK
Q2M6IGxpbnV4LXJlbW90ZXByb2NAdmdlci5rZXJuZWwub3JnCkNjOiBsaW51eC1yZW5lc2FzLXNv
Y0B2Z2VyLmtlcm5lbC5vcmcKQ2M6IGxpbnV4LXMzOTBAdmdlci5rZXJuZWwub3JnCkNjOiBsaW51
eC1zY3NpQHZnZXIua2VybmVsLm9yZwpDYzogbGludXgtc2hAdmdlci5rZXJuZWwub3JnCkNjOiBs
aW51eC1zdGFnaW5nQGxpc3RzLmxpbnV4LmRldgpDYzogbGludXgtdGVncmFAdmdlci5rZXJuZWwu
b3JnCkNjOiBsaW51eC11bUBsaXN0cy5pbmZyYWRlYWQub3JnCkNjOiBsaW51eC11c2JAdmdlci5r
ZXJuZWwub3JnCkNjOiBsaW51eC14dGVuc2FAbGludXgteHRlbnNhLm9yZwpDYzogbmV0ZGV2QHZn
ZXIua2VybmVsLm9yZwpDYzogb3BlbmlwbWktZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5l
dApDYzogcmN1QHZnZXIua2VybmVsLm9yZwpDYzogc3BhcmNsaW51eEB2Z2VyLmtlcm5lbC5vcmcK
Q2M6IHg4NkBrZXJuZWwub3JnCkNjOiB4ZW4tZGV2ZWxAbGlzdHMueGVucHJvamVjdC5vcmcKLS0t
CiBpbmNsdWRlL2xpbnV4L25vdGlmaWVyLmggfCAgOCArKysrLS0tLQoga2VybmVsL25vdGlmaWVy
LmMgICAgICAgIHwgMzYgKysrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tCiAyIGZp
bGVzIGNoYW5nZWQsIDIzIGluc2VydGlvbnMoKyksIDIxIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL2luY2x1ZGUvbGludXgvbm90aWZpZXIuaCBiL2luY2x1ZGUvbGludXgvbm90aWZpZXIuaApp
bmRleCA4NzA2OWI4NDU5YWYuLjQ1Y2M1YThkMGZkOCAxMDA2NDQKLS0tIGEvaW5jbHVkZS9saW51
eC9ub3RpZmllci5oCisrKyBiL2luY2x1ZGUvbGludXgvbm90aWZpZXIuaApAQCAtMTQxLDEzICsx
NDEsMTMgQEAgZXh0ZXJuIHZvaWQgc3JjdV9pbml0X25vdGlmaWVyX2hlYWQoc3RydWN0IHNyY3Vf
bm90aWZpZXJfaGVhZCAqbmgpOwogCiAjaWZkZWYgX19LRVJORUxfXwogCi1leHRlcm4gaW50IGF0
b21pY19ub3RpZmllcl9jaGFpbl9yZWdpc3RlcihzdHJ1Y3QgYXRvbWljX25vdGlmaWVyX2hlYWQg
Km5oLAorZXh0ZXJuIGludCBfX211c3RfY2hlY2sgYXRvbWljX25vdGlmaWVyX2NoYWluX3JlZ2lz
dGVyKHN0cnVjdCBhdG9taWNfbm90aWZpZXJfaGVhZCAqbmgsCiAJCXN0cnVjdCBub3RpZmllcl9i
bG9jayAqbmIpOwotZXh0ZXJuIGludCBibG9ja2luZ19ub3RpZmllcl9jaGFpbl9yZWdpc3Rlcihz
dHJ1Y3QgYmxvY2tpbmdfbm90aWZpZXJfaGVhZCAqbmgsCitleHRlcm4gaW50IF9fbXVzdF9jaGVj
ayBibG9ja2luZ19ub3RpZmllcl9jaGFpbl9yZWdpc3RlcihzdHJ1Y3QgYmxvY2tpbmdfbm90aWZp
ZXJfaGVhZCAqbmgsCiAJCXN0cnVjdCBub3RpZmllcl9ibG9jayAqbmIpOwotZXh0ZXJuIGludCBy
YXdfbm90aWZpZXJfY2hhaW5fcmVnaXN0ZXIoc3RydWN0IHJhd19ub3RpZmllcl9oZWFkICpuaCwK
K2V4dGVybiBpbnQgX19tdXN0X2NoZWNrIHJhd19ub3RpZmllcl9jaGFpbl9yZWdpc3RlcihzdHJ1
Y3QgcmF3X25vdGlmaWVyX2hlYWQgKm5oLAogCQlzdHJ1Y3Qgbm90aWZpZXJfYmxvY2sgKm5iKTsK
LWV4dGVybiBpbnQgc3JjdV9ub3RpZmllcl9jaGFpbl9yZWdpc3RlcihzdHJ1Y3Qgc3JjdV9ub3Rp
Zmllcl9oZWFkICpuaCwKK2V4dGVybiBpbnQgX19tdXN0X2NoZWNrIHNyY3Vfbm90aWZpZXJfY2hh
aW5fcmVnaXN0ZXIoc3RydWN0IHNyY3Vfbm90aWZpZXJfaGVhZCAqbmgsCiAJCXN0cnVjdCBub3Rp
Zmllcl9ibG9jayAqbmIpOwogCiBleHRlcm4gaW50IGF0b21pY19ub3RpZmllcl9jaGFpbl91bnJl
Z2lzdGVyKHN0cnVjdCBhdG9taWNfbm90aWZpZXJfaGVhZCAqbmgsCmRpZmYgLS1naXQgYS9rZXJu
ZWwvbm90aWZpZXIuYyBiL2tlcm5lbC9ub3RpZmllci5jCmluZGV4IGI4MjUxZGMwYmMwZi4uNDUx
ZWYzZjczYWQyIDEwMDY0NAotLS0gYS9rZXJuZWwvbm90aWZpZXIuYworKysgYi9rZXJuZWwvbm90
aWZpZXIuYwpAQCAtMjAsMTMgKzIwLDExIEBAIEJMT0NLSU5HX05PVElGSUVSX0hFQUQocmVib290
X25vdGlmaWVyX2xpc3QpOwogICovCiAKIHN0YXRpYyBpbnQgbm90aWZpZXJfY2hhaW5fcmVnaXN0
ZXIoc3RydWN0IG5vdGlmaWVyX2Jsb2NrICoqbmwsCi0JCXN0cnVjdCBub3RpZmllcl9ibG9jayAq
bikKKwkJCQkgICBzdHJ1Y3Qgbm90aWZpZXJfYmxvY2sgKm4pCiB7CiAJd2hpbGUgKCgqbmwpICE9
IE5VTEwpIHsKLQkJaWYgKHVubGlrZWx5KCgqbmwpID09IG4pKSB7Ci0JCQlXQVJOKDEsICJkb3Vi
bGUgcmVnaXN0ZXIgZGV0ZWN0ZWQiKTsKLQkJCXJldHVybiAwOwotCQl9CisJCWlmICh1bmxpa2Vs
eSgoKm5sKSA9PSBuKSkKKwkJCXJldHVybiAtRUVYSVNUOwogCQlpZiAobi0+cHJpb3JpdHkgPiAo
Km5sKS0+cHJpb3JpdHkpCiAJCQlicmVhazsKIAkJbmwgPSAmKCgqbmwpLT5uZXh0KTsKQEAgLTEz
NCwxMCArMTMyLDExIEBAIHN0YXRpYyBpbnQgbm90aWZpZXJfY2FsbF9jaGFpbl9yb2J1c3Qoc3Ry
dWN0IG5vdGlmaWVyX2Jsb2NrICoqbmwsCiAgKgogICoJQWRkcyBhIG5vdGlmaWVyIHRvIGFuIGF0
b21pYyBub3RpZmllciBjaGFpbi4KICAqCi0gKglDdXJyZW50bHkgYWx3YXlzIHJldHVybnMgemVy
by4KKyAqCVJldHVybnMgMCBvbiBzdWNjZXNzLCAlLUVFWElTVCBvbiBlcnJvci4KICAqLwotaW50
IGF0b21pY19ub3RpZmllcl9jaGFpbl9yZWdpc3RlcihzdHJ1Y3QgYXRvbWljX25vdGlmaWVyX2hl
YWQgKm5oLAotCQlzdHJ1Y3Qgbm90aWZpZXJfYmxvY2sgKm4pCitpbnQgX19tdXN0X2NoZWNrCith
dG9taWNfbm90aWZpZXJfY2hhaW5fcmVnaXN0ZXIoc3RydWN0IGF0b21pY19ub3RpZmllcl9oZWFk
ICpuaCwKKwkJCSAgICAgICBzdHJ1Y3Qgbm90aWZpZXJfYmxvY2sgKm4pCiB7CiAJdW5zaWduZWQg
bG9uZyBmbGFnczsKIAlpbnQgcmV0OwpAQCAtMjE2LDEwICsyMTUsMTEgQEAgTk9LUFJPQkVfU1lN
Qk9MKGF0b21pY19ub3RpZmllcl9jYWxsX2NoYWluKTsKICAqCUFkZHMgYSBub3RpZmllciB0byBh
IGJsb2NraW5nIG5vdGlmaWVyIGNoYWluLgogICoJTXVzdCBiZSBjYWxsZWQgaW4gcHJvY2VzcyBj
b250ZXh0LgogICoKLSAqCUN1cnJlbnRseSBhbHdheXMgcmV0dXJucyB6ZXJvLgorICoJUmV0dXJu
cyAwIG9uIHN1Y2Nlc3MsICUtRUVYSVNUIG9uIGVycm9yLgogICovCi1pbnQgYmxvY2tpbmdfbm90
aWZpZXJfY2hhaW5fcmVnaXN0ZXIoc3RydWN0IGJsb2NraW5nX25vdGlmaWVyX2hlYWQgKm5oLAot
CQlzdHJ1Y3Qgbm90aWZpZXJfYmxvY2sgKm4pCitpbnQgX19tdXN0X2NoZWNrCitibG9ja2luZ19u
b3RpZmllcl9jaGFpbl9yZWdpc3RlcihzdHJ1Y3QgYmxvY2tpbmdfbm90aWZpZXJfaGVhZCAqbmgs
CisJCQkJIHN0cnVjdCBub3RpZmllcl9ibG9jayAqbikKIHsKIAlpbnQgcmV0OwogCkBAIC0zMzUs
MTAgKzMzNSwxMSBAQCBFWFBPUlRfU1lNQk9MX0dQTChibG9ja2luZ19ub3RpZmllcl9jYWxsX2No
YWluKTsKICAqCUFkZHMgYSBub3RpZmllciB0byBhIHJhdyBub3RpZmllciBjaGFpbi4KICAqCUFs
bCBsb2NraW5nIG11c3QgYmUgcHJvdmlkZWQgYnkgdGhlIGNhbGxlci4KICAqCi0gKglDdXJyZW50
bHkgYWx3YXlzIHJldHVybnMgemVyby4KKyAqCVJldHVybnMgMCBvbiBzdWNjZXNzLCAlLUVFWElT
VCBvbiBlcnJvci4KICAqLwotaW50IHJhd19ub3RpZmllcl9jaGFpbl9yZWdpc3RlcihzdHJ1Y3Qg
cmF3X25vdGlmaWVyX2hlYWQgKm5oLAotCQlzdHJ1Y3Qgbm90aWZpZXJfYmxvY2sgKm4pCitpbnQg
X19tdXN0X2NoZWNrCityYXdfbm90aWZpZXJfY2hhaW5fcmVnaXN0ZXIoc3RydWN0IHJhd19ub3Rp
Zmllcl9oZWFkICpuaCwKKwkJCSAgICBzdHJ1Y3Qgbm90aWZpZXJfYmxvY2sgKm4pCiB7CiAJcmV0
dXJuIG5vdGlmaWVyX2NoYWluX3JlZ2lzdGVyKCZuaC0+aGVhZCwgbik7CiB9CkBAIC00MDYsMTAg
KzQwNywxMSBAQCBFWFBPUlRfU1lNQk9MX0dQTChyYXdfbm90aWZpZXJfY2FsbF9jaGFpbik7CiAg
KglBZGRzIGEgbm90aWZpZXIgdG8gYW4gU1JDVSBub3RpZmllciBjaGFpbi4KICAqCU11c3QgYmUg
Y2FsbGVkIGluIHByb2Nlc3MgY29udGV4dC4KICAqCi0gKglDdXJyZW50bHkgYWx3YXlzIHJldHVy
bnMgemVyby4KKyAqCVJldHVybnMgMCBvbiBzdWNjZXNzLCAlLUVFWElTVCBvbiBlcnJvci4KICAq
LwotaW50IHNyY3Vfbm90aWZpZXJfY2hhaW5fcmVnaXN0ZXIoc3RydWN0IHNyY3Vfbm90aWZpZXJf
aGVhZCAqbmgsCi0JCXN0cnVjdCBub3RpZmllcl9ibG9jayAqbikKK2ludCBfX211c3RfY2hlY2sK
K3NyY3Vfbm90aWZpZXJfY2hhaW5fcmVnaXN0ZXIoc3RydWN0IHNyY3Vfbm90aWZpZXJfaGVhZCAq
bmgsCisJCQkgICAgIHN0cnVjdCBub3RpZmllcl9ibG9jayAqbikKIHsKIAlpbnQgcmV0OwogCi0t
IAoyLjI5LjIKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KT3BlbmlwbWktZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApPcGVuaXBtaS1kZXZlbG9wZXJAbGlz
dHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xp
c3RpbmZvL29wZW5pcG1pLWRldmVsb3Blcgo=

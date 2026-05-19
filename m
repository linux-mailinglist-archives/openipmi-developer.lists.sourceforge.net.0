Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2NrUIpd7DGoSiQUAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Tue, 19 May 2026 17:02:47 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 71E5D5810E1
	for <lists+openipmi-developer@lfdr.de>; Tue, 19 May 2026 17:02:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=m6oPQfp/3wipOpOHrHjGvCnJ0r4wn/KbI8gGqtFjBVQ=; b=iY+t4Y0iXuI6zw7VINfVEgfEK7
	6grS/g7WgQtNAv81TIkATe5k+SmAg6/+8ZaxV9lrnuPn8q3NbEpefBXMGsYdn3nYteJQO8Pwoc36I
	+M+VJzznUSd5RaX1VBgtd3a9r+cq73DhCGUn4K1UnApQmhjglKBBbp1e4DfPhBeThIAQ=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wPLxb-000450-Mm;
	Tue, 19 May 2026 15:02:20 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ukleinek@baylibre.com>) id 1wPLxZ-00044o-Em
 for openipmi-developer@lists.sourceforge.net;
 Tue, 19 May 2026 15:02:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GgT161B6wKarrjgD+/dVj/0hn/MrD5kPqO21KOBfXOE=; b=PSacmOCdZtBx0J30DhjcrVBHui
 uuYgmjQvhHf5gRcV4QHkecOVF8MM0sxwDMglR7/q6U0neze7pxnKjcczaDkcC6jYSTAUZZJvDf46h
 uKdOHXPsfOAaylnoNmjWBdTLpa6GUbpYVae+CcvJptmgFTUtR0fw3oMqY+tm44n87ql0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=GgT161B6wKarrjgD+/dVj/0hn/MrD5kPqO21KOBfXOE=; b=L
 h7K1lszv2gUZ9yZT2qv39z0jcUJVPYbQ+4lBsI10yeEHLTcIOJblhM/1rluLzT4DScYQUEWWgvA4w
 J88G6Zx4I7wvII7dpFAgcwD9ydXoP5tRs/qKsGT8A/RxfJStDxpOFWqjyBQqUCGz+8TW0Xi5QU/5o
 Zp9PNdQ1oALtTIe4=;
Received: from mail-wm1-f54.google.com ([209.85.128.54])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1wPLxW-0003gh-0t for openipmi-developer@lists.sourceforge.net;
 Tue, 19 May 2026 15:02:16 +0000
Received: by mail-wm1-f54.google.com with SMTP id
 5b1f17b1804b1-48d146705b4so40282035e9.3
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 19 May 2026 08:02:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre.com; s=google; t=1779202923; x=1779807723;
 darn=lists.sourceforge.net; 
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=GgT161B6wKarrjgD+/dVj/0hn/MrD5kPqO21KOBfXOE=;
 b=g9bHbUpKb4niAxOn7ljjFFPk1BCZQjezCWSL+12BllAPhnsivdiHVKR8DuLDStGMIa
 efLfT7P1itX43Z5HWGNginiHKP8MPAngqosbZOZML0ZmS9En9DEcjrHs2fAwfF80N+di
 ZSJNICv9FhPJOlPu5SmhDtFDv1Pu34v5VcV55I3ka6wHdwaK6ElNXPdVV08Hm/AaerEK
 ZZQx54Sz4+Zwk/gbLJX7MfaN4h03pObjvCmrUKp9S3kEL4m9ARPOV2t3mS7fBJbUDICe
 qq0hbJHPL8vD4ZLBbUYFZl7RJ3YRphmOvtOHX3G2mo2ChRdZcjfKnd/Q47tss2s+UxdY
 RRrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1779202923; x=1779807723;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=GgT161B6wKarrjgD+/dVj/0hn/MrD5kPqO21KOBfXOE=;
 b=S7WFefAPyDioI2TqGl7dC623Krc8X4GzWxhFLdznQ1ALCuu9mcyXo31hE2ynPGshJv
 ZEJUgnVClR+PQHLsbALB5PH6SMMjJFWir385NPf69lzUNe+VWSIWJXE6HuMdhJ/et9oN
 Mr7S9kdXnGbqAMGqAW5jhKaw8PS2rA2TjiV1I3/gVduKYTbcK88M35GTT6CBGL2GY2tr
 2ykmWS2tyZEPsEWJ6mJh9SHMZaGCwTFvsDQY5wpSKJx+iWdmJfM2EhiiWcvwHzgIbOLF
 RKcoSgYZMEcUvcJeZfyMILNuqa7SvZLcctqQ8VOLUzOnbS1MkTKe9owT6J2kxUOzqBZS
 +B4A==
X-Gm-Message-State: AOJu0YwKhftUoVJqzrKh74TEYercCDviNC6S57lP3Fm3p+Ltnf914Mej
 Huj5eYkLUzm593ZI/MTaAjm/5iMP4zkud2N9dN8mnuiqsfdY70H4NoPXzbWIZoy08o4=
X-Gm-Gg: Acq92OEJlQ9Tw9alDKxWwJmfL90CTKC49BMhrCG4Wt568k5PFF4NzeyP16tfA2DzbIn
 kd8T0AJsT6lSiDjTxjdtM9bRwm4Z1IEEYscLZs35CqNwovqmxl3IZ8kTwPpzEwdKM/ZOS2X+k1H
 qITqYl7p3uuQBFX7k4SQzlWglR0YiAS8RDZtOeODYB4SXWPkzyUe9AkqzahUBe6ijOEd1PlYpbU
 O0d+zIoNpY3gVPnfWwX+1Pald6GBn3KYRr3+WpPJWuEoXNQ+xMqL5O9dUDwBFN/rlQ86uSZ0j8f
 696pyawB2cs5TSjefOkxnZhnK0quPREWI8ws/f+2h6S/EwMwc4rzoXWEOJhTPkRJICqaQS2Xnky
 CcbLlUkQ4Fizl1bhqHh2lPIazUgDLrgWnL0vGBdpwufrW0+rSeNF/TXnQiEHkdPFE85gklhydjE
 Er6FN7OJbd6EW7VMo/kQONgUf0ze1UcdqT9uz1re6G9/py++ouNu+KljhZFNW+Ot4nR4cY+xiKK
 RvX1Ce73JOIFjM=
X-Received: by 2002:a05:600c:3493:b0:48f:d2fc:d042 with SMTP id
 5b1f17b1804b1-48fe61f1a27mr329748165e9.13.1779202922780; 
 Tue, 19 May 2026 08:02:02 -0700 (PDT)
Received: from localhost
 (p200300f65f47db048a8dfcf61053817f.dip0.t-ipconnect.de.
 [2003:f6:5f47:db04:8a8d:fcf6:1053:817f])
 by smtp.gmail.com with UTF8SMTPSA id
 5b1f17b1804b1-48feb029180sm164155535e9.4.2026.05.19.08.02.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 May 2026 08:02:02 -0700 (PDT)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig=20=28The=20Capable=20Hub=29?=
 <u.kleine-koenig@baylibre.com>
To: Corey Minyard <corey@minyard.net>
Date: Tue, 19 May 2026 17:01:56 +0200
Message-ID: <20260519150156.1590826-2-u.kleine-koenig@baylibre.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3118;
 i=u.kleine-koenig@baylibre.com; h=from:subject;
 bh=cmpjBF/YYXkke9emOrt0Uyvq9m4XkcGd10/Ml1tUeLY=;
 b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBqDHtkmryaSHRv72LrgZ+n0oWtKE+IvPD7pfvd8
 m+QF+FciZSJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCagx7ZAAKCRCPgPtYfRL+
 Tn+3B/4nwwfMzq0rv+fXWGjskBTWNgCVP3LlrFgev3K6JdMiosGStdzWBUnB4/m8V0dmx0LPB2H
 xEd4dcnk7Z931Jc9n0HJrt4+VsEtdAizZ1cx7zIEHRD4N4L8zT+Ocqet0tZdc4pfr1o7uwQJvaK
 n4QyXuqCQki5Zn++3Wf2wQzxHSkoMNrcT1BOFswM/yg3LcxxfZwKAVRDTHIUU7voXqSXv+wn2Cw
 H3thLxXquupfy1tzJf3iP775wd6/duqV6tKOLitx9BKj7XUdBpNlybc1Pe+W30il1nOoNXTWmSq
 ZI9QoHP/4QFZ4T/5hBZW3RROuY+YQbLA1+k8zURM/5aEC7vQ
X-Developer-Key: i=u.kleine-koenig@baylibre.com; a=openpgp;
 fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  While being less compact, using named initializers allows
 to more easily see which members of the structs are assigned which value
 without
 having to lookup the declaration of the struct. And it's also [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.54 listed in wl.mailspike.net]
X-Headers-End: 1wPLxW-0003gh-0t
Subject: [Openipmi-developer] [PATCH v1] ipmi: Use named initializers for
 struct i2c_device_id
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
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Spamd-Result: default: False [-0.01 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[baylibre.com];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:corey@minyard.net,m:openipmi-developer@lists.sourceforge.net,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	RSPAMD_URIBL_FAIL(0.00)[lists.sourceforge.net:query timed out,baylibre.com:query timed out];
	ARC_NA(0.00)[];
	ASN_FAIL(0.00)[7.38.105.216.asn.rspamd.com:query timed out];
	DKIM_MIXED(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[u.kleine-koenig@baylibre.com,openipmi-developer-bounces@lists.sourceforge.net];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	RCVD_TLS_LAST(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,baylibre.com:s=google];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[u.kleine-koenig@baylibre.com,openipmi-developer-bounces@lists.sourceforge.net];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[openipmi-developer@lists.sourceforge.net];
	TAGGED_RCPT(0.00)[openipmi-developer];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,baylibre.com:-];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[baylibre.com:mid,baylibre.com:email]
X-Rspamd-Queue-Id: 71E5D5810E1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

V2hpbGUgYmVpbmcgbGVzcyBjb21wYWN0LCB1c2luZyBuYW1lZCBpbml0aWFsaXplcnMgYWxsb3dz
IHRvIG1vcmUgZWFzaWx5CnNlZSB3aGljaCBtZW1iZXJzIG9mIHRoZSBzdHJ1Y3RzIGFyZSBhc3Np
Z25lZCB3aGljaCB2YWx1ZSB3aXRob3V0IGhhdmluZwp0byBsb29rdXAgdGhlIGRlY2xhcmF0aW9u
IG9mIHRoZSBzdHJ1Y3QuIEFuZCBpdCdzIGFsc28gbW9yZSByb2J1c3QKYWdhaW5zdCBjaGFuZ2Vz
IHRvIHRoZSBzdHJ1Y3QgZGVmaW5pdGlvbi4KClRoaXMgcGF0Y2ggZG9lc24ndCBtb2RpZnkgdGhl
IGNvbXBpbGVkIGFycmF5cywgb25seSB0aGVpciByZXByZXNlbnRhdGlvbgppbiBzb3VyY2UgZm9y
bSBiZW5lZml0cy4gVGhlIGZvcm1lciB3YXMgY29uZmlybWVkIHdpdGggeDg2IGFuZCBhcm02NApi
dWlsZHMuCgpXaGlsZSB0b3VjaGluZyB0aGVzZSBhcnJheXMsIHVuaWZ5IHVzYWdlIG9mIHdoaXRl
c3BhY2UgaW4gdGhlIGxpc3QKdGVybWluYXRvci4KClNpZ25lZC1vZmYtYnk6IFV3ZSBLbGVpbmUt
S8O2bmlnIChUaGUgQ2FwYWJsZSBIdWIpIDx1LmtsZWluZS1rb2VuaWdAYmF5bGlicmUuY29tPgot
LS0KSGVsbG8sCgp0aGlzIHBhdGNoIGlzIHBhcnQgb2YgYSBiaWdnZXIgcXVlc3QgdG8gdXNlIG5h
bWVkIGluaXRpYWxpemVycyBmb3IKbWFpbmx5IHN0cnVjdCBpMmNfZGV2aWNlX2lkOjpkcml2ZXJf
ZGF0YSB0byBiZSBhYmxlIHRvIG1vZGlmeQppMmNfZGV2aWNlX2lkLiBTZWUgZS5nLgpodHRwczov
L2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNjA1MTgxMTEyMDMuNjM5NjAzLTItdS5rbGVpbmUta29l
bmlnQGJheWxpYnJlLmNvbS8KZm9yIHRoZSBkZXRhaWxzLgoKVGhpcyBwYXRjaCBoZXJlIGlzbid0
IGNyaXRpY2FsIGZvciB0aGlzIHF1ZXN0LCBhcyBubyBkcml2ZXIgbWFrZXMgdXNlIG9mCi5kcml2
ZXJfZGF0YSwgc28gYXBhcnQgZnJvbSB0aGUgYmV0dGVyIHJlYWRhYmlsaXR5IHRoaXMgaXMgb25s
eSBhYm91dApjb25zaXN0ZW5jeSB3aXRoIG90aGVyIHN1YnN5c3RlbXMuCgpCZXN0IHJlZ2FyZHMK
VXdlCgogZHJpdmVycy9jaGFyL2lwbWkvaXBtYl9kZXZfaW50LmMgfCA0ICsrLS0KIGRyaXZlcnMv
Y2hhci9pcG1pL2lwbWlfaXBtYi5jICAgIHwgNCArKy0tCiBkcml2ZXJzL2NoYXIvaXBtaS9pcG1p
X3NzaWYuYyAgICB8IDIgKy0KIGRyaXZlcnMvY2hhci9pcG1pL3NzaWZfYm1jLmMgICAgIHwgMiAr
LQogNCBmaWxlcyBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9jaGFyL2lwbWkvaXBtYl9kZXZfaW50LmMgYi9kcml2ZXJzL2NoYXIv
aXBtaS9pcG1iX2Rldl9pbnQuYwppbmRleCAyZmUxZDIwNWNlNGUuLjY4MGZmMTVjMzBhYiAxMDA2
NDQKLS0tIGEvZHJpdmVycy9jaGFyL2lwbWkvaXBtYl9kZXZfaW50LmMKKysrIGIvZHJpdmVycy9j
aGFyL2lwbWkvaXBtYl9kZXZfaW50LmMKQEAgLTM1Myw4ICszNTMsOCBAQCBzdGF0aWMgdm9pZCBp
cG1iX3JlbW92ZShzdHJ1Y3QgaTJjX2NsaWVudCAqY2xpZW50KQogfQogCiBzdGF0aWMgY29uc3Qg
c3RydWN0IGkyY19kZXZpY2VfaWQgaXBtYl9pZFtdID0gewotCXsgImlwbWItZGV2IiB9LAotCXt9
CisJeyAubmFtZSA9ICJpcG1iLWRldiIgfSwKKwl7IH0KIH07CiBNT0RVTEVfREVWSUNFX1RBQkxF
KGkyYywgaXBtYl9pZCk7CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2hhci9pcG1pL2lwbWlfaXBt
Yi5jIGIvZHJpdmVycy9jaGFyL2lwbWkvaXBtaV9pcG1iLmMKaW5kZXggMjg4MTg5NTJhN2E0Li4x
ZjFlNTcxOGYwODIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvY2hhci9pcG1pL2lwbWlfaXBtYi5jCisr
KyBiL2RyaXZlcnMvY2hhci9pcG1pL2lwbWlfaXBtYi5jCkBAIC01NjYsOCArNTY2LDggQEAgTU9E
VUxFX0RFVklDRV9UQUJMRShvZiwgb2ZfaXBtaV9pcG1iX21hdGNoKTsKICNlbmRpZgogCiBzdGF0
aWMgY29uc3Qgc3RydWN0IGkyY19kZXZpY2VfaWQgaXBtaV9pcG1iX2lkW10gPSB7Ci0JeyBERVZJ
Q0VfTkFNRSB9LAotCXt9CisJeyAubmFtZSA9IERFVklDRV9OQU1FIH0sCisJeyB9CiB9OwogTU9E
VUxFX0RFVklDRV9UQUJMRShpMmMsIGlwbWlfaXBtYl9pZCk7CiAKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvY2hhci9pcG1pL2lwbWlfc3NpZi5jIGIvZHJpdmVycy9jaGFyL2lwbWkvaXBtaV9zc2lmLmMK
aW5kZXggYjQ5NTAwYTFiZDM2Li4zMjQ2MGMzODU4ZjQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvY2hh
ci9pcG1pL2lwbWlfc3NpZi5jCisrKyBiL2RyaXZlcnMvY2hhci9pcG1pL2lwbWlfc3NpZi5jCkBA
IC0yMDc0LDcgKzIwNzQsNyBAQCBzdGF0aWMgaW50IGRtaV9pcG1pX3Byb2JlKHN0cnVjdCBwbGF0
Zm9ybV9kZXZpY2UgKnBkZXYpCiAjZW5kaWYKIAogc3RhdGljIGNvbnN0IHN0cnVjdCBpMmNfZGV2
aWNlX2lkIHNzaWZfaWRbXSA9IHsKLQl7IERFVklDRV9OQU1FIH0sCisJeyAubmFtZSA9IERFVklD
RV9OQU1FIH0sCiAJeyB9CiB9OwogTU9EVUxFX0RFVklDRV9UQUJMRShpMmMsIHNzaWZfaWQpOwpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9jaGFyL2lwbWkvc3NpZl9ibWMuYyBiL2RyaXZlcnMvY2hhci9p
cG1pL3NzaWZfYm1jLmMKaW5kZXggMWRmMGU5Mjg0YWQ5Li42MDM2ODk3NzI1ZjMgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvY2hhci9pcG1pL3NzaWZfYm1jLmMKKysrIGIvZHJpdmVycy9jaGFyL2lwbWkv
c3NpZl9ibWMuYwpAQCAtODc0LDcgKzg3NCw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2
aWNlX2lkIHNzaWZfYm1jX21hdGNoW10gPSB7CiBNT0RVTEVfREVWSUNFX1RBQkxFKG9mLCBzc2lm
X2JtY19tYXRjaCk7CiAKIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaTJjX2RldmljZV9pZCBzc2lmX2Jt
Y19pZFtdID0gewotCXsgREVWSUNFX05BTUUgfSwKKwl7IC5uYW1lID0gREVWSUNFX05BTUUgfSwK
IAl7IH0KIH07CiBNT0RVTEVfREVWSUNFX1RBQkxFKGkyYywgc3NpZl9ibWNfaWQpOwoKYmFzZS1j
b21taXQ6IDI1NGY0OTYzNGVlMTZhNzMxMTc0ZDJhZTM0YmM1MGJkNWY0NWU3MzEKLS0gCjIuNDcu
MwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpPcGVu
aXBtaS1kZXZlbG9wZXIgbWFpbGluZyBsaXN0Ck9wZW5pcG1pLWRldmVsb3BlckBsaXN0cy5zb3Vy
Y2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8v
b3BlbmlwbWktZGV2ZWxvcGVyCg==

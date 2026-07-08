Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ivL1FdFITmqhKAIAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Wed, 08 Jul 2026 14:55:45 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B12F726815
	for <lists+openipmi-developer@lfdr.de>; Wed, 08 Jul 2026 14:55:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lists.sourceforge.net header.s=beta header.b=c0uFWobj;
	dkim=fail ("body hash did not verify") header.d=sourceforge.net header.s=x header.b=iNnqKImO;
	dkim=fail ("body hash did not verify") header.d=sf.net header.s=x header.b="AwfW1Sz/";
	dkim=fail ("body hash did not verify") header.d=kernel.org header.s=k20260515 header.b=PsVYGQCs;
	dmarc=pass (policy=none) header.from=lists.sourceforge.net;
	spf=pass (mail.lfdr.de: domain of openipmi-developer-bounces@lists.sourceforge.net designates 216.105.38.7 as permitted sender) smtp.mailfrom=openipmi-developer-bounces@lists.sourceforge.net
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:References:MIME-Version:
	In-Reply-To:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=J4VT55IoQS3bqJ4ahuUGpe1X2Aj2HaFFQFh4hYADyIM=; b=c0uFWobjQ/Sj+Szl+mVbzDX18a
	mq0BAyGg3eGfyufw97N6gd/M3Lib+SgVizzDQTt3jZ7Gb5NgAKpnDhaF1n2qXtyLVdDSuCDOoe8gy
	I/sf/oW35nbnD8BfHMozQIjUX4B/3Sa254veDgehE7Y1EBqEiI8GNtS1iLbfCwFBLHew=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1whRoO-0004Yz-Ku;
	Wed, 08 Jul 2026 12:55:37 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <brgl@kernel.org>) id 1whRoG-0004YM-GI
 for openipmi-developer@lists.sourceforge.net;
 Wed, 08 Jul 2026 12:55:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:References:MIME-Version:In-Reply-To:From:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kikzu5yHjCHrYI+CpYYUdbBjsN4WJ34ORiqQtKuS/QI=; b=iNnqKImOilqk1UBNWmB3baurgE
 TIrqTGyjXi1SR69dQDpiNZ6awcSvTzvWLZhxy1pOuAeWeHe8KyAhgBhgNGa1K5hPcN+04rPF4J6ii
 doYccpZx65JLIPa3NkKBE120kocFJTfv8EfRz/anqkVPbDZJNKW73gYk/f6Xtap6lA5M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:
 References:MIME-Version:In-Reply-To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kikzu5yHjCHrYI+CpYYUdbBjsN4WJ34ORiqQtKuS/QI=; b=AwfW1Sz/xUSL2oLyWusLRHujGW
 vd2ATunXWTlHMwXKWpsu5PxYDmbRLckRCtMFnjxNvt/ZtgoE6P/8U2ZMi1c8Zco1H49QAbnOkcPVm
 GEhlDZqgHwhGSlM2iVj+h5Wx+pa+RZCIjgmZHUl6tlgbTtuq4v3Xr6Hp6FsvpSAjtiLQ=;
Received: from tor.source.kernel.org ([172.105.4.254])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1whRoG-0006SU-KT for openipmi-developer@lists.sourceforge.net;
 Wed, 08 Jul 2026 12:55:29 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by tor.source.kernel.org (Postfix) with ESMTP id 05AAA6132C
 for <openipmi-developer@lists.sourceforge.net>;
 Wed,  8 Jul 2026 12:55:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AA78C1F00ACA
 for <openipmi-developer@lists.sourceforge.net>;
 Wed,  8 Jul 2026 12:55:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
 s=k20260515; t=1783515317;
 bh=kikzu5yHjCHrYI+CpYYUdbBjsN4WJ34ORiqQtKuS/QI=;
 h=From:In-Reply-To:References:Date:Subject:To:Cc;
 b=PsVYGQCsaygkbYDUX8ClsdQd4ClXV4vvKASakMNhoeX2O/aMcCNUPpx/zE39zrZbI
 SKspeoqb8xsJNsZz/GYsVYvkTPq+bTrr3zyjxZtMoGw0LzznWWMUfj44cEBrrj4tyd
 gfFSgCZ8NbTGDuINWaGQ/bLX/DPtKQ8TVP7He8H3Pk9b+ilqUpRyCI4hvYqLs2rYSz
 Hd0v2fsFSAb8Z2R7lAUy13eC5EI+lCKeoNpR5oELnEymHndaHD+Qh+xCDxw4uhIAf/
 T1IWsQpV5hRqVcl8p4KWQQ9o5otQ1B9yeOFRejYHeyBXeB+kFgDtBZpxNvzPhTT2RZ
 ny7JBC7iSn4Jw==
Received: by mail-lj1-f182.google.com with SMTP id
 38308e7fff4ca-39b51882d71so5181671fa.2
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 08 Jul 2026 05:55:17 -0700 (PDT)
X-Forwarded-Encrypted: i=1;
 AHgh+RrFeBZtDAI4e0nzuuQmnfT5zi5Xtu596kFyMlGCxbnQtHDTwTSx/uHpJH9kx0hJr7DUXuR7MLzzSJ5xJRXUw7ITenk=@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yw16AtsZm6tWl1ZpVJEqDSbyWt7tYQoRr+2Qdm/1rtDL/cXYCwL
 1lfcQrzZBpzpCjvAIfuVcDsLmKhjthCwH4zA7Ei27KmK36Wsw7IiGL9q6NMHrTabB/aC8HDqFyM
 +32jFdrwrrvrNA2Ay6Jetv+BKTcmXOnseBBAHNLpvAw==
X-Received: by 2002:a2e:82d0:0:b0:39a:ec7b:6cc7 with SMTP id
 38308e7fff4ca-39c79a171d8mr4780281fa.24.1783515316229; Wed, 08 Jul 2026
 05:55:16 -0700 (PDT)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 8 Jul 2026 05:55:14 -0700
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 8 Jul 2026 05:55:14 -0700
In-Reply-To: <C8B03257-3909-4323-B183-331F7CB1DA3E@gmail.com>
MIME-Version: 1.0
References: <20260708-ls2kbmc-mod-v2-0-2afdd1741766@gmail.com>
 <20260708-ls2kbmc-mod-v2-7-2afdd1741766@gmail.com>
 <CAMRc=MeDq6=u66hc+ChmJA9iKRhsYFhg7rKkCGh2BA=--VGkcw@mail.gmail.com>
 <C8B03257-3909-4323-B183-331F7CB1DA3E@gmail.com>
Date: Wed, 8 Jul 2026 05:55:14 -0700
X-Gmail-Original-Message-ID: <CAMRc=MfbbQfzquf5tT-3an-EVtO_gkgh8To61Q=OAGbf=u3Xpg@mail.gmail.com>
X-Gm-Features: AVVi8Cf-b0wpzureZ5LYsD1gEyfLZXYdTpNSMQ2jjZOcsYfx4W8ngNITiPKXzoY
Message-ID: <CAMRc=MfbbQfzquf5tT-3an-EVtO_gkgh8To61Q=OAGbf=u3Xpg@mail.gmail.com>
To: Miao Wang <shankerwangmiao@gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "sfi-spamd-1.hosts.colo.sdot.me",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Wed, 8 Jul 2026 14:15:55 +0200, Miao Wang <shankerwangmiao@gmail.com>
    said: > Hi > >> 2026年7月8日 19:36，Bartosz Golaszewski <brgl@kernel.org>
    写道： >> >> On Tue, 7 Jul 2026 23:16:31 +0200 [...] 
 
 Content analysis details:   (-0.2 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
X-Headers-End: 1whRoG-0006SU-KT
Subject: Re: [Openipmi-developer] [PATCH RFC v2 7/7] mfd: ls2kbmc: Capture
 the reset event of BMC through GPIO
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
From: Bartosz Golaszewski via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Bartosz Golaszewski <brgl@kernel.org>
Cc: Chong Qiao <qiaochong@loongson.cn>, Huacai Chen <chenhuacai@kernel.org>,
 Bartosz Golaszewski <brgl@kernel.org>, Binbin Zhou <zhoubinbin@loongson.cn>,
 Linus Walleij <linusw@kernel.org>, Lee Jones <lee@kernel.org>,
 mfd@lists.linux.dev, linux-kernel@vger.kernel.org,
 Jiaxun Yang <jiaxun.yang@flygoat.com>, Corey Minyard <corey@minyard.net>,
 linux-gpio@vger.kernel.org, Yinbo Zhu <zhuyinbo@loongson.cn>,
 WANG Xuerui <kernel@xen0n.name>, openipmi-developer@lists.sourceforge.net,
 Miao Wang via B4 Relay <devnull+shankerwangmiao.gmail.com@kernel.org>,
 Xi Ruoyao <xry111@xry111.site>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-7.01 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_MIXED(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	FORGED_RECIPIENTS(0.00)[m:shankerwangmiao@gmail.com,m:qiaochong@loongson.cn,m:chenhuacai@kernel.org,m:brgl@kernel.org,m:zhoubinbin@loongson.cn,m:linusw@kernel.org,m:lee@kernel.org,m:mfd@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:jiaxun.yang@flygoat.com,m:corey@minyard.net,m:linux-gpio@vger.kernel.org,m:zhuyinbo@loongson.cn,m:kernel@xen0n.name,m:openipmi-developer@lists.sourceforge.net,m:devnull+shankerwangmiao.gmail.com@kernel.org,m:xry111@xry111.site,m:devnull@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	ARC_NA(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,kernel.org:s=k20260515];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,kernel.org:-];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,lists.sourceforge.net:from_smtp,lists.sourceforge.net:dkim,lists.sourceforge.net:helo,lists.sourceforge.net:rdns,lists.sourceforge.net:from_mime];
	PREVIOUSLY_DELIVERED(0.00)[openipmi-developer@lists.sourceforge.net];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_REPLYTO(0.00)[brgl@kernel.org];
	TAGGED_RCPT(0.00)[openipmi-developer,shankerwangmiao.gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8B12F726815

T24gV2VkLCA4IEp1bCAyMDI2IDE0OjE1OjU1ICswMjAwLCBNaWFvIFdhbmcgPHNoYW5rZXJ3YW5n
bWlhb0BnbWFpbC5jb20+IHNhaWQ6Cj4gSGkKPgo+PiAyMDI25bm0N+aciDjml6UgMTk6MzbvvIxC
YXJ0b3N6IEdvbGFzemV3c2tpIDxicmdsQGtlcm5lbC5vcmc+IOWGmemBk++8mgo+Pgo+PiBPbiBU
dWUsIDcgSnVsIDIwMjYgMjM6MTY6MzEgKzAyMDAsIE1pYW8gV2FuZyB2aWEgQjQgUmVsYXkKPj4g
PGRldm51bGwrc2hhbmtlcndhbmdtaWFvLmdtYWlsLmNvbUBrZXJuZWwub3JnPiBzYWlkOgo+Pj4g
RnJvbTogTWlhbyBXYW5nIDxzaGFua2Vyd2FuZ21pYW9AZ21haWwuY29tPgo+Pj4KPj4+IFRoZSBy
ZXNldCBldmVudCBvZiBCTUMgaXMgY2FwdHVyZWQgdGhyb3VnaCBHUElPLiBIb3dldmVyLCB0aGlz
IGRyaXZlcgo+Pj4gYnlwYXNzZXMgdGhlIEdQSU8gZnJhbWV3b3JrIGFuZCBkaXJlY3RseSBhY2Nl
c3NlcyB0aGUgR1BJTyBjb250cm9sbGVyCj4+PiB0aHJvdWdoIHRoZSBmaXhlZCBhZGRyZXNzLiBX
aGVuIHRoZSBzYW1lIEdQSU8gY29udHJvbGxlciBpcyBhbHNvCj4+PiBleHBvc2VkIHRocm91Z2gg
QUNQSSBhbmQgcHJvYmVkIGJ5IHRoZSBjb3JyZXNwb25kaW5nIEdQSU8gZHJpdmVyLAo+Pj4gdGhl
cmUgd291bGQgYmUgYSBjb25mbGljdCBiZXR3ZWVuIHRoZSB0d28gZHJpdmVycy4KPj4+Cj4+PiBU
aGlzIHBhdGNoIHdpbGwgdHJ5IHRvIGZpbmQgdGhlIEdQSU8gdGhyb3VnaCBkZWNsYXJlZCBHUElP
IHBpbiBpbiB0aGUKPj4+IF9DUlMgcmVzb3VyY2VzIG9mIHRoZSBBQ1BJIG5vZGUuIElmIG5vIHN1
Y2ggZGVsYXJhdGlvbiBpcyBmb3VuZCwgdGhlCj4+PiBkcml2ZXIgd2lsbCBmYWxsIGJhY2sgdG8g
c2VhcmNoIGZvciB0aGUgY29ycmVjdCBHUElPIGNvbnRyb2xsZXIgYW5kIHBpbgo+Pj4gYWNjb3Jk
aW5nIHRvIHRoZSBmaXhlZCBhZGRyZXNzIGFuZCBwaW4gbnVtYmVyLiBBIHBvc3NpYmxlIERTRFQK
Pj4+IGRlY2xhcmF0aW9uIGZvciB0aGUgR1BJTyBwaW4gbWlnaHQgYmUgYXMgZm9sbG93czoKPj4+
Cj4+PiAgICBEZXZpY2UgKEJNQzApIHsKPj4+ICAgICAgICBOYW1lIChfQURSLCAuLi4pIC8vIE1h
dGNoIHRoZSBQQ0kgYWRkcmVzcyBvZiB0aGUgQk1DIGRldmljZQo+Pj4gICAgICAgIC8vIFxfU0Iu
R1BPMSBpcyB0aGUgQUNQSSBwYXRoIG9mIHRoZSBHUElPIGNvbnRyb2xsZXIKPj4+ICAgICAgICBO
YW1lIChfQ1JTLCBSZXNvdXJjZVRlbXBsYXRlICgpIHsKPj4+ICAgICAgICAgICAgR3Bpb0ludCAo
RWRnZSwgQWN0aXZlTG93LCBFeGNsdXNpdmUsIFB1bGxOb25lLCAwLAo+Pj4gICAgICAgICAgICAg
ICAgICAgICAiXFxfU0IuR1BPMSIsIDApIHsKPj4+ICAgICAgICAgICAgICAgIDE0IC8vIDE0IGlz
IHRoZSBHUElPIHBpbiBudW1iZXIKPj4+ICAgICAgICAgICAgfQo+Pj4gICAgfQo+Pj4KPj4+IFNp
Z25lZC1vZmYtYnk6IE1pYW8gV2FuZyA8c2hhbmtlcndhbmdtaWFvQGdtYWlsLmNvbT4KPj4+IC0t
LQo+Pj4gZHJpdmVycy9tZmQvbHMyay1ibWMtY29yZS5jIHwgMTYyICsrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKystLS0tLS0tLS0tLS0tCj4+PiAxIGZpbGUgY2hhbmdlZCwgMTE1IGluc2Vy
dGlvbnMoKyksIDQ3IGRlbGV0aW9ucygtKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21m
ZC9sczJrLWJtYy1jb3JlLmMgYi9kcml2ZXJzL21mZC9sczJrLWJtYy1jb3JlLmMKPj4+IGluZGV4
IGY4NzIyNDEwNWIzNzIwY2NhOTdkY2VmMDg5ZGFkNjNmZTU3YmM4YzIuLjcxODdiMmRmZGRjM2Fj
ZmI5ZmRmM2NiM2I0Njc1Mjk5OTI4ZGQwM2EgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL21mZC9s
czJrLWJtYy1jb3JlLmMKPj4+ICsrKyBiL2RyaXZlcnMvbWZkL2xzMmstYm1jLWNvcmUuYwo+Pj4g
QEAgLTI2LDYgKzI2LDkgQEAKPj4+ICNpbmNsdWRlIDxsaW51eC9zdG9wX21hY2hpbmUuaD4KPj4+
ICNpbmNsdWRlIDxsaW51eC92dF9rZXJuLmg+Cj4+PiAjaW5jbHVkZSA8bGludXgvY29uc29sZS5o
Pgo+Pj4gKyNpbmNsdWRlIDxsaW51eC9ncGlvL2NvbnN1bWVyLmg+Cj4+PiArI2luY2x1ZGUgPGxp
bnV4L2dwaW8vZHJpdmVyLmg+Cj4+PiArI2luY2x1ZGUgPGxpbnV4L2dwaW8uaD4KPj4KPj4gSSd2
ZSBzdG9wcGVkIGhlcmUgYmVjYXVzZSB0aGlzIGlzIGEgbGVnYWN5IGhlYWRlciB0aGF0IG11c3Qg
bm90IGJlIGluY2x1ZGVkCj4+IGFuZCBub25lIG9mIHRoZSBpbnRlcmZhY2VzIGluIGl0IG11c3Qg
YmUgdXNlZCwgYXMgcGVyIHRoZSAtIHZlcnkgbG91ZCAtIGNvbW1lbnQKPj4gYXQgdGhlIHRvcCBv
ZiB0aGF0IGZpbGUuCj4KPiBJIGZ1bGx5IHVuZGVyc3RhbmQgdXNpbmcgdGhlIGxlZ2FjeSBpbnRl
cmZhY2UgaXMgZGVwcmVjYXRlZC4gSG93ZXZlciwgdGhlcmUKPiBzZWVtcyBubyBvdGhlciB3YXkg
dG8gb2J0YWluIGEgZ3BpbyBsaW5lIGRlc2NyaXB0aW9uIGFmdGVyIGEgZ3BpbyBkZXZpY2UKPiBp
cyBmb3VuZCB1c2luZyBncGlvX2RldmljZV9maW5kKCkuIEFzIHRoZSBjb21tZW50IHNob3dzIGlu
IHRoZSBjb2RlIGJlbG93LAo+IHRoZSBvbmx5IHBsYWNlIEkgdXNlIHRoZSBsZWdhY3kgaW50ZXJm
YWNlIGlzOgo+Cj4gZ2RldiA9IGdwaW9fZGV2aWNlX2ZpbmQoLi4uKTsKPiBkZXNjID0gZ3Bpb19k
ZXZpY2VfZ2V0X2Rlc2MoZ2RldiwgTFMyS19CTUNfUkVTRVRfR1BJTyk7Cj4KCk5vLCBuZXcgY29k
ZSB1c2luZyBsZWdhY3kgQVBJIGlzICpub3QqIGFjY2VwdGFibGUuIFRoYXQncyBhbiBvZmZpY2lh
bCBOQUsuCgo+IC8vIFhYWDogbWlnaHQgYmUgYmV0dGVyIHRvIHVzZSBncGlvZF9yZXF1ZXN0KCkK
PiBsZWdhY3lfZ3BpbyA9IGRlc2NfdG9fZ3BpbyhkZXNjKTsKPiBkZXZtX2dwaW9fcmVxdWVzdF9v
bmUoLi4uLCBsZWdhY3lfZ3BpbywgLi4uKTsKPiByZXR1cm4gZ3Bpb190b19kZXNjKGxlZ2FjeV9n
cGlvKTsKPgo+IEkganVzdCBib3Jyb3dlZCB0aGUgbGVnYWN5IGdwaW8gaW50ZXJmYWNlIHRvIHJl
cXVlc3QgdGhlIGlycSBkZXNjcmlwdGlvbi4gSQo+IHRoaW5rIHRoYXQgZ3Bpb2RfcmVxdWVzdCgp
IHNob3VsZCBiZSBiZXR0ZXIgdG8gYmUgdXNlZCBoZXJlLCBidXQgaXQgaXMgbm90Cj4gYW4gaW50
ZXJmYWNlIHRoYXQgaXMgZXhwb3NlZC4gQXMgYSByZXN1bHQsIEkgcG9zdCB0aGlzIHBhdGNoIGFz
IGEgUG9DIGhlcmUKPiB0byBkaXNjdXNzIGFuZCBmaW5kIGEgYmV0dGVyIHdheSB0byBhY2hpZXZl
IHRoaXMuCj4KCklmIHRoZSBmaXJtd2FyZSBkb2Vzbid0IGRlc2NyaWJlIHRoZSBHUElPLCB5b3Ug
aGF2ZSBhdCBsZWFzdCB0d28gYWx0ZXJuYXRpdmVzLgpQbGVhc2UgbG9vayBhdCBEb2N1bWVudGF0
aW9uL2RyaXZlci1hcGkvZ3Bpby9sZWdhY3ktYm9hcmRzLnJzdC4gWW91IHNob3VsZCBiZQphYmxl
IHRvIHVzZSBlaXRoZXIgc29mdHdhcmUgbm9kZXMgb3IgR1BJTyBsb29rdXAgdGFibGVzLiBUaGlz
IGRvY3VtZW50CmRlc2NyaWJlcyB0aGUgY29udmVyc2lvbiBmcm9tIHRoZSBsYXR0ZXIgdG8gdGhl
IGZvcm1lciBidXQgLSB3aGlsZSBzb2Z0d2FyZQpub2RlcyBhcmUgcHJlZmVycmVkIC0gbG9va3Vw
IHRhYmxlcyBhcmUgbm90IGRlcHJlY2F0ZWQgc28gZmVlbCBmcmVlIHRvIHVzZQppdCB0byBzZXQg
dXAgdGhlIGRlc2NyaXB0b3JzLgoKQmFydAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCk9wZW5pcG1pLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKT3Blbmlw
bWktZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZv
cmdlLm5ldC9saXN0cy9saXN0aW5mby9vcGVuaXBtaS1kZXZlbG9wZXIK

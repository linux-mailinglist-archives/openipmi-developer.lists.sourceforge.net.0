Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BA828B590F0
	for <lists+openipmi-developer@lfdr.de>; Tue, 16 Sep 2025 10:41:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:References:
	Message-ID:To:Date:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jiZzVOtwaVa7HeyVFqiZ19OOupk9gBO/QQcEowkb7ts=; b=EUAkWgO/sjmWlUSDkTeyC+8PKr
	O0yyATwoAn2H98ftuvVTMJ2yrBAwD1wFBG6xe/VgYl0mD646v0j4WYFDFMsobyif7f5/XJpd5axRh
	6+6/wiZgvMm3qh6Uka65O7dAA9vqc+5DznDVeb8AQbRVkx8ogOEUZSSzPneUWmf9dzww=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1uyRF4-0000Wc-1U;
	Tue, 16 Sep 2025 08:40:50 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lee@kernel.org>) id 1uyREZ-0000JL-GP
 for openipmi-developer@lists.sourceforge.net;
 Tue, 16 Sep 2025 08:40:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FA7xA2BVPZHoDE9ZEr7OhpelnxuOZEOWYPcghThRKSk=; b=RH+5Ad4sjOcf0rs830Vtm34//g
 Pe4Lw7aqL+WDNkRdPv5lugV0gkHy02DOVPE1q8JJKCDlaDL8BKlgt3Bb10MGA9LI1Prt1cj2MYh+y
 S0N39J8fboaM+94ScYje+RHR62uTLgNAjj6pkl82sJhGVKLM3gxktIVNN5dD0uv91JsU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=FA7xA2BVPZHoDE9ZEr7OhpelnxuOZEOWYPcghThRKSk=; b=VzE/vj+lbqrIGTa591avM9TdO0
 S0snODo1ZQ31wLaBJ+OEszsME5kC4AQOKr8SU198gjD5Q5GQwBver6Ayik2HJ42dXcK3g8OatFZEl
 iQJchC3vH50ZbZHmUSqvZUGAyCNyH/mdSGwoj3MR+bt0TeNppJzL8ho6zAsFHEGO1FOQ=;
Received: from tor.source.kernel.org ([172.105.4.254])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uyREZ-0006uZ-20 for openipmi-developer@lists.sourceforge.net;
 Tue, 16 Sep 2025 08:40:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 680A460054;
 Tue, 16 Sep 2025 08:40:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 963A5C4CEEB;
 Tue, 16 Sep 2025 08:40:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1758012008;
 bh=TkEDRubaFnasxH43gJIkhStFdKmrHOl5HziunN9y1ck=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Apa+aU43uDrCpxAMDbWtRUwpR1esMRY5nyDWOrYpuhxtBCDciLMVw9MmgPYWTn+Bu
 RCi/5X49BFO6h8IK3cTEaaOUcd3E5pJtjW8heKzuSF8AcZ3oeZQsYNvZq0L81F0ERG
 5LGGG5iq0YG/DGww4/Q1qf13ruQzuE21WjvQEmpz9qeKinP4RPvJuBsZ7bSQV4rvw1
 bo9mdaUpxbH1ajyoBo8Hj3VhFBswJHZ1gF8fBUqrIM64Pq/dyP/2fesbSuz+u6TZ/B
 eot1MtV9XVDJq4HhKnr8evrRxFQ4dJzZR5zlVv3VZr5cJFOWER995/vGzvURYovjiI
 DEVEfrHo4VBiA==
Date: Tue, 16 Sep 2025 09:40:02 +0100
To: Binbin Zhou <zhoubb.aaron@gmail.com>
Message-ID: <20250916084002.GF1637058@google.com>
References: <cover.1756987761.git.zhoubinbin@loongson.cn>
 <175760122164.1552180.16853979882678693472.b4-ty@kernel.org>
 <CAMpQs4JbQU3D-Bs2687BXSC=FKJBS6RMvWAKb6AJEtzit6hWqw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMpQs4JbQU3D-Bs2687BXSC=FKJBS6RMvWAKb6AJEtzit6hWqw@mail.gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, 12 Sep 2025, Binbin Zhou wrote: > Hi Lee: > > On Thu,
 Sep 11, 2025 at 10:33 PM Lee Jones <lee@kernel.org> wrote: > > > > On Thu,
 04 Sep 2025 20:35:04 +0800, Binbin Zhou wrote: > > > This patchset introduces
 the Loongson-2K BMC. > > [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1uyREZ-0006uZ-20
Subject: Re: [Openipmi-developer] (subset) [PATCH v11 0/3] LoongArch: Add
 Loongson-2K BMC support
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
From: Lee Jones via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Lee Jones <lee@kernel.org>
Cc: jeffbai@aosc.io, Corey Minyard <minyard@acm.org>,
 Binbin Zhou <zhoubinbin@loongson.cn>, kexybiscuit@aosc.io,
 Huacai Chen <chenhuacai@kernel.org>, linux-kernel@vger.kernel.org,
 loongarch@lists.linux.dev, wangyao@lemote.com, Xuerui Wang <kernel@xen0n.name>,
 openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gRnJpLCAxMiBTZXAgMjAyNSwgQmluYmluIFpob3Ugd3JvdGU6Cgo+IEhpIExlZToKPiAKPiBP
biBUaHUsIFNlcCAxMSwgMjAyNSBhdCAxMDozM+KAr1BNIExlZSBKb25lcyA8bGVlQGtlcm5lbC5v
cmc+IHdyb3RlOgo+ID4KPiA+IE9uIFRodSwgMDQgU2VwIDIwMjUgMjA6MzU6MDQgKzA4MDAsIEJp
bmJpbiBaaG91IHdyb3RlOgo+ID4gPiBUaGlzIHBhdGNoc2V0IGludHJvZHVjZXMgdGhlIExvb25n
c29uLTJLIEJNQy4KPiA+ID4KPiA+ID4gSXQgaXMgYSBQQ0llIGRldmljZSBwcmVzZW50IG9uIHNl
cnZlcnMgc2ltaWxhciB0byB0aGUgTG9vbmdzb24tMyBDUFVzLgo+ID4gPiBBbmQgaXQgaXMgYSBt
dWx0aWZ1bmN0aW9uYWwgZGV2aWNlIChNRkQpLCBzdWNoIGFzIGRpc3BsYXkgYXMgYSBzdWItZnVu
Y3Rpb24KPiA+ID4gb2YgaXQuCj4gPiA+Cj4gPiA+IEZvciBJUE1JLCBhY2NvcmRpbmcgdG8gdGhl
IGV4aXN0aW5nIGRlc2lnbiwgd2UgdXNlIHNvZnR3YXJlIHNpbXVsYXRpb24gdG8KPiA+ID4gaW1w
bGVtZW50IHRoZSBLQ1MgaW50ZXJmYWNlIHJlZ2lzdGVyczogU3RhdXRzL0NvbW1hbmQvRGF0YV9P
dXQvRGF0YV9Jbi4KPiA+ID4KPiA+ID4gWy4uLl0KPiA+Cj4gPiBBcHBsaWVkLCB0aGFua3MhCj4g
Pgo+ID4gWzEvM10gbWZkOiBsczJrYm1jOiBJbnRyb2R1Y2UgTG9vbmdzb24tMksgQk1DIGNvcmUg
ZHJpdmVyCj4gPiAgICAgICBjb21taXQ6IDY3YzI2MzllMWZjMWEwN2I0NWQyMTZhZjY1OWMwZGQ5
MmEzNzBjNjgKPiA+IFsyLzNdIG1mZDogbHMya2JtYzogQWRkIExvb25nc29uLTJLIEJNQyByZXNl
dCBmdW5jdGlvbiBzdXBwb3J0Cj4gPiAgICAgICBjb21taXQ6IDIzNjRjY2M4MjdlNDQwNjRlOTc2
M2YyYWUyZDFkY2M1Zjk0NWZkZjMKPiAKPiBUaGFua3MgZm9yIGFja25vd2xlZGdpbmcgbXkgcGF0
Y2hzZXQuCj4gCj4gSSBjYW4ndCBjb25maXJtIHdoeSB5b3UgZGlkbid0IGFwcGx5IHRoZSBJUE1J
IHBhdGNoLCBidXQgdGhpcyBhcHBlYXJzCj4gdG8gYnJlYWsgdGhlIHBhdGNoc2V0J3MgaW50ZWdy
aXR5LCBwb3RlbnRpYWxseSBjYXVzaW5nIG1pc3NpbmcgS2NvbmZpZwo+IGRlcGVuZGVuY2llcyAo
SVBNSV9MUzJLIHNlbGVjdCBNRkRfTFMyS19CTUNfQ09SRSkuCgpQcmV0dHkgc3VyZSB0aGlzIGRv
ZXNuJ3QgYnJlYWsgYW55dGhpbmcuCgpXaGF0IGJ1aWxkIGVycm9ycyBkbyB5b3Ugc2VlIGFzIGEg
cmVzdWx0PwoKPiBBZGRpdGlvbmFsbHksIGFzIENvcmV5IHByZXZpb3VzbHkgZXhwbGFpbmVkWzFd
LCB0aGlzIHBhdGNoIGNhbiBiZQo+IGFwcGxpZWQgdGhyb3VnaCB5b3VyIHNpZGUuCj4gCj4gWzFd
OiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvYUZWdE5BWTR1MmdEaUxEU0BtYWlsLm1pbnlh
cmQubmV0LwoKV2Ugb25seSBhcHBseSBjcm9zcy1zdWJzeXN0ZW0gcGF0Y2gtc2V0cyB0byBhIHNp
bmdsZSB0cmVlIGlmIHRoZXJlIGFyZQpnb29kIHJlYXNvbnMgdG8gZG8gc28uICBJbiB0aGlzIGlu
c3RhbmNlLCBJIGNhbid0IHNlZSBhbnkgcmVhc29uIHdoeSB0aGUKSVBNSSBkcml2ZXIgY2Fubm90
IGdvIGluIHZpYSBpdCdzIG93biByZXBvLgoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCk9wZW5pcG1pLWRl
dmVsb3BlciBtYWlsaW5nIGxpc3QKT3BlbmlwbWktZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdl
Lm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9vcGVuaXBt
aS1kZXZlbG9wZXIK

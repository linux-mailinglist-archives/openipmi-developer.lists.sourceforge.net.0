Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 56C41B59CFF
	for <lists+openipmi-developer@lfdr.de>; Tue, 16 Sep 2025 18:09:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:References:
	Message-ID:To:Date:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Tnw6aDYOtXH2wFNydTyLaqT6xa3RdjyqHeSYiRevUAk=; b=U4Nv+7842iK5Ig0i3kd5Jfd6+h
	ugHvkqX9/j0NEB63rmEO6BHYvSBArNQIbhgnymVXddCrmY+KK23jJyYpIr47kSkuIfwtbLjQDUGhY
	z+gO3u54BgVQ0soalWnbBnQp1vUPS74xH3Po5Yb13zoXkxPyWaNsk4QaaZDv/yfvmdjM=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1uyYEq-00032z-9w;
	Tue, 16 Sep 2025 16:09:04 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lee@kernel.org>) id 1uyYEo-00032q-Bu
 for openipmi-developer@lists.sourceforge.net;
 Tue, 16 Sep 2025 16:09:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JmhpN1zcWqo7bE+bRDC48urWuERSgxmozCO29YM+pfQ=; b=Y3lpE5WeWNRCJQuLU3XfXNF9j4
 n187qLisxnkQi3PzE/CWPcNedqWm30C/mFAZUsPpSAc9oNE9tAKE+mDx1GaIhoaaMN8QRQZx0xtR1
 MxB9lvQ7mkL+y7tMJsgs1Vsjqj6WhxQVdeVbaZw/+hVaiw6Y+fLoatrQpE4GIvTL03JE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JmhpN1zcWqo7bE+bRDC48urWuERSgxmozCO29YM+pfQ=; b=aGMr3IKpgmDPb4aGudd/gQz8dY
 SkG8P3T9EdQRlNk6jQDuXN5RKRTFeDvhkpU6PUtkC+STIptfGHkNCBU9Zldl2t5jscBPO/dt6AYLU
 xSzSfQUsVkxMR2Q07vsdKa1h5LjVce3KHX6u9SvZv1Qeom9g+5d/XfrUpS92RgndVecE=;
Received: from tor.source.kernel.org ([172.105.4.254])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uyYEn-00040r-PW for openipmi-developer@lists.sourceforge.net;
 Tue, 16 Sep 2025 16:09:02 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 17515601A3;
 Tue, 16 Sep 2025 16:08:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7BCF7C4CEEB;
 Tue, 16 Sep 2025 16:08:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1758038930;
 bh=5hX+MeZ8vcEMEurO6Y40AR819qOTZbK9YJY3iGxx6k4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Ua1hLY+XBsg8eXHWBeeCokC451ULHY3woDF80vGCLpv8zvT5OXl9RngvHcXv1QyWa
 +iFodlFuB4pfDZ8xLk11FndVKtk9JhvYb0mWGE5B94JrqmFrFeJxGipBlibYu5zal5
 nOikZ0ATXBUFHmfB7V+I/5aWpjtSDlXy4Qcq7oOT6QBBMLse2pCmqU9OCEsKusiohp
 O85BEqEmHM51ATbJZcYPJ2UuzPG0soFxApgfQKuxzQJex38+csItNRoEJrVqKdHW4U
 lDzYjx/6hyh46yGuOeypN5dnd4CKnmCJMJ+wcajPaNA6Yt7uLHTC/EtLW6Or4GJrM2
 yxwOwNITszBYA==
Date: Tue, 16 Sep 2025 17:08:45 +0100
To: Corey Minyard <corey@minyard.net>
Message-ID: <20250916160845.GB3893363@google.com>
References: <cover.1756987761.git.zhoubinbin@loongson.cn>
 <175760122164.1552180.16853979882678693472.b4-ty@kernel.org>
 <CAMpQs4JbQU3D-Bs2687BXSC=FKJBS6RMvWAKb6AJEtzit6hWqw@mail.gmail.com>
 <20250916084002.GF1637058@google.com>
 <CAMpQs4+J2zYgZaGYBSaf4UwzKZY-qMoD1oe2vmgJQXAfghqu=w@mail.gmail.com>
 <20250916101438.GA3585920@google.com>
 <CAMpQs4+kj0i1BpJ4Nk+Z=Ov-AMEWcqPmkbruNhD--TmycX4z-Q@mail.gmail.com>
 <aMl_47OOOotywm0U@mail.minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aMl_47OOOotywm0U@mail.minyard.net>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, 16 Sep 2025, Corey Minyard wrote: > On Tue, Sep 16, 
 2025 at 06:51:25PM +0800, Binbin Zhou wrote: > > On Tue, Sep 16, 2025 at
 6:14 PM Lee Jones <lee@kernel.org> wrote: > > > > > > On Tue, 16 Sep 2025,
 Binbin Zhou wrote: > > > > > > > H [...] 
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
X-Headers-End: 1uyYEn-00040r-PW
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
 Binbin Zhou <zhoubb.aaron@gmail.com>, Huacai Chen <chenhuacai@kernel.org>,
 linux-kernel@vger.kernel.org, loongarch@lists.linux.dev, wangyao@lemote.com,
 Xuerui Wang <kernel@xen0n.name>, openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gVHVlLCAxNiBTZXAgMjAyNSwgQ29yZXkgTWlueWFyZCB3cm90ZToKCj4gT24gVHVlLCBTZXAg
MTYsIDIwMjUgYXQgMDY6NTE6MjVQTSArMDgwMCwgQmluYmluIFpob3Ugd3JvdGU6Cj4gPiBPbiBU
dWUsIFNlcCAxNiwgMjAyNSBhdCA2OjE04oCvUE0gTGVlIEpvbmVzIDxsZWVAa2VybmVsLm9yZz4g
d3JvdGU6Cj4gPiA+Cj4gPiA+IE9uIFR1ZSwgMTYgU2VwIDIwMjUsIEJpbmJpbiBaaG91IHdyb3Rl
Ogo+ID4gPgo+ID4gPiA+IEhpIExlZToKPiA+ID4gPgo+ID4gPiA+IFRoYW5rcyBmb3IgeW91ciBy
ZXBseS4KPiA+ID4gPgo+ID4gPiA+IE9uIFR1ZSwgU2VwIDE2LCAyMDI1IGF0IDQ6NDDigK9QTSBM
ZWUgSm9uZXMgPGxlZUBrZXJuZWwub3JnPiB3cm90ZToKPiA+ID4gPiA+Cj4gPiA+ID4gPiBPbiBG
cmksIDEyIFNlcCAyMDI1LCBCaW5iaW4gWmhvdSB3cm90ZToKPiA+ID4gPiA+Cj4gPiA+ID4gPiA+
IEhpIExlZToKPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gT24gVGh1LCBTZXAgMTEsIDIwMjUgYXQg
MTA6MzPigK9QTSBMZWUgSm9uZXMgPGxlZUBrZXJuZWwub3JnPiB3cm90ZToKPiA+ID4gPiA+ID4g
Pgo+ID4gPiA+ID4gPiA+IE9uIFRodSwgMDQgU2VwIDIwMjUgMjA6MzU6MDQgKzA4MDAsIEJpbmJp
biBaaG91IHdyb3RlOgo+ID4gPiA+ID4gPiA+ID4gVGhpcyBwYXRjaHNldCBpbnRyb2R1Y2VzIHRo
ZSBMb29uZ3Nvbi0ySyBCTUMuCj4gPiA+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiA+ID4gSXQgaXMg
YSBQQ0llIGRldmljZSBwcmVzZW50IG9uIHNlcnZlcnMgc2ltaWxhciB0byB0aGUgTG9vbmdzb24t
MyBDUFVzLgo+ID4gPiA+ID4gPiA+ID4gQW5kIGl0IGlzIGEgbXVsdGlmdW5jdGlvbmFsIGRldmlj
ZSAoTUZEKSwgc3VjaCBhcyBkaXNwbGF5IGFzIGEgc3ViLWZ1bmN0aW9uCj4gPiA+ID4gPiA+ID4g
PiBvZiBpdC4KPiA+ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4gPiBGb3IgSVBNSSwgYWNjb3Jk
aW5nIHRvIHRoZSBleGlzdGluZyBkZXNpZ24sIHdlIHVzZSBzb2Z0d2FyZSBzaW11bGF0aW9uIHRv
Cj4gPiA+ID4gPiA+ID4gPiBpbXBsZW1lbnQgdGhlIEtDUyBpbnRlcmZhY2UgcmVnaXN0ZXJzOiBT
dGF1dHMvQ29tbWFuZC9EYXRhX091dC9EYXRhX0luLgo+ID4gPiA+ID4gPiA+ID4KPiA+ID4gPiA+
ID4gPiA+IFsuLi5dCj4gPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gPiBBcHBsaWVkLCB0aGFua3Mh
Cj4gPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gPiBbMS8zXSBtZmQ6IGxzMmtibWM6IEludHJvZHVj
ZSBMb29uZ3Nvbi0ySyBCTUMgY29yZSBkcml2ZXIKPiA+ID4gPiA+ID4gPiAgICAgICBjb21taXQ6
IDY3YzI2MzllMWZjMWEwN2I0NWQyMTZhZjY1OWMwZGQ5MmEzNzBjNjgKPiA+ID4gPiA+ID4gPiBb
Mi8zXSBtZmQ6IGxzMmtibWM6IEFkZCBMb29uZ3Nvbi0ySyBCTUMgcmVzZXQgZnVuY3Rpb24gc3Vw
cG9ydAo+ID4gPiA+ID4gPiA+ICAgICAgIGNvbW1pdDogMjM2NGNjYzgyN2U0NDA2NGU5NzYzZjJh
ZTJkMWRjYzVmOTQ1ZmRmMwo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiBUaGFua3MgZm9yIGFja25v
d2xlZGdpbmcgbXkgcGF0Y2hzZXQuCj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+IEkgY2FuJ3QgY29u
ZmlybSB3aHkgeW91IGRpZG4ndCBhcHBseSB0aGUgSVBNSSBwYXRjaCwgYnV0IHRoaXMgYXBwZWFy
cwo+ID4gPiA+ID4gPiB0byBicmVhayB0aGUgcGF0Y2hzZXQncyBpbnRlZ3JpdHksIHBvdGVudGlh
bGx5IGNhdXNpbmcgbWlzc2luZyBLY29uZmlnCj4gPiA+ID4gPiA+IGRlcGVuZGVuY2llcyAoSVBN
SV9MUzJLIHNlbGVjdCBNRkRfTFMyS19CTUNfQ09SRSkuCj4gPiA+ID4gPgo+ID4gPiA+ID4gUHJl
dHR5IHN1cmUgdGhpcyBkb2Vzbid0IGJyZWFrIGFueXRoaW5nLgo+ID4gPiA+ID4KPiA+ID4gPiA+
IFdoYXQgYnVpbGQgZXJyb3JzIGRvIHlvdSBzZWUgYXMgYSByZXN1bHQ/Cj4gPiA+ID4gPgo+ID4g
PiA+ID4gPiBBZGRpdGlvbmFsbHksIGFzIENvcmV5IHByZXZpb3VzbHkgZXhwbGFpbmVkWzFdLCB0
aGlzIHBhdGNoIGNhbiBiZQo+ID4gPiA+ID4gPiBhcHBsaWVkIHRocm91Z2ggeW91ciBzaWRlLgo+
ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiBbMV06IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC9h
RlZ0TkFZNHUyZ0RpTERTQG1haWwubWlueWFyZC5uZXQvCj4gPiA+ID4gPgo+ID4gPiA+ID4gV2Ug
b25seSBhcHBseSBjcm9zcy1zdWJzeXN0ZW0gcGF0Y2gtc2V0cyB0byBhIHNpbmdsZSB0cmVlIGlm
IHRoZXJlIGFyZQo+ID4gPiA+ID4gZ29vZCByZWFzb25zIHRvIGRvIHNvLiAgSW4gdGhpcyBpbnN0
YW5jZSwgSSBjYW4ndCBzZWUgYW55IHJlYXNvbiB3aHkgdGhlCj4gPiA+ID4gPiBJUE1JIGRyaXZl
ciBjYW5ub3QgZ28gaW4gdmlhIGl0J3Mgb3duIHJlcG8uCj4gPiA+ID4KPiA+ID4gPiBIb3dldmVy
LCB0aGVyZSBzdGlsbCBzZWVtcyB0byBiZSBhIHRleHQgZGVwZW5kZW5jeSBpc3N1ZS4gVGhlIElQ
TUkKPiA+ID4gPiBwYXRjaCBtb2RpZmllcyB0aGUgTUFJTlRBSU5FUlMsIHdoaWNoIGRlcGVuZHMg
b24gdGhlIGZpcnN0IHBhdGNoLgo+ID4gPiA+IElmIHRoZSBlbnRpcmUgc2VyaWVzIG9mIHBhdGNo
ZXMgY2Fubm90IGJlIG1lcmdlZCB0b2dldGhlciwgZG9lcyB0aGlzCj4gPiA+ID4gbWVhbiB0aGUg
SVBNSSBwYXRjaCBjYW4gb25seSBiZSBtZXJnZWQgYWZ0ZXIgdGhlIE1GRCBwYXRjaCBoYXMgYmVl
bgo+ID4gPiA+IG1lcmdlZCBpbnRvIHRoZSBtYWlubGluZT8KPiA+ID4KPiA+ID4gTm8sIG5vdCBh
dCBhbGwuICBTbyBsb25nIGFzIGFsbCBwYXRjaGVzIGNvbWUgdG9nZXRoZXIgZHVyaW5nIHRoZQo+
ID4gPiBtZXJnZS13aW5kb3csIHRoZXJlIGlzIG5vIGlzc3VlLgo+ID4gCj4gPiBPSywgSSBzZWUs
IHRoYW5rcy4KPiA+IAo+ID4gSGkgQ29yZXk6Cj4gPiAKPiA+IFdoYXQgZG8geW91IHRoaW5rIGFi
b3V0IGl0Pwo+IAo+IEkgdGhvdWdodCBteSBhY2sgd291bGQgYmUgc3VmZmljaWVudCwgYnV0IEkn
dmUgcHVsbGVkIHRoaXMgaW50byBteSB0cmVlLgo+IEkgY2FuJ3QgYXBwbHkgdGhlIE1BSU5UQUlO
RVJTIHBvcnRpb24gb2YgdGhpcywgYnV0IHRoYXQgY2FuIGdvIGluCj4gbGF0ZXI7IHlvdSBjYW4g
c2VuZCBtZSBhIHBhdGNoIGZvciB0aGF0IGFmdGVyIHRoZSBuZXh0IGtlcm5lbCByZWxlYXNlLgo+
IAo+IEknbGwgbWFrZSBhIG5vdGUgdG8gTGludXMgdGhhdCB0aGlzIGRlcGVuZHMgb24gdGhlIE1G
RCBjaGFuZ2VzLgoKRmVlbCBmcmVlIHRvIHNlcGFyYXRlIHRoYXQgZnJvbSB0aGF0IHBhdGNoIGFu
ZCBJJ2xsIGhhcHBpbHkgYXBwbHkgaXQuCgotLSAKTGVlIEpvbmVzIFvmnY7nkLzmlq9dCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KT3BlbmlwbWktZGV2
ZWxvcGVyIG1haWxpbmcgbGlzdApPcGVuaXBtaS1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2Uu
bmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL29wZW5pcG1p
LWRldmVsb3Blcgo=

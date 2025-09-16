Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 31AAAB5931B
	for <lists+openipmi-developer@lfdr.de>; Tue, 16 Sep 2025 12:14:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:References:
	Message-ID:To:Date:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2dDwwvpWL3ig1aaVS9AN1g4VOJnkOTp+WvUQSym3grg=; b=M4pug6RFj8lAEaKaU7BD2Jc7M9
	YxkfuGrPWApW60amQZY7x8V03AomIUt9VYX/oQd0Zg0Jn2BYQUZS8vu+NEd/EKCSmJD5an62mPqXj
	73K3SbLv/ny2XuWCeqOEIBJ1OF3OOb+ro5Nl7ijuTF7iOjU5JWhr9qqdXL/8jRWEhYmU=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1uySi2-0005HV-J3;
	Tue, 16 Sep 2025 10:14:51 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lee@kernel.org>) id 1uySi1-0005HI-7Z
 for openipmi-developer@lists.sourceforge.net;
 Tue, 16 Sep 2025 10:14:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EAPELArXJehoUhzJXitZu8XcXiVheunuP5Zf/TvGenI=; b=PF97l8AMsaio1AU1zLIUOJcrP5
 KMydAouaRMwCXQ0QQg+0N9OBDAfHFFizzY4+aUNpyunHtoKGr+B1tqu9htzhTqSvC0VWQfs6LjpEA
 kUXqKhpHdKf8COFIzJI21V2T5Fw4+/JxBPRCfvZSN5RYFeHkcxZ0/gB5FL+oQpkdojR8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EAPELArXJehoUhzJXitZu8XcXiVheunuP5Zf/TvGenI=; b=Ax68bOsPIeel39NxZWdqiOQmz/
 /V0n7LHVBV27daio8pCC5wI8h7udl+1q6P02PZlWwbeur64fmFPkhCIJZQuMS2WmAuzQgeLbOZgNA
 JCl4YQ9ACdjb8zbP3r09h4PJHWRtRe7Vg2SBv0dqtaOsLPFe8AYEEeDDMJaEp+4CTFdk=;
Received: from sea.source.kernel.org ([172.234.252.31])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uySi1-0005XE-FZ for openipmi-developer@lists.sourceforge.net;
 Tue, 16 Sep 2025 10:14:49 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 0E5C2437BA;
 Tue, 16 Sep 2025 10:14:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7362DC4CEEB;
 Tue, 16 Sep 2025 10:14:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1758017683;
 bh=arzOWVmuLmMGxUl6lo77+C7iboIEFTgklaWej9NK1PU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qzuD4Nu/adR5HeASBSkVzFa/K441a5afdSrjOjgbhIjYbJpTxBjoSnLF+kG7QRtKy
 pQd1pHGsz51bPLanIzzeH1btbEhCi/bbhs/4wyN3te+bLjKdYZKbKLBr+bhxzC6xKp
 O5E0MIT8Q3gMrDAgZyKzEvy8L7gQJKxpZ0VeBVr+t07gS6/0f6dakTJUS+WehO7T30
 mgNDfWP5MsA8cRHx1GBmVMm+NTx4G83vGR/rQBk+xS619dC4VRCP0AFkj8yOXSMER+
 guDUXfTuFNwrQZnQljVyZLyyAJ1+UyurnQMiWW+FRQW9KGIAZi2bLr4Zo3/0TsSWXO
 vwTvrVgmop+1A==
Date: Tue, 16 Sep 2025 11:14:38 +0100
To: Binbin Zhou <zhoubb.aaron@gmail.com>
Message-ID: <20250916101438.GA3585920@google.com>
References: <cover.1756987761.git.zhoubinbin@loongson.cn>
 <175760122164.1552180.16853979882678693472.b4-ty@kernel.org>
 <CAMpQs4JbQU3D-Bs2687BXSC=FKJBS6RMvWAKb6AJEtzit6hWqw@mail.gmail.com>
 <20250916084002.GF1637058@google.com>
 <CAMpQs4+J2zYgZaGYBSaf4UwzKZY-qMoD1oe2vmgJQXAfghqu=w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMpQs4+J2zYgZaGYBSaf4UwzKZY-qMoD1oe2vmgJQXAfghqu=w@mail.gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, 16 Sep 2025, Binbin Zhou wrote: > Hi Lee: > > Thanks
 for your reply. > > On Tue, Sep 16, 2025 at 4:40 PM Lee Jones <lee@kernel.org>
 wrote: > > > > On Fri, 12 Sep 2025, Binbin Zhou wrote: > > > > > Hi Lee:
 > > > > > > On Thu, Sep 11, [...] 
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
X-Headers-End: 1uySi1-0005XE-FZ
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

T24gVHVlLCAxNiBTZXAgMjAyNSwgQmluYmluIFpob3Ugd3JvdGU6Cgo+IEhpIExlZToKPiAKPiBU
aGFua3MgZm9yIHlvdXIgcmVwbHkuCj4gCj4gT24gVHVlLCBTZXAgMTYsIDIwMjUgYXQgNDo0MOKA
r1BNIExlZSBKb25lcyA8bGVlQGtlcm5lbC5vcmc+IHdyb3RlOgo+ID4KPiA+IE9uIEZyaSwgMTIg
U2VwIDIwMjUsIEJpbmJpbiBaaG91IHdyb3RlOgo+ID4KPiA+ID4gSGkgTGVlOgo+ID4gPgo+ID4g
PiBPbiBUaHUsIFNlcCAxMSwgMjAyNSBhdCAxMDozM+KAr1BNIExlZSBKb25lcyA8bGVlQGtlcm5l
bC5vcmc+IHdyb3RlOgo+ID4gPiA+Cj4gPiA+ID4gT24gVGh1LCAwNCBTZXAgMjAyNSAyMDozNTow
NCArMDgwMCwgQmluYmluIFpob3Ugd3JvdGU6Cj4gPiA+ID4gPiBUaGlzIHBhdGNoc2V0IGludHJv
ZHVjZXMgdGhlIExvb25nc29uLTJLIEJNQy4KPiA+ID4gPiA+Cj4gPiA+ID4gPiBJdCBpcyBhIFBD
SWUgZGV2aWNlIHByZXNlbnQgb24gc2VydmVycyBzaW1pbGFyIHRvIHRoZSBMb29uZ3Nvbi0zIENQ
VXMuCj4gPiA+ID4gPiBBbmQgaXQgaXMgYSBtdWx0aWZ1bmN0aW9uYWwgZGV2aWNlIChNRkQpLCBz
dWNoIGFzIGRpc3BsYXkgYXMgYSBzdWItZnVuY3Rpb24KPiA+ID4gPiA+IG9mIGl0Lgo+ID4gPiA+
ID4KPiA+ID4gPiA+IEZvciBJUE1JLCBhY2NvcmRpbmcgdG8gdGhlIGV4aXN0aW5nIGRlc2lnbiwg
d2UgdXNlIHNvZnR3YXJlIHNpbXVsYXRpb24gdG8KPiA+ID4gPiA+IGltcGxlbWVudCB0aGUgS0NT
IGludGVyZmFjZSByZWdpc3RlcnM6IFN0YXV0cy9Db21tYW5kL0RhdGFfT3V0L0RhdGFfSW4uCj4g
PiA+ID4gPgo+ID4gPiA+ID4gWy4uLl0KPiA+ID4gPgo+ID4gPiA+IEFwcGxpZWQsIHRoYW5rcyEK
PiA+ID4gPgo+ID4gPiA+IFsxLzNdIG1mZDogbHMya2JtYzogSW50cm9kdWNlIExvb25nc29uLTJL
IEJNQyBjb3JlIGRyaXZlcgo+ID4gPiA+ICAgICAgIGNvbW1pdDogNjdjMjYzOWUxZmMxYTA3YjQ1
ZDIxNmFmNjU5YzBkZDkyYTM3MGM2OAo+ID4gPiA+IFsyLzNdIG1mZDogbHMya2JtYzogQWRkIExv
b25nc29uLTJLIEJNQyByZXNldCBmdW5jdGlvbiBzdXBwb3J0Cj4gPiA+ID4gICAgICAgY29tbWl0
OiAyMzY0Y2NjODI3ZTQ0MDY0ZTk3NjNmMmFlMmQxZGNjNWY5NDVmZGYzCj4gPiA+Cj4gPiA+IFRo
YW5rcyBmb3IgYWNrbm93bGVkZ2luZyBteSBwYXRjaHNldC4KPiA+ID4KPiA+ID4gSSBjYW4ndCBj
b25maXJtIHdoeSB5b3UgZGlkbid0IGFwcGx5IHRoZSBJUE1JIHBhdGNoLCBidXQgdGhpcyBhcHBl
YXJzCj4gPiA+IHRvIGJyZWFrIHRoZSBwYXRjaHNldCdzIGludGVncml0eSwgcG90ZW50aWFsbHkg
Y2F1c2luZyBtaXNzaW5nIEtjb25maWcKPiA+ID4gZGVwZW5kZW5jaWVzIChJUE1JX0xTMksgc2Vs
ZWN0IE1GRF9MUzJLX0JNQ19DT1JFKS4KPiA+Cj4gPiBQcmV0dHkgc3VyZSB0aGlzIGRvZXNuJ3Qg
YnJlYWsgYW55dGhpbmcuCj4gPgo+ID4gV2hhdCBidWlsZCBlcnJvcnMgZG8geW91IHNlZSBhcyBh
IHJlc3VsdD8KPiA+Cj4gPiA+IEFkZGl0aW9uYWxseSwgYXMgQ29yZXkgcHJldmlvdXNseSBleHBs
YWluZWRbMV0sIHRoaXMgcGF0Y2ggY2FuIGJlCj4gPiA+IGFwcGxpZWQgdGhyb3VnaCB5b3VyIHNp
ZGUuCj4gPiA+Cj4gPiA+IFsxXTogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsL2FGVnROQVk0
dTJnRGlMRFNAbWFpbC5taW55YXJkLm5ldC8KPiA+Cj4gPiBXZSBvbmx5IGFwcGx5IGNyb3NzLXN1
YnN5c3RlbSBwYXRjaC1zZXRzIHRvIGEgc2luZ2xlIHRyZWUgaWYgdGhlcmUgYXJlCj4gPiBnb29k
IHJlYXNvbnMgdG8gZG8gc28uICBJbiB0aGlzIGluc3RhbmNlLCBJIGNhbid0IHNlZSBhbnkgcmVh
c29uIHdoeSB0aGUKPiA+IElQTUkgZHJpdmVyIGNhbm5vdCBnbyBpbiB2aWEgaXQncyBvd24gcmVw
by4KPiAKPiBIb3dldmVyLCB0aGVyZSBzdGlsbCBzZWVtcyB0byBiZSBhIHRleHQgZGVwZW5kZW5j
eSBpc3N1ZS4gVGhlIElQTUkKPiBwYXRjaCBtb2RpZmllcyB0aGUgTUFJTlRBSU5FUlMsIHdoaWNo
IGRlcGVuZHMgb24gdGhlIGZpcnN0IHBhdGNoLgo+IElmIHRoZSBlbnRpcmUgc2VyaWVzIG9mIHBh
dGNoZXMgY2Fubm90IGJlIG1lcmdlZCB0b2dldGhlciwgZG9lcyB0aGlzCj4gbWVhbiB0aGUgSVBN
SSBwYXRjaCBjYW4gb25seSBiZSBtZXJnZWQgYWZ0ZXIgdGhlIE1GRCBwYXRjaCBoYXMgYmVlbgo+
IG1lcmdlZCBpbnRvIHRoZSBtYWlubGluZT8KCk5vLCBub3QgYXQgYWxsLiAgU28gbG9uZyBhcyBh
bGwgcGF0Y2hlcyBjb21lIHRvZ2V0aGVyIGR1cmluZyB0aGUKbWVyZ2Utd2luZG93LCB0aGVyZSBp
cyBubyBpc3N1ZS4KCi0tIApMZWUgSm9uZXMgW+adjueQvOaWr10KCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpPcGVuaXBtaS1kZXZlbG9wZXIgbWFpbGlu
ZyBsaXN0Ck9wZW5pcG1pLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9s
aXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vb3BlbmlwbWktZGV2ZWxvcGVyCg==
